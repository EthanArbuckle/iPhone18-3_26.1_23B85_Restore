void *fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D035D0;
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

void fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~DeterminizeFst(void *a1)
{
  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

void sub_1B51B7744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~DeterminizeFstImplBase(v18);
  _Unwind_Resume(a1);
}

uint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~DeterminizeFstImplBase(void *a1)
{
  *a1 = &unk_1F2D03738;
  v2 = a1[17];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~CacheBaseImpl(a1);
}

void fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(void *a1)
{
  fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::Expand(void *a1, int a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::GetLabelMap(a1, a2, &v8);
  v4 = v8;
  if (v8 != v9)
  {
    do
    {
      fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::AddArc(a1, a2, (v4 + 5));
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

  fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetArcs(a1, a2);
  std::__tree<int>::destroy(&v8, v9[0]);
}

uint64_t fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::ComputeStart(uint64_t a1)
{
  result = (*(**(a1 + 136) + 24))(*(a1 + 136));
  if (result != -1)
  {
    operator new();
  }

  return result;
}

uint64_t fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::ComputeFinal@<X0>(uint64_t result@<X0>, int a2@<W1>, int32x2_t *a3@<X8>)
{
  v4 = *(*(*(result + 184) + 88) + 8 * a2);
  *a3 = vneg_f32(0x7F0000007FLL);
  v5 = *v4;
  if (*v4)
  {
    v6 = result;
    do
    {
      (*(**(v6 + 136) + 32))(&v10);
      v7 = vadd_f32(*(v5 + 12), v10);
      v8 = *a3;
      v9 = vadd_f32(vzip1_s32(*a3, v7), vzip2_s32(*a3, v7));
      if (v9.f32[0] >= v9.f32[1] && (v9.f32[0] > v9.f32[1] || (vcgt_f32(v7, v8).u8[0] & 1) == 0 && (vcgt_f32(v8, v7).u8[0] & 1) != 0))
      {
        v8 = v7;
      }

      *a3 = v8;
      result = fst::LatticeWeightTpl<float>::Member(a3);
      if ((result & 1) == 0)
      {
        *(v6 + 8) |= 4uLL;
      }

      v5 = *v5;
    }

    while (v5);
  }

  return result;
}

void fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D03248;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D03790;
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
  *a1 = &unk_1F2D03248;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D03790;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

void sub_1B51B7F14(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

void fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~CacheBaseImpl(void *a1)
{
  fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~CacheBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void *fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::VectorCacheStore(void *a1, _BYTE *a2)
{
  *a1 = *a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a1 + 4;
  a1[5] = a1 + 4;
  a1[6] = 0;
  a1[7] = 0;
  fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Clear(a1);
  a1[7] = a1[5];
  return a1;
}

void sub_1B51B7FE8(_Unwind_Exception *a1)
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

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~CacheBaseImpl(void *a1)
{
  *a1 = &unk_1F2D03790;
  v2 = a1[15];
  if (v2)
  {
    v3 = fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::~VectorCacheStore(v2);
    MEMORY[0x1B8C85350](v3, 0x10A0C407A9BBF1FLL);
  }

  v4 = a1[9];
  if (v4)
  {
    operator delete(v4);
  }

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~FstImpl(a1);
}

void *fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::~VectorCacheStore(void *a1)
{
  fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Clear(a1);
  std::__list_imp<char *>::clear(a1 + 4);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void *fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::CompactHashBiTable(void *a1, size_t a2)
{
  a1[1] = a1;
  a1[2] = a1;
  std::unordered_set<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::unordered_set((a1 + 3), a2, a1 + 1, a1 + 2);
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  if (a2)
  {
    std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(a1 + 10, a2);
  }

  return a1;
}

void sub_1B51B8130(_Unwind_Exception *a1)
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

uint64_t std::unordered_set<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::unordered_set(uint64_t a1, size_t a2, void *a3, void *a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *a3;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = *a4;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__rehash<true>(a1, a2);
  return a1;
}

uint64_t fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(void *a1)
{
  *a1 = &unk_1F2D03680;
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

  return fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~DeterminizeFstImplBase(a1);
}

void sub_1B51B83F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~DeterminizeFstImplBase(v18);
  _Unwind_Resume(a1);
}

void sub_1B51B8584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~CacheBaseImpl(v15);
  _Unwind_Resume(a1);
}

void sub_1B51B8740(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::CopyStates(a1, a2);
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
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::GetMutableState(a1, 0);
    }

    *(a1 + 80) = MutableState;
  }

  return a1;
}

void fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::CopyStates(void *a1, uint64_t a2)
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

uint64_t fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::CacheState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> const*>,std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> const*>>(a1 + 24, v4, v5, 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 2));
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> const*>,std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B51B8A6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::GetLabelMap(void *a1, int a2, void *a3)
{
  v5 = **(*(a1[23] + 88) + 8 * a2);
  if (v5)
  {
    while (1)
    {
      v6 = *(v5 + 2);
      v7 = a1[17];
      v19 = 0;
      (*(*v7 + 136))(v7, v6, v17);
      if (!v17[0])
      {
        break;
      }

      if (!(*(*v17[0] + 24))(v17[0]))
      {
        if (v17[0])
        {
          v8 = (*(*v17[0] + 32))();
        }

        else
        {
LABEL_7:
          v8 = (v17[1] + 20 * v19);
        }

        v15 = v8[2].i32[0];
        v16 = vadd_f32(*(v5 + 12), v8[1]);
        fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::FilterArc(a1[22], v8, (v5 + 1), &v15, a3);
      }

      if (!v17[0])
      {
        goto LABEL_11;
      }

      (*(*v17[0] + 8))();
LABEL_13:
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_14;
      }
    }

    if (v19 < v17[2])
    {
      goto LABEL_7;
    }

LABEL_11:
    if (v18)
    {
      --*v18;
    }

    goto LABEL_13;
  }

LABEL_14:
  v11 = *a3;
  v9 = a3 + 1;
  v10 = v11;
  if (v11 != v9)
  {
    do
    {
      fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::NormArc(a1, (v10 + 5));
      v12 = v10[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v10[2];
          v14 = *v13 == v10;
          v10 = v13;
        }

        while (!v14);
      }

      v10 = v13;
    }

    while (v13 != v9);
  }
}

void sub_1B51B8C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  else if (a15)
  {
    --*a15;
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::AddArc(uint64_t a1, int a2, uint64_t a3)
{
  v7[0] = *a3;
  v7[1] = v7[0];
  v8 = *(a3 + 4);
  State = fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::FindState(a1, *(a3 + 16));
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>>::GetMutableState(*(a1 + 120), a2);
  return std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::push_back[abi:ne200100]((MutableState + 24), v7);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetArcs(uint64_t a1, int a2)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>>::GetMutableState(*(a1 + 120), a2);
  fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>>::SetArcs(*(a1 + 120), MutableState);
  v5 = *(MutableState + 24);
  v6 = *(MutableState + 32) - v5;
  if (v6)
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 2);
    v8 = *(a1 + 68);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v9 = (v5 + 16);
    do
    {
      v11 = *v9;
      v9 += 5;
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
  *(MutableState + 48) |= 0xAu;
  return result;
}

void fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::FilterArc(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a5, a2) + 10) != -1)
  {
    operator new();
  }

  operator new();
}

void fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::NormArc(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  std::forward_list<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::sort[abi:ne200100](v4);
  v5 = *v4;
  if (*v4)
  {
    v6 = *v4;
    do
    {
      v8 = *(a2 + 4);
      v7 = *(a2 + 8);
      v9 = *(v6 + 3);
      v10 = *(v6 + 4);
      if ((v8 + v7) >= (v9 + v10))
      {
        if ((v8 + v7) > (v9 + v10) || (v8 >= v9 ? (v11 = v8 <= v9) : (v11 = 1), !v11))
        {
          v7 = *(v6 + 4);
          v8 = *(v6 + 3);
        }
      }

      *(a2 + 4) = v8;
      *(a2 + 8) = v7;
      if (v5 == v6 || *(v6 + 2) != *(v5 + 2))
      {
        v16 = *v6;
        v5 = v6;
      }

      else
      {
        v13 = *(v5 + 3);
        v12 = *(v5 + 4);
        v14 = *(v6 + 3);
        v15 = *(v6 + 4);
        if ((v13 + v12) >= (v14 + v15))
        {
          if ((v13 + v12) > (v14 + v15) || (v13 >= v14 ? (v17 = v13 <= v14) : (v17 = 1), !v17))
          {
            v12 = *(v6 + 4);
            v13 = *(v6 + 3);
          }
        }

        *(v5 + 3) = v13;
        *(v5 + 4) = v12;
        if (!fst::LatticeWeightTpl<float>::Member(v5 + 3))
        {
          *(a1 + 8) |= 4uLL;
        }

        v16 = *v6;
        v18 = *v5;
        *v5 = **v5;
        operator delete(v18);
      }

      v6 = v16;
    }

    while (v16);
    v19 = *v4;
    if (*v4)
    {
      v20 = xmmword_1B5AE39F0;
      do
      {
        v21 = vsub_f32(*(v19 + 12), *(a2 + 4));
        *v22.f32 = v21;
        *&v22.u32[2] = v21;
        v23.i32[0] = vmovn_s32(vceqq_f32(v22, v20)).u32[0];
        v23.i32[1] = vmovn_s32(vmvnq_s8(vceqq_f32(v22, v22))).i32[1];
        if (vmaxv_u16(v23))
        {
          if (kaldi::g_kaldi_verbose_level < 0)
          {
            v25 = INFINITY;
            v21.i32[0] = 2139095040;
          }

          else
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v30);
            v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "LatticeWeightTpl::Divide, NaN or invalid number produced. ", 58);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "[dividing by zero?]  Returning zero.", 36);
            kaldi::KaldiLogMessage::~KaldiLogMessage(v30);
            v25 = INFINITY;
            v21.i32[0] = 2139095040;
            v20 = xmmword_1B5AE39F0;
          }
        }

        else
        {
          if (v21.f32[0] == INFINITY)
          {
            v25 = INFINITY;
          }

          else
          {
            v25 = v21.f32[1];
          }

          if (v21.f32[1] == INFINITY || v21.f32[0] == INFINITY)
          {
            v21.f32[0] = INFINITY;
          }
        }

        *(v19 + 3) = v21.i32[0];
        *(v19 + 4) = v25;
        v27 = -INFINITY;
        v28 = -INFINITY;
        if ((v25 + v21.f32[0]) != -INFINITY)
        {
          v27 = INFINITY;
          v28 = INFINITY;
          if ((v25 + v21.f32[0]) != INFINITY)
          {
            v29 = *(a1 + 144);
            v27 = v29 * floorf((v21.f32[0] / v29) + 0.5);
            v28 = v29 * floorf((v25 / v29) + 0.5);
          }
        }

        *(v19 + 3) = v27;
        *(v19 + 4) = v28;
        v19 = *v19;
      }

      while (v19);
    }
  }
}

void sub_1B51B9160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
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

uint64_t fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::FindState(uint64_t a1, uint64_t **a2)
{
  State = fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::FindState(*(a1 + 184), a2);
  v5 = State;
  if (*(a1 + 152))
  {
    v6 = *(a1 + 160);
    if (State >= ((v6[1] - *v6) >> 3))
    {
      fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::ComputeDistance(a1, a2, &v10);
      v7 = v6[1];
      if (v7 >= v6[2])
      {
        v8 = std::vector<fst::LatticeWeightTpl<float>>::__emplace_back_slow_path<fst::LatticeWeightTpl<float>>(v6, &v10);
      }

      else
      {
        *v7 = v10;
        v8 = &v7[1];
      }

      v6[1] = v8;
    }
  }

  return v5;
}

uint64_t fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::FindState(void *a1, void **a2)
{
  v8 = a2;
  v2 = (a1[12] - a1[11]) >> 3;
  Id = fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::FindId(a1 + 1, &v8, 1);
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

uint64_t fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::LatticeWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::ComputeDistance@<X0>(uint64_t result@<X0>, uint64_t **a2@<X1>, float32x2_t *a3@<X8>)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = **(result + 152);
    v5 = vneg_f32(0x7F0000007FLL);
    v6 = v5;
    do
    {
      v7 = *(v3 + 2);
      v8 = v5;
      if ((*(*(result + 152) + 8) - v4) >> 3 > v7)
      {
        v8 = *(v4 + 8 * v7);
      }

      v9 = vadd_f32(v8, *(v3 + 12));
      v10 = vadd_f32(vzip1_s32(v6, v9), vzip2_s32(v6, v9));
      if (v10.f32[0] >= v10.f32[1] && (v10.f32[0] > v10.f32[1] || (vcgt_f32(v9, v6).u8[0] & 1) == 0 && (vcgt_f32(v6, v9).u8[0] & 1) != 0))
      {
        v6 = v9;
      }

      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v6 = vneg_f32(0x7F0000007FLL);
  }

  *a3 = v6;
  return result;
}

uint64_t fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::FindId(void *a1, void *a2, int a3)
{
  a1[13] = a2;
  v6 = std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::find<int>(a1 + 3, &fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::kCurrentKey);
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
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 3, &v20);
  return v20;
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::find<int>(void *a1, int *a2)
{
  v4 = *a2;
  if (v4 < -1)
  {
    v7 = 0;
  }

  else
  {
    v5 = a1[4];
    if (v4 == -1)
    {
      v6 = *(v5 + 104);
    }

    else
    {
      v6 = (*(v5 + 80) + 8 * v4);
    }

    v7 = fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey::operator()(v5, *v6);
  }

  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v7)
    {
      if (fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual::operator()(a1 + 6, *(i + 4), *a2))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v8)
        {
          v14 %= *&v8;
        }
      }

      else
      {
        v14 &= *&v8 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual::operator()(uint64_t *a1, int a2, int a3)
{
  if (a2 < -1 || a3 < -1)
  {
    return a2 == a3;
  }

  v3 = *a1;
  if (a2 == -1)
  {
    v4 = *(v3 + 104);
  }

  else
  {
    v4 = (*(v3 + 80) + 8 * a2);
  }

  v6 = *v4;
  if (a3 == -1)
  {
    v7 = *(v3 + 104);
  }

  else
  {
    v7 = (*(v3 + 80) + 8 * a3);
  }

  if (*(*v7 + 8) == *(v6 + 8))
  {
    return std::operator==[abi:ne200100]<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,std::allocator<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>(*v7, v6);
  }

  else
  {
    return 0;
  }
}

uint64_t fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey::operator()(uint64_t a1, uint64_t **a2)
{
  result = *(a2 + 8);
  for (i = *a2; i; i = *i)
  {
    v4 = *(i + 3);
    v5 = *(i + 4);
    v6 = __CFADD__(v5, v4);
    v7 = (v5 + v4);
    if (v6)
    {
      v8 = 0x100000000;
    }

    else
    {
      v8 = 0;
    }

    result ^= (2 * result) ^ (32 * *(i + 2)) ^ (*(i + 2) >> 59) ^ (v8 | v7);
  }

  return result;
}

uint64_t std::operator==[abi:ne200100]<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,std::allocator<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>(uint64_t *a1, uint64_t *a2)
{
  while (1)
  {
    a1 = *a1;
    a2 = *a2;
    if (!a1 || a2 == 0)
    {
      break;
    }

    if (*(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3) || *(a1 + 4) != *(a2 + 4))
    {
      return 0;
    }
  }

  return (a1 == 0) ^ (a2 != 0);
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *a1, int *a2)
{
  v4 = *a2;
  if (v4 < -1)
  {
    v7 = 0;
  }

  else
  {
    v5 = a1[4];
    if (v4 == -1)
    {
      v6 = *(v5 + 104);
    }

    else
    {
      v6 = (*(v5 + 80) + 8 * v4);
    }

    v7 = fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey::operator()(v5, *v6);
  }

  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_24;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_24;
    }

LABEL_23:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_24;
    }
  }

  if ((fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual::operator()(a1 + 6, *(v13 + 4), *a2) & 1) == 0)
  {
    goto LABEL_23;
  }

  return v13;
}

uint64_t fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>::GetMutableState(a1, a2);
  v4 = MutableState;
  if (*(a1 + 88) == 1)
  {
    v5 = *(MutableState + 48);
    if ((v5 & 4) == 0)
    {
      *(MutableState + 48) = v5 | 4;
      v6 = *(MutableState + 32) - *(MutableState + 24) + *(a1 + 112) + 56;
      *(a1 + 112) = v6;
      *(a1 + 104) = 1;
      if (v6 > *(a1 + 96))
      {
        fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>>::GC(a1, MutableState, 0, 0.666);
      }
    }
  }

  return v4;
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>::GetMutableState(uint64_t a1, int a2)
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
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::GetMutableState(a1, 0);
      *(a1 + 80) = MutableState;
      *(MutableState + 48) |= 4u;
      std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::reserve((MutableState + 24), 0x80uLL);
      return *(a1 + 80);
    }

    v5 = *(a1 + 80);
    if (!v5[6].i32[1])
    {
      *(a1 + 76) = a2;
      *v5 = vneg_f32(0x7F0000007FLL);
      v5[6].i32[0] = 0;
      v5[1] = 0;
      v5[2] = 0;
      v5[4] = v5[3];
      result = *(a1 + 80);
      *(result + 48) |= 4u;
      return result;
    }

    v5[6].i32[0] &= ~4u;
    *(a1 + 72) = 0;
  }

  v6 = a2 + 1;

  return fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::GetMutableState(a1, v6);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>>::GC(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
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

      MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>::GetMutableState(a1, v23);
      v25 = *(a1 + 112);
      if (v25 > v20 && !*(MutableState + 52))
      {
        if (a3)
        {
          if (MutableState != a2)
          {
            v26 = *(MutableState + 48);
LABEL_19:
            if ((v26 & 4) != 0)
            {
              v27 = *(MutableState + 32) - *(MutableState + 24) + 56;
              FstCheck(v27 <= v25, "(size) <= (cache_size_)", "../libquasar/libkaldi/tools/openfst/src/include/fst/cache.h", 730);
              *(a1 + 112) -= v27;
            }

            fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::Delete(a1);
            v21 = *(a1 + 56);
            continue;
          }
        }

        else
        {
          v26 = *(MutableState + 48);
          if ((v26 & 8) == 0 && MutableState != a2)
          {
            goto LABEL_19;
          }
        }
      }

      *(MutableState + 48) &= ~8u;
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
      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>>::GC(a1, a2, 1, a4);
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

void sub_1B51B9F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>>::SetArcs(uint64_t a1, uint64_t a2)
{
  fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetArcs(a2);
  if (*(a1 + 104) == 1 && (*(a2 + 48) & 4) != 0)
  {
    v4 = *(a2 + 32) - *(a2 + 24) + *(a1 + 112);
    *(a1 + 112) = v4;
    if (v4 > *(a1 + 96))
    {

      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>>::GC(a1, a2, 0, 0.666);
    }
  }
}

uint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      v2 = (*(*a1 + 56))(a1);
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

double fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Final@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasFinal(a1, a2) & 1) == 0)
  {
    (*(*a1 + 64))(&v12, a1, a2);
    v6 = v12;
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>>::GetMutableState(a1[15], a2);
    *MutableState = v6;
    *(MutableState + 48) |= 9u;
  }

  v8 = a1[15];
  if (*(v8 + 76) == a2)
  {
    v9 = (v8 + 80);
  }

  else
  {
    v9 = (*(v8 + 8) + 8 * a2 + 8);
  }

  v10 = *v9;
  result = *v10;
  *a3 = *v10;
  return result;
}

unint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::NumArcs(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
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

  return 0xCCCCCCCCCCCCCCCDLL * ((*(*v5 + 32) - *(*v5 + 24)) >> 2);
}

uint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::NumInputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
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

  return *(*v5 + 8);
}

uint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::NumOutputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
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

  return *(*v5 + 16);
}

void *fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::DeterminizeFst(void *a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D034F0;
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
    fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetImpl(a1, v4, 0);
  }

  return a1;
}

uint64_t fst::CacheStateIterator<fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::Done(uint64_t a1)
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
    fst::ArcIterator<fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::ArcIterator(&v19, *(a1 + 8), v6);
    v7 = *(v19 + 24);
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(v19 + 32) - v7) >> 2);
    v9 = *(a1 + 16);
    v10 = v8 - v20;
    if (v8 > v20)
    {
      v11 = *(v9 + 68);
      v12 = (v7 + 20 * v20 + 16);
      do
      {
        v14 = *v12;
        v12 += 5;
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

uint64_t *fst::ArcIterator<fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::ArcIterator(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 52);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    (*(**(a2 + 8) + 48))(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::InitArcIterator(uint64_t a1, uint64_t a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::InitArcIterator(a1, a2, a3);
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D03280;
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

void std::vector<std::pair<std::string,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::allocator<std::pair<std::string,std::vector<std::string>>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<std::pair<std::string,std::vector<std::string>>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t std::vector<quasar::Token>::__emplace_back_slow_path<std::string const&,int,int,int,int,BOOL>(uint64_t a1, uint64_t a2, int *a3, int *a4, int *a5, int *a6, std::string::value_type *a7)
{
  v7 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 5);
  v8 = v7 + 1;
  if ((v7 + 1) > 0x124924924924924)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5) > v8)
  {
    v8 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 5)) >= 0x92492492492492)
  {
    v11 = 0x124924924924924;
  }

  else
  {
    v11 = v8;
  }

  v21 = a1;
  if (v11)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Token>>(a1, v11);
  }

  v18 = 0;
  v19 = 224 * v7;
  std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,std::string const&,int,int,int,int,BOOL>(a1, (224 * v7), a2, a3, a4, a5, a6, a7);
  v20 = (224 * v7 + 224);
  v12 = *(a1 + 8);
  v13 = 224 * v7 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Token>,quasar::Token*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<quasar::Token>::~__split_buffer(&v18);
  return v17;
}

void sub_1B51BAA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,std::string const&,int,int,int,int,BOOL>(uint64_t a1, std::string *a2, uint64_t a3, int *a4, int *a5, int *a6, int *a7, std::string::value_type *a8)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a3, *(a3 + 8));
  }

  else
  {
    v26 = *a3;
  }

  v14 = *a4;
  v15 = *a5;
  v16 = *a6;
  v17 = *a7;
  v18 = *a8;
  std::string::basic_string[abi:ne200100]<0>(v24, "");
  std::string::basic_string[abi:ne200100]<0>(v22, "");
  memset(v21, 0, sizeof(v21));
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  quasar::Token::Token(a2, &v26, v14, v15, v16, v18, 0, v24, v17, v22, v21, 0, __p, 0, 0, 0);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v21;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_1B51BAB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  __p = &a21;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
  }

  _Unwind_Resume(a1);
}

void *std::vector<std::pair<std::string,float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<quasar::TextTokenizer::Token>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void *std::vector<std::vector<std::string>>::vector[abi:ne200100](void *result, unint64_t a2)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<std::string>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::pair<std::string,std::vector<std::string>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::pair<std::string,std::vector<std::string>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::string,std::vector<std::string>>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<std::pair<std::string,std::vector<std::string>>>::destroy[abi:ne200100](v4, i - 48);
  }
}

kaldi::UniformRandomNumber *kaldi::UniformRandomNumber::UniformRandomNumber(kaldi::UniformRandomNumber *this, int a2, unint64_t a3, uint64_t a4)
{
  *this = a3;
  *(this + 1) = a4;
  *(this + 4) = a2;
  std::vector<unsigned int>::vector[abi:ne200100](this + 3, a3);
  v5 = *this;
  if (*this)
  {
    v6 = vdupq_n_s64(v5 - 1);
    v7 = (v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v8 = xmmword_1B5AE0050;
    v9 = xmmword_1B5AE0060;
    v10 = (*(this + 3) + 8);
    v11 = vdupq_n_s64(1uLL);
    v12 = vdupq_n_s64(4uLL);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v6, v9));
      v14 = vaddq_s64(v9, v11);
      if (vuzp1_s16(v13, *v6.i8).u8[0])
      {
        *(v10 - 2) = v14.i32[0];
      }

      if (vuzp1_s16(v13, *&v6).i8[2])
      {
        *(v10 - 1) = v14.i32[2];
      }

      v15 = vaddq_s64(v8, v11);
      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v8))).i32[1])
      {
        *v10 = v15.i32[0];
        v10[1] = v15.i32[2];
      }

      v8 = vaddq_s64(v8, v12);
      v9 = vaddq_s64(v9, v12);
      v10 += 4;
      v7 -= 4;
    }

    while (v7);
  }

  return this;
}

void kaldi::UniformRandomNumber::~UniformRandomNumber(kaldi::UniformRandomNumber *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

uint64_t kaldi::UniformRandomNumber::SetRandomSeeds(kaldi::UniformRandomNumber *this, int a2)
{
  v5 = *(this + 3);
  result = this + 24;
  v4 = v5;
  *(result + 8) = v5;
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = v6 - v4;
    v8 = v7 >> 1;
    if ((v7 >> 1) <= 1)
    {
      v8 = 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(result, v9);
  }

  *v4 = a2;
  *(this + 4) = v4 + 1;
  *this = 1;
  return result;
}

kaldi::GaussRandomNumber *kaldi::GaussRandomNumber::GaussRandomNumber(kaldi::GaussRandomNumber *this, const kaldi::UniformRandomNumber *a2)
{
  v4 = *a2;
  *this = a2;
  *(this + 1) = v4;
  v5 = (this + 16);
  std::vector<std::vector<float>>::vector[abi:ne200100](this + 2, v4);
  std::vector<short>::vector[abi:ne200100](this + 5, *a2);
  *(this + 16) = 2;
  if (*(this + 1))
  {
    v6 = 0;
    v7 = 0;
    v8 = 2;
    do
    {
      std::vector<int>::resize((*v5 + v6), v8);
      v8 = *(this + 16);
      *(*(this + 5) + 2 * v7++) = v8;
      v6 += 24;
    }

    while (*(this + 1) > v7);
  }

  return this;
}

void sub_1B51BB1F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void kaldi::GaussRandomNumber::Rand(kaldi::GaussRandomNumber *this, unsigned int a2)
{
  v3 = a2;
  v4 = *(this + 5);
  v5 = *(v4 + 2 * a2);
  if (*(this + 16) <= v5)
  {
    __asm
    {
      FMOV            V1.2D, #2.0
      FMOV            V0.2D, #-1.0
    }

    v16 = _Q0;
    v17 = _Q1;
    do
    {
      v12 = rand_r((*(*this + 24) + 4 * v3));
      v13 = vcvt_f32_f64(vmlaq_f64(v16, v17, vcvtq_f64_f32(vmul_f32(vcvt_f32_s32(__PAIR64__(rand_r((*(*this + 24) + 4 * v3)), v12)), 0x3000000030000000))));
      v14 = COERCE_FLOAT(vmul_f32(v13, v13).i32[1]) + (v13.f32[0] * v13.f32[0]);
    }

    while (v14 >= 1.0);
    v18 = v13;
    v15 = logf(v14) * -2.0 / v14;
    **(*(this + 2) + 24 * v3) = vmul_n_f32(v18, sqrtf(v15));
    *(*(this + 5) + 2 * v3) = 1;
  }

  else
  {
    *(v4 + 2 * a2) = v5 + 1;
  }
}

void *std::vector<unsigned int>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_1B51BB3B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::vector<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void *std::vector<short>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<short>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B51BB4D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t kaldi::quasar::Vocab::Vocab(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  v8 = a1 + 8;
  *(a1 + 56) = 0u;
  v9 = a1 + 56;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0u;
  v10 = a1 + 120;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  v27 = (a1 + 56);
  v28 = (a1 + 8);
  kaldi::ExpectToken(a2, a3, "<VocabSize>");
  kaldi::ReadBasicType<int>(a2, a3, a1);
  kaldi::ExpectToken(a2, a3, "<UnknownWord>");
  kaldi::ReadToken(a2, a3, v8);
  kaldi::ExpectToken(a2, a3, "<BeginOfSentenceWord>");
  kaldi::ReadToken(a2, a3, a1 + 32);
  kaldi::ExpectToken(a2, a3, "<EndOfSentenceWord>");
  kaldi::ReadToken(a2, a3, v9);
  if (*a1 >= 1)
  {
    v11 = 0;
    do
    {
      __p = 0uLL;
      v31 = 0;
      __x = 0.0;
      kaldi::ReadToken(a2, a3, &__p);
      kaldi::ReadBasicType<double>(a2, a3, &__x);
      v32 = COERCE_DOUBLE(&__p);
      *(std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 80), &__p) + 10) = v11;
      std::vector<std::string>::push_back[abi:ne200100](v10, &__p);
      if (a4)
      {
        v32 = log(__x);
        std::vector<double>::push_back[abi:ne200100]((a1 + 144), &v32);
      }

      else
      {
        v13 = *(a1 + 152);
        v12 = *(a1 + 160);
        if (v13 >= v12)
        {
          v15 = *(a1 + 144);
          v16 = v13 - v15;
          v17 = (v13 - v15) >> 3;
          v18 = v17 + 1;
          if ((v17 + 1) >> 61)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v19 = v12 - v15;
          if (v19 >> 2 > v18)
          {
            v18 = v19 >> 2;
          }

          v20 = v19 >= 0x7FFFFFFFFFFFFFF8;
          v21 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v20)
          {
            v21 = v18;
          }

          if (v21)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1 + 144, v21);
          }

          v22 = (v13 - v15) >> 3;
          v23 = (8 * v17);
          v24 = (8 * v17 - 8 * v22);
          *v23 = __x;
          v14 = v23 + 1;
          memcpy(v24, v15, v16);
          v25 = *(a1 + 144);
          *(a1 + 144) = v24;
          *(a1 + 152) = v14;
          *(a1 + 160) = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v13 = __x;
          v14 = v13 + 1;
        }

        *(a1 + 152) = v14;
      }

      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p);
      }

      ++v11;
    }

    while (v11 < *a1);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 80), v28);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 80), (a1 + 32));
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 80), v27);
  v32 = *&v28;
  *(a1 + 168) = *(std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 80), v28) + 10);
  return a1;
}

void sub_1B51BB814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  v19 = *(v17 + 144);
  if (v19)
  {
    *(v17 + 152) = v19;
    operator delete(v19);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v17 + 80);
  if (*(v17 + 79) < 0)
  {
    operator delete(*a9);
  }

  if (*(v17 + 55) < 0)
  {
    operator delete(*(v17 + 32));
  }

  if (*(v17 + 31) < 0)
  {
    operator delete(*a10);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::Vocab::BosWord(kaldi::quasar::Vocab *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 4), *(this + 5));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 2);
    a2->__r_.__value_.__r.__words[2] = *(this + 6);
  }
}

void kaldi::quasar::Vocab::EosWord(kaldi::quasar::Vocab *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 79) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 7), *(this + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 56);
    a2->__r_.__value_.__r.__words[2] = *(this + 9);
  }
}

uint64_t kaldi::quasar::Vocab::GetWordId(uint64_t a1, const void **a2)
{
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 80), a2);
  v4 = (v3 + 5);
  if (!v3)
  {
    v4 = (a1 + 168);
  }

  return *v4;
}

uint64_t kaldi::quasar::Vocab::GetWord(kaldi::quasar::Vocab *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || *this <= a2)
  {
    return this + 8;
  }

  else
  {
    return *(this + 15) + 24 * a2;
  }
}

void kaldi::CopySetToVector<int>(void *a1, std::vector<unsigned int> *this)
{
  std::vector<int>::resize(this, a1[2]);
  v4 = *a1;
  if (*a1 != a1 + 1)
  {
    begin = this->__begin_;
    do
    {
      *begin = *(v4 + 7);
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

      ++begin;
      v4 = v7;
    }

    while (v7 != a1 + 1);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1B51BBC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B51BBCF8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t kaldi::CuSubMatrix<float>::CuSubMatrix(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 24) = 0u;
  *(result + 8) = 0u;
  *result = &unk_1F2CFA908;
  v5 = *(a2 + 16);
  v6 = v5 / a3;
  if (v5 % a3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "the vector cannot be represented as a matrix with rows ", 55);
    v8 = MEMORY[0x1B8C84C00](v7, a3);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " , while it has dimension ", 26);
    MEMORY[0x1B8C84C00](v9, *(a2 + 16));
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  *(result + 8) = *(a2 + 8);
  *(result + 16) = v6;
  *(result + 20) = a3;
  *(result + 24) = v6;
  *(result + 28) = v5;
  *(result + 32) = *(a2 + 24);
  return result;
}

void sub_1B51BC394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B51BC5C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B51BC900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id EARHelpers::VectorToArray<double>(double **a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = [MEMORY[0x1E696AD98] numberWithDouble:*v3];
      [v2 addObject:v5];

      ++v3;
    }

    while (v3 != v4);
  }

  v6 = [v2 copy];

  return v6;
}

void sub_1B51BCC48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  std::__tree<std::string>::destroy(v38 - 88, *(v38 - 80));
  _Unwind_Resume(a1);
}

void sub_1B51BCF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

quasar::HybridEndpointer *std::unique_ptr<quasar::HybridEndpointer>::reset[abi:ne200100](quasar::HybridEndpointer **a1, quasar::HybridEndpointer *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    quasar::HybridEndpointer::~HybridEndpointer(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t quasar::LatticeRnnMitigator::runImpl(uint64_t a1, void *a2, uint64_t *a3, quasar::SpeechRequestData **a4)
{
  if (quasar::SpeechRequestData::isUtteranceDetectionEnabled(*a4))
  {
    if (quasar::gLogLevel >= 4)
    {
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
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "This doesn't work when utt detect is enabled. Doing nothing.", 60);
LABEL_19:
      quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
      return 0;
    }

    return 0;
  }

  v8 = *a3;
  if (*(*a3 + 888) != 1)
  {
    DeviceId = quasar::SpeechRequestData::getDeviceId(*a4);
    if (!quasar::isMatchWithWildcard(DeviceId, (a1 + 768), 1) || (InputOrigin = quasar::SpeechRequestData::getInputOrigin(*a4), (quasar::isMatchWithWildcard(InputOrigin, (a1 + 792), 1) & 1) == 0))
    {
      if (quasar::gLogLevel >= 4)
      {
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
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Request does not match filter. Doing nothing.", 45);
        goto LABEL_19;
      }

      return 0;
    }

    v11 = *a3;
    v12 = a2[10];
    (*(**(*a2 + 16) + 32))(*(*a2 + 16));
    quasar::DecoderChainOutput::getWordHypLattice(v11, v12, &v23);
    if (v23)
    {
      if (v23[3] != v23[2])
      {
        quasar::WlatArcFeatureExtractor::runArcFeatureExtraction(v23, *(a1 + 712), a1 + 480);
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v19 = &unk_1F2D3AC18;
        kaldi::quasar::LatticeRnn::Run(*(a1 + 472), v23, &v19);
        if (v21 != 1)
        {
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
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "LatticeRnn output is incorrect ", 31);
          MEMORY[0x1B8C84C00](v18, v21);
          quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
        }

        v13 = *v20;
        *(v8 + 888) = 1;
        std::string::operator=((v8 + 896), (a1 + 504));
        *(v8 + 920) = *(a1 + 700);
        v14 = v13;
        *(v8 + 928) = v14;
        *(v8 + 936) = *(a1 + 704);
        v15 = *(*a3 + 440);
        std::string::basic_string[abi:ne200100]<0>(__p, "latnnMitigatorScore");
        quasar::SpeechRequestResultData::addDump(v15, __p, v14);
        if (SBYTE7(v26) < 0)
        {
          operator delete(__p[0]);
        }

        if (quasar::gLogLevel >= 4)
        {
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
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "LatticeRnn result: ", 19);
          quasar::operator<<(v16, (v8 + 888));
          quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
        }

        kaldi::CuVector<float>::~CuVector(&v19);
        goto LABEL_26;
      }

      if (quasar::gLogLevel < 4)
      {
LABEL_26:
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        return 0;
      }

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
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Lattice is empty. Doing nothing", 31);
    }

    else
    {
      if (quasar::gLogLevel < 4)
      {
        goto LABEL_26;
      }

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
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Lattice is null. Doing nothing", 30);
    }

    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
    goto LABEL_26;
  }

  if (quasar::gLogLevel >= 4)
  {
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
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "An earlier LatticeRnn in the decoder chain already ran. Doing nothing.", 70);
    goto LABEL_19;
  }

  return 0;
}

void sub_1B51BD6B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B51BD6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  quasar::QuasarInfoMessage::~QuasarInfoMessage(va);
  JUMPOUT(0x1B51BD6E0);
}

void quasar::LatticeRnnMitigator::~LatticeRnnMitigator(quasar::LatticeRnnMitigator *this)
{
  quasar::LatticeRnnMitigator::~LatticeRnnMitigator(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D03888;
  v3 = (this + 792);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 768);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 767) < 0)
  {
    operator delete(*(this + 93));
  }

  if (*(this + 743) < 0)
  {
    operator delete(*(this + 90));
  }

  if (*(this + 695) < 0)
  {
    operator delete(*(this + 84));
  }

  if (*(this + 671) < 0)
  {
    operator delete(*(this + 81));
  }

  if (*(this + 647) < 0)
  {
    operator delete(*(this + 78));
  }

  if (*(this + 623) < 0)
  {
    operator delete(*(this + 75));
  }

  if (*(this + 599) < 0)
  {
    operator delete(*(this + 72));
  }

  if (*(this + 575) < 0)
  {
    operator delete(*(this + 69));
  }

  if (*(this + 551) < 0)
  {
    operator delete(*(this + 66));
  }

  if (*(this + 527) < 0)
  {
    operator delete(*(this + 63));
  }

  v3 = (this + 480);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::unique_ptr<kaldi::quasar::LatticeRnn>::reset[abi:ne200100](this + 59, 0);
  v2 = *(this + 58);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  quasar::Decoder::~Decoder(this);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeBagOfPhones>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D03960;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_emplace<quasar::WlatArcFeKeyword>::__shared_ptr_emplace[abi:ne200100]<std::vector<int> &,std::allocator<quasar::WlatArcFeKeyword>,0>(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_1F2D039B0;
  *(a1 + 24) = &unk_1F2D064A8;
  *(a1 + 40) = 0u;
  *(a1 + 32) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 32, *a2, a2[1], (a2[1] - *a2) >> 2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::WlatArcFeKeyword>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D039B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::quasar::GrammarFst::CreateFst(uint64_t a1, const char ***a2, uint64_t a3, int a4)
{
  if (a2[1] == *a2)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "the input grammar data is empty", 31);
LABEL_24:
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v14);
    }

    return 0;
  }

  if (!(*(*a3 + 120))(a3))
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "the input symbol table is empty", 31);
      goto LABEL_24;
    }

    return 0;
  }

  (*(*a3 + 104))(a3, "<eps>");
  if (a4)
  {
    v8 = *a2;
    v9 = a2[1];
    if (*a2 == v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      do
      {
        v11 = *v8;
        if (v8[1] == *v8)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        if (v11[23] < 0)
        {
          v11 = *v11;
        }

        v10 += atoi(v11);
        v8 += 3;
      }

      while (v8 != v9);
    }
  }

  else
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
  }

  if (((*(*(a1 + 8) + 72) - *(*(a1 + 8) + 64)) >> 3) >= 1)
  {
    fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
    v12 = *(a1 + 8);
    fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::DeleteStates(v12);
    v12[1] = (*(v12 + 2) | (*(*v12 + 24))(v12)) & 4 | 0x156A5A950003;
  }

  if (v10)
  {
    fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::AddState(a1);
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "LME: no user data available for creating a grammar FST", 54);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&v14);
  }

  return 1;
}

void sub_1B51BDF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::GrammarFst::SetClassSizeCost(uint64_t this, float a2, float a3)
{
  *(this + 16) = a2;
  *(this + 20) = a3;
  return this;
}

uint64_t *quasar::corrective_reranking::InitFeaturizers@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *result;
  if (*result != result[1])
  {
    quasar::PTree::PTree(v5);
    quasar::PTree::getChildOptional(a2, v3);
  }

  return result;
}

void sub_1B51BEBEC(_Unwind_Exception *a1)
{
  quasar::PTree::~PTree((v2 - 152));
  *(v2 - 152) = v1;
  std::vector<std::unique_ptr<quasar::corrective_reranking::Featurizer>>::__destroy_vector::operator()[abi:ne200100]((v2 - 152));
  _Unwind_Resume(a1);
}

float quasar::corrective_reranking::HasTargetFeaturizer::Run(uint64_t a1, uint64_t a2)
{
  if (quasar::corrective_reranking::Parse::hasFullTextTarget(*(a2 + 8)))
  {
    quasar::corrective_reranking::tokenize();
  }

  quasar::corrective_reranking::Parse::getTarget(*(a2 + 8), 0, v5);
  v3 = v5[0] == v5[1];
  v6 = v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  return !v3;
}

float quasar::corrective_reranking::TargetTokenCountFeaturizer::Run(uint64_t a1, uint64_t a2)
{
  v3 = -1.0;
  if (!quasar::corrective_reranking::Parse::hasFullTextTarget(*(a2 + 8)))
  {
    quasar::corrective_reranking::Parse::getTarget(*(a2 + 8), 0, v5);
    v3 = (0xAAAAAAAAAAAAAAABLL * ((v5[1] - v5[0]) >> 3));
    v6 = v5;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  return v3;
}

float quasar::corrective_reranking::MatchedTargetTokenCountFeaturizer::Run(uint64_t a1, uint64_t a2)
{
  if (quasar::corrective_reranking::Parse::hasFullTextTarget(*(a2 + 8)))
  {
    quasar::corrective_reranking::tokenize();
  }

  v3 = *(a2 + 8);
  v4 = 0.0;
  if (*(v3 + 112) == 1)
  {
    return ((*(v3 + 96) - *(v3 + 88)) >> 3);
  }

  return v4;
}

float quasar::corrective_reranking::HasPayloadFeaturizer::Run(uint64_t a1, uint64_t a2)
{
  quasar::corrective_reranking::Parse::getPayload(*(a2 + 8), 0, &v4);
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    v2 = v4.__r_.__value_.__l.__size_ != 0;
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  else
  {
    return (SHIBYTE(v4.__r_.__value_.__r.__words[2]) != 0);
  }

  return v2;
}

void sub_1B51BF0E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double quasar::corrective_reranking::FillerRateFeaturizer::Run(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  if (v3 != v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = *(v3 + 23);
      if (v6 < 0)
      {
        if (*(v3 + 8) == 4)
        {
          v7 = *v3;
LABEL_8:
          v8 = bswap32(*v7);
          v9 = v8 >= 0x4E6F6E65;
          v10 = v8 > 0x4E6F6E65;
          v11 = !v9;
          if (v10 == v11)
          {
            ++v5;
          }
        }
      }

      else
      {
        v7 = v3;
        if (v6 == 4)
        {
          goto LABEL_8;
        }
      }

      v3 += 24;
      if (v3 == v4)
      {
        *&result = v5;
        return result;
      }
    }
  }

  return 0.0;
}

void quasar::corrective_reranking::ResultingTextProbabilityTransformerFeaturizer::ResultingTextProbabilityTransformerFeaturizer(quasar::corrective_reranking::ResultingTextProbabilityTransformerFeaturizer *this, const quasar::PTree *a2)
{
  *this = &unk_1F2D03C90;
  std::string::basic_string[abi:ne200100]<0>(__p, "transformer-invisible-change-probability");
  quasar::PTree::getDoubleOptional(a2, __p);
}

float quasar::corrective_reranking::ResultingTextProbabilityTransformerFeaturizer::Run(uint64_t a1, uint64_t a2)
{
  if (!quasar::corrective_reranking::Parse::isChangeInvisibleToTransformer(*(a2 + 8)))
  {
    v5 = *(a2 + 8);
    v6 = *(*(a2 + 16) + 24);
    v7 = *(a2 + 24);

    quasar::corrective_reranking::TransformerClassifier::validateParse(v6, v7, v5);
  }

  return *(a1 + 8);
}

float quasar::corrective_reranking::PhoneticTargetSimilarityFeaturizer::Run(uint64_t a1, uint64_t a2)
{
  v3 = -1.0;
  if (!quasar::corrective_reranking::Parse::hasFullTextTarget(*(a2 + 8)))
  {
    quasar::corrective_reranking::Parse::getTarget(*(a2 + 8), 0, v7);
    if (v7[0] != v7[1])
    {
      v4 = *(a2 + 8);
      if (*(v4 + 112) == 1)
      {
        quasar::corrective_reranking::TargetRange::getTargetFromText(v4 + 88, *(a2 + 24), &v6);
        quasar::corrective_reranking::detokenize(v7);
      }
    }

    if (-1.0 >= 1000000.0)
    {
      v3 = 1000000.0;
    }

    v6.__r_.__value_.__r.__words[0] = v7;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  return v3;
}

void sub_1B51BF4E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  a28 = (v33 - 56);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::GazeEditScoreFeaturizer::Run()
{
  memset(v0, 0, sizeof(v0));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "GazeEditScore unimplemented");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v0);
}

void quasar::corrective_reranking::GazeTargetScoreFeaturizer::Run()
{
  memset(v0, 0, sizeof(v0));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "GazeTargetScore unimplemented");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v0);
}

void sub_1B51BF72C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float quasar::corrective_reranking::MaxTargetTokenCountFeaturizer::Run(uint64_t a1, quasar::corrective_reranking::Parse ***a2)
{
  v2 = **a2;
  v3 = (*a2)[1];
  if (v2 == v3)
  {
    return -1.0;
  }

  v4 = -1;
  do
  {
    quasar::corrective_reranking::Parse::getTarget(v2, 0, &v6);
    if (v4 <= (-1431655765 * ((v7 - v6) >> 3)))
    {
      v4 = -1431655765 * ((v7 - v6) >> 3);
    }

    v8 = &v6;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
    v2 = (v2 + 384);
  }

  while (v2 != v3);
  return v4;
}

float quasar::corrective_reranking::MaxPayloadTokenCountFeaturizer::Run(uint64_t a1, quasar::corrective_reranking::Parse ***a2)
{
  v2 = **a2;
  if (v2 != (*a2)[1])
  {
    quasar::corrective_reranking::Parse::getPayload(v2, 0, &__p);
    quasar::corrective_reranking::tokenize();
  }

  return -1.0;
}

void sub_1B51BF8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float quasar::corrective_reranking::EditParseExistsFeaturizer::Run(uint64_t a1, quasar::corrective_reranking::Parse ***a2)
{
  v2 = **a2;
  v3 = (*a2)[1];
  v4 = 0.0;
  while (v2 != v3)
  {
    if (quasar::corrective_reranking::Parse::isEditCommand(v2))
    {
      return 1.0;
    }

    v2 = (v2 + 384);
  }

  return v4;
}

float quasar::corrective_reranking::TargetPrecedingFillerWordCount::Run(uint64_t a1, uint64_t a2)
{
  quasar::corrective_reranking::Parse::getTargetPrecedingFillerTokens(*(a2 + 8), v4);
  v2 = ((v4[1] - v4[0]) >> 5);
  v5 = v4;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
  return v2;
}

uint64_t std::__split_buffer<std::unique_ptr<quasar::corrective_reranking::Featurizer>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<quasar::corrective_reranking::Featurizer>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<quasar::corrective_reranking::Featurizer>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

BOOL kaldi::quasar::LexiconItf::IsCompatibleWith(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 56))(a1);
  std::unordered_set<std::string>::unordered_set(v10, v3);
  v4 = (*(*a2 + 56))(a2);
  std::unordered_set<std::string>::unordered_set(v9, v4);
  if (v12 == v9[3])
  {
    v5 = v11;
    if (v11)
    {
      do
      {
        v6 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v9, v5 + 2);
        v7 = v6 != 0;
        if (!v6)
        {
          break;
        }

        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v9);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v10);
  return v7;
}

void sub_1B51BFBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t *kaldi::quasar::Lexicon::begin@<X0>(uint64_t *this@<X0>, uint64_t *a2@<X8>)
{
  a2[2] = this;
  v3 = this[22];
  *a2 = v3;
  a2[1] = 0;
  if (v3)
  {
    this = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(this + 30, (v3 + 40));
    a2[1] = this[3];
  }

  return this;
}

uint64_t kaldi::quasar::Lexicon::end@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = this;
  return this;
}

void kaldi::quasar::Lexicon::Lexicon(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = &unk_1F2D03FD0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 53) = a3;
  *(a1 + 54) = 0;
  operator new();
}

{
  *a1 = &unk_1F2D03FD0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 53) = a3;
  *(a1 + 54) = 0;
  operator new();
}

{
  *a1 = &unk_1F2D03FD0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 53) = a3;
  *(a1 + 54) = 0;
  operator new();
}

void sub_1B51BFF50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::locale a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  MEMORY[0x1B8C85350](v34, 0x20C4093837F09);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a15);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::Lexicon::GetWordId(uint64_t a1, uint64_t a2, int a3)
{
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 160), a2))
  {
    return *(std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 160), a2) + 10);
  }

  if (!a3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Word ", 5);
    v10 = *(a2 + 23);
    if (v10 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    if (v10 >= 0)
    {
      v12 = *(a2 + 23);
    }

    else
    {
      v12 = *(a2 + 8);
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, " not found in lexicon.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  v7 = *(a1 + 68);
  *(a1 + 68) = v7 + 1;
  v15 = v7;
  *(std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 160), a2) + 10) = v7;
  v14[0] = &v15;
  v8 = std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 200), &v15);
  std::string::operator=(v8 + 1, a2);
  return v15;
}

void kaldi::quasar::Lexicon::GetPhoneIds(uint64_t a1, uint64_t *a2, std::vector<unsigned int> *this, int a4)
{
  std::vector<int>::resize(this, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v8 = *a2;
  if (a2[1] != *a2)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      this->__begin_[v10++] = kaldi::quasar::Lexicon::GetPhoneId(a1, (v8 + v9), a4);
      v8 = *a2;
      v9 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v10);
  }
}

uint64_t kaldi::quasar::Lexicon::AddPron(uint64_t a1, int a2, uint64_t *a3, int a4)
{
  v17 = a2;
  v15 = 0;
  v16 = 0;
  kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::AddSequence(*(a1 + 56), a3, &v16, &v15);
  v18 = &v17;
  v6 = std::__hash_table<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 240), &v17);
  std::__tree<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>::__emplace_unique_key_args<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node * const&>((v6 + 3), &v15);
  v7 = v15[8];
  v18 = &v17;
  result = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v15 + 5, &v17);
  *(result + 20) = a4;
  if (*(a1 + 304) == 1 && v15[8] > v7 && v7 != 0)
  {
    if (v7 == 1)
    {
      for (i = v15[7]; i; i = *i)
      {
        result = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>((a1 + 312), i + 4);
      }
    }

    else
    {
      result = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>((a1 + 312), &v17);
    }
  }

  if (a4 != -1)
  {
    if (*(a1 + 72) < a4)
    {
      *(a1 + 72) = a4;
    }

    return result;
  }

  if (v16 == v15)
  {
    v12 = v15[8];
    if (v12 == 2)
    {
      v13 = v15[7];
      if (v13)
      {
        v14 = 1;
        do
        {
          *(v13 + 5) = v14;
          v13 = *v13;
          ++v14;
        }

        while (v13);
      }

      if (*(a1 + 72) > 1)
      {
        return result;
      }

      LODWORD(v10) = 2;
    }

    else
    {
      v18 = &v17;
      result = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v15 + 5, &v17);
      *(result + 20) = v12;
      LODWORD(v10) = *(v15 + 16);
      if (v10 == -1)
      {
        result = kaldi::quasar::Lexicon::GetMaxDisambigId(a1, **(a1 + 56));
        *(a1 + 72) = result;
        return result;
      }

      if (*(a1 + 72) >= v10)
      {
        return result;
      }
    }

LABEL_27:
    *(a1 + 72) = v10;
    return result;
  }

  v10 = v16[8];
  if (v10 == 1)
  {
    *(v16[7] + 20) = 1;
    if (*(a1 + 72) <= 0)
    {
      goto LABEL_27;
    }
  }

  return result;
}

void sub_1B51C06FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  MEMORY[0x1B8C85350](v26, 0x20C4093837F09);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a13);
  _Unwind_Resume(a1);
}

void sub_1B51C0960(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v3);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>>>::~__hash_table(v8);
  std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::~__hash_table(v7);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v6);
  std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::~__hash_table(v5);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v4);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v2);
  _Unwind_Resume(a1);
}

void kaldi::quasar::Lexicon::MergePhoneSet(uint64_t a1, uint64_t a2)
{
  memset(&v5, 0, sizeof(v5));
  std::vector<std::string>::reserve(&v5, *(a2 + 24));
  for (i = (a2 + 16); ; std::vector<std::string>::push_back[abi:ne200100](&v5, i + 1))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  kaldi::quasar::Lexicon::MergePhoneSet(a1, &v5);
  v6 = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void sub_1B51C0A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void kaldi::quasar::Lexicon::MergePhoneSet(uint64_t a1, uint64_t *a2)
{
  v29 = 0uLL;
  v30 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v29, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  kaldi::quasar::Lexicon::BasifyPhones(&v29);
  if (*(a1 + 53) == 1)
  {
    v28 = 0;
    v3 = 0uLL;
    v27 = 0u;
    v5 = *(&v29 + 1);
    v4 = v29;
    if (v29 == *(&v29 + 1))
    {
      v18 = 0;
    }

    else
    {
      do
      {
        if (*(v4 + 23) >= 0)
        {
          v6 = *(v4 + 23);
        }

        else
        {
          v6 = v4[1];
        }

        std::string::basic_string[abi:ne200100](__p, v6 + 2);
        if (v26 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        if (v6)
        {
          if (*(v4 + 23) >= 0)
          {
            v8 = v4;
          }

          else
          {
            v8 = *v4;
          }

          memmove(v7, v8, v6);
        }

        strcpy(v7 + v6, "_S");
        std::vector<std::string>::push_back[abi:ne200100](&v27, __p);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }

        if (*(v4 + 23) >= 0)
        {
          v9 = *(v4 + 23);
        }

        else
        {
          v9 = v4[1];
        }

        std::string::basic_string[abi:ne200100](__p, v9 + 2);
        if (v26 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        if (v9)
        {
          if (*(v4 + 23) >= 0)
          {
            v11 = v4;
          }

          else
          {
            v11 = *v4;
          }

          memmove(v10, v11, v9);
        }

        strcpy(v10 + v9, "_B");
        std::vector<std::string>::push_back[abi:ne200100](&v27, __p);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }

        if (*(v4 + 23) >= 0)
        {
          v12 = *(v4 + 23);
        }

        else
        {
          v12 = v4[1];
        }

        std::string::basic_string[abi:ne200100](__p, v12 + 2);
        if (v26 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        if (v12)
        {
          if (*(v4 + 23) >= 0)
          {
            v14 = v4;
          }

          else
          {
            v14 = *v4;
          }

          memmove(v13, v14, v12);
        }

        strcpy(v13 + v12, "_I");
        std::vector<std::string>::push_back[abi:ne200100](&v27, __p);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }

        if (*(v4 + 23) >= 0)
        {
          v15 = *(v4 + 23);
        }

        else
        {
          v15 = v4[1];
        }

        std::string::basic_string[abi:ne200100](__p, v15 + 2);
        if (v26 >= 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0];
        }

        if (v15)
        {
          if (*(v4 + 23) >= 0)
          {
            v17 = v4;
          }

          else
          {
            v17 = *v4;
          }

          memmove(v16, v17, v15);
        }

        strcpy(v16 + v15, "_E");
        std::vector<std::string>::push_back[abi:ne200100](&v27, __p);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }

        v4 += 3;
      }

      while (v4 != v5);
      v5 = *(&v29 + 1);
      v4 = v29;
      v3 = v27;
      v18 = v28;
    }

    v29 = v3;
    *&v27 = v4;
    *(&v27 + 1) = v5;
    v19 = v30;
    v30 = v18;
    v28 = v19;
    __p[0] = &v27;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  v21 = *(&v29 + 1);
  v20 = v29;
  if (v29 != *(&v29 + 1))
  {
    v22 = (a1 + 64);
    do
    {
      if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 80), &v20->__r_.__value_.__l.__data_))
      {
        v23 = *v22;
        __p[0] = v20;
        *(std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 80), &v20->__r_.__value_.__l.__data_) + 10) = v23;
        __p[0] = (a1 + 64);
        v24 = std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 120), (a1 + 64));
        std::string::operator=(v24 + 1, v20);
        ++*v22;
      }

      ++v20;
    }

    while (v20 != v21);
  }

  *&v27 = &v29;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v27);
}

void sub_1B51C0DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  a16 = &a20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

uint64_t *kaldi::quasar::Lexicon::GetPron(uint64_t a1, const void **a2, uint64_t a3)
{
  v6 = (a3 + 8);
  std::__tree<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>::destroy(a3, *(a3 + 8));
  *a3 = v6;
  *(a3 + 16) = 0;
  *v6 = 0;
  v13 = *(std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 160), a2) + 10);
  v7 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 240), &v13)[3];
  result = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 240), &v13);
  if (v7 != result + 4)
  {
    do
    {
      memset(v12, 0, sizeof(v12));
      kaldi::quasar::Lexicon::GetPron(a1, v13, v7[4], v12);
      std::__tree<std::vector<std::string>>::__emplace_unique_key_args<std::vector<std::string>,std::vector<std::string> const&>(a3, v12);
      v14 = v12;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
      v9 = v7[1];
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
          v10 = v7[2];
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      result = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 240), &v13);
      v7 = v10;
    }

    while (v10 != result + 4);
  }

  return result;
}

void sub_1B51C0F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::Lexicon::GetNumberOfDisambigSymbols(uint64_t this)
{
  v1 = this;
  if (*(this + 54))
  {
    LODWORD(this) = kaldi::quasar::Lexicon::GetMaxDisambigId(this, **(this + 56));
    *(v1 + 72) = this;
    *(v1 + 54) = 0;
  }

  else
  {
    LODWORD(this) = *(this + 72);
  }

  return this;
}

uint64_t kaldi::quasar::Lexicon::AddPron(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, int a5)
{
  if (kaldi::quasar::Lexicon::IsLegalWord(a2))
  {
    memset(v22, 0, sizeof(v22));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v22, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
    v21 = 0;
    kaldi::quasar::Lexicon::NormalizePron(v22, *(a1 + 53), 0, &v21);
    if (a5 & 1) != 0 || (kaldi::quasar::Lexicon::IsValidPron(a1, v22))
    {
      WordId = kaldi::quasar::Lexicon::GetWordId(a1, a2, a4);
      memset(__p, 0, 24);
      kaldi::quasar::Lexicon::GetPhoneIds(a1, v22, __p, a5);
      kaldi::quasar::Lexicon::AddPron(a1, WordId, __p, -1);
      if (__p[0].__begin_)
      {
        __p[0].__end_ = __p[0].__begin_;
        operator delete(__p[0].__begin_);
      }

      v11 = 1;
    }

    else
    {
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Invalid phone in pron for word: ", 32);
        v17 = *(a2 + 23);
        if (v17 >= 0)
        {
          v18 = a2;
        }

        else
        {
          v18 = *a2;
        }

        if (v17 >= 0)
        {
          v19 = *(a2 + 23);
        }

        else
        {
          v19 = *(a2 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(__p);
      }

      v11 = 0;
    }

    __p[0].__begin_ = v22;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  else
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Illegal word: ", 14);
      v13 = *(a2 + 23);
      if (v13 >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      if (v13 >= 0)
      {
        v15 = *(a2 + 23);
      }

      else
      {
        v15 = *(a2 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(__p);
    }

    return 0;
  }

  return v11;
}

void sub_1B51C11B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14)
{
  __p = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::Lexicon::IsLegalWord(unsigned __int8 *a1)
{
  v1 = a1[23];
  v2 = *(a1 + 1);
  if ((v1 & 0x80u) == 0)
  {
    v3 = a1[23];
  }

  else
  {
    v3 = *(a1 + 1);
  }

  if (!v3)
  {
    return 0;
  }

  if ((v1 & 0x80) != 0)
  {
    v4 = *a1;
    if (v2 == 5)
    {
      if (*v4 != 1936745788 || v4[4] != 62)
      {
        v5 = 5;
        goto LABEL_20;
      }

      return 0;
    }

    v5 = *(a1 + 1);
  }

  else
  {
    v4 = a1;
    v5 = a1[23];
    if (v1 == 5)
    {
      if (*a1 != 1936745788 || a1[4] != 62)
      {
        v5 = 5;
        v4 = a1;
LABEL_20:
        v8 = &v4[v5];
        v9 = v4;
LABEL_21:
        v10 = 0;
        while (*v9 != asc_1B5C04E78[v10])
        {
          if (++v10 == 4)
          {
            if (++v9 != v8)
            {
              goto LABEL_21;
            }

            goto LABEL_29;
          }
        }

        if (v9 == v8 || v9 - v4 == -1)
        {
          goto LABEL_29;
        }

        return 0;
      }

      return 0;
    }
  }

  if (v5)
  {
    goto LABEL_20;
  }

LABEL_29:
  if ((v1 & 0x80) != 0)
  {
    a1 = *a1;
    if (*a1 == 47)
    {
      return a1[v2 - 1] != 47;
    }
  }

  else
  {
    v2 = a1[23];
    if (*a1 == 47)
    {
      return a1[v2 - 1] != 47;
    }
  }

  return 1;
}

uint64_t kaldi::quasar::Lexicon::IsValidPron(uint64_t a1, char **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 1;
  }

  while (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 80), v2))
  {
    v2 += 24;
    if (v2 == v3)
    {
      return 1;
    }
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Phone ", 6);
    v7 = v2[23];
    if (v7 >= 0)
    {
      v8 = v2;
    }

    else
    {
      v8 = *v2;
    }

    if (v7 >= 0)
    {
      v9 = v2[23];
    }

    else
    {
      v9 = *(v2 + 1);
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " (", 2);
    if (v2[23] < 0)
    {
      v2 = *v2;
    }

    v12 = MEMORY[0x1B8C84C00](v11, *v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ") does not exist in the lexicon", 31);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v13);
  }

  return 0;
}

uint64_t kaldi::quasar::Lexicon::AddProns(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[1];
  if (*a3 == v3)
  {
    return 1;
  }

  v6 = *a3 + 8;
  do
  {
    memset(v12, 0, sizeof(v12));
    std::string::basic_string[abi:ne200100]<0>(&__p, *(v6 - 8));
    kaldi::SplitStringToVector(&__p, " \t", 1, v12);
    kaldi::quasar::Lexicon::NormalizePron(v12, *(a1 + 53), 0, &v10);
    v7 = kaldi::quasar::Lexicon::AddPron(a1, a2, v12, 1, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v12;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (v6 == v3)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    v6 += 8;
  }

  while ((v8 & 1) != 0);
  return v7;
}

void sub_1B51C1538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  __p = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void kaldi::quasar::Lexicon::BasifyPhones(uint64_t *a1)
{
  v8 = 0;
  v2 = 0uLL;
  v7 = 0u;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    v5 = 0;
    goto LABEL_10;
  }

  do
  {
    kaldi::quasar::Lexicon::BasifyPhone(v3);
    if ((*(v3 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v3 + 8))
      {
        goto LABEL_7;
      }

LABEL_6:
      std::vector<std::string>::push_back[abi:ne200100](&v7, v3);
      goto LABEL_7;
    }

    if (*(v3 + 23))
    {
      goto LABEL_6;
    }

LABEL_7:
    v3 += 24;
  }

  while (v3 != v4);
  v3 = *a1;
  v4 = a1[1];
  v2 = v7;
  v5 = v8;
LABEL_10:
  *a1 = v2;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v6 = a1[2];
  a1[2] = v5;
  v8 = v6;
  v9 = &v7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
}

void sub_1B51C1624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::Lexicon::BasifyPhones(uint64_t a1)
{
  memset(v7, 0, sizeof(v7));
  v8 = 1065353216;
  for (i = *(a1 + 16); i; i = *i)
  {
    if (*(i + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, i[2], i[3]);
    }

    else
    {
      __p = *(i + 2);
    }

    kaldi::quasar::Lexicon::BasifyPhone(&__p);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v4 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v7, &__p.__r_.__value_.__l.__data_);
      v4 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    if (v4 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::swap(a1, v7);
  return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v7);
}

void kaldi::quasar::Lexicon::Clear(kaldi::quasar::Lexicon *this)
{
  *(this + 54) = 0;
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::clear(this + 80);
  std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::clear(this + 120);
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::clear(this + 160);
  std::__hash_table<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>>>::clear(this + 240);
  std::vector<std::string>::clear[abi:ne200100](this + 35);
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(this + 39);
  *(this + 352) = 1;
  v2 = *(this + 7);
  if (v2)
  {
    v3 = kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::~PrefixTree(v2);
    MEMORY[0x1B8C85350](v3, 0x20C4093837F09);
  }

  operator new();
}

unint64_t kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::GetLongestPrefix(void **a1, uint64_t *a2, void *a3)
{
  v3 = *a1;
  *a3 = v3;
  v4 = *a2;
  if (a2[1] == *a2)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v9 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v3, (v4 + v7));
    if (!v9)
    {
      break;
    }

    v3 = v9[3];
    *a3 = v3;
    ++v8;
    v4 = *a2;
    v7 += 4;
  }

  while (v8 < (a2[1] - *a2) >> 2);
  return v8;
}

uint64_t *kaldi::quasar::Lexicon::DeletePron(uint64_t a1, int a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  kaldi::quasar::Lexicon::DeletePronOnly(a1, a2, a3);
  v4 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 240), &v7);
  std::__tree<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>::__erase_unique<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>(v4 + 3, &v6);
  result = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 240), &v7);
  if (!result[5])
  {
    result = kaldi::quasar::Lexicon::DeleteWord(a1, v7);
  }

  *(a1 + 54) = 1;
  *(a1 + 352) = 0;
  return result;
}

uint64_t *kaldi::quasar::Lexicon::DeleteWord(kaldi::quasar::Lexicon *this, int a2)
{
  v9 = a2;
  v3 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(this + 30, &v9)[3];
  if (v3 != std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(this + 30, &v9) + 4)
  {
    do
    {
      kaldi::quasar::Lexicon::DeletePronOnly(this, v9, *(v3 + 32));
      v4 = *(v3 + 8);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v3 + 16);
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(this + 30, &v9) + 4);
  }

  std::__hash_table<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>>>::__erase_unique<int>(this + 30, &v9);
  v7 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(this + 25, &v9);
  std::__hash_table<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>>>::__erase_unique<std::string>(this + 20, v7 + 3);
  result = std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__erase_unique<int>(this + 25, &v9);
  *(this + 54) = 1;
  *(this + 352) = 0;
  return result;
}

uint64_t kaldi::quasar::Lexicon::GetBasePhoneSet(kaldi::quasar::Lexicon *this)
{
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::clear(this + 8);
  for (i = *(this + 12); i; i = *i)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(this + 1, i + 2);
  }

  kaldi::quasar::Lexicon::BasifyPhones(this + 8);
  return this + 8;
}

uint64_t kaldi::quasar::Lexicon::GetNumberOfProns(kaldi::quasar::Lexicon *this)
{
  v1 = *(this + 32);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  do
  {
    result += v1[5];
    v1 = *v1;
  }

  while (v1);
  return result;
}

uint64_t kaldi::quasar::Lexicon::GetNumberOfPronsInWord(void *a1, const void **a2)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Word does not exist in lexicon: ", 32);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, a2);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  LODWORD(v6[0]) = *(std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1 + 20, a2) + 10);
  return *(std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a1 + 30, v6) + 10);
}

void kaldi::quasar::Lexicon::GetPhoneSymbols(uint64_t a1, std::vector<std::string> *this)
{
  v17 = *MEMORY[0x1E69E9840];
  std::vector<std::string>::resize(this, *(a1 + 104));
  v4 = *(a1 + 96);
  if (v4)
  {
    v5 = 0;
    do
    {
      if ((*(a1 + 48) | 2) == 3)
      {
        std::operator+<char>();
        v6 = std::string::append(&v15, "/");
        v7 = v6->__r_.__value_.__r.__words[0];
        v16.__r_.__value_.__r.__words[0] = v6->__r_.__value_.__l.__size_;
        *(v16.__r_.__value_.__r.__words + 7) = *(&v6->__r_.__value_.__r.__words[1] + 7);
        v8 = HIBYTE(v6->__r_.__value_.__r.__words[2]);
        v6->__r_.__value_.__l.__size_ = 0;
        v6->__r_.__value_.__r.__words[2] = 0;
        v6->__r_.__value_.__r.__words[0] = 0;
        v9 = &this->__begin_[v5];
        if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v9->__r_.__value_.__l.__data_);
        }

        v9->__r_.__value_.__r.__words[0] = v7;
        v9->__r_.__value_.__l.__size_ = v16.__r_.__value_.__r.__words[0];
        *(&v9->__r_.__value_.__r.__words[1] + 7) = *(v16.__r_.__value_.__r.__words + 7);
        *(&v9->__r_.__value_.__s + 23) = v8;
        if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v15.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        std::string::operator=(&this->__begin_[v5], (v4 + 2));
      }

      v4 = *v4;
      ++v5;
    }

    while (v4);
  }

  if (*(a1 + 52))
  {
    for (i = 1; ; i = v14 + 1)
    {
      v14 = i;
      if (*(a1 + 54))
      {
        MaxDisambigId = kaldi::quasar::Lexicon::GetMaxDisambigId(a1, **(a1 + 56));
        *(a1 + 72) = MaxDisambigId;
        *(a1 + 54) = 0;
      }

      else
      {
        MaxDisambigId = *(a1 + 72);
      }

      if (MaxDisambigId < i)
      {
        break;
      }

      kaldi::quasar::to_string<int>(&v14);
      v12 = std::string::insert(&v16, 0, "#");
      v13 = *&v12->__r_.__value_.__l.__data_;
      v15.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&v15.__r_.__value_.__l.__data_ = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      std::vector<std::string>::push_back[abi:ne200100](this, &v15);
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_1B51C1D40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::resize(std::vector<std::string> *this, std::vector<std::string>::size_type __sz)
{
  end = this->__end_;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
  v5 = __sz >= v4;
  v6 = __sz - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::string>::__append(this, v6);
  }

  else if (!v5)
  {
    v7 = &this->__begin_[__sz];
    while (end != v7)
    {
      v8 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v8 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    this->__end_ = v7;
  }
}

uint64_t kaldi::quasar::to_string<int>(unsigned int *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v3);
  MEMORY[0x1B8C84C00](&v3, *a1);
  std::stringbuf::str();
  v3 = *MEMORY[0x1E69E54E8];
  *(&v3 + *(v3 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v4 = MEMORY[0x1E69E5548] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v5);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v7);
}

void sub_1B51C1F80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::Lexicon::GetPron(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  std::vector<std::string>::clear[abi:ne200100]((a1 + 280));
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  kaldi::quasar::Lexicon::GetPron(a1, a2, &v16);
  __p = 0uLL;
  v15 = 0;
  v6 = v16;
  if (v16 != v17)
  {
    do
    {
      kaldi::JoinVectorToString(v6 + 4, " ", 1, &__p);
      std::vector<std::string>::push_back[abi:ne200100](a1 + 280, &__p);
      v7 = *(v6 + 1);
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
          v8 = *(v6 + 2);
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
    }

    while (v8 != v17);
  }

  v11 = *(a1 + 280);
  v10 = *(a1 + 288);
  while (v11 != v10)
  {
    v12 = v11;
    if (*(v11 + 23) < 0)
    {
      v12 = *v11;
    }

    v13 = v12;
    std::vector<char const*>::push_back[abi:ne200100](a3, &v13);
    v11 += 3;
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>::destroy(&v16, v17[0]);
}

void sub_1B51C20C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, char *a18)
{
  std::__tree<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>::destroy(&a17, a18);
  v20 = *v18;
  if (*v18)
  {
    *(v18 + 8) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void std::vector<char const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(a1, v10);
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

void kaldi::quasar::Lexicon::GetPron(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v34[0] = a2;
  std::vector<std::string>::clear[abi:ne200100](a4);
  if (**(a1 + 56) != a3)
  {
    v7 = a3;
    do
    {
      v8 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 120), (v7 + 88));
      std::vector<std::string>::push_back[abi:ne200100](a4, (v8 + 3));
      v7 = *(v7 + 80);
    }

    while (v7 != **(a1 + 56));
  }

  v9 = *a4;
  v10 = *(a4 + 8);
  v11 = v10 - 24;
  if (*a4 != v10 && v11 > v9)
  {
    v13 = v9 + 3;
    do
    {
      v14 = *(v13 - 1);
      v15 = *(v13 - 3);
      v16 = *(v11 + 16);
      *(v13 - 3) = *v11;
      *(v13 - 1) = v16;
      *v11 = v15;
      *(v11 + 16) = v14;
      v11 -= 24;
      v17 = v13 >= v11;
      v13 += 3;
    }

    while (!v17);
  }

  v18 = *(a1 + 48);
  switch(v18)
  {
    case 3:
      if ((*(a1 + 53) & 1) == 0)
      {
        kaldi::quasar::Lexicon::BasePron2PositionalPron(a4, 0);
      }

      v24 = *a4;
      v25 = *(a4 + 8);
      if (*a4 != v25)
      {
        do
        {
          std::operator+<char>();
          v26 = std::string::append(&v33, "/");
          v27 = v26->__r_.__value_.__r.__words[0];
          v35.__r_.__value_.__r.__words[0] = v26->__r_.__value_.__l.__size_;
          *(v35.__r_.__value_.__r.__words + 7) = *(&v26->__r_.__value_.__r.__words[1] + 7);
          v28 = HIBYTE(v26->__r_.__value_.__r.__words[2]);
          v26->__r_.__value_.__l.__size_ = 0;
          v26->__r_.__value_.__r.__words[2] = 0;
          v26->__r_.__value_.__r.__words[0] = 0;
          if (*(v24 + 23) < 0)
          {
            operator delete(*v24);
          }

          *v24 = v27;
          v24[1] = v35.__r_.__value_.__r.__words[0];
          *(v24 + 15) = *(v35.__r_.__value_.__r.__words + 7);
          *(v24 + 23) = v28;
          if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v33.__r_.__value_.__l.__data_);
          }

          v24 += 3;
        }

        while (v24 != v25);
      }

      break;
    case 2:
      if ((*(a1 + 53) & 1) == 0)
      {
        kaldi::quasar::Lexicon::BasePron2PositionalPron(a4, 0);
      }

      break;
    case 1:
      v19 = *a4;
      v20 = *(a4 + 8);
      if (*a4 != v20)
      {
        do
        {
          std::operator+<char>();
          v21 = std::string::append(&v33, "/");
          v22 = v21->__r_.__value_.__r.__words[0];
          v35.__r_.__value_.__r.__words[0] = v21->__r_.__value_.__l.__size_;
          *(v35.__r_.__value_.__r.__words + 7) = *(&v21->__r_.__value_.__r.__words[1] + 7);
          v23 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
          v21->__r_.__value_.__l.__size_ = 0;
          v21->__r_.__value_.__r.__words[2] = 0;
          v21->__r_.__value_.__r.__words[0] = 0;
          if (*(v19 + 23) < 0)
          {
            operator delete(*v19);
          }

          *v19 = v22;
          v19[1] = v35.__r_.__value_.__r.__words[0];
          *(v19 + 15) = *(v35.__r_.__value_.__r.__words + 7);
          *(v19 + 23) = v23;
          if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v33.__r_.__value_.__l.__data_);
          }

          v19 += 3;
        }

        while (v19 != v20);
      }

      break;
  }

  v29 = *(std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a3 + 40), v34) + 5);
  v32 = v29;
  if (*(a1 + 52) == 1 && v29 != -1)
  {
    kaldi::quasar::to_string<int>(&v32);
    v30 = std::string::insert(&v35, 0, "#");
    v31 = *&v30->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](a4, &v33);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1B51C24E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::Lexicon::GetWord(kaldi::quasar::Lexicon *this@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  v6 = a2;
  v4 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(this + 25, &v6);
  if (v4)
  {
    if (*(v4 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(a3, v4[3], v4[4]);
    }

    else
    {
      v5 = *(v4 + 3);
      a3->__r_.__value_.__r.__words[2] = v4[5];
      *&a3->__r_.__value_.__l.__data_ = v5;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a3, "");
  }
}

void std::vector<std::string>::reserve(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < __n)
  {
    if (__n < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, __n);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }
}

void kaldi::quasar::Lexicon::PruneHomophoneProns(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t **a3@<X2>, const void ***a4@<X8>)
{
  v17 = 0;
  v18 = 0;
  v16 = &v17;
  if (*(a1 + 54))
  {
    MaxDisambigId = kaldi::quasar::Lexicon::GetMaxDisambigId(a1, **(a1 + 56));
    *(a1 + 72) = MaxDisambigId;
    *(a1 + 54) = 0;
  }

  else
  {
    MaxDisambigId = *(a1 + 72);
  }

  if (MaxDisambigId <= a2)
  {
    a4[2] = 0;
    a4[1] = 0;
    *a4 = (a4 + 1);
    v13 = v17;
  }

  else
  {
    kaldi::quasar::Lexicon::PruneHomophonePronsFromNode(a1, **(a1 + 56), a2, &v16, a3);
    v9 = v16;
    if (v16 != &v17)
    {
      do
      {
        if (a3 + 1 != std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a3, v9 + 4))
        {
          std::__tree<std::string>::__erase_unique<std::string>(a3, v9 + 4);
        }

        v10 = v9[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v9[2];
            v12 = *v11 == v9;
            v9 = v11;
          }

          while (!v12);
        }

        v9 = v11;
      }

      while (v11 != &v17);
      v9 = v16;
    }

    *a4 = v9;
    v13 = v17;
    v14 = v18;
    a4[1] = v17;
    v15 = (a4 + 1);
    a4[2] = v14;
    if (v14)
    {
      v13[2] = v15;
      v16 = &v17;
      v17 = 0;
      v18 = 0;
      v13 = 0;
    }

    else
    {
      *a4 = v15;
    }
  }

  std::__tree<std::string>::destroy(&v16, v13);
}

uint64_t kaldi::quasar::Lexicon::PruneHomophonePronsFromNode(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a2;
  v15 = 0u;
  memset(v14, 0, sizeof(v14));
  std::deque<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>::push_back(v14, &v16);
  if (v15.i64[1])
  {
    v9 = v15.i64[0];
    do
    {
      while (1)
      {
        v10 = *(*(*(&v14[0] + 1) + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF));
        kaldi::quasar::Lexicon::PruneHomophonePronsForNode(a1, v10, a3, a4, a5);
        for (i = v10 + 2; ; std::deque<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>::push_back(v14, i + 3))
        {
          i = *i;
          if (!i)
          {
            break;
          }
        }

        v12 = vaddq_s64(v15, xmmword_1B5AE01E0);
        v15 = v12;
        v9 = v12.i64[0];
        if (v12.i64[0] >= 0x400uLL)
        {
          break;
        }

        if (!v12.i64[1])
        {
          return std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](v14);
        }
      }

      operator delete(**(&v14[0] + 1));
      v9 = v15.i64[0] - 512;
      *(&v14[0] + 1) += 8;
      v15.i64[0] -= 512;
    }

    while (v15.i64[1]);
  }

  return std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](v14);
}

void sub_1B51C292C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::Lexicon::SetPronView(uint64_t result, unsigned int a2, int a3)
{
  if (a2 <= 1 && a3 && *(result + 53))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "For a lexicon using pos-dep phones, cannot view disambig IDs with pos-indep phones");
LABEL_12:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  if ((a2 & 0xFFFFFFFE) == 2 && !*(result + 53) && a3 != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "For a lexicon using pos-indep phones, cannot view disambig IDs with pos-dep phones");
    goto LABEL_12;
  }

  *(result + 48) = a2;
  *(result + 52) = a3;
  return result;
}

BOOL kaldi::quasar::Lexicon::WordHasDisambigLabel(void *a1, const void **a2)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Word does not exist in lexicon: ", 32);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v11, a2);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  LODWORD(v12[0]) = *(std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1 + 20, a2) + 10);
  v4 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a1 + 30, v12)[3];
  if (v4 == std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a1 + 30, v12) + 4)
  {
    return 0;
  }

  do
  {
    v5 = *(std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((v4[4] + 40), v12) + 5);
    v6 = v5 != -1;
    if (v5 != -1)
    {
      break;
    }

    v7 = v4[1];
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
        v8 = v4[2];
        v9 = *v8 == v4;
        v4 = v8;
      }

      while (!v9);
    }

    v4 = v8;
  }

  while (v8 != std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a1 + 30, v12) + 4);
  return v6;
}

void kaldi::quasar::Lexicon::BasePron2PositionalPron(std::string **a1, int a2)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v4 = a1[1] - *a1;
  if (v4 != 24)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v4 >> 3) < 2)
    {
      return;
    }

    if (a2)
    {
      std::operator+<char>();
      v10 = std::string::append(&__p, "_B/");
      v11 = v10->__r_.__value_.__r.__words[0];
      v28[0] = v10->__r_.__value_.__l.__size_;
      *(v28 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
      v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v13 = *a1;
      if (SHIBYTE((*a1)->__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13->__r_.__value_.__l.__data_);
      }

      v14 = v28[0];
      v13->__r_.__value_.__r.__words[0] = v11;
      v13->__r_.__value_.__l.__size_ = v14;
      *(&v13->__r_.__value_.__r.__words[1] + 7) = *(v28 + 7);
      *(&v13->__r_.__value_.__s + 23) = v12;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      std::string::append(*a1, "_B");
    }

    v16 = a1[1];
    if (&v16[-2] != *a1)
    {
      v17 = &(*a1)[1];
      do
      {
        if (a2)
        {
          std::operator+<char>();
          v18 = std::string::append(&__p, "_I/");
          v19 = v18->__r_.__value_.__r.__words[0];
          v28[0] = v18->__r_.__value_.__l.__size_;
          *(v28 + 7) = *(&v18->__r_.__value_.__r.__words[1] + 7);
          v20 = HIBYTE(v18->__r_.__value_.__r.__words[2]);
          v18->__r_.__value_.__l.__size_ = 0;
          v18->__r_.__value_.__r.__words[2] = 0;
          v18->__r_.__value_.__r.__words[0] = 0;
          if (*(v17 + 23) < 0)
          {
            operator delete(*v17);
          }

          v21 = v28[0];
          *v17 = v19;
          *(v17 + 8) = v21;
          *(v17 + 15) = *(v28 + 7);
          *(v17 + 23) = v20;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          std::string::append(v17, "_I");
        }

        v17 += 24;
        v16 = a1[1];
      }

      while (v17 != &v16[-1]);
    }

    if ((a2 & 1) == 0)
    {
      std::string::append(v16 - 1, "_E");
      return;
    }

    std::operator+<char>();
    v22 = std::string::append(&__p, "_E/");
    v23 = v22->__r_.__value_.__r.__words[0];
    v28[0] = v22->__r_.__value_.__l.__size_;
    *(v28 + 7) = *(&v22->__r_.__value_.__r.__words[1] + 7);
    v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v25 = a1[1];
    if (SHIBYTE(v25[-1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25[-1].__r_.__value_.__l.__data_);
    }

    v26 = v28[0];
    v25[-1].__r_.__value_.__r.__words[0] = v23;
    v25[-1].__r_.__value_.__l.__size_ = v26;
    *(&v25[-1].__r_.__value_.__r.__words[1] + 7) = *(v28 + 7);
    *(&v25[-1].__r_.__value_.__s + 23) = v24;
    goto LABEL_29;
  }

  if (a2)
  {
    std::operator+<char>();
    v5 = std::string::append(&__p, "_S/");
    v6 = v5->__r_.__value_.__r.__words[0];
    v28[0] = v5->__r_.__value_.__l.__size_;
    *(v28 + 7) = *(&v5->__r_.__value_.__r.__words[1] + 7);
    v7 = HIBYTE(v5->__r_.__value_.__r.__words[2]);
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v8 = *a1;
    if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8->__r_.__value_.__l.__data_);
    }

    v9 = v28[0];
    v8->__r_.__value_.__r.__words[0] = v6;
    v8->__r_.__value_.__l.__size_ = v9;
    *(&v8->__r_.__value_.__r.__words[1] + 7) = *(v28 + 7);
    *(&v8->__r_.__value_.__s + 23) = v7;
LABEL_29:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return;
  }

  v15 = *a1;

  std::string::append(v15, "_S");
}

void sub_1B51C2E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::AddSequence(void **a1, uint64_t *a2, void *a3, void *a4)
{
  LODWORD(result) = kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::GetLongestPrefix(a1, a2, a3);
  *a4 = *a3;
  if (result < ((a2[1] - *a2) >> 2))
  {
    operator new();
  }

  return result;
}

uint64_t kaldi::quasar::Lexicon::DeletePronOnly(uint64_t a1, int a2, void *a3)
{
  v9 = a2;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__erase_unique<int>(a3 + 5, &v9);
  if (a3[8] == 1)
  {
    if (a3[3])
    {
      v5 = 1;
    }

    else
    {
      v5 = -1;
    }

    *(a3[7] + 20) = v5;
  }

  else
  {
    v6 = a3[7];
    if (v6)
    {
      v7 = 1;
      do
      {
        *(v6 + 5) = v7++;
        v6 = *v6;
      }

      while (v6);
    }
  }

  result = kaldi::quasar::Lexicon::PrunePron(a1, a3);
  *(a1 + 54) = 1;
  *(a1 + 352) = 0;
  return result;
}

uint64_t kaldi::quasar::Lexicon::PrunePron(uint64_t result, uint64_t a2)
{
  if (**(result + 56) != a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      if (*(v2 + 64))
      {
        break;
      }

      if (*(v2 + 24))
      {
        break;
      }

      v4 = *(v2 + 80);
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__erase_unique<int>(v4, (v2 + 88));
      v5 = kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node::~Node(v2);
      result = MEMORY[0x1B8C85350](v5, 0x10A0C40A79550FFLL);
      v2 = v4;
    }

    while (v4 != **(v3 + 56));
  }

  return result;
}

uint64_t kaldi::quasar::Lexicon::GetMaxDisambigId(uint64_t a1, uint64_t a2)
{
  v12 = a2;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  std::deque<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node const*,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node const*>>::push_back(v10, &v12);
  if (v11.i64[1])
  {
    LODWORD(v3) = 0;
    v4 = v11.i64[0];
    do
    {
      while (1)
      {
        v5 = *(*(*(&v10[0] + 1) + ((v4 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v4 & 0x1FF));
        if (v5 == **(a1 + 56))
        {
          LODWORD(v6) = 0;
        }

        else
        {
          v6 = v5[8];
          if (v6 == 1)
          {
            LODWORD(v6) = *(v5[7] + 20) != -1;
          }
        }

        v3 = v6 <= v3 ? v3 : v6;
        for (i = v5 + 2; ; std::deque<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node const*,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node const*>>::push_back(v10, i + 3))
        {
          i = *i;
          if (!i)
          {
            break;
          }
        }

        v8 = vaddq_s64(v11, xmmword_1B5AE01E0);
        v11 = v8;
        v4 = v8.i64[0];
        if (v8.i64[0] >= 0x400uLL)
        {
          break;
        }

        if (!v8.i64[1])
        {
          goto LABEL_19;
        }
      }

      operator delete(**(&v10[0] + 1));
      v4 = v11.i64[0] - 512;
      *(&v10[0] + 1) += 8;
      v11.i64[0] -= 512;
    }

    while (v11.i64[1]);
  }

  else
  {
    v3 = 0;
  }

LABEL_19:
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](v10);
  return v3;
}

void sub_1B51C3224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::Lexicon::GetPhoneId(uint64_t a1, std::string *a2, int a3)
{
  if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 80), &a2->__r_.__value_.__l.__data_))
  {
    if (!a3)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Invalid phone ", 14);
      std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v9, a2);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
    }

    v6 = *(a1 + 64);
    *(std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 80), &a2->__r_.__value_.__l.__data_) + 10) = v6;
    v10[0] = a1 + 64;
    v7 = std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 120), (a1 + 64));
    std::string::operator=(v7 + 1, a2);
    ++*(a1 + 64);
  }

  return *(std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 80), &a2->__r_.__value_.__l.__data_) + 10);
}

void kaldi::quasar::Lexicon::PruneHomophonePronsForNode(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2[8] > a3)
  {
    v7 = a3;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v10 = a2[7];
    if (v10)
    {
      do
      {
        v11 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 240), v10 + 4)[5];
        v12 = v10[4];
        v13 = v36;
        if (v36 >= v37)
        {
          v15 = (v36 - v35) >> 3;
          if ((v15 + 1) >> 61)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v16 = (v37 - v35) >> 2;
          if (v16 <= v15 + 1)
          {
            v16 = v15 + 1;
          }

          if (v37 - v35 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v16;
          }

          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&v35, v17);
          }

          v18 = (8 * v15);
          *v18 = v12 | (v11 << 32);
          v14 = (8 * v15 + 8);
          v19 = v18 - (v36 - v35);
          memcpy(v19, v35, v36 - v35);
          v20 = v35;
          v35 = v19;
          v36 = v14;
          v37 = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v36 = v12 | (v11 << 32);
          v14 = v13 + 1;
        }

        v36 = v14;
        v10 = *v10;
      }

      while (v10);
      v21 = v35;
      v7 = a3;
    }

    else
    {
      v14 = 0;
      v21 = 0;
    }

    v22 = 126 - 2 * __clz(v14 - v21);
    if (v14 == v21)
    {
      v23 = 0;
    }

    else
    {
      v23 = v22;
    }

    std::__introsort<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *,false>(v21, v14, v33, v23, 1);
    v24 = a2[8] - v7;
    if (v24 >= 1)
    {
      v25 = 0;
      v26 = v24 & 0x7FFFFFFF;
      do
      {
        v27 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 200), &v35[v25]);
        if (*(v27 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&v34, v27[3], v27[4]);
        }

        else
        {
          v34 = *(v27 + 1);
        }

        if (*&v35[v25 + 4] == 1)
        {
          v28 = a4;
        }

        else
        {
          v28 = a5;
        }

        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v28, &v34.__r_.__value_.__l.__data_);
        if (kaldi::g_kaldi_verbose_level >= 1)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(v33, 1);
          v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Removing a pron for word: ", 26);
          if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v30 = &v34;
          }

          else
          {
            v30 = v34.__r_.__value_.__r.__words[0];
          }

          if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v34.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v30, size);
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(v33);
        }

        kaldi::quasar::Lexicon::DeletePron(a1, *&v35[v25], a2);
        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        v25 += 8;
        --v26;
      }

      while (v26);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }
  }
}

void sub_1B51C35CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = *(v10 - 112);
  if (v12)
  {
    *(v10 - 104) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::Lexicon::NumHomophones(kaldi::quasar::Lexicon *this)
{
  if (*(this + 304) == 1 && *(this + 352) == 1)
  {
    return *(this + 84);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

BOOL kaldi::quasar::ConstLexicon::HasWord(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 48);
  if (v4 < 2)
  {
    v17 = 1;
  }

  else
  {
    v5 = 1;
    do
    {
      v6 = v5 + (v4 - v5) / 2;
      std::string::basic_string[abi:ne200100]<0>(&__p, (*(a1 + 64) + *(*(a1 + 56) + 4 * v6)));
      v7 = *(a2 + 23);
      v8 = v29;
      v9 = __p;
      if ((v29 & 0x80u) == 0)
      {
        v10 = v29;
      }

      else
      {
        v10 = v28;
      }

      if ((v29 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v7 >= 0)
      {
        v12 = *(a2 + 23);
      }

      else
      {
        v12 = a2[1];
      }

      if (v7 >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if (v12 >= v10)
      {
        v14 = v10;
      }

      else
      {
        v14 = v12;
      }

      v15 = memcmp(p_p, v13, v14);
      if (v15)
      {
        v16 = v15 < 0;
      }

      else
      {
        v16 = v10 < v12;
      }

      if (v8 < 0)
      {
        operator delete(v9);
      }

      if (v16)
      {
        v5 = v6 + 1;
      }

      else
      {
        v4 = v5 + (v4 - v5) / 2;
      }
    }

    while (v5 < v4);
    v17 = v5;
  }

  std::string::operator=((a1 + 80), a2);
  std::string::basic_string[abi:ne200100]<0>(&__p, (*(a1 + 64) + *(*(a1 + 56) + 4 * v17)));
  v18 = *(a2 + 23);
  if (v18 >= 0)
  {
    v19 = *(a2 + 23);
  }

  else
  {
    v19 = a2[1];
  }

  v20 = v29;
  v21 = v29;
  if ((v29 & 0x80u) != 0)
  {
    v20 = v28;
  }

  if (v19 == v20)
  {
    if (v18 >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    if ((v29 & 0x80u) == 0)
    {
      v23 = &__p;
    }

    else
    {
      v23 = __p;
    }

    v24 = memcmp(v22, v23, v19) == 0;
    if (v21 < 0)
    {
LABEL_46:
      operator delete(__p);
      if (!v24)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }
  }

  else
  {
    v24 = 0;
    if (v29 < 0)
    {
      goto LABEL_46;
    }
  }

  if (!v24)
  {
LABEL_47:
    v25 = -1;
    goto LABEL_48;
  }

LABEL_45:
  v25 = *(*(a1 + 56) + 4 * v17);
LABEL_48:
  *(a1 + 104) = v25;
  return v24;
}

uint64_t kaldi::quasar::ConstLexicon::GetPron@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  v8 = *(a1 + 103);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 88);
  }

  if (v7 != v8 || (v6 >= 0 ? (v10 = a2) : (v10 = *a2), v9 >= 0 ? (v11 = (a1 + 80)) : (v11 = *(a1 + 80)), result = memcmp(v10, v11, v7), result))
  {
    result = (*(*a1 + 16))(a1, a2);
  }

  v13 = *(a1 + 104);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if ((v13 & 0x80000000) == 0)
  {
    v14 = *(a2 + 23);
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a2 + 2);
    }

    v15 = v13 + v14;
    v16 = *(a1 + 64);
    v17 = *(v16 + v15 + 1);
    if (v17 >= 1)
    {
      v18 = v15 + 5;
      do
      {
        v19 = v16 + v18;
        std::vector<char const*>::push_back[abi:ne200100](a3, &v19);
        v16 = *(a1 + 64);
        result = strlen((v16 + v18));
        v18 += result + 1;
        --v17;
      }

      while (v17);
    }
  }

  return result;
}

void sub_1B51C3924(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *kaldi::quasar::ConstLexicon::GetWord@<X0>(kaldi::quasar::ConstLexicon *this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((a2 & 0x80000000) != 0 || (**this)(this) <= a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Invalid word idx ", 17);
    MEMORY[0x1B8C84C00](v8, a2);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  v6 = (*(this + 8) + *(*(this + 7) + 4 * a2));

  return std::string::basic_string[abi:ne200100]<0>(a3, v6);
}

uint64_t std::vector<std::vector<std::string>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<std::string>>::__emplace_back_slow_path<std::vector<std::string> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<std::string>>::__construct_one_at_end[abi:ne200100]<std::vector<std::string> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void kaldi::quasar::Lexicon::~Lexicon(kaldi::quasar::Lexicon *this)
{
  kaldi::quasar::Lexicon::~Lexicon(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D03FD0;
  v2 = *(this + 7);
  if (v2)
  {
    v3 = kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::~PrefixTree(v2);
    MEMORY[0x1B8C85350](v3, 0x20C4093837F09);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 312);
  v4 = (this + 280);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__hash_table<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>>>::~__hash_table(this + 240);
  std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::~__hash_table(this + 200);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 160);
  std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::~__hash_table(this + 120);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 80);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 8);
}

void kaldi::quasar::ConstLexicon::~ConstLexicon(void **this)
{
  kaldi::quasar::ConstLexicon::~ConstLexicon(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D04048;
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((this + 1));
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>>>::__deallocate_node(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__tree<int>::destroy((v2 + 3), v2[4]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::~PrefixTree(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node::~Node(v2);
    MEMORY[0x1B8C85350](v3, 0x10A0C40A79550FFLL);
  }

  return a1;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::swap(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *a2;
  *a2 = v4;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 16);
  v9 = *(a1 + 8);
  v10 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v8;
  v11 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v11;
  v12 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v12;
  if (*(a1 + 24))
  {
    v13 = *(a1 + 8);
    v14 = *(*(a1 + 16) + 8);
    if ((v13 & (v13 - 1)) != 0)
    {
      if (v14 >= v13)
      {
        v14 %= v13;
      }
    }

    else
    {
      v14 &= v13 - 1;
    }

    *(*a1 + 8 * v14) = a1 + 16;
  }

  if (v11)
  {
    v15 = *(a2 + 8);
    v16 = *(*(a2 + 16) + 8);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v16 >= v15)
      {
        v16 %= v15;
      }
    }

    else
    {
      v16 &= v15 - 1;
    }

    *(*a2 + 8 * v16) = a2 + 16;
  }
}

void std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::vector<std::string>::__append(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v10 = 24 * ((24 * __n - 24) / 0x18) + 24;
      bzero(this->__end_, v10);
      end = (end + v10);
    }

    this->__end_ = end;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v7 = v6 + __n;
    if (v6 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18.__end_cap_.__value_ = this;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * __n - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = (v11 + v12);
    v14 = this->__end_ - this->__begin_;
    v15 = (v11 - v14);
    memcpy((v11 - v14), this->__begin_, v14);
    begin = this->__begin_;
    this->__begin_ = v15;
    this->__end_ = v13;
    v17 = this->__end_cap_.__value_;
    this->__end_cap_.__value_ = 0;
    v18.__end_ = begin;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = begin;
    v18.__begin_ = begin;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }
}

uint64_t std::__tree<std::vector<std::string>>::__emplace_unique_key_args<std::vector<std::string>,std::vector<std::string> const&>(uint64_t a1, const void ***a2)
{
  result = *std::__tree<std::vector<std::string>>::__find_equal<std::vector<std::string>>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::vector<std::string>>::__construct_node<std::vector<std::string> const&>();
  }

  return result;
}

uint64_t *std::__tree<std::vector<std::string>>::__find_equal<std::vector<std::string>>(uint64_t a1, void *a2, const void ***a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!std::__lexicographical_compare[abi:ne200100]<std::string const*,std::string const*,std::string const*,std::string const*,std::__identity,std::__identity,std::__less<void,void>>(*a3, a3[1], v4[4], v4[5]))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!std::__lexicographical_compare[abi:ne200100]<std::string const*,std::string const*,std::string const*,std::string const*,std::__identity,std::__identity,std::__less<void,void>>(v7[4], v7[5], *a3, a3[1]))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_1B51C4C78(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::vector<std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__lexicographical_compare[abi:ne200100]<std::string const*,std::string const*,std::string const*,std::string const*,std::__identity,std::__identity,std::__less<void,void>>(const void **a1, const void **a2, const void **a3, const void **a4)
{
  if (a3 == a4)
  {
    return 0;
  }

  v5 = a3;
  while (a1 != a2)
  {
    v8 = *(v5 + 23);
    v9 = *(a1 + 23);
    if (v9 >= 0)
    {
      v10 = *(a1 + 23);
    }

    else
    {
      v10 = a1[1];
    }

    if (v9 >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    if (v8 >= 0)
    {
      v12 = *(v5 + 23);
    }

    else
    {
      v12 = v5[1];
    }

    if (v8 >= 0)
    {
      v13 = v5;
    }

    else
    {
      v13 = *v5;
    }

    if (v12 >= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = v12;
    }

    v15 = memcmp(v11, v13, v14);
    v16 = v10 < v12;
    if (v15)
    {
      v16 = v15 < 0;
    }

    if (v16)
    {
      break;
    }

    v17 = memcmp(v13, v11, v14);
    result = 0;
    v19 = v17 == 0;
    v20 = v17 < 0;
    if (v19)
    {
      v20 = v12 < v10;
    }

    if (!v20)
    {
      a1 += 3;
      v5 += 3;
      if (v5 != a4)
      {
        continue;
      }
    }

    return result;
  }

  return 1;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::vector<std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 4;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__tree<std::string>::__erase_unique<std::string>(uint64_t **a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  std::__tree<std::string>::erase(a1, v3);
  return 1;
}

uint64_t *std::__tree<std::string>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::string>::__remove_node_pointer(a1, a2);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::__unordered_map_hasher<int,std::__hash_value_type<int,kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
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

uint64_t *std::__hash_table<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__tree<int>::destroy((a2 + 3), a2[4]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *std::__tree<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>::__emplace_unique_key_args<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node * const&>(uint64_t a1, unint64_t *a2)
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

uint64_t std::__tree<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>::__erase_unique<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<std::string>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>>>::__erase_unique<int>(void *a1, int *a2)
{
  result = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::set<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      std::__tree<int>::destroy((v3 + 3), v3[4]);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__erase_unique<int>(void *a1, int *a2)
{
  result = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void *std::deque<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node const*,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node const*>>::push_back(void *result, void *a2)
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
    result = std::deque<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node const*,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node const*>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node const*,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node const*>>::__add_back_capacity(void *a1)
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

void sub_1B51C5AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *,false>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 1;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 3;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v92 = *(a2 - 1);
        v93 = *v10;
        if (SHIDWORD(v92) > HIDWORD(*v10))
        {
          *v10 = v92;
          *(a2 - 2) = v93;
          v94 = *(v10 + 4);
          *(v10 + 4) = *(a2 - 1);
          *(a2 - 1) = v94;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v75 = *(v10 + 8);
      v76 = *(v10 + 12);
      v77 = *(v10 + 4);
      v78 = *(a2 - 1);
      if (v76 <= v77)
      {
        if (SHIDWORD(v78) <= v76)
        {
          return result;
        }

        *(v10 + 8) = v78;
        *(a2 - 2) = v75;
        v9 = (v10 + 12);
        v95 = *(v10 + 12);
        *(v10 + 12) = *(a2 - 1);
        *(a2 - 1) = v95;
        v96 = *v10;
        v97 = *(v10 + 8);
        if (SHIDWORD(v97) <= HIDWORD(*v10))
        {
          return result;
        }

        *v10 = v97;
        *(v10 + 8) = v96;
        v80 = (v10 + 4);
      }

      else
      {
        v79 = *v10;
        if (SHIDWORD(v78) <= v76)
        {
          *(v10 + 4) = v76;
          *(v10 + 8) = v79;
          *(v10 + 12) = v77;
          *v10 = v75;
          v98 = *(a2 - 1);
          v99 = *(v10 + 8);
          if (SHIDWORD(v98) <= SHIDWORD(v99))
          {
            return result;
          }

          *(v10 + 8) = v98;
          *(a2 - 2) = v99;
          v80 = (v10 + 12);
        }

        else
        {
          *v10 = v78;
          v80 = (v10 + 4);
          *(a2 - 2) = v79;
        }
      }

      v100 = *v80;
      *v80 = *v9;
      *v9 = v100;
      return result;
    }

    if (v13 == 4)
    {
      break;
    }

    if (v13 == 5)
    {
      result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *,0>(v10, (v10 + 8), (v10 + 16), v10 + 24);
      v81 = *(a2 - 1);
      v82 = *(v10 + 24);
      if (SHIDWORD(v81) > SHIDWORD(v82))
      {
        *(v10 + 24) = v81;
        *(a2 - 2) = v82;
        v83 = *(v10 + 28);
        *(v10 + 28) = *(a2 - 1);
        *(a2 - 1) = v83;
        v84 = *(v10 + 16);
        v85 = *(v10 + 24);
        v86 = HIDWORD(v85);
        if (SHIDWORD(v85) > SHIDWORD(v84))
        {
          *(v10 + 16) = v85;
          *(v10 + 24) = v84;
          v87 = *(v10 + 8);
          v88 = *(v10 + 16);
          if (SHIDWORD(v88) > SHIDWORD(v87))
          {
            *(v10 + 8) = v88;
            *(v10 + 12) = v86;
            *(v10 + 16) = v87;
            v89 = *v10;
            v90 = *(v10 + 8);
            v91 = HIDWORD(*v10);
            if (SHIDWORD(v90) > v91)
            {
              *v10 = v90;
              *(v10 + 4) = v86;
              *(v10 + 8) = v89;
              *(v10 + 12) = v91;
            }
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *>(v10, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *>(v10, a2);
      }
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *,std::pair<int,int> *>(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = (v10 + 8 * (v13 >> 1));
    v15 = v14;
    v16 = *(a2 - 1);
    if (v13 < 0x81)
    {
      v22 = *v10;
      v23 = *(v10 + 4);
      v24 = v15[1];
      if (v23 <= v24)
      {
        if (SHIDWORD(v16) > v23)
        {
          *v10 = v16;
          *(a2 - 2) = v22;
          v30 = (v10 + 4);
          v31 = *(v10 + 4);
          *(v10 + 4) = *(a2 - 1);
          *(a2 - 1) = v31;
          v32 = *v15;
          if (HIDWORD(*v10) > HIDWORD(*v15))
          {
            *v15 = *v10;
            v26 = v15 + 1;
            *v10 = v32;
            goto LABEL_39;
          }
        }
      }

      else
      {
        v25 = *v15;
        if (SHIDWORD(v16) > v23)
        {
          *v15 = v16;
          v26 = v15 + 1;
          *(a2 - 2) = v25;
          goto LABEL_38;
        }

        *v15 = v22;
        v15[1] = v23;
        *(v10 + 4) = v24;
        v26 = (v10 + 4);
        *v10 = v25;
        v45 = *(a2 - 1);
        v46 = *v10;
        if (SHIDWORD(v45) > HIDWORD(*v10))
        {
          *v10 = v45;
          *(a2 - 2) = v46;
LABEL_38:
          v30 = a2 - 1;
LABEL_39:
          v47 = *v26;
          *v26 = *v30;
          *v30 = v47;
        }
      }

      if (a5)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    v17 = *v14;
    v18 = v14[1];
    v19 = *(v10 + 4);
    if (v18 > v19)
    {
      v20 = *v10;
      if (SHIDWORD(v16) <= v18)
      {
        *v10 = v17;
        *(v10 + 4) = v18;
        v14[1] = v19;
        v21 = v14 + 1;
        *v14 = v20;
        v33 = *(a2 - 1);
        v34 = *v14;
        if (SHIDWORD(v33) <= HIDWORD(*v14))
        {
          goto LABEL_30;
        }

        *v14 = v33;
        *(a2 - 2) = v34;
      }

      else
      {
        *v10 = v16;
        v21 = (v10 + 4);
        *(a2 - 2) = v20;
      }

      v27 = a2 - 1;
      goto LABEL_29;
    }

    if (SHIDWORD(v16) > v18)
    {
      *v14 = v16;
      *(a2 - 2) = v17;
      v27 = v14 + 1;
      v28 = v14[1];
      v14[1] = *(a2 - 1);
      *(a2 - 1) = v28;
      v29 = *v10;
      if (HIDWORD(*v14) > HIDWORD(*v10))
      {
        *v10 = *v14;
        v21 = (v10 + 4);
        *v14 = v29;
LABEL_29:
        v35 = *v21;
        *v21 = *v27;
        *v27 = v35;
      }
    }

LABEL_30:
    v36 = v14 - 2;
    v37 = *(v14 - 1);
    v38 = *(v10 + 12);
    v39 = *(a2 - 2);
    if (SHIDWORD(v37) > v38)
    {
      v40 = *(v10 + 8);
      if (SHIDWORD(v39) <= SHIDWORD(v37))
      {
        *(v10 + 8) = v37;
        *(v14 - 1) = v38;
        v41 = v14 - 1;
        *v36 = v40;
        v48 = *(a2 - 2);
        v49 = *v36;
        if (SHIDWORD(v48) <= HIDWORD(*v36))
        {
          goto LABEL_46;
        }

        *v36 = v48;
        *(a2 - 4) = v49;
      }

      else
      {
        *(v10 + 8) = v39;
        *(a2 - 4) = v40;
        v41 = (v10 + 12);
      }

      v43 = a2 - 3;
      goto LABEL_45;
    }

    if (SHIDWORD(v39) > SHIDWORD(v37))
    {
      *v36 = v39;
      *(a2 - 4) = v37;
      v43 = v14 - 1;
      v42 = *(v14 - 1);
      *(v14 - 1) = *(a2 - 3);
      *(a2 - 3) = v42;
      v44 = *(v10 + 8);
      if (HIDWORD(*v36) > SHIDWORD(v44))
      {
        *(v10 + 8) = *v36;
        *v36 = v44;
        v41 = (v10 + 12);
LABEL_45:
        v50 = *v41;
        *v41 = *v43;
        *v43 = v50;
      }
    }

LABEL_46:
    v53 = *(v14 + 1);
    v51 = v14 + 2;
    LODWORD(v52) = v53;
    v54 = *(v10 + 20);
    v55 = HIDWORD(v53);
    v56 = *(a2 - 3);
    if (SHIDWORD(v53) > v54)
    {
      v57 = *(v10 + 16);
      if (SHIDWORD(v56) <= v55)
      {
        *(v10 + 16) = v52;
        *(v10 + 20) = v55;
        *v51 = v57;
        v51[1] = v54;
        v58 = v51 + 1;
        v62 = *(a2 - 3);
        v52 = *v51;
        v55 = HIDWORD(*v51);
        if (SHIDWORD(v62) <= v55)
        {
          goto LABEL_56;
        }

        *v51 = v62;
        *(a2 - 6) = v52;
      }

      else
      {
        *(v10 + 16) = v56;
        *(a2 - 6) = v57;
        v58 = (v10 + 20);
      }

      v60 = a2 - 5;
      goto LABEL_55;
    }

    if (SHIDWORD(v56) > v55)
    {
      *v51 = v56;
      *(a2 - 6) = v52;
      v60 = v51 + 1;
      v59 = v51[1];
      v51[1] = *(a2 - 5);
      *(a2 - 5) = v59;
      v52 = *v51;
      v61 = *(v10 + 16);
      v55 = HIDWORD(*v51);
      if (v55 > SHIDWORD(v61))
      {
        *(v10 + 16) = v52;
        *v51 = v61;
        v58 = (v10 + 20);
LABEL_55:
        v63 = *v58;
        *v58 = *v60;
        *v60 = v63;
        v52 = *v51;
        v55 = HIDWORD(*v51);
      }
    }

LABEL_56:
    v64 = *v15;
    v65 = v15[1];
    v67 = *v36;
    v66 = v36[1];
    if (v65 <= v66)
    {
      if (v55 <= v65)
      {
        goto LABEL_66;
      }

      *v15 = v52;
      v15[1] = v55;
      v70 = v15 + 1;
      *v51 = v64;
      v51[1] = v65;
      v64 = *v15;
      if (v55 > v66)
      {
        *v36 = v64;
        v68 = v36 + 1;
        *v15 = v67;
LABEL_65:
        *v68 = v55;
        *v70 = v66;
        v64 = *v15;
        v65 = v15[1];
        goto LABEL_66;
      }

      v65 = v55;
    }

    else
    {
      if (v55 > v65)
      {
        *v36 = v52;
        v68 = v36 + 1;
        *v51 = v67;
        v69 = v51 + 1;
LABEL_64:
        v70 = v69;
        goto LABEL_65;
      }

      *v15 = v67;
      v15[1] = v66;
      *v36 = v64;
      v36[1] = v65;
      if (v55 > v66)
      {
        *v15 = v52;
        *v51 = v67;
        v69 = v51 + 1;
        v68 = v15 + 1;
        goto LABEL_64;
      }

      v65 = v66;
      v64 = v67;
    }

LABEL_66:
    v71 = *v10;
    *v10 = v64;
    *(v10 + 4) = v65;
    *v15 = v71;
    if (a5)
    {
      goto LABEL_68;
    }

LABEL_67:
    if (*(v10 - 4) <= *(v10 + 4))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,int> *,kaldi::quasar::Lexicon::HasMoreProns &>(v10, a2);
      v10 = result;
      goto LABEL_76;
    }

LABEL_68:
    HasMore = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,int> *,kaldi::quasar::Lexicon::HasMoreProns &>(v10, a2);
    if ((v73 & 1) == 0)
    {
      goto LABEL_74;
    }

    v74 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *>(v10, HasMore);
    v10 = HasMore + 8;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *>((HasMore + 8), a2);
    if (result)
    {
      a4 = -v12;
      a2 = HasMore;
      if (v74)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v74)
    {
LABEL_74:
      result = std::__introsort<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *,false>(v8, HasMore, a3, -v12, a5 & 1);
      v10 = HasMore + 8;
LABEL_76:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *,0>(v10, (v10 + 8), (v10 + 16), (a2 - 1));
}

uint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *,0>(uint64_t *result, int *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *a3;
  v7 = HIDWORD(*a3);
  if (v5 <= *(result + 1))
  {
    if (v7 > v5)
    {
      *a2 = v6;
      *a3 = v4;
      v10 = a2 + 1;
      v11 = a2[1];
      a2[1] = *(a3 + 1);
      *(a3 + 1) = v11;
      v12 = *result;
      if (HIDWORD(*a2) > HIDWORD(*result))
      {
        *result = *a2;
        v9 = result + 1;
        *a2 = v12;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 > v5)
    {
      *result = v6;
      v9 = result + 1;
      *a3 = v8;
      v10 = a3 + 1;
LABEL_9:
      v15 = *v9;
      *v9 = *v10;
      *v10 = v15;
      goto LABEL_10;
    }

    *result = v4;
    *a2 = v8;
    v9 = a2 + 1;
    v13 = *(result + 1);
    *(result + 1) = a2[1];
    a2[1] = v13;
    v14 = *a2;
    if (HIDWORD(*a3) > HIDWORD(*a2))
    {
      *a2 = *a3;
      *a3 = v14;
      v10 = a3 + 1;
      goto LABEL_9;
    }
  }

LABEL_10:
  v16 = *a3;
  if (HIDWORD(*a4) > HIDWORD(*a3))
  {
    *a3 = *a4;
    *a4 = v16;
    v17 = *(a3 + 1);
    *(a3 + 1) = *(a4 + 4);
    *(a4 + 4) = v17;
    v18 = *a2;
    if (HIDWORD(*a3) > HIDWORD(*a2))
    {
      *a2 = *a3;
      *a3 = v18;
      v19 = a2[1];
      a2[1] = *(a3 + 1);
      *(a3 + 1) = v19;
      v20 = *result;
      if (HIDWORD(*a2) > HIDWORD(*result))
      {
        *result = *a2;
        *a2 = v20;
        v21 = *(result + 1);
        *(result + 1) = a2[1];
        a2[1] = v21;
      }
    }
  }

  return result;
}

uint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *>(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v6 = *v4;
        v5 = v4[1];
        v4 = v2;
        if (SHIDWORD(v5) > SHIDWORD(v6))
        {
          v7 = v3;
          while (1)
          {
            v8 = result + v7;
            v9 = *(result + v7 + 4);
            *(v8 + 2) = v6;
            *(v8 + 3) = v9;
            if (!v7)
            {
              break;
            }

            v6 = *(v8 - 1);
            v7 -= 8;
            if (SHIDWORD(v5) <= SHIDWORD(v6))
            {
              v10 = (result + v7 + 8);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v5;
        }

        ++v2;
        v3 += 8;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

void *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = result + 12;
      do
      {
        v5 = *result;
        v4 = result[1];
        result = v2;
        if (SHIDWORD(v4) > SHIDWORD(v5))
        {
          v6 = v3;
          do
          {
            v7 = v6;
            v8 = *(v6 - 2);
            v6 -= 2;
            *(v7 - 1) = v5;
            *v7 = v8;
            v5 = *(v7 - 5);
          }

          while (SHIDWORD(v4) > SHIDWORD(v5));
          *(v6 - 1) = v4;
        }

        ++v2;
        v3 += 8;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,int> *,kaldi::quasar::Lexicon::HasMoreProns &>(uint64_t *a1, _DWORD *a2)
{
  v2 = *a1;
  v3 = HIDWORD(*a1);
  if (v3 <= *(a2 - 1))
  {
    v7 = (a1 + 1);
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v8 = *(v7 + 4);
      v7 += 8;
    }

    while (v3 <= v8);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = (v4 + 1);
      v6 = *(v4++ + 3);
    }

    while (v3 <= v6);
  }

  if (v5 >= a2)
  {
    v9 = a2;
  }

  else
  {
    do
    {
      v9 = a2 - 2;
      v10 = *(a2 - 1);
      a2 -= 2;
    }

    while (v3 > v10);
  }

  if (v5 < v9)
  {
    v11 = *v5;
    v12 = *v9;
    do
    {
      *v5 = v12;
      *v9 = v11;
      v13 = *(v5 + 4);
      *(v5 + 4) = v9[1];
      v9[1] = v13;
      do
      {
        v14 = *(v5 + 8);
        v5 += 8;
        v11 = v14;
      }

      while (v3 <= SHIDWORD(v14));
      do
      {
        v15 = *(v9 - 1);
        v9 -= 2;
        v12 = v15;
      }

      while (v3 > SHIDWORD(v15));
    }

    while (v5 < v9);
  }

  if ((v5 - 8) != a1)
  {
    *a1 = *(v5 - 8);
    *(a1 + 1) = *(v5 - 4);
  }

  *(v5 - 8) = v2;
  *(v5 - 4) = v3;
  return v5;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,int> *,kaldi::quasar::Lexicon::HasMoreProns &>(uint64_t *a1, _DWORD *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = HIDWORD(*a1);
  do
  {
    v5 = a1[++v2];
  }

  while (SHIDWORD(v5) > v4);
  v6 = &a1[v2];
  if (v2 == 1)
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
  if (v6 >= v7)
  {
    v11 = v6;
  }

  else
  {
    v10 = *v7;
    v11 = v6;
    v12 = v7;
    do
    {
      *v11 = v10;
      *v12 = v5;
      v13 = *(v11 + 4);
      *(v11 + 4) = v12[1];
      v12[1] = v13;
      do
      {
        v14 = *(v11 + 8);
        v11 += 8;
        LODWORD(v5) = v14;
      }

      while (SHIDWORD(v14) > v4);
      do
      {
        v15 = *(v12 - 1);
        v12 -= 2;
        v10 = v15;
      }

      while (SHIDWORD(v15) <= v4);
    }

    while (v11 < v12);
  }

  if ((v11 - 8) != a1)
  {
    *a1 = *(v11 - 8);
    *(a1 + 1) = *(v11 - 4);
  }

  *(v11 - 8) = v3;
  *(v11 - 4) = v4;
  return v11 - 8;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *>(int *a1, char *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v20 = a1[2];
      v21 = a1[3];
      v22 = a1[1];
      v23 = *(a2 - 1);
      if (v21 <= v22)
      {
        if (SHIDWORD(v23) <= v21)
        {
          return 1;
        }

        a1[2] = v23;
        *(a2 - 2) = v20;
        v26 = a1 + 3;
        v35 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v35;
        v36 = *a1;
        v37 = *(a1 + 1);
        if (SHIDWORD(v37) <= HIDWORD(*a1))
        {
          return 1;
        }

        *a1 = v37;
        a1[2] = v36;
        v25 = a1 + 1;
      }

      else
      {
        v24 = *a1;
        if (SHIDWORD(v23) <= v21)
        {
          a1[1] = v21;
          a1[2] = v24;
          a1[3] = v22;
          *a1 = v20;
          v40 = *(a2 - 1);
          v41 = *(a1 + 1);
          if (SHIDWORD(v40) <= SHIDWORD(v41))
          {
            return 1;
          }

          a1[2] = v40;
          *(a2 - 2) = v41;
          v26 = (a2 - 4);
          v25 = a1 + 3;
        }

        else
        {
          *a1 = v23;
          v25 = a1 + 1;
          *(a2 - 2) = v24;
          v26 = (a2 - 4);
        }
      }

      v42 = *v25;
      *v25 = *v26;
      *v26 = v42;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *,0>(a1, a1 + 2, a1 + 2, (a1 + 6));
        v8 = *(a2 - 1);
        v9 = *(a1 + 3);
        if (SHIDWORD(v8) > SHIDWORD(v9))
        {
          a1[6] = v8;
          *(a2 - 2) = v9;
          v10 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v10;
          v11 = *(a1 + 2);
          v12 = *(a1 + 3);
          v13 = HIDWORD(v12);
          if (SHIDWORD(v12) > SHIDWORD(v11))
          {
            *(a1 + 2) = v12;
            *(a1 + 3) = v11;
            v14 = *(a1 + 1);
            v15 = *(a1 + 2);
            if (SHIDWORD(v15) > SHIDWORD(v14))
            {
              a1[2] = v15;
              a1[3] = v13;
              *(a1 + 2) = v14;
              v16 = *a1;
              v17 = *(a1 + 1);
              v18 = HIDWORD(*a1);
              if (SHIDWORD(v17) > v18)
              {
                *a1 = v17;
                a1[1] = v13;
                result = 1;
                a1[2] = v16;
                a1[3] = v18;
                return result;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *,0>(a1, a1 + 2, a1 + 2, (a2 - 8));
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    if (SHIDWORD(v5) > HIDWORD(*a1))
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v27 = (a1 + 4);
  v28 = *(a1 + 2);
  v30 = a1[2];
  v29 = a1[3];
  v32 = *a1;
  LODWORD(v31) = a1[1];
  v33 = HIDWORD(v28);
  if (v29 > v31)
  {
    if (SHIDWORD(v28) <= v29)
    {
      a1[3] = v31;
      v34 = a1 + 3;
      a1[1] = v29;
      a1[2] = v32;
      *a1 = v30;
      v43 = *(a1 + 1);
      v31 = HIDWORD(v43);
      if (SHIDWORD(v28) <= SHIDWORD(v43))
      {
        goto LABEL_34;
      }

      a1[2] = v28;
      a1[4] = v43;
    }

    else
    {
      *a1 = v28;
      a1[4] = v32;
      v34 = a1 + 1;
    }

    v38 = a1 + 5;
    goto LABEL_33;
  }

  if (SHIDWORD(v28) > v29)
  {
    *(a1 + 1) = v28;
    v38 = a1 + 3;
    a1[4] = v30;
    a1[5] = v29;
    v39 = *(a1 + 1);
    v33 = HIDWORD(v39);
    if (SHIDWORD(v39) > v31)
    {
      *a1 = v39;
      a1[2] = v32;
      v34 = a1 + 1;
LABEL_33:
      *v34 = v33;
      *v38 = v31;
    }
  }

LABEL_34:
  v44 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v45 = 0;
  v46 = 0;
  while (1)
  {
    v47 = *v44;
    v48 = *v27;
    v49 = HIDWORD(*v44);
    if (v49 > SHIDWORD(v48))
    {
      v50 = v45;
      while (1)
      {
        v51 = a1 + v50;
        v52 = *(a1 + v50 + 20);
        *(v51 + 24) = v48;
        *(v51 + 28) = v52;
        if (v50 == -16)
        {
          break;
        }

        v48 = *(v51 + 8);
        v50 -= 8;
        if (v49 <= SHIDWORD(v48))
        {
          v53 = (a1 + v50 + 24);
          goto LABEL_42;
        }
      }

      v53 = a1;
LABEL_42:
      *v53 = v47;
      v53[1] = v49;
      if (++v46 == 8)
      {
        return v44 + 1 == a2;
      }
    }

    v27 = v44;
    v45 += 8;
    if (++v44 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *,std::pair<int,int> *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 8 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        if (HIDWORD(*v12) > HIDWORD(*a1))
        {
          *v12 = *a1;
          *a1 = v13;
          v14 = *(v12 + 1);
          *(v12 + 1) = *(a1 + 4);
          *(a1 + 4) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = a2 - 1;
      do
      {
        v17 = *a1;
        v16 = *(a1 + 4);
        v18 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *>(a1, a4, v8);
        if (v15 == v18)
        {
          *v18 = v17;
          *(v18 + 1) = v16;
        }

        else
        {
          *v18 = *v15;
          *(v18 + 1) = *(v15 + 1);
          *v15 = v17;
          *(v15 + 1) = v16;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *>(a1, (v18 + 1), a4, (v18 - a1 + 8) >> 3);
        }

        --v15;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
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
      v10 = *v8;
      if (v9 < a3 && SHIDWORD(v10) > HIDWORD(v8[1]))
      {
        v10 = v8[1];
        ++v8;
        v7 = v9;
      }

      v11 = *a4;
      v12 = HIDWORD(v10);
      v13 = HIDWORD(*a4);
      if (v12 <= v13)
      {
        LODWORD(v14) = *v8;
        do
        {
          v15 = a4;
          a4 = v8;
          *v15 = v14;
          *(v15 + 1) = *(v8 + 1);
          if (v5 < v7)
          {
            break;
          }

          v16 = (2 * v7) | 1;
          v8 = (result + 8 * v16);
          v7 = 2 * v7 + 2;
          v14 = *v8;
          if (v7 >= a3)
          {
            v7 = v16;
          }

          else if (SHIDWORD(v14) <= HIDWORD(v8[1]))
          {
            v7 = v16;
          }

          else
          {
            v14 = v8[1];
            ++v8;
          }
        }

        while (SHIDWORD(v14) <= v13);
        *a4 = v11;
        *(a4 + 1) = v13;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *>(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[2 * v3];
    v5 = v4 + 2;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v6;
    }

    else if (v4[3] <= v4[5])
    {
      v3 = v6;
    }

    else
    {
      v5 = v4 + 4;
    }

    *a1 = *v5;
    a1[1] = v5[1];
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v6 = *v5;
    v9 = *(a2 - 8);
    v7 = (a2 - 8);
    v8 = v9;
    v10 = HIDWORD(v9);
    if (HIDWORD(*v5) > SHIDWORD(v9))
    {
      do
      {
        v11 = v7;
        v7 = v5;
        *v11 = v6;
        v11[1] = v5[1];
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v6 = *v5;
      }

      while (HIDWORD(*v5) > v10);
      *v7 = v8;
      v7[1] = v10;
    }
  }

  return result;
}

void *std::deque<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>::push_back(void *result, void *a2)
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
    result = std::deque<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>::__add_back_capacity(void *a1)
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

void sub_1B51C6F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node::~Node(uint64_t a1)
{
  for (i = a1; ; i = v3)
  {
    while (i[3])
    {
      i = *(i[2] + 24);
    }

    if (i == a1)
    {
      break;
    }

    v3 = i[10];
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(v3, *(v3 + 16));
    v4 = kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node::~Node(i);
    MEMORY[0x1B8C85350](v4, 0x10A0C40A79550FFLL);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 40);

  return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1);
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

void sub_1B51C71EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_1B51C750C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  _Unwind_Resume(a1);
}

void sub_1B51C7E98(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1B51C80B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v13 != v14)
  {
  }

  if (v18 != v12)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1B51C8694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  std::pair<std::vector<std::vector<unsigned int>>,std::vector<std::vector<std::vector<quasar::Token>>>>::~pair(&a9);
  a9 = &a16;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = &a19;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

void **std::pair<std::vector<std::vector<unsigned int>>,std::vector<std::vector<std::vector<quasar::Token>>>>::~pair(void **a1)
{
  v3 = a1 + 3;
  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void sub_1B51C8FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v10 - 80);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = (v10 - 56);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

void sub_1B51C96B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15)
{
  STACK[0x250] = &a15;
  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x250]);

  std::pair<std::vector<std::vector<unsigned int>>,std::vector<std::vector<std::vector<quasar::Token>>>>::~pair(a10);
  _Unwind_Resume(a1);
}

void sub_1B51C9950(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::pair<std::vector<std::vector<unsigned int>>,std::vector<std::vector<std::vector<quasar::Token>>>>::~pair(va1);
  std::pair<std::vector<std::vector<unsigned int>>,std::vector<std::vector<std::vector<quasar::Token>>>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1B51CA394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, id a60)
{
  _Block_object_dispose(&a55, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B51CA5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_1B51CA76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t quasar::join<std::vector<int>>(unsigned int **a1, uint64_t *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  quasar::joinToStream<std::vector<int>>(&v7, a1, a2);
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

void sub_1B51CBBD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B8C85200](v2 + 128);
  _Unwind_Resume(a1);
}

id EARHelpers::VectorToArray<int>(unsigned int **a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = [MEMORY[0x1E696AD98] numberWithInt:*v3];
      [v2 addObject:v5];

      ++v3;
    }

    while (v3 != v4);
  }

  v6 = [v2 copy];

  return v6;
}

void sub_1B51CC1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 40) = v13;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100]((v14 - 40));
  *(v14 - 40) = &a13;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100]((v14 - 40));

  _Unwind_Resume(a1);
}

void sub_1B51CC2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a9 = &a18;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = &a21;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

void sub_1B51CC51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a9;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a14);

  _Unwind_Resume(a1);
}

void sub_1B51CC614(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id EARSpeechRecognitionResultFromQuasarResult(void *a1, quasar::Token **a2, void *a3, void *a4, uint64_t a5, unsigned int a6, int a7, char a8, uint64_t *a9, int a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t *a15, unsigned __int8 a16, unsigned __int8 a17, uint64_t a18)
{
  v22 = a18;
  v23 = a1;
  v48 = a3;
  v47 = a4;
  v49 = v23;
  dispatch_assert_queue_V2(v23[1]);
  v93 = 0uLL;
  v94 = 0;
  memset(v92, 0, sizeof(v92));
  memset(v91, 0, sizeof(v91));
  memset(v90, 0, sizeof(v90));
  memset(v89, 0, sizeof(v89));
  memset(v88, 0, sizeof(v88));
  if ((a16 & a17) != 0)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = a6 / 1000.0;
  }

  v25 = [(dispatch_queue_t *)v23 relevantTextContext];
  v45 = a7;
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = __Block_byref_object_copy__2;
  v86 = __Block_byref_object_dispose__2;
  v87 = &stru_1F2D44B60;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__2;
  v80 = __Block_byref_object_dispose__2;
  v81 = &stru_1F2D44B60;
  v69 = 0;
  v70 = &v69;
  v71 = 0x4812000000;
  v72 = __Block_byref_object_copy__420;
  v73 = __Block_byref_object_dispose__421;
  v74 = &unk_1B5CADD23;
  memset(v75, 0, sizeof(v75));
  v62 = 0;
  v63 = &v62;
  v64 = 0x4812000000;
  v65 = __Block_byref_object_copy__420;
  v66 = __Block_byref_object_dispose__421;
  v67 = &unk_1B5CADD23;
  memset(v68, 0, sizeof(v68));
  if ((-[dispatch_queue_t continuousListeningFormatAcrossUtterances](v23, "continuousListeningFormatAcrossUtterances") & 1) != 0 || ([v25 leftContextWasAppended] & 1) == 0)
  {
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = ___Z42EARSpeechRecognitionResultFromQuasarResultP20_EARSpeechRecognizerRKNSt3__16vectorIN6quasar5TokenENS1_9allocatorIS4_EEEEP8NSStringSB_S9_jjbNS1_10shared_ptrINS3_25ContinuousListeningConfigEEEiS9_bS9_bNSC_IbEEbbRK14FormattingInfo_block_invoke;
    v61[3] = &unk_1E7C1A3C0;
    v61[4] = &v82;
    v61[5] = &v76;
    v61[6] = &v69;
    v61[7] = &v62;
    [v25 getLeftAndRightContextWithCompletion:v61];
    if ([v25 leftContextEndsWithAppendedAutoPunctuation])
    {
      v26 = 1;
    }

    else
    {
      v26 = [v25 leftContextWasAppended] ^ 1;
    }
  }

  else
  {
    v26 = 0;
  }

  v27 = v23[2];
  if (v27)
  {
    v28 = v70;
    v29 = a9[1];
    v57 = *a9;
    v58 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v44 = v25;
    v30 = [(dispatch_queue_t *)v49 itnEnablingFlags];
    v31 = [(dispatch_queue_t *)v49 recognizeEmoji];
    v32 = v63;
    v33 = v83[5];
    v34 = v77[5];
    v35 = a15[1];
    v55 = *a15;
    v56 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = ___Z42EARSpeechRecognitionResultFromQuasarResultP20_EARSpeechRecognizerRKNSt3__16vectorIN6quasar5TokenENS1_9allocatorIS4_EEEEP8NSStringSB_S9_jjbNS1_10shared_ptrINS3_25ContinuousListeningConfigEEEiS9_bS9_bNSC_IbEEbbRK14FormattingInfo_block_invoke_2;
    v53[3] = &unk_1E7C1A3E8;
    v54 = v49;
    LOBYTE(v43) = 0;
    BYTE1(v42) = a14;
    LOBYTE(v42) = 0;
    LOBYTE(v41) = v26;
    BYTE3(v40) = a12;
    BYTE2(v40) = v31;
    LOWORD(v40) = v30;
    BYTE4(v39) = a8;
    LODWORD(v39) = v45;
    [NSObject formatWords:v27 unrepairedWordsOut:"formatWords:unrepairedWordsOut:task:language:preItnLeftContext:separateAutoEndPunctuation:partialResults:timestampOffset:zeroTimestamp:continuousListeningConfig:postItnLeftContext:itnResult:itnOverrides:itnEnablingFlags:recognizeEmoji:leftContextProvidedByClient:preItnRightContext:postItnLeftContextStr:postItnRightContextStr:stripLeadingAppendedAutoPunctuation:emojiTokenIndices:persistEmoji:shouldHideTrailingPunctuation:isTrailingPunctuationHidden:isFinal:choiceIdx:itnCompletion:" task:a2 language:v90 preItnLeftContext:v48 separateAutoEndPunctuation:v47 partialResults:v28 + 6 timestampOffset:0 zeroTimestamp:v92 continuousListeningConfig:v39 postItnLeftContext:&v57 itnResult:a11 itnOverrides:v91 itnEnablingFlags:v89 recognizeEmoji:v40 leftContextProvidedByClient:v32 + 6 preItnRightContext:v33 postItnLeftContextStr:v34 postItnRightContextStr:v41 stripLeadingAppendedAutoPunctuation:v88 emojiTokenIndices:v42 persistEmoji:&v55 shouldHideTrailingPunctuation:v43 isTrailingPunctuationHidden:v53 isFinal:? choiceIdx:? itnCompletion:?];
    std::vector<quasar::Token>::__vdeallocate(&v93);
    v93 = v59;
    v94 = v60;
    v60 = 0;
    v59 = 0uLL;
    v95 = &v59;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v95);
    v22 = a18;
    v25 = v44;
    if (v56)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v56);
    }

    v23 = v49;
    if (v58)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    }
  }

  else if (&v93 != a2)
  {
    std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v93, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
  }

  v36 = [_EARSpeechRecognitionResult alloc];
  memset(v52, 0, sizeof(v52));
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v52, v93, *(&v93 + 1), 0x6DB6DB6DB6DB6DB7 * ((*(&v93 + 1) - v93) >> 5));
  memset(v51, 0, sizeof(v51));
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v51, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
  v37 = [(_EARSpeechRecognitionResult *)v36 _initWithTokens:v52 preITNTokens:v51 confidence:0 voiceCommandInterpretations:0 preITNVoiceCommandInterpretations:1 utteranceStart:v22 preITNUseHatText:a10 formattingInfo:v24];
  *&v59 = v51;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v59);
  *&v59 = v52;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v59);
  _Block_object_dispose(&v62, 8);
  *&v59 = v68;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v59);
  _Block_object_dispose(&v69, 8);
  v62 = v75;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v62);
  _Block_object_dispose(&v76, 8);

  _Block_object_dispose(&v82, 8);
  v69 = v88;
  std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v69);
  v69 = v89;
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](&v69);
  v69 = v90;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v69);
  v69 = v91;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v69);
  v69 = v92;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v69);
  v69 = &v93;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v69);

  return v37;
}

void sub_1B51CCDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void **a32, void **a33, void *a34, void *a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, std::__shared_weak_count *a50, uint64_t a51, std::__shared_weak_count *a52, void **a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a50);
  }

  if (a52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a52);
  }

  _Block_object_dispose(&a64, 8);
  a53 = a32;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a53);
  _Block_object_dispose(&STACK[0x200], 8);
  a64 = a33;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a64);
  _Block_object_dispose(&STACK[0x248], 8);

  _Block_object_dispose(&STACK[0x278], 8);
  STACK[0x200] = &STACK[0x2A8];
  std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);
  STACK[0x200] = v64 - 240;
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);
  STACK[0x200] = v64 - 216;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);
  STACK[0x200] = v64 - 192;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);
  STACK[0x200] = v64 - 168;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);
  STACK[0x200] = v64 - 144;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__420(__n128 *a1, __n128 *a2)
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

void ___Z42EARSpeechRecognitionResultFromQuasarResultP20_EARSpeechRecognizerRKNSt3__16vectorIN6quasar5TokenENS1_9allocatorIS4_EEEEP8NSStringSB_S9_jjbNS1_10shared_ptrINS3_25ContinuousListeningConfigEEEiS9_bS9_bNSC_IbEEbbRK14FormattingInfo_block_invoke(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a5;
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  v13 = a4;
  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  stringsToTokensWithZeroTimestamps(v13, &v16);

  v14 = *(a1[6] + 8);
  std::vector<quasar::Token>::__vdeallocate((v14 + 48));
  *(v14 + 48) = v16;
  *(v14 + 64) = v17;
  v17 = 0;
  v16 = 0uLL;
  v18 = &v16;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v18);
  stringsToTokensWithZeroTimestamps(v12, &v16);
  v15 = *(a1[7] + 8);
  std::vector<quasar::Token>::__vdeallocate((v15 + 48));
  *(v15 + 48) = v16;
  *(v15 + 64) = v17;
  v17 = 0;
  v16 = 0uLL;
  v18 = &v16;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v18);
}

void stringsToTokensWithZeroTimestamps(void *a1@<X0>, void *a2@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v5)
  {
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v9 = quasar::Token::Token(__p);
        if (v8)
        {
          [v8 ear_toString];
        }

        else
        {
          v26 = 0uLL;
          v27 = 0;
        }

        if (SHIBYTE(v11) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v26;
        v11 = v27;

        std::vector<quasar::Token>::push_back[abi:ne200100](a2, __p);
        if (v21 < 0)
        {
          operator delete(v20);
        }

        if (v19 < 0)
        {
          operator delete(v18);
        }

        *&v26 = &v17;
        std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v26);
        if (v16 < 0)
        {
          operator delete(v15);
        }

        *&v26 = &v14;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v26);
        if (v13 < 0)
        {
          operator delete(v12);
        }

        if (SHIBYTE(v11) < 0)
        {
          operator delete(__p[0]);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v5);
  }
}

void sub_1B51CD2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

void ___Z42EARSpeechRecognitionResultFromQuasarResultP20_EARSpeechRecognizerRKNSt3__16vectorIN6quasar5TokenENS1_9allocatorIS4_EEEEP8NSStringSB_S9_jjbNS1_10shared_ptrINS3_25ContinuousListeningConfigEEEiS9_bS9_bNSC_IbEEbbRK14FormattingInfo_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [*(a1 + 32) recognitionMetrics];
  v8[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v6 addItnRunIntervals:v7];
}

void sub_1B51CD3BC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id RHPackageToEARPackage(quasar::result_handler::Package *a1)
{
  v2 = [_EARSpeechRecognition alloc];
  v38 = 0;
  *__p = 0u;
  v37 = 0u;
  std::string::basic_string[abi:ne200100]<0>(&__p[1], "▁");
  LOBYTE(v38) = 0;
  v33 = [(_EARSpeechRecognition *)v2 _initWithNBestList:a1 useHatText:0 endsOfSentencePunctuations:0 formattingInfo:__p];
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[1]);
  }

  v3 = [_EARSpeechRecognition alloc];
  v38 = 0;
  *__p = 0u;
  v37 = 0u;
  std::string::basic_string[abi:ne200100]<0>(&__p[1], "▁");
  LOBYTE(v38) = 0;
  v32 = [(_EARSpeechRecognition *)v3 _initWithNBestList:a1 + 48 useHatText:0 endsOfSentencePunctuations:0 formattingInfo:__p];
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[1]);
  }

  v4 = [_EARSpeechRecognition alloc];
  v38 = 0;
  *__p = 0u;
  v37 = 0u;
  std::string::basic_string[abi:ne200100]<0>(&__p[1], "▁");
  LOBYTE(v38) = 0;
  v31 = [(_EARSpeechRecognition *)v4 _initWithNBestList:a1 + 24 useHatText:0 endsOfSentencePunctuations:0 formattingInfo:__p];
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[1]);
  }

  v30 = *(a1 + 19);
  if (*(a1 + 368) != 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v34 = 0;
    goto LABEL_49;
  }

  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = EARHelpers::EARVoiceCommandInterpretationsFromQuasarCommandData((a1 + 184), v5);
  if ([v6 count])
  {
    [v34 addObject:v6];
  }

  if ((*(a1 + 368) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  quasar::topChoice2Str(a1 + 23, __p);
  if ((SBYTE7(v37) & 0x8000000000000000) != 0)
  {
    if (__p[1])
    {
      v7 = __p[0];
      goto LABEL_17;
    }
  }

  else if (BYTE7(v37))
  {
    v7 = __p;
LABEL_17:
    v12 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:v7];
    goto LABEL_19;
  }

  v12 = 0;
LABEL_19:
  if ((*(a1 + 368) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  quasar::topChoice2Str(a1 + 26, &v35);
  if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v35.__r_.__value_.__l.__size_)
    {
      v13 = v35.__r_.__value_.__r.__words[0];
      goto LABEL_25;
    }
  }

  else if (*(&v35.__r_.__value_.__s + 23))
  {
    v13 = &v35;
LABEL_25:
    v10 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:v13];
    goto LABEL_27;
  }

  v10 = 0;
LABEL_27:
  if ((*(a1 + 368) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v14 = *(a1 + 42);
  if (*(a1 + 43) == v14)
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_44;
  }

  v15 = (v14 + 24);
  if ((*(v14 + 47) & 0x8000000000000000) != 0)
  {
    if (!*(v14 + 32))
    {
LABEL_36:
      v9 = 0;
      goto LABEL_37;
    }

    v15 = *v15;
  }

  else if (!*(v14 + 47))
  {
    goto LABEL_36;
  }

  v9 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:v15];
LABEL_37:
  v16 = (v14 + 48);
  if ((*(v14 + 71) & 0x8000000000000000) != 0)
  {
    if (!*(v14 + 56))
    {
LABEL_43:
      v8 = 0;
      goto LABEL_44;
    }

    v16 = *v16;
  }

  else if (!*(v14 + 71))
  {
    goto LABEL_43;
  }

  v8 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:v16];
LABEL_44:
  v11 = v12;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v37) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_49:
  v17 = [_EARVoiceCommandDebugInfo alloc];
  BYTE2(v28) = *(a1 + 460);
  LOWORD(v28) = *(a1 + 229);
  v18 = [_EARVoiceCommandDebugInfo initWithPrecedingUtterance:v17 commandUtterance:"initWithPrecedingUtterance:commandUtterance:target:payload:hasVoiceCommandInExhaustiveParses:hasVoiceCommandParses:hasVoiceCommandEditIntent:hasVoiceCommandAfterReranking:hasNoVoiceCommandAfterRespeakCheck:commandParserMachContinuousStartTicks:commandParserMachContinuousEndTicks:commandParserMachAbsoluteStartTicks:commandParserMachAbsoluteEndTicks:" target:v11 payload:v10 hasVoiceCommandInExhaustiveParses:v9 hasVoiceCommandParses:v8 hasVoiceCommandEditIntent:*(a1 + 456) hasVoiceCommandAfterReranking:*(a1 + 457) hasNoVoiceCommandAfterRespeakCheck:v28 commandParserMachContinuousStartTicks:*(a1 + 58) commandParserMachContinuousEndTicks:*(a1 + 59) commandParserMachAbsoluteStartTicks:*(a1 + 60) commandParserMachAbsoluteEndTicks:*(a1 + 61)];
  v19 = [_EARPerformanceMarkers alloc];
  v20 = EARHelpers::VectorToArray<int>(a1 + 11);
  v21 = EARHelpers::VectorToArray<int>(a1 + 14);
  v22 = EARHelpers::VectorToArray<int>(a1 + 17);
  v23 = [(_EARPerformanceMarkers *)v19 initWithCorrectPartialResultIndexList:v20 correctAlignedPartialResultIndexList:v21 tokenDelayInMilliseconds:v22];

  v24 = [_EARSpeechRecognitionResultPackage alloc];
  LOWORD(v29) = *(a1 + 40);
  v25 = [(_EARSpeechRecognitionResultPackage *)v24 _initWithRecognition:v32 preITNRecognition:v33 unrepairedRecognition:v31 recognitionIsFormatted:1 isFinal:*(a1 + 72) audioAnalytics:0 utteranceStart:v30 / 1000.0 latticeMitigatorResult:0 nBestVoiceCommandInterpretations:v34 preITNNBestVoiceCommandInterpretations:0 recognitionPaused:v29 firstResultAfterResume:0 endOfSentenceLikelihood:0 numTokensExcludingTriggerPhrase:v18 voiceCommandDebugInfo:v23 performanceMarkers:?];
  v26 = EARHelpers::VectorToArray<int>(a1 + 11);
  [v25 setCorrectPartialResultIndexList:v26];

  return v25;
}