void sub_1B5549B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_DWORD *fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::Value(uint64_t a1)
{
  v2 = *(a1 + 28);
  result = fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Value(*(a1 + 8));
  v4 = result;
  if (v2 != -1)
  {
    result = (a1 + 32);
    *(a1 + 32) = *v4;
    if (*(a1 + 24) == 1)
    {
      v5 = *(a1 + 20);
      if (*(a1 + 32) == v5)
      {
        *(a1 + 32) = *(a1 + 28);
      }

      if (*(a1 + 36) == v5)
      {
        v6 = *(a1 + 28);
LABEL_9:
        *(a1 + 36) = v6;
      }
    }

    else
    {
      v6 = *(a1 + 28);
      if (*(a1 + 16))
      {
        goto LABEL_9;
      }

      *result = v6;
    }
  }

  return result;
}

uint64_t fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::Priority(uint64_t a1, uint64_t a2)
{
  *(a1 + 52) = a2;
  fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetState(*(a1 + 8), a2);
  v4 = fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Find(*(a1 + 8), *(a1 + 20));
  *(a1 + 25) = v4;
  if (v4)
  {
    return -1;
  }

  v6 = *(a1 + 8);

  return fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Priority(v6, a2);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::ComposeFstImplBase(a1, a2, a3, a4) = &unk_1F2D1B2A8;
  v8 = *(a4 + 40);
  if (!v8)
  {
    operator new();
  }

  *(a1 + 136) = v8;
  v9 = *v8;
  *(a1 + 144) = *v8;
  *(a1 + 160) = (*(*v9.n128_u64[0] + 32))(v9.n128_u64[0], v9);
  *(a1 + 168) = (*(**(a1 + 152) + 32))(*(a1 + 152));
  v10 = *(a4 + 48);
  if (!v10)
  {
    operator new();
  }

  *(a1 + 176) = v10;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(a1);
  if (*(a1 + 184) == 3)
  {
    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v12 = (*(*a3 + 64))(a3, 0x3FFFFFFF0007, 0);
  v13 = (*(**(a1 + 144) + 40))(*(a1 + 144), v11);
  v14 = (*(**(a1 + 152) + 40))(*(a1 + 152), v12);
  *(a1 + 8) = *(a1 + 8) & 0xFFFFC0000000FFFFLL | fst::ComposeProperties(v13, v14) & 0x3FFFFFFF0004;
  return a1;
}

void sub_1B5549F28(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(uint64_t a1)
{
  if (((*(**(a1 + 144) + 48))(*(a1 + 144)) & 1) != 0 && (*(**(a1 + 144) + 24))(*(a1 + 144), 1) != 1)
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

  else if (((*(**(a1 + 152) + 48))(*(a1 + 152)) & 1) != 0 && (*(**(a1 + 152) + 24))(*(a1 + 152), 1))
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
    v4 = (*(**(a1 + 144) + 24))(*(a1 + 144), 0);
    v5 = (*(**(a1 + 152) + 24))(*(a1 + 152), 0);
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
    if ((*(**(a1 + 144) + 24))(*(a1 + 144), 1) == 1)
    {
      goto LABEL_36;
    }

    if (!(*(**(a1 + 152) + 24))(*(a1 + 152), 1))
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

void sub_1B554A2CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(**(a1 + 144) + 40))(*(a1 + 144), 0) & 4) != 0 || ((*(**(a1 + 152) + 40))(*(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Expand(void *a1, int a2)
{
  v4 = (*(a1[22] + 80) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v17 = *(v4 + 8);
  fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetState(v7, v5, v6, &v17);
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(a1, v5, v6))
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

  return fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>(v11, v12, v8, v13, v9, v14, v10, v15);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(**(a1 + 144) + 24))(*(a1 + 144), 0) == a3 && (*(**(a1 + 152) + 24))(*(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeStart(void **a1)
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

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeFinal(void *a1, int a2)
{
  v3 = (*(a1[22] + 80) + 12 * a2);
  v4 = *v3;
  v5 = *(*(*(a1[18] + 8) + 8) + 8);
  v9 = (*(*v5 + 32))(v5, v4);
  if (v9 != INFINITY)
  {
    v6 = v3[1];
    v7 = *(*(*(a1[19] + 8) + 8) + 8);
    v9 = (*(*v7 + 32))(v7, v6);
    if (v9 != INFINITY)
    {
      v8 = a1[17];
      LOBYTE(v9) = *(v3 + 8);
      fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetState(v8, v4, v6, &v9);
    }
  }
}

uint64_t fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>::SequenceComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = &unk_1F2D1B2A8;
  v2 = a1[17];
  if (v2)
  {
    v3 = fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>::~SequenceComposeFilter(v2);
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

uint64_t *fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>::~SequenceComposeFilter(uint64_t *a1)
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

void sub_1B554AC1C(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>::SequenceComposeFilter(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = (*(**a2 + 16))(*a2, a3);
  *(a1 + 8) = (*(*a2[1] + 16))(a2[1], a3);
  *(a1 + 16) = (*(**a1 + 32))();
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  return a1;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v7 = fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::Priority(*(a1 + 144), a2);
  v8 = fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::Priority(*(a1 + 152), a3);
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

    v12 = fst::LogMessage::LogMessage(&v16, __p);
    v13 = fst::cerr(v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "ComposeFst: both sides can't require match", 42);
    fst::LogMessage::~LogMessage(&v16);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 8) |= 4uLL;
    return 1;
  }

  v11 = v8 == -1 || v7 <= v8;
  return v7 != -1 && v11;
}

void sub_1B554AE48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (*(a7 + 52) != a4)
  {
    *(a7 + 52) = a4;
    fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetState(*(a7 + 8), a4);
    *(a7 + 25) = *(a7 + 20) != -1;
  }

  LODWORD(v19) = a8 - 1;
  *(&v19 + 4) = (a8 << 31 >> 31);
  HIDWORD(v19) = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>(a1, a2, a7, &v19, a8);
  v18 = 0;
  (*(*a5 + 136))(a5, a6, v16);
  while (1)
  {
    if (!v16[0])
    {
      if (v18 >= v16[2])
      {
        goto LABEL_15;
      }

LABEL_9:
      v14 = (v16[1] + 16 * v18);
      goto LABEL_10;
    }

    if ((*(*v16[0] + 24))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      goto LABEL_9;
    }

    v14 = (*(*v16[0] + 32))();
LABEL_10:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>(a1, a2, a7, v14, a8);
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

LABEL_15:
  if (v17)
  {
    --*v17;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B554B078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>(uint64_t a1, int a2, uint64_t a3, __int128 *a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::Find(a3, *(a4 + v10));
  if (result)
  {
    result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Done(*(*(a3 + 8) + 8));
    if ((result & 1) == 0)
    {
      do
      {
        v12 = *fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::Value(a3);
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
        fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Next(*(a3 + 8));
        result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Done(*(*(a3 + 8) + 8));
      }

      while (!result);
    }
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_1F2D1B320;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = -1;
  *(a1 + 28) = a4;
  *(a1 + 32) = (*(**(a3 + 144) + 16))(*(a3 + 144), 0);
  *(a1 + 40) = (*(**(a3 + 152) + 16))(*(a3 + 152), 0);
  *(a1 + 48) = 0;
  *(a1 + 52) = xmmword_1B5AE3080;
  *(a1 + 84) = 0;
  if (a4 == 1)
  {
    *(a1 + 52) = 0xFFFFFFFF00000000;
  }

  return a1;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Type(uint64_t a1, uint64_t a2)
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

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
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

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetState_(uint64_t result, int a2)
{
  if (*(result + 24) != a2)
  {
    v2 = result;
    *(result + 24) = a2;
    v3 = (*(*(*(result + 16) + 176) + 80) + 12 * a2);
    v4 = *v3;
    v5 = v3[1];
    v6 = *(result + 32);
    if (*(v6 + 52) != v4)
    {
      *(v6 + 52) = v4;
      result = fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetState(*(v6 + 8), v4);
      *(v6 + 25) = *(v6 + 20) != -1;
    }

    v7 = *(v2 + 40);
    if (*(v7 + 52) != v5)
    {
      *(v7 + 52) = v5;
      result = fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetState(*(v7 + 8), v5);
      *(v7 + 25) = *(v7 + 20) != -1;
    }

    *(v2 + 64) = *(v2 + 24);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Find_(uint64_t a1, int a2)
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

  return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>(a1, a2, *(a1 + v2), *(a1 + v3));
}

BOOL fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Done_(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Done(*(*(*(a1 + 32) + 8) + 8)))
  {
    return 0;
  }

  v2 = *(*(*(a1 + 40) + 8) + 8);

  return fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Done(v2);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Value_(uint64_t a1)
{
  v1 = 68;
  if (*(a1 + 48))
  {
    v1 = 52;
  }

  return a1 + v1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Next_(uint64_t result)
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

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>(result, v1, v2);
  }

  return result;
}

void *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = &unk_1F2D1B320;
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

  return a1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D1B320;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = -1;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = (*(**(a2 + 32) + 16))(*(a2 + 32), a3);
  *(a1 + 40) = (*(**(a2 + 40) + 16))(*(a2 + 40), a3);
  *(a1 + 48) = 0;
  *(a1 + 52) = xmmword_1B5AE3080;
  *(a1 + 84) = *(a2 + 84);
  if (a3)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v6 = fst::LogMessage::LogMessage(&v11, __p);
    v7 = fst::cerr(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "ComposeFstMatcher: safe copy not supported", 42);
    fst::LogMessage::~LogMessage(&v11);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 84) = 1;
  }

  if (*(a1 + 28) == 1)
  {
    *(a1 + 52) = vrev64_s32(*(a1 + 52));
  }

  return a1;
}

void sub_1B554BA04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  result = fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::Find(a3, a2);
  if (result)
  {
    v8 = *(a1 + 28) == 0;
    v9 = fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::Value(a3);
    fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::Find(a4, v9[v8]);

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>(a1, a3, a4);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (!fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Done(*(*(a2 + 8) + 8)) || !fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Done(*(*(a3 + 8) + 8)))
  {
    if (fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Done(*(*(a3 + 8) + 8)))
    {
      fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Next(*(a2 + 8));
      while (!fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Done(*(*(a2 + 8) + 8)))
      {
        v6 = *(a1 + 28) == 0;
        v7 = fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::Value(a2);
        if (fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::Find(a3, v7[v6]))
        {
          break;
        }

        fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Next(*(a2 + 8));
      }
    }

    while (!fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Done(*(*(a3 + 8) + 8)))
    {
      v8 = fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::Value(a2);
      v9 = fst::RhoMatcher<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::Value(a3);
      fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Next(*(a3 + 8));
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

unint64_t sh_hashtable_settings<int,std::hash<int>,unsigned long,4>::min_buckets(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 16);
  for (result = 4; result < a3 || (v3 * result) <= a2; result *= 2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::length_error::length_error[abi:ne200100](exception, "resize overflow");
      __cxa_throw(exception, off_1E7C1A150, MEMORY[0x1E69E5278]);
    }
  }

  return result;
}

void fst::StateSort<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(uint64_t a1, void *a2)
{
  v4 = a2[1] - *a2;
  if ((*(*a1 + 160))(a1) == v4 >> 2)
  {
    if ((*(*a1 + 24))(a1) == -1)
    {
      return;
    }

    v5 = (*(*a1 + 64))(a1, 0xF3FFFFF0007, 0);
    v6 = (a2[1] - *a2) >> 2;
    LOBYTE(__p[0]) = 0;
    std::vector<BOOL>::vector(v50, v6);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v7 = (*(*a1 + 24))(a1);
    (*(*a1 + 176))(a1, *(*a2 + 4 * v7));
    v34 = v5;
    v43 = 0;
    (*(*a1 + 128))(a1, &v41);
    v8 = &v47;
    v9 = &v44;
LABEL_4:
    if (!v41)
    {
      if (v43 >= v42)
      {
        goto LABEL_58;
      }

      goto LABEL_9;
    }

    if (!(*(*v41 + 16))(v41))
    {
      if (v41)
      {
        v10 = (*(*v41 + 24))();
LABEL_10:
        v11 = v10;
        v12 = v10 >> 6;
        v13 = 1 << v10;
        if (((1 << v10) & *(v50[0] + v12)) != 0)
        {
          goto LABEL_26;
        }

        v14 = (*(*a1 + 32))(a1, v10);
        v8[1] = *v8;
        v40 = 0;
        (*(*a1 + 136))(a1, v11, __p);
        while (__p[0])
        {
          if ((*(*__p[0] + 24))(__p[0]))
          {
            if (__p[0])
            {
              (*(*__p[0] + 8))();
              goto LABEL_25;
            }

LABEL_23:
            if (v39)
            {
              --*v39;
            }

LABEL_25:
            v16 = v50[0];
            if ((*(v50[0] + v12) & v13) != 0)
            {
              goto LABEL_26;
            }

            v17 = v13;
            v18 = INFINITY;
            v19 = v8;
            while (2)
            {
              v20 = v9;
              v9 = v19;
              v21 = *(*a2 + 4 * v11);
              if (((1 << v21) & v16[v21 >> 6]) != 0)
              {
                goto LABEL_31;
              }

              v29 = v17;
              v18 = (*(*a1 + 32))(a1, v21);
              v20[1] = *v20;
              v40 = 0;
              (*(*a1 + 136))(a1, v21, __p);
              while (2)
              {
                if (!__p[0])
                {
                  if (v40 >= v38)
                  {
                    goto LABEL_48;
                  }

                  goto LABEL_42;
                }

                if (!(*(*__p[0] + 24))(__p[0]))
                {
                  if (__p[0])
                  {
                    v30 = (*(*__p[0] + 32))();
                    goto LABEL_43;
                  }

LABEL_42:
                  v30 = __p[1] + 16 * v40;
LABEL_43:
                  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](v20, v30);
                  if (__p[0])
                  {
                    (*(*__p[0] + 40))(__p[0]);
                  }

                  else
                  {
                    ++v40;
                  }

                  continue;
                }

                break;
              }

              if (__p[0])
              {
                (*(*__p[0] + 8))();
                v17 = v29;
                goto LABEL_31;
              }

LABEL_48:
              v17 = v29;
              if (v39)
              {
                --*v39;
              }

LABEL_31:
              v22 = v21 >> 6;
              v35 = v20;
              v36 = v21;
              v23 = 1 << v21;
              v24 = v17;
              v25 = v12;
              (*(*a1 + 184))(a1, v21, v14);
              (*(*a1 + 240))(a1, v21);
              v26 = *v9;
              if (v9[1] != *v9)
              {
                v27 = 0;
                v28 = 0;
                do
                {
                  *__p = *&v26[v27];
                  HIDWORD(__p[1]) = *(*a2 + 4 * SHIDWORD(__p[1]));
                  (*(*a1 + 208))(a1, v21, __p);
                  ++v28;
                  v26 = *v9;
                  v27 += 16;
                }

                while (v28 < (v9[1] - *v9) >> 4);
              }

              v16 = v50[0];
              *(v50[0] + v25) |= v24;
              v17 = 1 << v21;
              v12 = v21 >> 6;
              v14 = v18;
              v8 = v35;
              v11 = v36;
              v19 = v35;
              if ((v16[v22] & v23) == 0)
              {
                continue;
              }

              break;
            }

LABEL_26:
            if (v41)
            {
              (*(*v41 + 32))(v41);
            }

            else
            {
              ++v43;
            }

            goto LABEL_4;
          }

          if (!__p[0])
          {
            goto LABEL_17;
          }

          v15 = (*(*__p[0] + 32))();
LABEL_18:
          std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](v8, v15);
          if (__p[0])
          {
            (*(*__p[0] + 40))(__p[0]);
          }

          else
          {
            ++v40;
          }
        }

        if (v40 >= v38)
        {
          goto LABEL_23;
        }

LABEL_17:
        v15 = __p[1] + 16 * v40;
        goto LABEL_18;
      }

LABEL_9:
      v10 = v43;
      goto LABEL_10;
    }

    if (v41)
    {
      (*(*v41 + 8))();
    }

LABEL_58:
    (*(*a1 + 192))(a1, v34, 0x3FFFFFFF0007);
    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }

    if (v50[0])
    {
      operator delete(v50[0]);
    }
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

    v31 = fst::LogMessage::LogMessage(v50, __p);
    v32 = fst::cerr(v31);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "StateSort: bad order vector size: ", 34);
    MEMORY[0x1B8C84C30](v33, (a2[1] - *a2) >> 2);
    fst::LogMessage::~LogMessage(v50);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(__p[0]);
    }

    (*(*a1 + 192))(a1, 4, 4);
  }
}

void sub_1B554C4C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  fst::LogMessage::~LogMessage((v28 - 128));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::vector<fst::LogWeightTpl<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B554C624(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::resize_delta(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    v4 = google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::maybe_shrink(a1);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 48);
  if (v5 >= ~a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::length_error::length_error[abi:ne200100](exception, "resize overflow");
    __cxa_throw(exception, off_1E7C1A150, MEMORY[0x1E69E5278]);
  }

  v6 = v5 + a2;
  if (*(a1 + 56) < 4uLL || v6 > *a1)
  {
    v7 = sh_hashtable_settings<int,std::hash<int>,unsigned long,4>::min_buckets(a1, v6, 0);
    v8 = *(a1 + 56);
    if (v7 > v8)
    {
      v9 = v7;
      v10 = sh_hashtable_settings<int,std::hash<int>,unsigned long,4>::min_buckets(a1, *(a1 + 48) + a2 - *(a1 + 40), v8);
      v11 = v10;
      v12 = v10 >= v9 || v10 > 0x7FFFFFFFFFFFFFFELL;
      if (!v12 && *(a1 + 48) + a2 - *(a1 + 40) >= (*(a1 + 20) * (2 * v10)))
      {
        v11 = 2 * v10;
      }

      google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::dense_hashtable(v15, a1, v11);
      google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::swap(a1, v15);
      if (v16)
      {
        free(v16);
      }

      return 1;
    }
  }

  return v4;
}

void sub_1B554C790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::insert_noresize@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  result = google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::find_position(a1, a2);
  if (result == -1)
  {
    result = google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::insert_at(a1, a2, v7, a3);
    v8 = 1;
  }

  else
  {
    v8 = 0;
    v9 = *(a1 + 72);
    v10 = v9 + 8 * result;
    v11 = v9 + 8 * *(a1 + 56);
    *a3 = a1;
    *(a3 + 8) = v10;
    *(a3 + 16) = v11;
  }

  *(a3 + 24) = v8;
  return result;
}

uint64_t google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::maybe_shrink(uint64_t a1)
{
  v2 = *(a1 + 48) - *(a1 + 40);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (v5 = *(a1 + 56), v5 < 0x21))
  {
    result = 0;
  }

  else
  {
    v6 = v2;
    do
    {
      v7 = v5;
      v5 >>= 1;
    }

    while (v7 >= 0x42 && (*(a1 + 20) * v5) > v6);
    google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::dense_hashtable(v9, a1, v5);
    google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::swap(a1, v9);
    if (v10)
    {
      free(v10);
    }

    result = 1;
  }

  *(a1 + 24) = 0;
  return result;
}

void sub_1B554C8D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64x2_t google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::swap(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 16);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *a2 = v3;
  *(a2 + 16) = v2;
  v5 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v5;
  v6 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v6;
  v7 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v7;
  v8 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v8;
  v9 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v9;
  v10 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v10;
  v11 = *(a1 + 56);
  *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v11)));
  *(a1 + 24) = 0;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a2 + 16), v11)));
  *a2 = result;
  *(a2 + 24) = 0;
  return result;
}

uint64_t google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::dense_hashtable(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = 0;
  if (*(a2 + 25))
  {
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*(a1 + 16), 0)));
    *(a1 + 24) = 0;
    google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::copy_from(a1, a2, a3);
  }

  else
  {
    v5 = sh_hashtable_settings<int,std::hash<int>,unsigned long,4>::min_buckets(a1, *(a2 + 48) - *(a2 + 40), a3);
    *(a1 + 56) = v5;
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v5)));
    *(a1 + 24) = 0;
  }

  return a1;
}

void google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::copy_from(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sh_hashtable_settings<int,std::hash<int>,unsigned long,4>::min_buckets(a1, *(a2 + 48) - *(a2 + 40), a3);
  google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::clear_to_size(a1, v5);
  v6 = *(a2 + 56);
  if (v6)
  {
    v7 = 8 * v6;
    v8 = *(a2 + 72);
    while (1)
    {
      v9 = *v8;
      v10 = *(a2 + 40) && *(a2 + 32) == v9;
      v11 = v10;
      if (*(a2 + 64) != v9 && !v11)
      {
        break;
      }

      v8 += 2;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v8 = *(a2 + 72);
  }

  v13 = *(a2 + 72) + 8 * v6;
  if (v8 != v13)
  {
    do
    {
      v14 = *(a1 + 56) - 1;
      v15 = *(a1 + 72);
      v16 = *(a1 + 64);
      v17 = v14 & *v8;
      if (v16 != *(v15 + 8 * v17))
      {
        v18 = 1;
        do
        {
          v17 = (v17 + v18++) & v14;
        }

        while (v16 != *(v15 + 8 * v17));
      }

      v19 = *v8;
      v8 += 2;
      *(v15 + 8 * v17) = v19;
      ++*(a1 + 48);
      for (; v8 != v13; v8 += 2)
      {
        v20 = *v8;
        if (*(a2 + 40))
        {
          v21 = *(a2 + 32) == v20;
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;
        if (*(a2 + 64) != v20 && v22 == 0)
        {
          break;
        }
      }
    }

    while (v8 != (*(a2 + 72) + 8 * *(a2 + 56)));
  }

LABEL_33:
  ++*(a1 + 28);
}

uint64x2_t google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::clear_to_size(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  v5 = 8 * a2;
  if (v4)
  {
    if (*(a1 + 56) == a2)
    {
      goto LABEL_6;
    }

    v6 = google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::alloc_impl<google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::realloc_or_die(a1 + 64, v4, a2);
  }

  else
  {
    v6 = malloc_type_malloc(8 * a2, 0x100004000313F17uLL);
  }

  v4 = v6;
  *(a1 + 72) = v6;
LABEL_6:
  if (a2)
  {
    do
    {
      *v4++ = *(a1 + 64);
      v5 -= 8;
    }

    while (v5);
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), a2)));
  *a1 = result;
  *(a1 + 24) = 0;
  return result;
}

void *google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::alloc_impl<google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::realloc_or_die(int a1, void *ptr, uint64_t a3)
{
  result = malloc_type_realloc(ptr, 8 * a3, 0x100004000313F17uLL);
  if (!result)
  {
    fprintf(*MEMORY[0x1E69E9848], "sparsehash: FATAL ERROR: failed to reallocate %lu elements for ptr %p", a3, ptr);
    exit(1);
  }

  return result;
}

uint64_t google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::find_position(uint64_t a1, int *a2)
{
  v3 = *(a1 + 56) - 1;
  v4 = *a2;
  result = v3 & v4;
  v6 = *(a1 + 72);
  v7 = *(a1 + 64);
  v8 = *(v6 + 8 * (v3 & v4));
  if (v7 != v8)
  {
    v9 = -1;
    v10 = 1;
    do
    {
      if (*(a1 + 40) && *(a1 + 32) == v8)
      {
        if (v9 == -1)
        {
          v9 = result;
        }
      }

      else if (v4 == v8)
      {
        return result;
      }

      result = (result + v10) & v3;
      v8 = *(v6 + 8 * result);
      ++v10;
    }

    while (v7 != v8);
  }

  return -1;
}

uint64_t google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::insert_at@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(result + 40);
  v4 = *(result + 48);
  if ((v4 - v5) >= 0x1FFFFFFFFFFFFFFFLL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::length_error::length_error[abi:ne200100](exception, "insert overflow");
    __cxa_throw(exception, off_1E7C1A150, MEMORY[0x1E69E5278]);
  }

  v6 = *(result + 72);
  if (v5 && *(result + 32) == *(v6 + 8 * a3))
  {
    *(result + 40) = v5 - 1;
  }

  else
  {
    *(result + 48) = v4 + 1;
  }

  *(v6 + 8 * a3) = *a2;
  v7 = *(result + 72);
  v8 = v7 + 8 * a3;
  v9 = v7 + 8 * *(result + 56);
  *a4 = result;
  a4[1] = v8;
  a4[2] = v9;
  return result;
}

uint64_t google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::find_or_insert<google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::DefaultValue>(uint64_t a1, int *a2)
{
  position = google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::find_position(a1, a2);
  if (position != -1)
  {
    return *(a1 + 72) + 8 * position;
  }

  v7 = v5;
  if (google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::resize_delta(a1, 1))
  {
    v8 = *a2;
    google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::insert_noresize(a1, &v8, v9);
  }

  else
  {
    v8 = *a2;
    google::dense_hashtable<std::pair<int const,fst::LogWeightTpl<float>>,int,std::hash<int>,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SelectKey,google::dense_hash_map<int,fst::LogWeightTpl<float>,std::hash<int>,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::SetKey,std::equal_to<int>,google::libc_allocator_with_realloc<std::pair<int const,fst::LogWeightTpl<float>>>>::insert_at(a1, &v8, v7, v9);
  }

  return v9[1];
}

uint64_t std::__tree<std::vector<int>>::__emplace_unique_key_args<std::vector<int>,std::vector<int>>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::vector<int>>::__find_equal<std::vector<int>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::vector<int>>::__find_equal<std::vector<int>>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::vector<int>>::operator()[abi:ne200100](a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::vector<int>>::operator()[abi:ne200100](a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

BOOL std::less<std::vector<int>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = v4 - *a2;
  if ((v6 - *a3) >> 2 >= v7 >> 2)
  {
    v8 = v7 >> 2;
  }

  else
  {
    v8 = (v6 - *a3) >> 2;
  }

  if (v8)
  {
    v9 = 4 * v8;
    v10 = &v3[v8];
    while (*v3 == *v5)
    {
      ++v3;
      ++v5;
      v9 -= 4;
      if (!v9)
      {
        v3 = v10;
        break;
      }
    }
  }

  if (v5 == v6)
  {
    return 0;
  }

  if (v3 == v4)
  {
    return 1;
  }

  return *v3 < *v5;
}

void fst::Relabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v66 = 0;
  v67 = 0;
  v68 = 0;
  if (a2 && a3)
  {
    v14 = (*(*a2 + 120))(a2);
    v15 = (*(*a2 + 128))(a2, 0);
    if (v14)
    {
      v16 = v15;
      v54 = a4;
      v55 = a7;
      v56 = a1;
      v17 = 0;
      v18 = 1;
      v19 = v14;
      do
      {
        (*(*a2 + 88))(&v63, a2, v16);
        v20 = (*(*a3 + 96))(a3, &v63);
        v21 = v20;
        if (v20 == -1)
        {
          if (FLAGS_v >= 1)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
            v22 = fst::LogMessage::LogMessage(v58, __p);
            v23 = fst::cerr(v22);
            v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Input symbol id ", 16);
            v25 = MEMORY[0x1B8C84C60](v24, v16);
            v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " symbol '", 9);
            v27 = v65 >= 0 ? &v63 : v63;
            v28 = v65 >= 0 ? HIBYTE(v65) : v64;
            v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v27, v28);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "' missing from target symbol table.", 35);
            fst::LogMessage::~LogMessage(v58);
            if (v62 < 0)
            {
              operator delete(__p[0]);
            }
          }

          ++v17;
        }

        __p[0] = __PAIR64__(v21, v16);
        std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v66, __p);
        if (SHIBYTE(v65) < 0)
        {
          operator delete(v63);
        }

        if (v18 < v14)
        {
          v16 = (*(*a2 + 128))(a2, v18);
        }

        ++v18;
        --v19;
      }

      while (v19);
      a1 = v56;
      a4 = v54;
      a7 = v55;
      if (v17)
      {
        std::string::basic_string[abi:ne200100]<0>(&v63, "WARNING");
        v30 = fst::LogMessage::LogMessage(__p, &v63);
        v31 = fst::cerr(v30);
        v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Target symbol table missing: ", 29);
        v33 = MEMORY[0x1B8C84C30](v32, v17);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " input symbols.", 15);
        fst::LogMessage::~LogMessage(__p);
        if (SHIBYTE(v65) < 0)
        {
          operator delete(v63);
          if (!v54)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }
    }

    if (a4)
    {
LABEL_24:
      (*(*a1 + 280))(a1, a3);
    }
  }

LABEL_25:
  v63 = 0;
  v64 = 0;
  v65 = 0;
  if (a5 && a6)
  {
    v34 = (*(*a5 + 120))(a5);
    v35 = (*(*a5 + 128))(a5, 0);
    if (!v34)
    {
      goto LABEL_47;
    }

    v36 = v35;
    v57 = a1;
    v37 = 0;
    v38 = 1;
    v39 = v34;
    do
    {
      (*(*a5 + 88))(__p, a5, v36);
      v40 = (*(*a6 + 96))(a6, __p);
      v41 = v40;
      if (v40 == -1)
      {
        if (FLAGS_v >= 1)
        {
          std::string::basic_string[abi:ne200100]<0>(v58, "INFO");
          v42 = fst::LogMessage::LogMessage(&v60, v58);
          v43 = fst::cerr(v42);
          v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "Output symbol id ", 17);
          v45 = MEMORY[0x1B8C84C60](v44, v36);
          v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " symbol '", 9);
          v47 = (v62 & 0x80u) == 0 ? __p : __p[0];
          v48 = (v62 & 0x80u) == 0 ? v62 : __p[1];
          v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v47, v48);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "' missing from target symbol table.", 35);
          fst::LogMessage::~LogMessage(&v60);
          if (v59 < 0)
          {
            operator delete(v58[0]);
          }
        }

        ++v37;
      }

      v58[0] = __PAIR64__(v41, v36);
      std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v63, v58);
      if (v62 < 0)
      {
        operator delete(__p[0]);
      }

      if (v38 < v34)
      {
        v36 = (*(*a5 + 128))(a5, v38);
      }

      ++v38;
      --v39;
    }

    while (v39);
    a1 = v57;
    if (!v37 || (std::string::basic_string[abi:ne200100]<0>(__p, "WARNING"), v50 = fst::LogMessage::LogMessage(v58, __p), v51 = fst::cerr(v50), v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Target symbol table missing: ", 29), v53 = MEMORY[0x1B8C84C30](v52, v37), std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, " output symbols.", 16), fst::LogMessage::~LogMessage(v58), (v62 & 0x80000000) == 0))
    {
LABEL_47:
      if (!a7)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    operator delete(__p[0]);
    if (a7)
    {
LABEL_48:
      (*(*a1 + 288))(a1, a6);
    }
  }

LABEL_49:
  fst::Relabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, &v66, &v63);
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }
}

void sub_1B554D654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a34)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SigmaMatcher(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  *a1 = &unk_1F2D1B3B8;
  if (!a6)
  {
    operator new();
  }

  *(a1 + 8) = a6;
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  *(a1 + 52) = 0;
  *(a1 + 56) = -1;
  if (a3 == 2)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v10 = fst::LogMessage::LogMessage(&v21, __p);
    v11 = fst::cerr(v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "SigmaMatcher: bad match type", 28);
    fst::LogMessage::~LogMessage(&v21);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 16) = 3;
    *(a1 + 52) = 1;
  }

  if (!a4)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v16, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v16, "ERROR");
    }

    v12 = fst::LogMessage::LogMessage(&v18, v16);
    v13 = fst::cerr(v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "SigmaMatcher: 0 cannot be used as sigma_label", 45);
    fst::LogMessage::~LogMessage(&v18);
    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    *(a1 + 20) = -1;
    *(a1 + 52) = 1;
  }

  if (a5 == 1)
  {
    v14 = 1;
  }

  else
  {
    if (a5)
    {
      *(a1 + 24) = 0;
      return a1;
    }

    v14 = (*(*a2 + 64))(a2, 0x10000, 1) != 0;
  }

  *(a1 + 24) = v14;
  return a1;
}

void sub_1B554D9A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~SigmaMatcher(void *a1)
{
  *a1 = &unk_1F2D1B3B8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~SigmaMatcher(void *a1)
{
  *a1 = &unk_1F2D1B3B8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Properties(uint64_t a1)
{
  result = (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (*(a1 + 52))
  {
    result |= 4uLL;
  }

  v3 = *(a1 + 16);
  if (v3 != 3)
  {
    if (*(a1 + 24) == 1)
    {
      v4 = -4030464001;
      return result & (v4 & 0xFFFF0000FFFFFFFFLL | 0xEFFF00000000);
    }

    if (v3 == 1)
    {
      v4 = -3225223169;
      return result & (v4 & 0xFFFF0000FFFFFFFFLL | 0xEFFF00000000);
    }

    if (!v3)
    {
      v4 = -809304065;
      return result & (v4 & 0xFFFF0000FFFFFFFFLL | 0xEFFF00000000);
    }

    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v5 = fst::LogMessage::LogMessage(&v10, __p);
    v6 = fst::cerr(v5);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "SigmaMatcher:: bad match type: ", 31);
    MEMORY[0x1B8C84C00](v7, *(a1 + 16));
    fst::LogMessage::~LogMessage(&v10);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

void sub_1B554DD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Flags(uint64_t a1)
{
  if (*(a1 + 20) != -1 && *(a1 + 16) != 3)
  {
    return (*(**(a1 + 8) + 48))(*(a1 + 8)) | 1;
  }

  v2 = *(**(a1 + 8) + 48);

  return v2();
}

uint64_t fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(uint64_t result, uint64_t a2)
{
  if (*(result + 56) != a2)
  {
    v2 = result;
    *(result + 56) = a2;
    fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetState(*(result + 8), a2);
    v3 = *(v2 + 20);
    if (v3 == -1)
    {
      result = 0;
    }

    else
    {
      result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Find(*(v2 + 8), v3);
    }

    *(v2 + 25) = result;
  }

  return result;
}

uint64_t fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Find(uint64_t a1, int a2)
{
  *(a1 + 48) = a2;
  v3 = *(a1 + 20);
  if (v3 != a2 || v3 == -1)
  {
    result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Find(*(a1 + 8), a2);
    if (result)
    {
      *(a1 + 28) = -1;
    }

    else
    {
      if ((a2 - 1) > 0xFFFFFFFD)
      {
        return result;
      }

      if ((*(a1 + 25) & 1) == 0)
      {
        return result;
      }

      result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Find(*(a1 + 8), *(a1 + 20));
      if (!result)
      {
        return result;
      }

      *(a1 + 28) = a2;
    }

    return 1;
  }

  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  }

  v7 = fst::LogMessage::LogMessage(&v11, __p);
  v8 = fst::cerr(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "SigmaMatcher::Find: bad label (sigma)", 37);
  fst::LogMessage::~LogMessage(&v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  result = 0;
  *(a1 + 52) = 1;
  return result;
}

void sub_1B554E050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_DWORD *fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(uint64_t a1)
{
  v2 = *(a1 + 28);
  result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Value(*(a1 + 8));
  v4 = result;
  if (v2 != -1)
  {
    result = (a1 + 32);
    *(a1 + 32) = *v4;
    if (*(a1 + 24) == 1)
    {
      v5 = *(a1 + 20);
      if (*(a1 + 32) == v5)
      {
        *(a1 + 32) = *(a1 + 28);
      }

      if (*(a1 + 36) == v5)
      {
        v6 = *(a1 + 28);
LABEL_9:
        *(a1 + 36) = v6;
      }
    }

    else
    {
      v6 = *(a1 + 28);
      if (*(a1 + 16))
      {
        goto LABEL_9;
      }

      *result = v6;
    }
  }

  return result;
}

uint64_t fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Next(uint64_t a1)
{
  fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Next(*(a1 + 8));
  result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done(*(a1 + 8));
  if (result && *(a1 + 25) == 1 && *(a1 + 28) == -1 && *(a1 + 48) >= 1)
  {
    result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Find(*(a1 + 8), *(a1 + 20));
    *(a1 + 28) = *(a1 + 48);
  }

  return result;
}

uint64_t fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Priority(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) != -1)
  {
    fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(a1, a2);
    if (*(a1 + 25))
    {
      return -1;
    }
  }

  v4 = *(**(*(a1 + 8) + 8) + 40);

  return v4();
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComposeFstImplBase(a1, a2, a3, a4) = &unk_1F2D1B450;
  v8 = *(a4 + 40);
  if (!v8)
  {
    operator new();
  }

  *(a1 + 136) = v8;
  v9 = *v8;
  *(a1 + 144) = *v8;
  *(a1 + 160) = (*(*v9.n128_u64[0] + 32))(v9.n128_u64[0], v9);
  *(a1 + 168) = (*(**(a1 + 152) + 32))(*(a1 + 152));
  v10 = *(a4 + 48);
  if (!v10)
  {
    operator new();
  }

  *(a1 + 176) = v10;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(a1);
  if (*(a1 + 184) == 3)
  {
    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v12 = (*(*a3 + 64))(a3, 0x3FFFFFFF0007, 0);
  v13 = (*(**(a1 + 144) + 40))(*(a1 + 144), v11);
  v14 = (*(**(a1 + 152) + 40))(*(a1 + 152), v12);
  *(a1 + 8) = *(a1 + 8) & 0xFFFFC0000000FFFFLL | fst::ComposeProperties(v13, v14) & 0x3FFFFFFF0004;
  return a1;
}

void sub_1B554E4F4(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(**(a1 + 144) + 40))(*(a1 + 144), 0) & 4) != 0 || ((*(**(a1 + 152) + 40))(*(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Expand(void *a1, int a2)
{
  v4 = (*(a1[22] + 80) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v17 = *(v4 + 8);
  fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(v7, v5, v6, &v17);
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(a1, v5, v6))
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

  return fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(v11, v12, v8, v13, v9, v14, v10, v15);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(**(a1 + 144) + 24))(*(a1 + 144), 0) == a3 && (*(**(a1 + 152) + 24))(*(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeStart(void **a1)
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

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeFinal(void *a1, int a2)
{
  v3 = (*(a1[22] + 80) + 12 * a2);
  v4 = *v3;
  v5 = *(*(a1[18] + 8) + 8);
  v9 = (*(*v5 + 32))(v5, v4);
  if (v9 != INFINITY)
  {
    v6 = v3[1];
    v7 = *(*(a1[19] + 8) + 8);
    v9 = (*(*v7 + 32))(v7, v6);
    if (v9 != INFINITY)
    {
      v8 = a1[17];
      LOBYTE(v9) = *(v3 + 8);
      fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(v8, v4, v6, &v9);
    }
  }
}

uint64_t fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::SequenceComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = &unk_1F2D1B450;
  v2 = a1[17];
  if (v2)
  {
    v3 = fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>::~SequenceComposeFilter(v2);
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

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void sub_1B554EDC4(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v7 = fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Priority(*(a1 + 144), a2);
  v8 = fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Priority(*(a1 + 152), a3);
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

    v12 = fst::LogMessage::LogMessage(&v16, __p);
    v13 = fst::cerr(v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "ComposeFst: both sides can't require match", 42);
    fst::LogMessage::~LogMessage(&v16);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 8) |= 4uLL;
    return 1;
  }

  v11 = v8 == -1 || v7 <= v8;
  return v7 != -1 && v11;
}

void sub_1B554EF28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(a7, a4);
  LODWORD(v19) = a8 - 1;
  *(&v19 + 4) = (a8 << 31 >> 31);
  HIDWORD(v19) = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(a1, a2, a7, &v19, a8);
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
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(a1, a2, a7, v14, a8);
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

void sub_1B554F138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(uint64_t a1, int a2, uint64_t a3, __int128 *a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Find(a3, *(a4 + v10));
  if (result)
  {
    result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done(*(a3 + 8));
    if ((result & 1) == 0)
    {
      do
      {
        v12 = *fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(a3);
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
        fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Next(a3);
        result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done(*(a3 + 8));
      }

      while (!result);
    }
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_1F2D1B4C8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = -1;
  *(a1 + 28) = a4;
  *(a1 + 32) = (*(**(a3 + 144) + 16))(*(a3 + 144), 0);
  *(a1 + 40) = (*(**(a3 + 152) + 16))(*(a3 + 152), 0);
  *(a1 + 48) = 0;
  *(a1 + 52) = xmmword_1B5AE3080;
  *(a1 + 84) = 0;
  if (a4 == 1)
  {
    *(a1 + 52) = 0xFFFFFFFF00000000;
  }

  return a1;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Type(uint64_t a1, uint64_t a2)
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

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
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

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetState_(uint64_t result, int a2)
{
  if (*(result + 24) != a2)
  {
    v2 = result;
    *(result + 24) = a2;
    v3 = (*(*(*(result + 16) + 176) + 80) + 12 * a2);
    v4 = v3[1];
    fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(*(result + 32), *v3);
    result = fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(*(v2 + 40), v4);
    *(v2 + 64) = *(v2 + 24);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Find_(uint64_t a1, int a2)
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

  return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(a1, a2, *(a1 + v2), *(a1 + v3));
}

BOOL fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Done_(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done(*(*(a1 + 32) + 8)))
  {
    return 0;
  }

  v2 = *(*(a1 + 40) + 8);

  return fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done(v2);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Value_(uint64_t a1)
{
  v1 = 68;
  if (*(a1 + 48))
  {
    v1 = 52;
  }

  return a1 + v1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Next_(uint64_t result)
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

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(result, v1, v2);
  }

  return result;
}

void *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = &unk_1F2D1B4C8;
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

  return a1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D1B4C8;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = -1;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = (*(**(a2 + 32) + 16))(*(a2 + 32), a3);
  *(a1 + 40) = (*(**(a2 + 40) + 16))(*(a2 + 40), a3);
  *(a1 + 48) = 0;
  *(a1 + 52) = xmmword_1B5AE3080;
  *(a1 + 84) = *(a2 + 84);
  if (a3)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v6 = fst::LogMessage::LogMessage(&v11, __p);
    v7 = fst::cerr(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "ComposeFstMatcher: safe copy not supported", 42);
    fst::LogMessage::~LogMessage(&v11);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 84) = 1;
  }

  if (*(a1 + 28) == 1)
  {
    *(a1 + 52) = vrev64_s32(*(a1 + 52));
  }

  return a1;
}

void sub_1B554FA64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  result = fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Find(a3, a2);
  if (result)
  {
    v8 = *(a1 + 28) == 0;
    v9 = fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(a3);
    fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Find(a4, v9[v8]);

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(a1, a3, a4);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (!fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done(*(a2 + 8)) || !fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done(*(a3 + 8)))
  {
    if (fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done(*(a3 + 8)))
    {
      fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Next(a2);
      while (!fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done(*(a2 + 8)))
      {
        v6 = *(a1 + 28) == 0;
        v7 = fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(a2);
        if (fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Find(a3, v7[v6]))
        {
          break;
        }

        fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Next(a2);
      }
    }

    while (!fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done(*(a3 + 8)))
    {
      v8 = fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(a2);
      v9 = fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(a3);
      fst::SigmaMatcher<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Next(a3);
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

void fst::RmEpsilon<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>>(void *a1, void *a2, unint64_t *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 24))(a1) == -1)
  {
    return;
  }

  v6 = (*(*a1 + 160))(a1);
  LOBYTE(v33) = 0;
  std::vector<BOOL>::vector(&v32, v6);
  v7 = (*(*a1 + 24))(a1);
  v8 = 0;
  *(v32 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
LABEL_3:
  if (v8 < (*(*a1 + 160))(a1))
  {
    v37 = 0;
    (*(*a1 + 136))(a1, v8, &v33);
    while (v33)
    {
      if ((*(*v33 + 24))(v33))
      {
        if (v33)
        {
          (*(*v33 + 8))();
          goto LABEL_26;
        }

LABEL_24:
        if (v36)
        {
          --*v36;
        }

LABEL_26:
        v8 = (v8 + 1);
        goto LABEL_3;
      }

      if (!v33)
      {
        goto LABEL_12;
      }

      v9 = (*(*v33 + 32))();
      v10 = v33;
      if (*v9)
      {
        goto LABEL_15;
      }

      if (v33)
      {
        v11 = (*(*v33 + 32))();
        v10 = v33;
        goto LABEL_14;
      }

LABEL_13:
      v10 = 0;
      v11 = &v34[2 * v37];
LABEL_14:
      if (*(v11 + 4))
      {
LABEL_15:
        if (v10)
        {
          v12 = (*(*v10 + 32))(v10);
          v10 = v33;
        }

        else
        {
LABEL_17:
          v10 = 0;
          v12 = &v34[2 * v37];
        }

        *(v32 + ((*(v12 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v12 + 12);
      }

      if (v10)
      {
        (*(*v10 + 40))(v10);
      }

      else
      {
        ++v37;
      }
    }

    if (v37 >= v35)
    {
      goto LABEL_24;
    }

LABEL_12:
    if (LODWORD(v34[2 * v37]))
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  memset(&v31, 0, sizeof(v31));
  v13 = (*(*a1 + 160))(a1);
  std::vector<int>::reserve(&v31, v13);
  if (((*(*a1 + 64))(a1, 0x4000000000, 0) & 0x4000000000) == 0)
  {
    if (((*(*a1 + 64))(a1, 0x800000000, 0) & 0x800000000) == 0)
    {
      v30 = 0;
      v54 = 0;
      p_p = 0;
      v56 = 0;
      v34 = 0;
      v35 = 0;
      v33 = &v54;
      v36 = &v30;
      fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, &v33);
    }

    v33 = 0;
    v34 = 0;
    v35 = 0;
    LOBYTE(__p) = 0;
    v54 = &v33;
    p_p = &__p;
    fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::TopOrderVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>();
  }

  for (i = 0; ; i = v33 + 1)
  {
    LODWORD(v33) = i;
    if (i >= (*(*a1 + 160))(a1))
    {
      break;
    }

    std::vector<int>::push_back[abi:ne200100](&v31.__begin_, &v33);
  }

  v33 = a1;
  v34 = a2;
  v35 = a1;
  v15 = *a3;
  v36 = a2;
  v37 = v15;
  v38 = *(a3 + 4);
  v39 = *(a3 + 20);
  v40 = 1;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  memset(v44, 0, sizeof(v44));
  a2[1] = *a2;
  memset(v45, 0, sizeof(v45));
  v46 = 1065353216;
  v53 = 0;
  v50 = 0u;
  memset(v47, 0, sizeof(v47));
  v48 = 0u;
  v49 = 0u;
  v51 = 0;
  for (j = v31.__end_; v31.__begin_ != v31.__end_; j = v31.__end_)
  {
    v17 = *(j - 1);
    v31.__end_ = j - 1;
    if (((*(v32 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      if (*(a3 + 21))
      {
        continue;
      }

      LODWORD(v54) = *(a3 + 22);
      LODWORD(__p) = 2139095040;
      if (*&v54 != INFINITY || *(a3 + 7) != -1)
      {
        continue;
      }
    }

    fst::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>>::Expand(&v33, v17);
    (*(*a1 + 184))(a1, v17, v52);
    (*(*a1 + 240))(a1, v17);
    (*(*a1 + 256))(a1, v17, (*(&v50 + 1) - v50) >> 4);
    v18 = *(&v50 + 1);
    v19 = v50;
    while (v19 != v18)
    {
      (*(*a1 + 208))(a1, v17, v18 - 16);
      v19 = v50;
      v18 = *(&v50 + 1) - 16;
      *(&v50 + 1) -= 16;
    }
  }

  if ((*(a3 + 21) & 1) != 0 || (LODWORD(v54) = *(a3 + 22), LODWORD(__p) = 2139095040, *&v54 != INFINITY) || *(a3 + 7) != -1)
  {
    for (k = 0; k < (*(*a1 + 160))(a1); ++k)
    {
      if (((*(v32 + ((k >> 3) & 0x1FFFFFFFFFFFFFF8)) >> k) & 1) == 0)
      {
        (*(*a1 + 240))(a1, k);
      }
    }
  }

  if (v44[28] == 1)
  {
    (*(*a1 + 192))(a1, 4, 4);
  }

  v22 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v23 = fst::RmEpsilonProperties(v22, 0);
  (*(*a1 + 192))(a1, v23, 0x3FFFFFFF0007);
  v24 = *(a3 + 22);
  *&v54 = v24;
  LODWORD(__p) = 2139095040;
  v25 = *(a3 + 7);
  if (v24 != INFINITY || v25 != -1)
  {
    v54 = __PAIR64__(v25, LODWORD(v24));
    v56 = 0;
    v57 = 981467136;
    fst::Prune<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, &v54);
  }

  if (*(a3 + 21) == 1)
  {
    LODWORD(v54) = *(a3 + 22);
    LODWORD(__p) = 2139095040;
    if (*&v54 == INFINITY && *(a3 + 7) == -1)
    {
      fst::Connect<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1);
    }
  }

  if (v50)
  {
    *(&v50 + 1) = v50;
    operator delete(v50);
  }

  v27 = *(&v49 + 1);
  if (*(&v49 + 1))
  {
    do
    {
      v28 = *v27;
      operator delete(v27);
      v27 = v28;
    }

    while (v28);
  }

  *(&v49 + 1) = 0;
  if (v48)
  {
    operator delete(v48);
  }

  std::deque<int>::~deque[abi:ne200100](v47);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v45);
  fst::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ShortestDistanceState(&v35);
  if (v31.__begin_)
  {
    v31.__end_ = v31.__begin_;
    operator delete(v31.__begin_);
  }

  if (v32)
  {
    operator delete(v32);
  }
}

void sub_1B5550734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  fst::LogMessage::~LogMessage(&a13);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a26)
  {
    a27 = a26;
    operator delete(a26);
  }

  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2)
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
      if ((v4 & 0x200000000) == 0)
      {
        v6 = 0;
        v5[0] = v3;
        v5[1] = 0;
        v5[2] = 0;
        v5[3] = &v6;
        fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a2, v5);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1B5551108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

void sub_1B5551A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v9 = *(v7 - 112);
  if (v9)
  {
    *(v7 - 104) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::AutoQueue<int>::SccQueueType<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NaturalLess<fst::TropicalWeightTpl<float>>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v10 = *(a3 + 8) - *a3;
  if (v10)
  {
    v11 = v10 >> 2;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    bzero(*a3, 4 * v11);
  }

  v29 = 0;
  (*(*a1 + 128))(a1, &v27);
  while (1)
  {
    result = v27;
    if (!v27)
    {
      if (v29 >= v28)
      {
        return result;
      }

LABEL_11:
      v14 = v29;
      goto LABEL_12;
    }

    v13 = (*(*v27 + 16))(v27);
    result = v27;
    if (v13)
    {
      break;
    }

    if (!v27)
    {
      goto LABEL_11;
    }

    v14 = (*(*v27 + 24))();
LABEL_12:
    v26 = 0;
    (*(*a1 + 136))(a1, v14, v24);
    while (1)
    {
      if (!v24[0])
      {
        if (v26 >= v24[2])
        {
          goto LABEL_39;
        }

        goto LABEL_18;
      }

      if ((*(*v24[0] + 24))(v24[0]))
      {
        break;
      }

      if (v24[0])
      {
        v15 = (*(*v24[0] + 32))();
        goto LABEL_19;
      }

LABEL_18:
      v15 = v24[1] + 16 * v26;
LABEL_19:
      if (*v15)
      {
        goto LABEL_29;
      }

      v16 = *(*a2 + 4 * v14);
      if (v16 == *(*a2 + 4 * *(v15 + 12)))
      {
        v17 = *a3;
        if (!a4 || (v18 = (v15 + 8), v31 = 0.0, fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()(a4, (v15 + 8), &v31)))
        {
          v19 = 1;
          goto LABEL_24;
        }

        if ((v17[v16] | 2) == 2)
        {
          v21 = *v18;
          v31 = *v18;
          v30 = 2139095040;
          if (v31 == INFINITY || (v31 = v21, v30 = 0, v21 == 0.0))
          {
            v19 = 2;
          }

          else
          {
            v19 = 3;
          }

LABEL_24:
          v17[v16] = v19;
        }

        *a5 = 0;
      }

      v20 = *(v15 + 8);
      v31 = v20;
      v30 = 2139095040;
      if (v20 != INFINITY)
      {
        v31 = v20;
        v30 = 0;
        if (v20 != 0.0)
        {
          *a6 = 0;
        }
      }

LABEL_29:
      if (v24[0])
      {
        (*(*v24[0] + 40))(v24[0]);
      }

      else
      {
        ++v26;
      }
    }

    if (v24[0])
    {
      (*(*v24[0] + 8))();
      goto LABEL_41;
    }

LABEL_39:
    if (v25)
    {
      --*v25;
    }

LABEL_41:
    if (v27)
    {
      (*(*v27 + 32))(v27);
    }

    else
    {
      ++v29;
    }
  }

  if (v27)
  {
    return (*(*v27 + 8))();
  }

  return result;
}

void sub_1B5551E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  _Unwind_Resume(exception_object);
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1)
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
  fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::TopOrderVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>();
}

void sub_1B5552060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
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

void sub_1B55528A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v9 = *(v7 - 112);
  if (v9)
  {
    *(v7 - 104) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

int *fst::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>>::Expand(uint64_t a1, int a2)
{
  v10 = a2;
  *(a1 + 288) = 2139095040;
  *(a1 + 272) = *(a1 + 264);
  result = fst::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ShortestDistance((a1 + 16), a2);
  if ((*(a1 + 132) & 1) == 0)
  {
    std::deque<int>::push_back((a1 + 184), &v10);
    for (i = *(a1 + 224); i; i = *(a1 + 224))
    {
      v5 = i - 1;
      v6 = *(*(*(a1 + 192) + (((*(a1 + 216) + v5) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(a1 + 216) + v5) & 0x3FF));
      *(a1 + 224) = v5;
      std::deque<int>::__maybe_remove_back_spare[abi:ne200100]((a1 + 184), 1);
      while (*(a1 + 240) <= v6)
      {
        LOBYTE(v9) = 0;
        std::vector<BOOL>::push_back(a1 + 232, &v9);
      }

      v7 = *(a1 + 232);
      v8 = *(v7 + 8 * (v6 >> 6));
      if ((v8 & (1 << v6)) == 0)
      {
        *(v7 + 8 * (v6 >> 6)) = v8 | (1 << v6);
        operator new();
      }
    }

    for (result = *(a1 + 256); result; result = *(a1 + 256))
    {
      *(*(a1 + 232) + ((result[2] >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << result[2]);
      *(a1 + 256) = *result;
      operator delete(result);
    }

    ++*(a1 + 292);
  }

  return result;
}

void sub_1B5552E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _DWORD *a20)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  else if (a20)
  {
    --*a20;
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ShortestDistance(void *a1, int a2)
{
  if ((*(**a1 + 24))(*a1) == -1)
  {
    result = (*(**a1 + 64))(*a1, 4, 0);
    if (!result)
    {
      return result;
    }

    v7 = a1 + 116;
    goto LABEL_90;
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

  v4 = a1[1];
  for (i = *v4; a2 >= ((v4[1] - *v4) >> 2); i = *v4)
  {
    LODWORD(v37[0]) = 2139095040;
    std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](v4, v37);
    LODWORD(v37[0]) = 2139095040;
    std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100]((a1 + 5), v37);
    LOBYTE(v37[0]) = 0;
    std::vector<BOOL>::push_back((a1 + 8), v37);
    v4 = a1[1];
  }

  if (*(a1 + 33) == 1)
  {
    v6 = a1[11];
    if (a2 >= ((a1[12] - v6) >> 2))
    {
      do
      {
        std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
        v6 = a1[11];
      }

      while (a2 >= ((a1[12] - v6) >> 2));
      i = *a1[1];
    }

    *(v6 + 4 * a2) = *(a1 + 28);
  }

  *(i + 4 * a2) = 0;
  *(a1[5] + 4 * a2) = 0;
  *(a1[8] + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  (*(**(a1[2] + 16) + 24))(*(a1[2] + 16), a2);
  v7 = a1 + 116;
  do
  {
    if ((*(**(a1[2] + 16) + 48))(*(a1[2] + 16)))
    {
      goto LABEL_86;
    }

    v8 = (*(**(a1[2] + 16) + 16))(*(a1[2] + 16));
    (*(**(a1[2] + 16) + 32))(*(a1[2] + 16));
    while (1)
    {
      v9 = a1[1];
      if (v8 < ((v9[1] - *v9) >> 2))
      {
        break;
      }

      LODWORD(v37[0]) = 2139095040;
      std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](v9, v37);
      LODWORD(v37[0]) = 2139095040;
      std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100]((a1 + 5), v37);
      LOBYTE(v37[0]) = 0;
      std::vector<BOOL>::push_back((a1 + 8), v37);
    }

    if (*(a1 + 32) == 1)
    {
      LODWORD(v37[0]) = (*(**a1 + 32))(*a1, v8);
      v40 = 2139095040;
      if (*v37 != INFINITY)
      {
LABEL_86:
        ++*(a1 + 28);
        result = (*(**a1 + 64))(*a1, 4, 0);
        if (!result)
        {
          return result;
        }

LABEL_90:
        *v7 = 1;
        return result;
      }
    }

    *(a1[8] + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v8);
    v10 = a1[5];
    v11 = *(v10 + 4 * v8);
    *(v10 + 4 * v8) = 2139095040;
    v12 = *a1;
    v39 = 0;
    (*(*v12 + 136))(v12, v8, v37);
    while (1)
    {
      if (!v37[0])
      {
        if (v39 >= v37[2])
        {
LABEL_78:
          v35 = 1;
          goto LABEL_79;
        }

LABEL_26:
        v13 = v37[1] + 16 * v39;
        goto LABEL_27;
      }

      if ((*(*v37[0] + 24))(v37[0]))
      {
        goto LABEL_78;
      }

      if (!v37[0])
      {
        goto LABEL_26;
      }

      v13 = (*(*v37[0] + 32))(v37[0]);
LABEL_27:
      if (!*v13)
      {
        v14 = a1[1];
        LODWORD(v15) = *(v13 + 12);
        if (v15 >= ((v14[1] - *v14) >> 2))
        {
          do
          {
            v40 = 2139095040;
            std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](v14, &v40);
            v40 = 2139095040;
            std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100]((a1 + 5), &v40);
            LOBYTE(v40) = 0;
            std::vector<BOOL>::push_back((a1 + 8), &v40);
            v14 = a1[1];
            v15 = *(v13 + 12);
          }

          while (v15 >= (v14[1] - *v14) >> 2);
        }

        if (*(a1 + 33) == 1)
        {
          while (1)
          {
            v16 = a1[11];
            LODWORD(v15) = *(v13 + 12);
            if (v15 < ((a1[12] - v16) >> 2))
            {
              break;
            }

            std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
          }

          v14 = a1[1];
          if (*(v16 + 4 * v15) != *(a1 + 28))
          {
            *(*v14 + 4 * v15) = 2139095040;
            *(a1[5] + 4 * *(v13 + 12)) = 2139095040;
            v15 = *(v13 + 12);
            *(a1[8] + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v15);
            *(a1[11] + 4 * v15) = *(a1 + 28);
            v14 = a1[1];
            LODWORD(v15) = *(v13 + 12);
          }
        }

        v17 = *v14;
        v18 = a1[5];
        v19 = NAN;
        if (v11 != -INFINITY)
        {
          v20 = *(v13 + 8);
          v19 = NAN;
          if (v20 != -INFINITY)
          {
            v19 = INFINITY;
            v21 = v20 == INFINITY || v11 == INFINITY;
            v22 = v11 + v20;
            if (!v21)
            {
              v19 = v22;
            }
          }
        }

        v23 = *(v17 + 4 * v15);
        if (v23 >= v19)
        {
          v24 = v19;
        }

        else
        {
          v24 = *(v17 + 4 * v15);
        }

        if (v19 == -INFINITY || v23 == -INFINITY)
        {
          v24 = NAN;
        }

        v27 = *(a1 + 7);
        if (v24 > (v23 + v27) || v23 > (v27 + v24))
        {
          break;
        }
      }

LABEL_75:
      if (v37[0])
      {
        (*(*v37[0] + 40))(v37[0]);
      }

      else
      {
        ++v39;
      }
    }

    *(v17 + 4 * v15) = v24;
    v29 = *(v18 + 4 * v15);
    if (v29 >= v19)
    {
      v30 = v19;
    }

    else
    {
      v30 = *(v18 + 4 * v15);
    }

    v32 = v19 == -INFINITY || v29 == -INFINITY;
    v33 = NAN;
    if (!v32)
    {
      v33 = v30;
    }

    *(v18 + 4 * v15) = v33;
    if (*(v17 + 4 * v15) != -INFINITY && (v33 < -INFINITY || v33 > -INFINITY))
    {
      v34 = **(a1[2] + 16);
      if ((*(a1[8] + ((*(v13 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v13 + 12)))
      {
        (*(v34 + 40))();
      }

      else
      {
        (*(v34 + 24))();
        *(a1[8] + ((*(v13 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v13 + 12);
      }

      goto LABEL_75;
    }

    v35 = 0;
    *v7 = 1;
LABEL_79:
    result = v37[0];
    if (v37[0])
    {
      result = (*(*v37[0] + 8))(v37[0]);
    }

    else if (v38)
    {
      --*v38;
    }
  }

  while ((v35 & 1) != 0);
  return result;
}

void sub_1B555364C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  else if (a12)
  {
    --*a12;
  }

  _Unwind_Resume(exception_object);
}

void fst::Prune<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2)
{
  v65[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 160))(a1);
  if (v4)
  {
    v5 = v4;
    LODWORD(v61[0]) = 2139095040;
    std::vector<fst::TropicalWeightTpl<float>>::vector[abi:ne200100](__p, v4);
    memset(&v59, 0, sizeof(v59));
    if (!*(a2 + 16))
    {
      std::vector<int>::reserve(&v59, v5);
      fst::ShortestDistance<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, &v59, 1);
    }

    v6 = *(a2 + 16);
    if (*(a2 + 4) && (v7 = *(a2 + 16), v8 = *(v7 + 8), v9 = *v6, (*(*a1 + 24))(a1) < ((v8 - v9) >> 2)) && (LODWORD(v61[0]) = *(*v6 + 4 * (*(*a1 + 24))(a1)), LODWORD(v57) = 2139095040, *v61 != INFINITY))
    {
      v61[0] = __p;
      v61[1] = v6;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      memset(v65, 0, 28);
      LOBYTE(v56[0]) = 0;
      std::vector<BOOL>::vector(&v57, v5);
      std::vector<unsigned long>::vector[abi:ne200100](v56, v5);
      v53 = 0;
      v54 = 0;
      v55 = 0;
      LODWORD(v48) = (*(*a1 + 200))(a1);
      std::vector<int>::push_back[abi:ne200100](&v53, &v48);
      v10 = *(*v6 + 4 * (*(*a1 + 24))(a1));
      v11 = NAN;
      if (v10 != -INFINITY)
      {
        v12 = *a2;
        v11 = NAN;
        if (*a2 != -INFINITY)
        {
          v11 = INFINITY;
          v13 = v12 == INFINITY || v10 == INFINITY;
          v14 = v10 + v12;
          if (!v13)
          {
            v11 = v14;
          }
        }
      }

      v51 = v11;
      v50 = (*(*a1 + 24))(a1);
      if (fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()(&v52, &v51, (*v6 + 4 * v50)))
      {
        v15 = 0;
      }

      else
      {
        *(__p[0] + v50) = 0;
        v16 = fst::Heap<int,fst::PruneCompare<int,fst::TropicalWeightTpl<float>>,false>::Insert(v61, &v50);
        *(v56[0] + v50) = v16;
        v15 = 1;
      }

      while (LODWORD(v65[3]))
      {
        v50 = *v65[0];
        fst::Heap<int,fst::PruneCompare<int,fst::TropicalWeightTpl<float>>,false>::Pop(v61);
        v17 = v50;
        v18 = v50;
        *(v56[0] + v50) = -1;
        *(v57 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        v19 = __p[0];
        (*(*a1 + 32))(a1);
        v21 = v19[v18];
        v22 = NAN;
        if (v21 != -INFINITY && v20 != -INFINITY)
        {
          v22 = INFINITY;
          v23 = v21 == INFINITY || v20 == INFINITY;
          v24 = v20 + v21;
          if (!v23)
          {
            v22 = v24;
          }
        }

        *&v48 = v22;
        if (fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()(&v52, &v51, &v48))
        {
          (*(*a1 + 184))(a1, v50, INFINITY);
        }

        (*(*a1 + 296))(a1, v50, &v49);
        while (!(*(*v49 + 24))(v49))
        {
          v48 = *(*(*v49 + 32))(v49);
          v25 = *(__p[0] + v50);
          v26 = NAN;
          if (v25 != -INFINITY)
          {
            v26 = NAN;
            if (*(&v48 + 2) != -INFINITY)
            {
              v26 = INFINITY;
              v27 = *(&v48 + 2) == INFINITY || v25 == INFINITY;
              v28 = v25 + *(&v48 + 2);
              if (!v27)
              {
                v26 = v28;
              }
            }
          }

          if (SHIDWORD(v48) >= ((*(v7 + 8) - *v6) >> 2))
          {
            v29 = INFINITY;
          }

          else
          {
            v29 = *(*v6 + 4 * SHIDWORD(v48));
          }

          v30 = NAN;
          if (v26 != -INFINITY && v29 != -INFINITY)
          {
            v30 = INFINITY;
            v31 = v29 == INFINITY || v26 == INFINITY;
            v32 = v26 + v29;
            if (!v31)
            {
              v30 = v32;
            }
          }

          v47 = v30;
          if (fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()(&v52, &v51, &v47))
          {
            HIDWORD(v48) = *v53;
            (*(*v49 + 88))(v49, &v48);
          }

          else
          {
            v33 = *(__p[0] + v50);
            v34 = NAN;
            if (v33 != -INFINITY)
            {
              v34 = NAN;
              if (*(&v48 + 2) != -INFINITY)
              {
                v34 = INFINITY;
                v35 = *(&v48 + 2) == INFINITY || v33 == INFINITY;
                v36 = v33 + *(&v48 + 2);
                if (!v35)
                {
                  v34 = v36;
                }
              }
            }

            v46 = v34;
            if (fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()(&v52, &v46, __p[0] + SHIDWORD(v48)))
            {
              v37 = *(__p[0] + v50);
              v38 = NAN;
              if (v37 != -INFINITY)
              {
                v38 = NAN;
                if (*(&v48 + 2) != -INFINITY)
                {
                  v38 = INFINITY;
                  v39 = *(&v48 + 2) == INFINITY || v37 == INFINITY;
                  v40 = v37 + *(&v48 + 2);
                  if (!v39)
                  {
                    v38 = v40;
                  }
                }
              }

              *(__p[0] + SHIDWORD(v48)) = v38;
            }

            if (((*(v57 + ((SHIDWORD(v48) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> SBYTE12(v48)) & 1) == 0)
            {
              v41 = *(a2 + 4);
              if (v41 == -1 || v15 < v41)
              {
                v42 = *(v56[0] + SHIDWORD(v48));
                if (v42 == -1)
                {
                  v43 = fst::Heap<int,fst::PruneCompare<int,fst::TropicalWeightTpl<float>>,false>::Insert(v61, &v48 + 3);
                  *(v56[0] + SHIDWORD(v48)) = v43;
                  ++v15;
                }

                else
                {
                  fst::Heap<int,fst::PruneCompare<int,fst::TropicalWeightTpl<float>>,false>::Update(v61, v42, &v48 + 3);
                }
              }
            }
          }

          (*(*v49 + 40))(v49);
        }

        if (v49)
        {
          (*(*v49 + 8))(v49);
        }
      }

      v44 = v58;
      if (v58)
      {
        v45 = 0;
        do
        {
          if (((*(v57 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
          {
            LODWORD(v48) = v45;
            std::vector<int>::push_back[abi:ne200100](&v53, &v48);
            v44 = v58;
          }

          ++v45;
        }

        while (v45 < v44);
      }

      (*(*a1 + 216))(a1, &v53);
      if (v53)
      {
        v54 = v53;
        operator delete(v53);
      }

      if (v56[0])
      {
        v56[1] = v56[0];
        operator delete(v56[0]);
      }

      if (v57)
      {
        operator delete(v57);
      }

      fst::Heap<int,fst::PruneCompare<int,fst::TropicalWeightTpl<float>>,false>::~Heap(v61);
    }

    else
    {
      (*(*a1 + 224))(a1);
    }

    if (v59.__begin_)
    {
      v59.__end_ = v59.__begin_;
      operator delete(v59.__begin_);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_1B5553F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  fst::Heap<int,fst::PruneCompare<int,fst::TropicalWeightTpl<float>>,false>::~Heap(&a31);
  if (a25)
  {
    operator delete(a25);
  }

  if (a28)
  {
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::Heap<int,fst::PruneCompare<int,fst::TropicalWeightTpl<float>>,false>::Insert(uint64_t a1, int *a2)
{
  v4 = *(a1 + 96);
  v5 = (a1 + 96);
  v8 = *(a1 + 72);
  v6 = (a1 + 72);
  v7 = v8;
  if (v4 >= (*(v5 - 2) - v8) >> 2)
  {
    std::vector<int>::push_back[abi:ne200100](v6, a2);
    std::vector<int>::push_back[abi:ne200100]((a1 + 24), v5);
    std::vector<int>::push_back[abi:ne200100]((a1 + 48), v5);
    LODWORD(v9) = *(a1 + 96);
  }

  else
  {
    *(v7 + 4 * v4) = *a2;
    v9 = *(a1 + 96);
    *(*(a1 + 24) + 4 * *(*(a1 + 48) + 4 * v9)) = v9;
  }

  *(a1 + 96) = v9 + 1;

  return fst::Heap<int,fst::PruneCompare<int,fst::TropicalWeightTpl<float>>,false>::Insert(a1, a2, v9);
}

uint64_t fst::Heap<int,fst::PruneCompare<int,fst::TropicalWeightTpl<float>>,false>::Pop(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *v1;
  v3 = *(a1 + 96) - 1;
  v4 = *(a1 + 48);
  v5 = *v4;
  v6 = v4[v3];
  *v4 = v6;
  v7 = *(a1 + 24);
  *(v7 + 4 * v6) = 0;
  v4[v3] = v5;
  *(v7 + 4 * v5) = v3;
  LODWORD(v4) = *v1;
  *v1 = v1[v3];
  v1[v3] = v4;
  --*(a1 + 96);
  fst::Heap<int,fst::PruneCompare<int,fst::TropicalWeightTpl<float>>,false>::Heapify(a1, 0);
  return v2;
}

uint64_t fst::Heap<int,fst::PruneCompare<int,fst::TropicalWeightTpl<float>>,false>::Update(uint64_t a1, int a2, int *a3)
{
  v5 = *(*(a1 + 24) + 4 * a2);
  if (fst::PruneCompare<int,fst::TropicalWeightTpl<float>>::operator()(a1, *a3, *(*(a1 + 72) + 4 * ((v5 - 1) / 2))))
  {

    return fst::Heap<int,fst::PruneCompare<int,fst::TropicalWeightTpl<float>>,false>::Insert(a1, a3, v5);
  }

  else
  {
    *(*(a1 + 72) + 4 * v5) = *a3;

    return fst::Heap<int,fst::PruneCompare<int,fst::TropicalWeightTpl<float>>,false>::Heapify(a1, v5);
  }
}

void sub_1B5554218(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::Heap<int,fst::PruneCompare<int,fst::TropicalWeightTpl<float>>,false>::Insert(uint64_t a1, int *a2, int a3)
{
  v3 = a3;
  if (a3 >= 1)
  {
    v6 = *(a1 + 72);
    while (1)
    {
      v7 = v3 - 1;
      v8 = (v3 - 1) >> 1;
      if (fst::PruneCompare<int,fst::TropicalWeightTpl<float>>::operator()(a1, *(v6 + 4 * v8), *a2))
      {
        break;
      }

      v9 = *(a1 + 48);
      v10 = *(v9 + 4 * v3);
      v11 = *(v9 + 4 * v8);
      *(v9 + 4 * v3) = v11;
      v12 = *(a1 + 24);
      *(v12 + 4 * v11) = v3;
      *(v9 + 4 * v8) = v10;
      *(v12 + 4 * v10) = v8;
      v6 = *(a1 + 72);
      LODWORD(v10) = *(v6 + 4 * v3);
      *(v6 + 4 * v3) = *(v6 + 4 * v8);
      *(v6 + 4 * v8) = v10;
      v3 = v7 >> 1;
      if (v7 <= 1)
      {
        return *(*(a1 + 48) + 4 * v8);
      }
    }
  }

  v8 = v3;
  return *(*(a1 + 48) + 4 * v8);
}

BOOL fst::PruneCompare<int,fst::TropicalWeightTpl<float>>::operator()(uint64_t **a1, int a2, int a3)
{
  v5 = **a1;
  v6 = ((*a1)[1] - v5) >> 2;
  if (v6 <= a2)
  {
    v7 = INFINITY;
  }

  else
  {
    v7 = *(v5 + 4 * a2);
  }

  v8 = *a1[1];
  v9 = (a1[1][1] - v8) >> 2;
  if (v9 <= a2)
  {
    v10 = INFINITY;
  }

  else
  {
    v10 = *(v8 + 4 * a2);
  }

  v11 = NAN;
  if (v7 != -INFINITY && v10 != -INFINITY)
  {
    v11 = INFINITY;
    v12 = v10 == INFINITY || v7 == INFINITY;
    v13 = v7 + v10;
    if (!v12)
    {
      v11 = v13;
    }
  }

  v22 = v3;
  v23 = v4;
  v21 = v11;
  if (v6 <= a3)
  {
    v14 = INFINITY;
  }

  else
  {
    v14 = *(v5 + 4 * a3);
  }

  if (v9 <= a3)
  {
    v15 = INFINITY;
  }

  else
  {
    v15 = *(v8 + 4 * a3);
  }

  v16 = NAN;
  if (v14 != -INFINITY && v15 != -INFINITY)
  {
    v16 = INFINITY;
    v17 = v15 == INFINITY || v14 == INFINITY;
    v18 = v14 + v15;
    if (!v17)
    {
      v16 = v18;
    }
  }

  v20 = v16;
  return fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()((a1 + 2), &v21, &v20);
}

BOOL fst::Heap<int,fst::PruneCompare<int,fst::TropicalWeightTpl<float>>,false>::Heapify(_BOOL8 result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = (2 * a2) | 1u;
    if (v4 >= *(v3 + 96) || !(result = fst::PruneCompare<int,fst::TropicalWeightTpl<float>>::operator()(v3, *(*(v3 + 72) + 4 * v4), *(*(v3 + 72) + 4 * a2))))
    {
      v4 = a2;
    }

    v5 = 2 * a2 + 2;
    if (v5 < *(v3 + 96))
    {
      result = fst::PruneCompare<int,fst::TropicalWeightTpl<float>>::operator()(v3, *(*(v3 + 72) + 4 * v5), *(*(v3 + 72) + 4 * v4));
      if (result)
      {
        v4 = v5;
      }

      else
      {
        v4 = v4;
      }
    }

    if (v4 == a2)
    {
      break;
    }

    v6 = *(v3 + 48);
    v7 = *(v6 + 4 * a2);
    v8 = *(v6 + 4 * v4);
    *(v6 + 4 * a2) = v8;
    v9 = *(v3 + 24);
    *(v9 + 4 * v8) = a2;
    *(v6 + 4 * v4) = v7;
    *(v9 + 4 * v7) = v4;
    v10 = *(v3 + 72);
    LODWORD(v7) = *(v10 + 4 * a2);
    *(v10 + 4 * a2) = *(v10 + 4 * v4);
    *(v10 + 4 * v4) = v7;
    a2 = v4;
  }

  return result;
}

void *fst::Heap<int,fst::PruneCompare<int,fst::TropicalWeightTpl<float>>,false>::~Heap(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void fst::DeterminizeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::DeterminizeFst(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D1B560;
  a1[1] = 0;
  fst::DeterminizeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Init<fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>(a1, a2);
}

void fst::DeterminizeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Init<fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 64))(a2, 0x10000, 1))
  {
    operator new();
  }

  operator new();
}

void fst::DeterminizeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~DeterminizeFst(void *a1)
{
  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

void sub_1B5554AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~DeterminizeFstImplBase(v18);
  _Unwind_Resume(a1);
}

uint64_t fst::DeterminizeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~DeterminizeFstImplBase(void *a1)
{
  *a1 = &unk_1F2D1B6B0;
  v2 = a1[17];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void fst::DeterminizeFsaImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(void *a1)
{
  fst::DeterminizeFsaImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::DeterminizeFsaImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::DeterminizeFsaImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::Expand(void *a1, int a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  fst::DeterminizeFsaImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::GetLabelMap(a1, a2, &v8);
  v4 = v8;
  if (v8 != v9)
  {
    do
    {
      fst::DeterminizeFsaImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::AddArc(a1, a2, v4 + 5);
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

      v4 = v6;
    }

    while (v6 != v9);
  }

  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
  std::__tree<int>::destroy(&v8, v9[0]);
}

uint64_t fst::DeterminizeFsaImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::ComputeStart(uint64_t a1)
{
  result = (*(**(a1 + 136) + 24))(*(a1 + 136));
  if (result != -1)
  {
    operator new();
  }

  return result;
}

float fst::DeterminizeFsaImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::ComputeFinal(uint64_t a1, int a2)
{
  v2 = **(*(*(a1 + 184) + 88) + 8 * a2);
  if (!v2)
  {
    return INFINITY;
  }

  v4 = INFINITY;
  do
  {
    (*(**(a1 + 136) + 32))(*(a1 + 136), *(v2 + 2));
    v6 = v2[3];
    v7 = NAN;
    if (v6 != -INFINITY && v5 != -INFINITY)
    {
      v8 = v5 == INFINITY || v6 == INFINITY;
      v9 = v6 + v5;
      if (v8)
      {
        v7 = INFINITY;
      }

      else
      {
        v7 = v9;
      }
    }

    if (v4 >= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }

    if (v7 == -INFINITY || v4 == -INFINITY)
    {
      v4 = NAN;
    }

    else
    {
      v4 = v10;
    }

    if (v4 >= -INFINITY && v4 <= -INFINITY)
    {
      *(a1 + 8) |= 4uLL;
    }

    v2 = *v2;
  }

  while (v2);
  return v4;
}

void *fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::CompactHashBiTable(void *a1, size_t a2)
{
  a1[1] = a1;
  a1[2] = a1;
  std::unordered_set<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::unordered_set((a1 + 3), a2, a1 + 1, a1 + 2);
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  if (a2)
  {
    std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(a1 + 10, a2);
  }

  return a1;
}

void sub_1B55551FC(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 88) = v4;
    operator delete(v4);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v1 + 24);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::unordered_set(uint64_t a1, size_t a2, void *a3, void *a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *a3;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = *a4;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__rehash<true>(a1, a2);
  return a1;
}

uint64_t fst::DeterminizeFsaImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(void *a1)
{
  *a1 = &unk_1F2D1B628;
  v2 = a1[22];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x20C4093837F09);
  }

  v3 = a1[23];
  if (v3)
  {
    v4 = fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::~DefaultDeterminizeStateTable(v3);
    MEMORY[0x1B8C85350](v4, 0x10E0C400200E20DLL);
  }

  return fst::DeterminizeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~DeterminizeFstImplBase(a1);
}

void sub_1B55554C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~DeterminizeFstImplBase(v18);
  _Unwind_Resume(a1);
}

void sub_1B5555650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v15);
  _Unwind_Resume(a1);
}

void fst::DeterminizeFsaImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::GetLabelMap(void *a1, int a2, void *a3)
{
  v5 = **(*(a1[23] + 88) + 8 * a2);
  if (v5)
  {
    while (1)
    {
      v6 = *(v5 + 2);
      v7 = a1[17];
      v22 = 0;
      (*(*v7 + 136))(v7, v6, v20);
      if (!v20[0])
      {
        break;
      }

      if (!(*(*v20[0] + 24))(v20[0]))
      {
        if (v20[0])
        {
          v8 = (*(*v20[0] + 32))();
        }

        else
        {
LABEL_7:
          v8 = v20[1] + 16 * v22;
        }

        v9 = v5[3];
        v10 = NAN;
        if (v9 != -INFINITY)
        {
          v11 = *(v8 + 8);
          v10 = NAN;
          if (v11 != -INFINITY)
          {
            v10 = INFINITY;
            v12 = v11 == INFINITY || v9 == INFINITY;
            v13 = v9 + v11;
            if (!v12)
            {
              v10 = v13;
            }
          }
        }

        v19[0] = *(v8 + 12);
        *&v19[1] = v10;
        fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::FilterArc(a1[22], v8, (v5 + 2), v19, a3);
      }

      if (!v20[0])
      {
        goto LABEL_18;
      }

      (*(*v20[0] + 8))();
LABEL_20:
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_21;
      }
    }

    if (v22 < v20[2])
    {
      goto LABEL_7;
    }

LABEL_18:
    if (v21)
    {
      --*v21;
    }

    goto LABEL_20;
  }

LABEL_21:
  v16 = *a3;
  v14 = a3 + 1;
  v15 = v16;
  if (v16 != v14)
  {
    do
    {
      fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::NormArc(a1, (v15 + 5));
      v17 = v15[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v15[2];
          v12 = *v18 == v15;
          v15 = v18;
        }

        while (!v12);
      }

      v15 = v18;
    }

    while (v18 != v14);
  }
}

void sub_1B55558D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  else if (a13)
  {
    --*a13;
  }

  _Unwind_Resume(exception_object);
}

void fst::DeterminizeFsaImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::AddArc(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = *a3;
  LODWORD(v7) = *a3;
  *(&v7 + 4) = v5;
  HIDWORD(v7) = fst::DeterminizeFsaImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::FindState(a1, a3[1]);
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](MutableState + 24, &v7);
}

uint64_t fst::DeterminizeFsaImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::FindState(uint64_t a1, float **a2)
{
  State = fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::FindState(*(a1 + 184), a2);
  v5 = State;
  if (*(a1 + 152))
  {
    v6 = *(a1 + 160);
    if (State >= ((v6[1] - *v6) >> 2))
    {
      v8 = fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::ComputeDistance(a1, a2);
      std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](v6, &v8);
    }
  }

  return v5;
}

uint64_t fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::FindState(void *a1, void **a2)
{
  v8 = a2;
  v2 = (a1[12] - a1[11]) >> 3;
  Id = fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::FindId(a1 + 1, &v8, 1);
  if (Id != v2)
  {
    v4 = v8;
    if (v8)
    {
      v5 = *v8;
      if (*v8)
      {
        do
        {
          v6 = *v5;
          operator delete(v5);
          v5 = v6;
        }

        while (v6);
      }

      *v4 = 0;
      MEMORY[0x1B8C85350](v4, 0x1020C405F07FB98);
    }
  }

  return Id;
}

uint64_t fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::FindId(void *a1, void *a2, int a3)
{
  a1[13] = a2;
  v6 = std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::find<int>(a1 + 3, &fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::kCurrentKey);
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
  v11 = (v9 - v8) >> 3;
  v20 = v11;
  if (v9 >= v10)
  {
    if ((v11 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = v10 - v8;
    v14 = v13 >> 2;
    if (v13 >> 2 <= (v11 + 1))
    {
      v14 = v11 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>((a1 + 10), v15);
    }

    *(8 * v11) = *a2;
    v12 = 8 * v11 + 8;
    v16 = a1[10];
    v17 = a1[11] - v16;
    v18 = (8 * v11 - v17);
    memcpy(v18, v16, v17);
    v19 = a1[10];
    a1[10] = v18;
    a1[11] = v12;
    a1[12] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v9 = *a2;
    v12 = (v9 + 1);
  }

  a1[11] = v12;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 3, &v20);
  return v20;
}

void sub_1B5555CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v15 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~DeterminizeFstImplBase(v14);
  _Unwind_Resume(a1);
}

void sub_1B5555E70(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x20C4093837F09);
  fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::~ImplToFst((v2 - 48));
  _Unwind_Resume(a1);
}

void fst::DeterminizeFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::~DeterminizeFstImpl(void *a1)
{
  fst::DeterminizeFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::~DeterminizeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::DeterminizeFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0) || (*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0)))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::DeterminizeFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::Expand(uint64_t a1, int a2)
{
  fst::ArcIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::ArcIterator(&v9, *(a1 + 160), a2);
  v4 = v9;
  for (i = v10; ; i = ++v10)
  {
    v6 = *(v4 + 24);
    if (i >= (*(v4 + 32) - v6) >> 4)
    {
      break;
    }

    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](MutableState + 24, (v6 + 16 * i));
    v4 = v9;
  }

  --*(v4 + 52);
  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::~ArcMapFst(void *a1)
{
  fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::Write(uint64_t a1)
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

void sub_1B55564DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B55565D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::Init(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__str, "map");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v2 = (*(**(a1 + 136) + 112))(*(a1 + 136));
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v2);
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 48) = 0;
  }

  result = (*(**(a1 + 136) + 24))(*(a1 + 136));
  *(a1 + 156) = 0;
  if (result == -1)
  {
    *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950000;
  }

  else
  {
    v5 = (*(**(a1 + 136) + 64))(*(a1 + 136), 0x3FFFFFFF0004, 0);
    result = fst::ProjectProperties(v5, 1);
    *(a1 + 8) = *(a1 + 8) & 4 | result & 0x3FFCFFFF0007;
    if (*(a1 + 156) == 2)
    {
      *(a1 + 160) = 0;
    }
  }

  return result;
}

void sub_1B55568D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::~ArcMapFstImpl(uint64_t a1)
{
  fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::~ArcMapFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0) || (fst::ProjectProperties(0, 1) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D1B930;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D1B8F8;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *a2;
  *(a1 + 112) = *(a2 + 8);
  operator new();
}

{
  *a1 = &unk_1F2D1B930;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D1B8F8;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

void sub_1B5556AF0(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D1B930;
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

void fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::~CacheBaseImpl(void *a1)
{
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::~CacheBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::~FstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void *fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>::VectorCacheStore(void *a1, _BYTE *a2)
{
  *a1 = *a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a1 + 4;
  a1[5] = a1 + 4;
  a1[6] = 0;
  a1[7] = 0;
  fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::Clear(a1);
  a1[7] = a1[5];
  return a1;
}

void sub_1B5556CBC(_Unwind_Exception *a1)
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

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::~CacheBaseImpl(void *a1)
{
  *a1 = &unk_1F2D1B8F8;
  v2 = a1[15];
  if (v2)
  {
    v3 = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>::~VectorCacheStore(v2);
    MEMORY[0x1B8C85350](v3, 0x10A0C407A9BBF1FLL);
  }

  v4 = a1[9];
  if (v4)
  {
    operator delete(v4);
  }

  return fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::~FstImpl(a1);
}

void *fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>::~VectorCacheStore(void *a1)
{
  fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::Clear(a1);
  std::__list_imp<char *>::clear(a1 + 4);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::~ArcMapFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D1B868;
  v2 = *(a1 + 136);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 152) == 1)
  {
    v3 = *(a1 + 144);
    if (v3)
    {
      MEMORY[0x1B8C85350](v3, 0xC400A2AC0F1);
    }
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::~CacheBaseImpl(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      v2 = (*(**(a1 + 136) + 24))(*(a1 + 136));
      v3 = *(a1 + 160);
      if (v3 != -1 && v3 <= v2)
      {
        v5 = v2 + 1;
      }

      else
      {
        v5 = v2;
      }

      if (v5 >= *(a1 + 164))
      {
        *(a1 + 164) = v5 + 1;
      }

      *(a1 + 64) = v5;
      *(a1 + 60) = 1;
      if (*(a1 + 68) <= v5)
      {
        *(a1 + 68) = v5 + 1;
      }
    }
  }

  return *(a1 + 64);
}

void *fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasFinal(a1, a2) & 1) == 0)
  {
    v6 = *(a1 + 156);
    if (v6 == 1)
    {
      v8 = *(a1 + 160);
      if (v8 != a2)
      {
        v20 = v8 != -1 && v8 <= a2;
        v21 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v20));
        v40 = 0;
        v41 = v21;
        v42 = -1;
        fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>::operator()(&v40, &v45);
        if (v45)
        {
          v23 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::Zero();
          v28 = *v23;
          v22 = v29;
          std::list<int>::list(v29, (v23 + 2));
          v30 = v23[8];
          fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::SetFinal(a1, a2, &v28);
        }

        else
        {
          v31 = v46;
          v22 = v32;
          std::list<int>::list(v32, v47);
          v33 = v48;
          fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::SetFinal(a1, a2, &v31);
        }

        std::__list_imp<char *>::clear(v22);
        v18 = v47;
        goto LABEL_35;
      }

      v9 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::One();
      v34 = *v9;
      v10 = &v34;
      std::list<int>::list(v35, (v9 + 2));
      v36 = v9[8];
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::SetFinal(a1, a2, &v34);
    }

    else
    {
      if (v6 != 2)
      {
        v11 = *(a1 + 160);
        v13 = v11 != -1 && v11 <= a2;
        v14 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v13));
        v40 = 0;
        v41 = v14;
        v42 = -1;
        fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>::operator()(&v40, &v45);
        if (v45)
        {
          if (FLAGS_fst_error_fatal == 1)
          {
            std::string::basic_string[abi:ne200100]<0>(&v40, "FATAL");
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(&v40, "ERROR");
          }

          v15 = fst::LogMessage::LogMessage(&v44, &v40);
          v16 = fst::cerr(v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "ArcMapFst: non-zero arc labels for superfinal arc", 49);
          fst::LogMessage::~LogMessage(&v44);
          if (v43 < 0)
          {
            operator delete(v40);
          }

          *(a1 + 8) |= 4uLL;
        }

        v37 = v46;
        std::list<int>::list(v38, v47);
        v39 = v48;
        fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::SetFinal(a1, a2, &v37);
        std::__list_imp<char *>::clear(v38);
        v18 = v47;
        goto LABEL_35;
      }

      if (*(a1 + 160) == a2)
      {
        v7 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::One();
      }

      else
      {
        v7 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::Zero();
      }

      v17 = v7;
      v25 = *v7;
      v10 = &v25;
      std::list<int>::list(v26, (v7 + 2));
      v27 = v17[8];
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::SetFinal(a1, a2, &v25);
    }

    v18 = v10 + 2;
LABEL_35:
    std::__list_imp<char *>::clear(v18);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Final(a1, a2, a3);
}

void sub_1B555724C(_Unwind_Exception *a1)
{
  fst::LogMessage::~LogMessage((v1 - 105));
  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  std::__list_imp<char *>::clear((v1 - 88));
  _Unwind_Resume(a1);
}

void *fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>::operator()@<X0>(float *a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 3) == -1)
  {
    v30 = a1[2];
    v29[8] = 2139095040;
    if (v30 == INFINITY)
    {
      v12 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::Zero();
      v23 = *v12;
      v7 = v24;
      std::list<int>::list(v24, (v12 + 2));
      v25 = v12[8];
      *a2 = 0;
      *(a2 + 8) = v23;
      std::list<int>::list((a2 + 16), v24);
      *(a2 + 40) = v25;
      *(a2 + 48) = -1;
      return std::__list_imp<char *>::clear(v7);
    }

    v8 = fst::StringWeight<int,(fst::StringType)2>::One();
    v26 = *v8;
    v7 = v27;
    std::list<int>::list(v27, (v8 + 2));
    fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::GallicWeight(&v28, &v26, a1[2]);
    *a2 = 0;
    *(a2 + 8) = v28;
    std::list<int>::list((a2 + 16), v29);
    *(a2 + 40) = v29[6];
    *(a2 + 48) = -1;
    v9 = v29;
    goto LABEL_7;
  }

  v5 = *a1;
  v4 = *(a1 + 1);
  if (!v4)
  {
    v10 = fst::StringWeight<int,(fst::StringType)2>::One();
    v19 = *v10;
    v7 = v20;
    std::list<int>::list(v20, (v10 + 2));
    fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::GallicWeight(&v21, &v19, a1[2]);
    v11 = *(a1 + 3);
    *a2 = v5;
    *(a2 + 4) = v5;
    *(a2 + 8) = v21;
    std::list<int>::list((a2 + 16), v22);
    *(a2 + 40) = v22[6];
    *(a2 + 48) = v11;
    v9 = v22;
LABEL_7:
    std::__list_imp<char *>::clear(v9);
    return std::__list_imp<char *>::clear(v7);
  }

  fst::StringWeight<int,(fst::StringType)2>::StringWeight(&v14, v4);
  fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::GallicWeight(&v16, &v14, a1[2]);
  v6 = *(a1 + 3);
  *a2 = v5;
  *(a2 + 4) = v5;
  *(a2 + 8) = v16;
  std::list<int>::list((a2 + 16), v17);
  *(a2 + 40) = v18;
  *(a2 + 48) = v6;
  std::__list_imp<char *>::clear(v17);
  v7 = &v15;
  return std::__list_imp<char *>::clear(v7);
}

void *fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GetMutableState(*(a1 + 120), a2);
  v7 = *a3;
  std::list<int>::list(v8, (a3 + 2));
  v5 = a3[8];
  v9 = v5;
  *MutableState = v7;
  if (MutableState != &v7)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((MutableState + 8), v8[1], v8);
    v5 = v9;
  }

  *(MutableState + 32) = v5;
  result = std::__list_imp<char *>::clear(v8);
  *(MutableState + 80) |= 9u;
  return result;
}

uint64_t fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::One()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::One(void)::one;
}

uint64_t fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::Zero()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::Zero(void)::zero;
}

uint64_t fst::StringWeight<int,(fst::StringType)2>::One()
{
  {
    operator new();
  }

  return fst::StringWeight<int,(fst::StringType)2>::One(void)::one;
}

uint64_t fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::GallicWeight(uint64_t a1, int *a2, float a3)
{
  v6 = *a2;
  std::list<int>::list(v7, (a2 + 2));
  fst::ProductWeight<fst::StringWeight<int,(fst::StringType)2>,fst::TropicalWeightTpl<float>>::ProductWeight(a1, &v6, a3);
  std::__list_imp<char *>::clear(v7);
  return a1;
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)2>,fst::TropicalWeightTpl<float>>::ProductWeight(uint64_t a1, int *a2, float a3)
{
  v6 = *a2;
  std::list<int>::list(v7, (a2 + 2));
  *a1 = v6;
  std::list<int>::list((a1 + 8), v7);
  *(a1 + 32) = a3;
  std::__list_imp<char *>::clear(v7);
  return a1;
}

uint64_t fst::StringWeight<int,(fst::StringType)2>::StringWeight(uint64_t a1, int a2)
{
  *(a1 + 8) = a1 + 8;
  *(a1 + 16) = a1 + 8;
  *(a1 + 24) = 0;
  *a1 = 0;
  fst::StringWeight<int,(fst::StringType)1>::PushBack(a1, a2);
  return a1;
}

uint64_t fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>>::GetMutableState(a1, a2);
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
        fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GC(a1, MutableState, 0, 0.666);
      }
    }
  }

  return v4;
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>>::GetMutableState(uint64_t a1, int a2)
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
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>::GetMutableState(a1, 0);
      *(a1 + 80) = MutableState;
      *(MutableState + 80) |= 4u;
      std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::reserve((MutableState + 56), 0x80uLL);
      return *(a1 + 80);
    }

    v5 = *(a1 + 80);
    if (!*(v5 + 84))
    {
      *(a1 + 76) = a2;
      fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::Reset(v5);
      result = *(a1 + 80);
      *(result + 80) |= 4u;
      return result;
    }

    *(v5 + 80) &= ~4u;
    *(a1 + 72) = 0;
  }

  v6 = a2 + 1;

  return fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>::GetMutableState(a1, v6);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GC(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
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

      MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>>::GetMutableState(a1, v23);
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

            fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>::Delete(a1);
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
      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GC(a1, a2, 1, a4);
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

void sub_1B5557E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>::GetMutableState(uint64_t a1, int a2)
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

uint64_t fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::Reset(uint64_t a1)
{
  result = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::Zero();
  v3 = result;
  *a1 = *result;
  if (result != a1)
  {
    result = std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a1 + 8), *(result + 16), result + 8);
  }

  *(a1 + 32) = *(v3 + 32);
  *(a1 + 80) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  if (v4 != v5)
  {
    do
    {
      v6 = v4 - 56;
      result = std::__list_imp<char *>::clear((v4 - 40));
      v4 = v6;
    }

    while (v6 != v5);
  }

  *(a1 + 64) = v5;
  return result;
}

void *std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B5558174(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      v9 = a4 + v7;
      *v9 = *(v6 + v7);
      *(v9 + 8) = *(v6 + v7 + 8);
      result = std::list<int>::list((a4 + v7 + 16), v6 + v7 + 16);
      *(v9 + 40) = *(v6 + v7 + 40);
      *(v9 + 48) = *(v6 + v7 + 48);
      v7 += 56;
    }

    while (v8 + 56 != a3);
    while (v6 != a3)
    {
      result = std::__list_imp<char *>::clear((v6 + 16));
      v6 += 56;
    }
  }

  return result;
}

void sub_1B5558228(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 40);
    do
    {
      std::__list_imp<char *>::clear(v5);
      v5 -= 7;
      v4 += 56;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)2>,fst::TropicalWeightTpl<float>>::One()
{
  {
    operator new();
  }

  return fst::ProductWeight<fst::StringWeight<int,(fst::StringType)2>,fst::TropicalWeightTpl<float>>::One(void)::one;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)2>,fst::TropicalWeightTpl<float>>::One()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::StringWeight<int,(fst::StringType)2>,fst::TropicalWeightTpl<float>>::One(void)::one;
}

void sub_1B55583E8(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  MEMORY[0x1B8C85350](v1, 0x1020C4067685F46);
  _Unwind_Resume(a1);
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)2>,fst::TropicalWeightTpl<float>>::Zero()
{
  {
    operator new();
  }

  return fst::ProductWeight<fst::StringWeight<int,(fst::StringType)2>,fst::TropicalWeightTpl<float>>::Zero(void)::zero;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)2>,fst::TropicalWeightTpl<float>>::Zero()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::StringWeight<int,(fst::StringType)2>,fst::TropicalWeightTpl<float>>::Zero(void)::zero;
}

void sub_1B55585C8(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  MEMORY[0x1B8C85350](v1, 0x1020C4067685F46);
  _Unwind_Resume(a1);
}

uint64_t fst::StringWeight<int,(fst::StringType)2>::Zero()
{
  {
    operator new();
  }

  return fst::StringWeight<int,(fst::StringType)2>::Zero(void)::zero;
}

void sub_1B555868C(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1020C40CA22B68ALL);
  _Unwind_Resume(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::NumArcs(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
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

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::Expand(uint64_t a1, int a2)
{
  v4 = *(a1 + 160);
  if (v4 == a2)
  {

    return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::SetArcs(a1, a2);
  }

  v6 = *(a1 + 136);
  v8 = v4 != -1 && v4 <= a2;
  v56 = 0;
  (*(*v6 + 136))(v6, (a2 - v8), &v52);
  while (1)
  {
    if (!v52)
    {
      if (v56 >= v54)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if ((*(*v52 + 24))(v52))
    {
      break;
    }

    if (v52)
    {
      v9 = (*(*v52 + 32))();
      goto LABEL_18;
    }

LABEL_17:
    v9 = (v53 + 16 * v56);
LABEL_18:
    v66 = *v9;
    v10 = HIDWORD(v66);
    v11 = *(a1 + 160);
    if (v11 != -1 && v11 <= SHIDWORD(v66))
    {
      v10 = HIDWORD(v66) + 1;
    }

    if (v10 >= *(a1 + 164))
    {
      *(a1 + 164) = v10 + 1;
    }

    HIDWORD(v66) = v10;
    fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>::operator()(&v66, &v59);
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GetMutableState(*(a1 + 120), a2);
    std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::push_back[abi:ne200100]((MutableState + 56), &v59);
    std::__list_imp<char *>::clear(&v61);
    if (v52)
    {
      (*(*v52 + 40))(v52);
    }

    else
    {
      ++v56;
    }
  }

  if (v52)
  {
    (*(*v52 + 8))();
    goto LABEL_32;
  }

LABEL_30:
  if (v55)
  {
    --*v55;
  }

LABEL_32:
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasFinal(a1, a2) & 1) == 0)
  {
LABEL_49:
    v24 = *(a1 + 156);
    if (v24 == 1)
    {
      v30 = *(a1 + 160);
      v32 = v30 != -1 && v30 <= a2;
      *&v33 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v32));
      v52 = 0;
      v53 = v33 | 0xFFFFFFFF00000000;
      fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>::operator()(&v52, &v59);
      if (v59)
      {
        v34 = *(a1 + 160);
        if (v34 == -1)
        {
          v34 = *(a1 + 164);
          *(a1 + 160) = v34;
          *(a1 + 164) = v34 + 1;
        }

        v65 = v34;
        v35 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GetMutableState(*(a1 + 120), a2);
        std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::push_back[abi:ne200100]((v35 + 56), &v59);
      }

      v21 = &v61;
      goto LABEL_93;
    }

    if (v24 != 2)
    {
      return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::SetArcs(a1, a2);
    }

    v25 = *(a1 + 160);
    v27 = v25 != -1 && v25 <= a2;
    *&v28 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v27));
    v52 = 0;
    v53 = v28 | 0xFFFFFFFF00000000;
    fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>::operator()(&v52, &v59);
    if (v59)
    {
      v29 = v60;
    }

    else
    {
      v36 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::Zero();
      v29 = v60;
      if (v60)
      {
        v37 = v63 + 1;
      }

      else
      {
        v37 = 0;
      }

      if (*v36)
      {
        v38 = *(v36 + 24) + 1;
      }

      else
      {
        v38 = 0;
      }

      if (v37 == v38)
      {
        v39 = v62;
        v40 = (v36 + 16);
        v41 = v60 && v60 == *v36;
        v42 = !v41;
        v43 = 1;
        v44 = !v42;
        while (1)
        {
          v45 = *v40;
          if ((v43 & 1) != 0 && !v44)
          {
            break;
          }

          if (v39 == &v61)
          {
            goto LABEL_90;
          }

          if (*(v39 + 16) != *(v45 + 16))
          {
            goto LABEL_91;
          }

          v43 = 0;
          v39 = *(v39 + 8);
          v40 = (v45 + 8);
        }

        if (v60)
        {
          goto LABEL_91;
        }

LABEL_90:
        *&v52 = v64;
        LODWORD(v66) = *(v36 + 32);
        if (v64 == *&v66)
        {
          goto LABEL_92;
        }
      }
    }

LABEL_91:
    v46 = v59;
    v49 = v29;
    std::list<int>::list(v50, &v61);
    v51 = v64;
    v47 = *(a1 + 160);
    v52 = v46;
    LODWORD(v53) = v49;
    std::list<int>::list(&v54, v50);
    v57 = v51;
    v58 = v47;
    v48 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GetMutableState(*(a1 + 120), a2);
    std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::push_back[abi:ne200100]((v48 + 56), &v52);
    std::__list_imp<char *>::clear(&v54);
    std::__list_imp<char *>::clear(v50);
LABEL_92:
    v21 = &v61;
    goto LABEL_93;
  }

  fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::Final(a1, a2, &v59);
  v14 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::Zero();
  if (v59)
  {
    v15 = v62 + 1;
  }

  else
  {
    v15 = 0;
  }

  if (*v14)
  {
    v16 = *(v14 + 24) + 1;
  }

  else
  {
    v16 = 0;
  }

  if (v15 != v16)
  {
LABEL_47:
    v21 = &v60;
LABEL_93:
    std::__list_imp<char *>::clear(v21);
    return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::SetArcs(a1, a2);
  }

  v17 = v61;
  v18 = (v14 + 16);
  for (i = 1; ; i = 0)
  {
    v20 = *v18;
    if (i)
    {
      if (!v59)
      {
        break;
      }

      if (v59 != *v14)
      {
        goto LABEL_47;
      }
    }

    if (v17 == &v60)
    {
      break;
    }

    if (*(v17 + 16) != *(v20 + 16))
    {
      goto LABEL_47;
    }

    v17 = *(v17 + 8);
    v18 = (v20 + 8);
  }

  LODWORD(v52) = v63;
  LODWORD(v66) = *(v14 + 32);
  v22 = *&v63;
  v23 = *&v66;
  std::__list_imp<char *>::clear(&v60);
  if (v22 == v23)
  {
    goto LABEL_49;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::SetArcs(a1, a2);
}

void sub_1B5558C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__list_imp<char *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::SetArcs(uint64_t a1, int a2)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GetMutableState(*(a1 + 120), a2);
  fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::SetArcs(*(a1 + 120), MutableState);
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

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::SetArcs(uint64_t a1, uint64_t a2)
{
  fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetArcs(a2);
  if (*(a1 + 104) == 1 && (*(a2 + 80) & 4) != 0)
  {
    v4 = *(a2 + 64) - *(a2 + 56) + *(a1 + 112);
    *(a1 + 112) = v4;
    if (v4 > *(a1 + 96))
    {

      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GC(a1, a2, 0, 0.666);
    }
  }
}

uint64_t std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::__emplace_back_slow_path<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3> const&>(a1, a2);
  }

  else
  {
    std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::__construct_one_at_end[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3> const&>(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

void *std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::__construct_one_at_end[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3> const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 8) = *(a2 + 8);
  result = std::list<int>::list((v4 + 16), a2 + 16);
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 48) = *(a2 + 48);
  *(a1 + 8) = v4 + 56;
  return result;
}

uint64_t std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::__emplace_back_slow_path<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3> const&>(uint64_t *a1, uint64_t a2)
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

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>(a1, v6);
  }

  v7 = 56 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  std::list<int>::list((v7 + 16), a2 + 16);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 48) = *(a2 + 48);
  *&v16 = v16 + 56;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~__split_buffer(&v14);
  return v13;
}

void sub_1B5559050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::NumInputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
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

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
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

unint64_t fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>(a1, a2, a3, 0);
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

    return fst::ComputeProperties<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>(a1, a2, a3, 1);
  }
}

void sub_1B5559268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v7 = a1;
  v8 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v9 = v8;
  if (!a4 || (v10 = v8 & 0x3FFFFFFF0000 | (2 * v8) & 0x2AAAAAAA0000 | (v8 >> 1) & 0x155555550000 | 7, (a2 & ~v10) != 0))
  {
    v9 = v8 & 7;
    v93 = v9;
    v11 = (*(*v7 + 16))(v7);
    if ((a2 & 0xF3C00000000) != 0 && v11)
    {
      v86 = 0;
      v87 = 0;
      v88 = 0;
      v89 = &v93;
      fst::DfsVisit<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>(v7, &v86);
    }

    if ((a2 & 0xFFFFF0C3FFFFFFF8) == 0)
    {
      goto LABEL_179;
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

    v93 = v14;
    memset(&v85, 0, sizeof(v85));
    memset(&v84, 0, sizeof(v84));
    v83 = 0;
    (*(*v7 + 128))(v7, &v81);
    v16 = 0;
    v75 = v7;
LABEL_12:
    if (!v81)
    {
      if (v83 >= v82)
      {
        goto LABEL_171;
      }

      goto LABEL_17;
    }

    if (!(*(*v81 + 16))(v81))
    {
      if (v81)
      {
        v17 = (*(*v81 + 24))();
LABEL_18:
        v18 = (*(*v7 + 40))(v7, v17);
        v88 = &v88;
        v89 = &v88;
        v90 = 0;
        LODWORD(v87) = 0;
        v85.__end_ = v85.__begin_;
        v84.__end_ = v84.__begin_;
        if (v12)
        {
          std::vector<int>::reserve(&v85, v18);
        }

        if (v15)
        {
          std::vector<int>::reserve(&v84, v18);
        }

        v80 = 0;
        (*(*v7 + 136))(v7, v17, &v76);
        v19 = 1;
        while (1)
        {
          if (v76)
          {
            if ((*(*v76 + 24))(v76))
            {
              if (v76)
              {
                (*(*v76 + 8))();
                goto LABEL_104;
              }

LABEL_102:
              if (v79)
              {
                --*v79;
              }

LABEL_104:
              v7 = v75;
              if (!v12 || (std::__sort<std::__less<int,int> &,int *>(), v48 = v85.__end_ - v85.__begin_, v48 < 2))
              {
LABEL_109:
                if (!v15)
                {
                  goto LABEL_118;
                }

LABEL_110:
                std::__sort<std::__less<int,int> &,int *>();
                v51 = v84.__end_ - v84.__begin_;
                if (v51 >= 2)
                {
                  v52 = v51 - 1;
                  v53 = v84.__begin_ + 1;
                  while (*v53 != *(v53 - 1))
                  {
                    ++v53;
                    if (!--v52)
                    {
                      goto LABEL_118;
                    }
                  }

                  v93 = v93 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
                }

                goto LABEL_118;
              }

              v49 = v48 - 1;
              v50 = v85.__begin_ + 1;
              while (*v50 != *(v50 - 1))
              {
                ++v50;
                if (!--v49)
                {
                  goto LABEL_109;
                }
              }

              v93 = v93 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
              if (v15)
              {
                goto LABEL_110;
              }

LABEL_118:
              if (v16 >= 1)
              {
                v93 = v93 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
              }

              (*(*v75 + 32))(&v76, v75, v17);
              v54 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::Zero();
              if (v76)
              {
                v55 = v79 + 1;
              }

              else
              {
                v55 = 0;
              }

              if (*v54)
              {
                v56 = *(v54 + 24) + 1;
              }

              else
              {
                v56 = 0;
              }

              if (v55 != v56)
              {
                goto LABEL_141;
              }

              v57 = v78;
              v58 = (v54 + 16);
              v59 = v76 && v76 == *v54;
              v60 = !v59;
              v61 = 1;
              v62 = !v60;
              while (1)
              {
                v63 = *v58;
                if ((v61 & 1) != 0 && !v62)
                {
                  break;
                }

                if (v57 == &v77)
                {
                  goto LABEL_140;
                }

                if (*(v57 + 16) != *(v63 + 16))
                {
                  goto LABEL_141;
                }

                v61 = 0;
                v57 = *(v57 + 8);
                v58 = (v63 + 8);
              }

              if (v76)
              {
                goto LABEL_141;
              }

LABEL_140:
              v95 = *&v80;
              v94 = *(v54 + 32);
              if (*&v80 == v94)
              {
                if ((*(*v75 + 40))(v75, v17, *&v80) != 1)
                {
                  v93 = v93 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                }
              }

              else
              {
LABEL_141:
                v64 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::One();
                if (v76)
                {
                  v65 = v79 + 1;
                }

                else
                {
                  v65 = 0;
                }

                if (*v64)
                {
                  v66 = *(v64 + 24) + 1;
                }

                else
                {
                  v66 = 0;
                }

                if (v65 != v66)
                {
                  goto LABEL_162;
                }

                v67 = v78;
                v68 = (v64 + 16);
                v69 = v76 && v76 == *v64;
                v70 = !v69;
                v71 = 1;
                v72 = !v70;
                while (1)
                {
                  v73 = *v68;
                  if ((v71 & 1) != 0 && !v72)
                  {
                    break;
                  }

                  if (v67 == &v77)
                  {
                    goto LABEL_161;
                  }

                  if (*(v67 + 16) != *(v73 + 16))
                  {
                    goto LABEL_162;
                  }

                  v71 = 0;
                  v67 = *(v67 + 8);
                  v68 = (v73 + 8);
                }

                if (v76)
                {
                  goto LABEL_162;
                }

LABEL_161:
                v95 = *&v80;
                v94 = *(v64 + 32);
                if (*&v80 != v94)
                {
LABEL_162:
                  v93 = v93 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                }

                ++v16;
              }

              std::__list_imp<char *>::clear(&v77);
              std::__list_imp<char *>::clear(&v88);
              if (v81)
              {
                (*(*v81 + 32))(v81);
              }

              else
              {
                ++v83;
              }

              goto LABEL_12;
            }

            if (v76)
            {
              v20 = (*(*v76 + 32))();
              goto LABEL_29;
            }
          }

          else if (v80 >= v78)
          {
            goto LABEL_102;
          }

          v20 = v77 + 56 * v80;
LABEL_29:
          v21 = *v20;
          v22 = *v20;
          if (*v20 != *(v20 + 4))
          {
            v93 = v93 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
            v22 = *(v20 + 4);
          }

          if (v21 | v22)
          {
            if (v21)
            {
              if (v22)
              {
                goto LABEL_35;
              }

              goto LABEL_39;
            }

            v23 = v93;
          }

          else
          {
            v23 = v93 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
          }

          v93 = v23 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
          if (v22)
          {
LABEL_35:
            if ((v19 & 1) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_44;
          }

LABEL_39:
          v93 = v93 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
          if ((v19 & 1) == 0)
          {
LABEL_40:
            if (v21 < v86)
            {
              v93 = v93 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
            }

            if (v22 < SHIDWORD(v86))
            {
              v93 = v93 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
            }
          }

LABEL_44:
          v24 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::One();
          v25 = *(v20 + 8);
          if (v25)
          {
            v26 = *(v20 + 32) + 1;
          }

          else
          {
            v26 = 0;
          }

          if (*v24)
          {
            v27 = *(v24 + 24) + 1;
          }

          else
          {
            v27 = 0;
          }

          if (v26 != v27)
          {
            goto LABEL_65;
          }

          v28 = (v20 + 24);
          v29 = (v24 + 16);
          v30 = v25 && v25 == *v24;
          v31 = !v30;
          v32 = 1;
          v33 = !v31;
          while (1)
          {
            v34 = *v28;
            v35 = *v29;
            if ((v32 & 1) != 0 && !v33)
            {
              break;
            }

            if (v34 == v20 + 16)
            {
              goto LABEL_64;
            }

            if (*(v34 + 16) != *(v35 + 16))
            {
              goto LABEL_65;
            }

            v32 = 0;
            v28 = (v34 + 8);
            v29 = (v35 + 8);
          }

          if (v25)
          {
            goto LABEL_65;
          }

LABEL_64:
          v95 = *(v20 + 40);
          v94 = *(v24 + 32);
          if (v95 != v94)
          {
LABEL_65:
            v36 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::Zero();
            v25 = *(v20 + 8);
            if (v25)
            {
              v37 = *(v20 + 32) + 1;
            }

            else
            {
              v37 = 0;
            }

            if (*v36)
            {
              v38 = *(v36 + 24) + 1;
            }

            else
            {
              v38 = 0;
            }

            if (v37 != v38)
            {
              goto LABEL_86;
            }

            v39 = (v20 + 24);
            v40 = (v36 + 16);
            v41 = v25 && v25 == *v36;
            v42 = !v41;
            v43 = 1;
            v44 = !v42;
            while (1)
            {
              v45 = *v39;
              v46 = *v40;
              if ((v43 & 1) != 0 && !v44)
              {
                break;
              }

              if (v45 == v20 + 16)
              {
                goto LABEL_85;
              }

              if (*(v45 + 16) != *(v46 + 16))
              {
                goto LABEL_86;
              }

              v43 = 0;
              v39 = (v45 + 8);
              v40 = (v46 + 8);
            }

            if (v25)
            {
              goto LABEL_86;
            }

LABEL_85:
            v95 = *(v20 + 40);
            v94 = *(v36 + 32);
            if (v95 != v94)
            {
LABEL_86:
              v93 = v93 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
            }
          }

          v47 = *(v20 + 48);
          if (v47 <= v17)
          {
            v93 = v93 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
          }

          if (v47 != v17 + 1)
          {
            v93 = v93 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
          }

          v86 = *v20;
          LODWORD(v87) = v25;
          if (&v86 != v20)
          {
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(&v88, *(v20 + 24), v20 + 16);
            v47 = *(v20 + 48);
          }

          v91 = *(v20 + 40);
          v92 = v47;
          if (v12)
          {
            std::vector<int>::push_back[abi:ne200100](&v85.__begin_, v20);
          }

          if (v15)
          {
            std::vector<int>::push_back[abi:ne200100](&v84.__begin_, (v20 + 4));
          }

          if (v76)
          {
            (*(*v76 + 40))(v76);
            v19 = 0;
          }

          else
          {
            v19 = 0;
            ++v80;
          }
        }
      }

LABEL_17:
      v17 = v83;
      goto LABEL_18;
    }

    if (v81)
    {
      (*(*v81 + 8))();
    }

LABEL_171:
    if ((*(*v7 + 24))(v7) != -1 && (*(*v7 + 24))(v7))
    {
      v93 = v93 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
    }

    if (v84.__begin_)
    {
      v84.__end_ = v84.__begin_;
      operator delete(v84.__begin_);
    }

    if (v85.__begin_)
    {
      v85.__end_ = v85.__begin_;
      operator delete(v85.__begin_);
    }

    v9 = v93;
LABEL_179:
    v10 = v9 & 0x3FFFFFFF0000 | (2 * v9) & 0x2AAAAAAA0000 | (v9 >> 1) & 0x155555550000 | 7;
  }

  *a3 = v10;
  return v9;
}

void sub_1B5559CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B555A594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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
  fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::InitVisit(uint64_t a1, uint64_t a2)
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

uint64_t fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>(uint64_t a1)
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

void sub_1B555A900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>();
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::FinishState(uint64_t a1, int a2, int a3)
{
  (*(**(a1 + 32) + 32))(&v33);
  v6 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::Zero();
  if (v33)
  {
    v7 = v34[2] + 1;
  }

  else
  {
    v7 = 0;
  }

  if (*v6)
  {
    v8 = *(v6 + 24) + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v7 == v8)
  {
    v9 = v34[1];
    v10 = (v6 + 16);
    if (v33)
    {
      v11 = v33 == *v6;
    }

    else
    {
      v11 = 0;
    }

    v12 = !v11;
    v13 = 1;
    v14 = v12 ^ 1;
    while (1)
    {
      v15 = *v10;
      if ((v13 & 1) != 0 && !v14)
      {
        break;
      }

      if (v9 == v34)
      {
        goto LABEL_42;
      }

      if (*(v9 + 16) != *(v15 + 16))
      {
        goto LABEL_21;
      }

      v13 = 0;
      v9 = *(v9 + 8);
      v10 = (v15 + 8);
    }

    if (v33)
    {
      goto LABEL_21;
    }

LABEL_42:
    v37 = v35;
    v36 = *(v6 + 32);
    v31 = v35;
    v32 = v36;
    result = std::__list_imp<char *>::clear(v34);
    if (v31 == v32)
    {
      v17 = a2;
      goto LABEL_23;
    }
  }

  else
  {
LABEL_21:
    result = std::__list_imp<char *>::clear(v34);
  }

  v17 = a2;
  *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
LABEL_23:
  v18 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * v17) != *(v18 + 4 * v17))
  {
    goto LABEL_36;
  }

  v19 = 0;
  v20 = *(a1 + 80);
  v21 = **(a1 + 16);
  v22 = (*(v20 + 8) - 4);
  v23 = v22;
  do
  {
    v24 = *v23--;
    v19 |= *(v21 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24;
  }

  while (v24 != a2);
  v25 = *a1;
  v26 = **(a1 + 72);
  while (1)
  {
    v27 = *v22;
    if (v25)
    {
      *(*v25 + 4 * v27) = *(a1 + 48);
    }

    result = v27 >> 6;
    v28 = 1 << v27;
    if ((v19 & 1) == 0)
    {
      break;
    }

    *(v21 + 8 * result) |= v28;
    *(v26 + 8 * result) &= ~v28;
    if (v27 == a2)
    {
      *(v20 + 8) = v22;
      goto LABEL_35;
    }

LABEL_33:
    --v22;
  }

  *(v26 + 8 * result) &= ~v28;
  if (v27 != a2)
  {
    goto LABEL_33;
  }

  *(v20 + 8) = v22;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_35:
  ++*(a1 + 48);
LABEL_36:
  if (a3 != -1)
  {
    v29 = **(a1 + 16);
    if ((*(v29 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17))
    {
      *(v29 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v30 = *(v18 + 4 * v17);
    if (v30 < *(v18 + 4 * a3))
    {
      *(v18 + 4 * a3) = v30;
    }
  }

  return result;
}

void fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D1BA18;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D1BA18;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D1BA58;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B555AD4C(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D1BA58;
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

void *std::deque<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>> *,std::allocator<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>> *>>::push_back(void *result, void *a2)
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
    result = std::deque<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>> *,std::allocator<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>> *>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>> *,std::allocator<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>> *>>::__add_back_capacity(void *a1)
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

void sub_1B555B058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ArcBuffer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::SetFromFst<fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  (*(*a2 + 136))(a2, a3, &v26);
  if (!v26 && (a4 & 1) == 0)
  {
    v10 = v27 + 56 * v28;
    *(a1 + 16) = v27;
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

    v25 = 0x4000;
    if (v13 > 0x4000)
    {
      v25 = v13;
    }

    *(a1 + 8) = v25;
    v15 = malloc_type_malloc(56 * v25, 0x1020040540EBC04uLL);
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
  v16 = v26;
  v17 = v27;
  v19 = v28;
  v18 = v29;
  if (v29)
  {
    ++*v29;
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
    v24 = v15 - 7;
    *v24 = *v23;
    *(v24 + 2) = *(v23 + 8);
    if (v15 - 7 != v23)
    {
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v15 - 5, *(v23 + 24), v23 + 16);
    }

    *(v15 - 4) = *(v23 + 40);
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

void sub_1B555B3A4(_Unwind_Exception *exception_object)
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

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::ImplToFst(void *result, uint64_t a2, int a3)
{
  *result = &unk_1F2D1B968;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

void sub_1B555B6EC(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>::CopyStates(a1, a2);
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
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>::GetMutableState(a1, 0);
    }

    *(a1 + 80) = MutableState;
  }

  return a1;
}

void fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>::CopyStates(void *a1, uint64_t a2)
{
  fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::Clear(a1);
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

uint64_t fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::CacheState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::list<int>::list((a1 + 8), a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 64);
  *(a1 + 56) = 0;
  *(a1 + 40) = v4;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3> const*>,std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3> const*>>(a1 + 56, v5, v6, 0x6DB6DB6DB6DB6DB7 * ((v6 - v5) >> 3));
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3> const*>,std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3> const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B555BA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3> const*,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3> const*,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      *v9 = *(a2 + v7);
      *(v9 + 8) = *(a2 + v7 + 8);
      std::list<int>::list((a4 + v7 + 16), a2 + v7 + 16);
      *(v9 + 40) = *(a2 + v7 + 40);
      *(v9 + 48) = *(a2 + v7 + 48);
      v7 += 56;
    }

    while (v8 + 56 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1B555BAE8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 40);
    do
    {
      std::__list_imp<char *>::clear(v5);
      v5 -= 7;
      v4 += 56;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::StateIterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = &unk_1F2D1BA98;
  *(a1 + 8) = v3;
  v4 = *(v3 + 136);
  *(a1 + 32) = 0;
  (*(*v4 + 128))(v4, a1 + 16);
  *(a1 + 40) = 0;
  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;
  fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::CheckSuperfinal(a1);
  return a1;
}

void sub_1B555BBA8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>>::StateIterator(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::CheckSuperfinal(uint64_t result)
{
  v1 = *(result + 8);
  if (*(v1 + 156) == 1)
  {
    v2 = result;
    if ((*(result + 44) & 1) == 0)
    {
      result = *(result + 16);
      if (result)
      {
        result = (*(*result + 16))(result);
        if (result)
        {
          return result;
        }

        v1 = *(v2 + 8);
      }

      else if (*(v2 + 32) >= *(v2 + 24))
      {
        return result;
      }

      v3 = (*(**(v1 + 136) + 32))(*(v1 + 136), *(v2 + 40));
      v4 = 0;
      v5 = v3;
      v6 = -1;
      fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>::operator()(&v4, &v7);
      if (v7)
      {
        *(v2 + 44) = 1;
      }

      return std::__list_imp<char *>::clear(v8);
    }
  }

  return result;
}

void *fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D1BA98;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D1BA98;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::Next(uint64_t a1)
{
  ++*(a1 + 40);
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*result + 16))(result);
    if ((result & 1) == 0)
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        (*(*v3 + 32))(v3);
LABEL_7:

        return fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::CheckSuperfinal(a1);
      }

LABEL_6:
      ++*(a1 + 32);
      goto LABEL_7;
    }
  }

  else if (*(a1 + 32) < *(a1 + 24))
  {
    goto LABEL_6;
  }

  if (*(a1 + 44) == 1)
  {
    *(a1 + 44) = 0;
  }

  return result;
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::Reset(uint64_t a1)
{
  *(a1 + 40) = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;

  return fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::CheckSuperfinal(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::InitArcIterator(uint64_t a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::InitArcIterator(a1, a2, a3);
}

void *fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::DefaultDeterminizeFilter<fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(void *a1, uint64_t a2, void *a3)
{
  *a1 = (*(*a2 + 88))(a2, 0);
  if (a3)
  {
    if (*a3)
    {
      (*(**a3 + 8))(*a3);
    }

    MEMORY[0x1B8C85350](a3, 0x20C4093837F09);
  }

  return a1;
}

void fst::DeterminizeFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::DeterminizeFst<fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D1BB00;
  a1[1] = 0;
  if (!(*(*a2 + 64))(a2, 0x10000, 1))
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
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "DeterminizeFst:", 15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " distance to final states computed for acceptors only", 53);
    fst::LogMessage::~LogMessage(&v8);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1[1] + 8) |= 4uLL;
  }

  operator new();
}

void sub_1B555C1CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::~ImplToFst(v18);
  _Unwind_Resume(a1);
}

_DWORD *fst::ImplToFst<fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::SetImpl(uint64_t a1, uint64_t a2, char a3)
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

void *fst::ImplToFst<fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D1BBE0;
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

void fst::DeterminizeFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::~DeterminizeFst(void *a1)
{
  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

void sub_1B555C7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::~DeterminizeFstImplBase(v18);
  _Unwind_Resume(a1);
}

uint64_t fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::~DeterminizeFstImplBase(void *a1)
{
  *a1 = &unk_1F2D1BD18;
  v2 = a1[17];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::~CacheBaseImpl(a1);
}

void fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(void *a1)
{
  fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::Expand(void *a1, int a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::GetLabelMap(a1, a2, &v8);
  v4 = v8;
  if (v8 != v9)
  {
    do
    {
      fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::AddArc(a1, a2, (v4 + 5));
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

      v4 = v6;
    }

    while (v6 != v9);
  }

  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::SetArcs(a1, a2);
  std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>>>::destroy(&v8, v9[0]);
}

uint64_t fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::ComputeStart(uint64_t a1)
{
  v1 = (*(**(a1 + 136) + 24))(*(a1 + 136));
  if (v1 != -1)
  {
    v2 = v1;
    v3 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::One();
    v5 = *v3;
    std::list<int>::list(v6, (v3 + 2));
    v7 = v3[8];
    v8 = v2;
    v9 = v5;
    std::list<int>::list(v10, v6);
    v11 = v7;
    std::__list_imp<char *>::clear(v6);
    operator new();
  }

  return 0xFFFFFFFFLL;
}

void *fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::ComputeFinal@<X0>(uint64_t a1@<X0>, int a2@<W1>, int *a3@<X8>)
{
  v5 = *(*(*(a1 + 184) + 88) + 8 * a2);
  v6 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::Zero();
  *a3 = *v6;
  result = std::list<int>::list(a3 + 1, (v6 + 2));
  a3[8] = v6[8];
  v8 = (a3 + 8);
  for (i = *v5; i; i = *i)
  {
    (*(**(a1 + 136) + 32))(&v26);
    fst::Times<int,(fst::StringType)2>(i + 4, &v26, &v36);
    v10 = *(i + 12);
    v11 = NAN;
    if (v10 != -INFINITY)
    {
      v11 = NAN;
      if (v28 != -INFINITY)
      {
        v11 = INFINITY;
        v12 = v28 == INFINITY || v10 == INFINITY;
        v13 = v10 + v28;
        if (!v12)
        {
          v11 = v13;
        }
      }
    }

    fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::GallicWeight(v29, &v36, v11);
    std::__list_imp<char *>::clear(v37);
    v14 = fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()(&v36, a3 + 8, &v31);
    v15 = v14;
    if (v14)
    {
      v16 = a3;
    }

    else
    {
      v16 = v29;
    }

    v32 = *v16;
    if (v14)
    {
      v17 = a3 + 2;
    }

    else
    {
      v17 = v30;
    }

    std::list<int>::list(&v33, v17);
    if (v15)
    {
      v18 = a3;
    }

    else
    {
      v18 = v29;
    }

    v19 = v18[8];
    v35 = v19;
    *a3 = v32;
    if (&v32 != a3)
    {
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(a3 + 1, v34, &v33);
      v19 = v35;
    }

    *(a3 + 8) = v19;
    std::__list_imp<char *>::clear(&v33);
    std::__list_imp<char *>::clear(v30);
    std::__list_imp<char *>::clear(v27);
    v23 = *a3;
    std::list<int>::list(v24, (a3 + 2));
    v25 = *v8;
    v32 = v23;
    std::list<int>::list(&v33, v24);
    v20 = v25;
    v35 = v25;
    *a3 = v32;
    if (&v32 != a3)
    {
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(a3 + 1, v34, &v33);
      v20 = v35;
    }

    *(a3 + 8) = v20;
    std::__list_imp<char *>::clear(&v33);
    result = std::__list_imp<char *>::clear(v24);
    if (*a3)
    {
      if (*(a3 + 3))
      {
        v21 = 0;
      }

      else
      {
        v21 = *a3 == -2;
      }

      if (!v21)
      {
        v22 = *(a3 + 8);
        if (v22 < -INFINITY || v22 > -INFINITY)
        {
          continue;
        }
      }
    }

    else if (*v8 < -INFINITY || *v8 > -INFINITY)
    {
      continue;
    }

    *(a1 + 8) |= 4uLL;
  }

  return result;
}

void sub_1B555D0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__list_imp<char *>::clear((v10 + 8));
  std::__list_imp<char *>::clear(v9);
  std::__list_imp<char *>::clear(va);
  std::__list_imp<char *>::clear(v8);
  _Unwind_Resume(a1);
}

void *fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::CompactHashBiTable(void *a1, size_t a2)
{
  a1[1] = a1;
  a1[2] = a1;
  std::unordered_set<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::unordered_set((a1 + 3), a2, a1 + 1, a1 + 2);
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  if (a2)
  {
    std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(a1 + 10, a2);
  }

  return a1;
}

void sub_1B555D190(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 88) = v4;
    operator delete(v4);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v1 + 24);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::unordered_set(uint64_t a1, size_t a2, void *a3, void *a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *a3;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = *a4;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__rehash<true>(a1, a2);
  return a1;
}

uint64_t fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(void *a1)
{
  *a1 = &unk_1F2D1BC90;
  v2 = a1[22];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x20C4093837F09);
  }

  v3 = a1[23];
  if (v3)
  {
    v4 = fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::~DefaultDeterminizeStateTable(v3);
    MEMORY[0x1B8C85350](v4, 0x10E0C400200E20DLL);
  }

  return fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::~DeterminizeFstImplBase(a1);
}

uint64_t fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::~DefaultDeterminizeStateTable(uint64_t a1)
{
  v4 = a1 + 88;
  v2 = *(a1 + 88);
  v3 = *(v4 + 8);
  if (((v3 - v2) >> 3) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        std::__forward_list_base<fst::DeterminizeElement<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::clear(v2[v5]);
        MEMORY[0x1B8C85350](v6, 0x1020C405F07FB98);
        v2 = *(a1 + 88);
        v3 = *(a1 + 96);
      }

      ++v5;
    }

    while (v5 < ((v3 - v2) >> 3));
  }

  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 32);
  return a1;
}

void std::__forward_list_base<fst::DeterminizeElement<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::clear(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    do
    {
      v3 = *v2;
      std::__list_imp<char *>::clear(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  *a1 = 0;
}

void sub_1B555D540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::~DeterminizeFstImplBase(v18);
  _Unwind_Resume(a1);
}

void sub_1B555D6D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::~CacheBaseImpl(v15);
  _Unwind_Resume(a1);
}

void fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::GetLabelMap(void *a1, int a2, void *a3)
{
  v5 = **(*(a1[23] + 88) + 8 * a2);
  if (v5)
  {
    while (1)
    {
      v6 = *(v5 + 2);
      v7 = a1[17];
      v28 = 0;
      (*(*v7 + 136))(v7, v6, v26);
      if (!v26[0])
      {
        break;
      }

      if (!(*(*v26[0] + 24))(v26[0]))
      {
        if (v26[0])
        {
          v8 = (*(*v26[0] + 32))();
        }

        else
        {
LABEL_7:
          v8 = v26[1] + 56 * v28;
        }

        v9 = *(v8 + 48);
        fst::Times<int,(fst::StringType)2>(v5 + 4, v8 + 8, &v29);
        v10 = *(v5 + 12);
        v11 = NAN;
        if (v10 != -INFINITY)
        {
          v12 = *(v8 + 40);
          v11 = NAN;
          if (v12 != -INFINITY)
          {
            v11 = INFINITY;
            v13 = v12 == INFINITY || v10 == INFINITY;
            v14 = v10 + v12;
            if (!v13)
            {
              v11 = v14;
            }
          }
        }

        fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::GallicWeight(&v20, &v29, v11);
        std::__list_imp<char *>::clear(v30);
        v23[0] = v9;
        v23[2] = v20;
        std::list<int>::list(v24, v21);
        v25 = v22;
        std::__list_imp<char *>::clear(v21);
        fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::FilterArc(a1[22], v8, (v5 + 1), v23, a3);
      }

      if (!v26[0])
      {
        goto LABEL_18;
      }

      (*(*v26[0] + 8))();
LABEL_20:
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_21;
      }
    }

    if (v28 < v26[2])
    {
      goto LABEL_7;
    }

LABEL_18:
    if (v27)
    {
      --*v27;
    }

    goto LABEL_20;
  }

LABEL_21:
  v17 = *a3;
  v15 = a3 + 1;
  v16 = v17;
  if (v17 != v15)
  {
    do
    {
      fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::NormArc(a1, (v16 + 5));
      v18 = v16[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v16[2];
          v13 = *v19 == v16;
          v16 = v19;
        }

        while (!v13);
      }

      v16 = v19;
    }

    while (v19 != v15);
  }
}

void sub_1B555D9C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _DWORD *a24)
{
  if (a21)
  {
    (*(*a21 + 8))(a21);
  }

  else if (a24)
  {
    --*a24;
  }

  _Unwind_Resume(exception_object);
}

void *fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::AddArc(uint64_t a1, int a2, uint64_t a3)
{
  v9[0] = v9;
  v9[1] = v9;
  v9[2] = 0;
  v8[0] = *a3;
  v8[1] = v8[0];
  v8[2] = *(a3 + 8);
  if (v8 != a3)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v9, *(a3 + 24), a3 + 16);
  }

  v10 = *(a3 + 40);
  State = fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::FindState(a1, *(a3 + 48));
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GetMutableState(*(a1 + 120), a2);
  std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::push_back[abi:ne200100]((MutableState + 56), v8);
  return std::__list_imp<char *>::clear(v9);
}

void fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::FilterArc(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  if (*(std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a5, a2) + 10) == -1)
  {
    fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::DeterminizeArc(&v6, a2);
  }

  std::__forward_list_base<fst::DeterminizeElement<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::__create_node[abi:ne200100]<fst::DeterminizeElement<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>> const&>();
}

void fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::NormArc(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  std::forward_list<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::sort[abi:ne200100](v4);
  v5 = *v4;
  if (*v4)
  {
    v6 = (a2 + 8);
    v7 = *v4;
    do
    {
      v8 = v7 + 2;
      fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>::operator()(a2 + 8, (v7 + 2), &v20);
      *v6 = v20;
      if (v6 != &v20)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a2 + 16), v22, &v21);
      }

      *(a2 + 40) = v23;
      std::__list_imp<char *>::clear(&v21);
      if (v5 == v7 || *(v7 + 2) != *(v5 + 2))
      {
        v13 = *v7;
        v5 = v7;
      }

      else
      {
        v9 = (v5 + 2);
        v10 = (v5 + 6);
        v11 = fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()(&v24, v5 + 12, v7 + 12);
        if (v11)
        {
          v12 = v5;
        }

        else
        {
          v12 = v7;
        }

        if (v11)
        {
          v8 = v5 + 2;
        }

        v20 = *(v12 + 4);
        std::list<int>::list(&v21, (v8 + 1));
        v23 = *(v8 + 8);
        *(v5 + 4) = v20;
        if (v9 != &v20)
        {
          std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v5 + 3, v22, &v21);
        }

        *v10 = v23;
        std::__list_imp<char *>::clear(&v21);
        if (*v9 == -2 && !v5[5] || *v10 >= -INFINITY && *v10 <= -INFINITY)
        {
          *(a1 + 8) |= 4uLL;
        }

        v13 = *v7;
        v14 = *v5;
        v15 = (*v5 + 24);
        *v5 = **v5;
        std::__list_imp<char *>::clear(v15);
        operator delete(v14);
      }

      v7 = v13;
    }

    while (v13);
    for (i = *v4; i; i = *i)
    {
      v17 = (i + 2);
      fst::DivideLeft<int,(fst::StringType)2>(i + 4, (a2 + 8), &v24);
      v18 = *(i + 12);
      v19 = NAN;
      if (v18 != -INFINITY)
      {
        if ((*(a2 + 40) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v19 = INFINITY;
          if (v18 != INFINITY)
          {
            v19 = v18 - *(a2 + 40);
          }
        }

        else
        {
          v19 = NAN;
        }
      }

      fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::GallicWeight(&v20, &v24, v19);
      std::__list_imp<char *>::clear(v25);
      *v17 = v20;
      if (v17 != &v20)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(i + 3, v22, &v21);
      }

      *(i + 12) = v23;
      std::__list_imp<char *>::clear(&v21);
      fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::Quantize(i + 4, &v20, *(a1 + 144));
      *(i + 4) = v20;
      if (v17 != &v20)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(i + 3, v22, &v21);
      }

      *(i + 12) = v23;
      std::__list_imp<char *>::clear(&v21);
    }
  }
}

void *fst::Times<int,(fst::StringType)2>@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 && (*a1 == -2 ? (v6 = *(a1 + 3) == 0) : (v6 = 0), v6) || *a2 && (*a2 == -2 ? (v7 = *(a2 + 24) == 0) : (v7 = 0), v7))
  {
    v17 = fst::StringWeight<int,(fst::StringType)2>::NoWeight();
  }

  else
  {
    v8 = fst::StringWeight<int,(fst::StringType)2>::Zero();
    v9 = *a1;
    if (*a1)
    {
      v10 = *(a1 + 3) + 1;
    }

    else
    {
      v10 = 0;
    }

    if (*v8)
    {
      v11 = *(v8 + 24) + 1;
    }

    else
    {
      v11 = 0;
    }

    if (v10 != v11)
    {
LABEL_26:
      v18 = fst::StringWeight<int,(fst::StringType)2>::Zero();
      v19 = *a2;
      if (*a2)
      {
        v20 = *(a2 + 24) + 1;
      }

      else
      {
        v20 = 0;
      }

      if (*v18)
      {
        v21 = *(v18 + 24) + 1;
      }

      else
      {
        v21 = 0;
      }

      if (v20 == v21)
      {
        v22 = (a2 + 16);
        v23 = (v18 + 16);
        for (i = 1; ; i = 0)
        {
          v25 = *v22;
          v26 = *v23;
          if (i)
          {
            if (!v19)
            {
              goto LABEL_50;
            }

            if (v19 != *v18)
            {
              break;
            }
          }

          if (v25 == a2 + 8)
          {
            goto LABEL_50;
          }

          if (*(v25 + 16) != *(v26 + 16))
          {
            break;
          }

          v22 = (v25 + 8);
          v23 = (v26 + 8);
        }
      }

      *a3 = *a1;
      result = std::list<int>::list((a3 + 8), (a1 + 2));
      v28 = (a2 + 16);
      for (j = 1; ; j = 0)
      {
        v30 = *v28;
        do
        {
          v31 = j;
          if (j)
          {
            v32 = *a2;
            if (!*a2)
            {
              return result;
            }
          }

          else
          {
            if (v30 == a2 + 8)
            {
              return result;
            }

            v32 = *(v30 + 16);
          }

          result = fst::StringWeight<int,(fst::StringType)1>::PushBack(a3, v32);
          j = 0;
        }

        while ((v31 & 1) != 0);
        v28 = (v30 + 8);
      }
    }

    v12 = (a1 + 4);
    v13 = (v8 + 16);
    for (k = 1; ; k = 0)
    {
      v15 = *v12;
      v16 = *v13;
      if (k)
      {
        if (!v9)
        {
          break;
        }

        if (v9 != *v8)
        {
          goto LABEL_26;
        }
      }

      if (v15 == a1 + 2)
      {
        break;
      }

      if (*(v15 + 16) != *(v16 + 16))
      {
        goto LABEL_26;
      }

      v12 = (v15 + 8);
      v13 = (v16 + 8);
    }

LABEL_50:
    v17 = fst::StringWeight<int,(fst::StringType)2>::Zero();
  }

  *a3 = *v17;

  return std::list<int>::list((a3 + 8), (v17 + 2));
}

uint64_t fst::StringWeight<int,(fst::StringType)2>::NoWeight()
{
  {
    operator new();
  }

  return fst::StringWeight<int,(fst::StringType)2>::NoWeight(void)::no_weight;
}

void sub_1B555E180(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1020C40CA22B68ALL);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>();
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__list_imp<char *>::clear(v2 + 7);
    }

    operator delete(v2);
  }

  return a1;
}

void fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::DeterminizeArc(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::Zero();
  *(a1 + 8) = *v3;
  std::list<int>::list((a1 + 16), (v3 + 2));
  *(a1 + 40) = v3[8];
  operator new();
}

void *fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>::operator()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  fst::LabelCommonDivisor<int,(fst::StringType)2>::operator()(a1, a2, &v10);
  v6 = *(a1 + 32);
  v7 = NAN;
  if (v6 != -INFINITY)
  {
    v8 = *(a2 + 32);
    v7 = NAN;
    if (v8 != -INFINITY)
    {
      if (v6 >= v8)
      {
        v7 = *(a2 + 32);
      }

      else
      {
        v7 = *(a1 + 32);
      }
    }
  }

  fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::GallicWeight(a3, &v10, v7);
  return std::__list_imp<char *>::clear(v11);
}

void *fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)3>::Quantize@<X0>(float *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  fst::ProductWeight<fst::StringWeight<int,(fst::StringType)2>,fst::TropicalWeightTpl<float>>::Quantize(a1, &v5, a3);
  *a2 = v5;
  std::list<int>::list((a2 + 8), v6);
  *(a2 + 32) = v7;
  return std::__list_imp<char *>::clear(v6);
}

void *fst::LabelCommonDivisor<int,(fst::StringType)2>::operator()@<X0>(int *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = (a1 + 4);
  if (!*a1)
  {
    goto LABEL_38;
  }

  v7 = *(a1 + 3) == -1 || *a2 == 0;
  if (v7 || *(a2 + 24) == -1)
  {
    goto LABEL_38;
  }

  v9 = fst::StringWeight<int,(fst::StringType)2>::Zero();
  v10 = *a1;
  if (*a1)
  {
    v11 = *(a1 + 3) + 1;
  }

  else
  {
    v11 = 0;
  }

  if (*v9)
  {
    v12 = *(v9 + 24) + 1;
  }

  else
  {
    v12 = 0;
  }

  if (v11 == v12)
  {
    v13 = (v9 + 16);
    for (i = 1; ; i = 0)
    {
      v15 = *v4;
      v16 = *v13;
      if (i)
      {
        if (!v10)
        {
          break;
        }

        if (v10 != *v9)
        {
          goto LABEL_23;
        }
      }

      if (v15 == a1 + 2)
      {
        break;
      }

      if (*(v15 + 16) != *(v16 + 16))
      {
        goto LABEL_23;
      }

      v4 = (v15 + 8);
      v13 = (v16 + 8);
    }

    v18 = *a2;
    goto LABEL_43;
  }

LABEL_23:
  v17 = fst::StringWeight<int,(fst::StringType)2>::Zero();
  v18 = *a2;
  if (*a2)
  {
    v19 = *(a2 + 24) + 1;
  }

  else
  {
    v19 = 0;
  }

  if (*v17)
  {
    v20 = *(v17 + 24) + 1;
  }

  else
  {
    v20 = 0;
  }

  if (v19 == v20)
  {
    v21 = (a2 + 16);
    v22 = (v17 + 16);
    for (j = 1; ; j = 0)
    {
      v24 = *v21;
      v25 = *v22;
      if (j)
      {
        if (!v18)
        {
          break;
        }

        if (v18 != *v17)
        {
          goto LABEL_37;
        }
      }

      if (v24 == a2 + 8)
      {
        break;
      }

      if (*(v24 + 16) != *(v25 + 16))
      {
        goto LABEL_37;
      }

      v21 = (v24 + 8);
      v22 = (v25 + 8);
    }

    v18 = *a1;
    goto LABEL_43;
  }

LABEL_37:
  if (*a1 != v18)
  {
LABEL_38:
    v26 = fst::StringWeight<int,(fst::StringType)2>::One();
    *a3 = *v26;

    return std::list<int>::list((a3 + 8), (v26 + 2));
  }

LABEL_43:

  return fst::StringWeight<int,(fst::StringType)2>::StringWeight(a3, v18);
}