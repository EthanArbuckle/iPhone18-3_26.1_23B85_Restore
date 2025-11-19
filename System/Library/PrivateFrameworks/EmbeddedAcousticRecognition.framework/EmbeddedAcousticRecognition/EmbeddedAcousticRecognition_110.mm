void fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::DefaultCommonDivisor<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>::AddArc(uint64_t a1, int a2, uint64_t a3)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  v7[0] = *a3;
  v7[1] = v7[0];
  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::operator=(&v8, a3 + 8);
  State = fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::DefaultCommonDivisor<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>::FindState(a1, *(a3 + 48));
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>>::GetMutableState(*(a1 + 120), a2);
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::push_back[abi:ne200100]((MutableState + 56), v7);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_1B584C92C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::SetArcs(uint64_t a1, int a2)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>>::GetMutableState(*(a1 + 120), a2);
  fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>>::SetArcs(*(a1 + 120), MutableState);
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

void fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::FilterArc(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  if (*(std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a5, a2) + 10) == -1)
  {
    fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>::DeterminizeArc(&v6, a2);
  }

  std::__forward_list_base<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::__create_node[abi:ne200100]<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>> const&>();
}

void sub_1B584CAE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::DefaultCommonDivisor<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>::NormArc(uint64_t a1, uint64_t a2)
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
      fst::Plus<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>((a2 + 8), (v7 + 2), &v12);
      *(a2 + 8) = v12;
      *(a2 + 12) = v13;
      if (v6 != &v12)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a2 + 24), __p, v15, (v15 - __p) >> 2);
      }

      if (__p)
      {
        v15 = __p;
        operator delete(__p);
      }

      if (v5 == v7 || *(v7 + 2) != *(v5 + 2))
      {
        v8 = *v7;
        v5 = v7;
      }

      else
      {
        fst::Plus<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>(v5 + 4, (v7 + 2), &v12);
        *(v5 + 4) = v12;
        *(v5 + 20) = v13;
        if (v5 + 2 != &v12)
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v5 + 4, __p, v15, (v15 - __p) >> 2);
        }

        if (__p)
        {
          v15 = __p;
          operator delete(__p);
        }

        if (!fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Member((v5 + 2)))
        {
          *(a1 + 8) |= 4uLL;
        }

        v8 = *v7;
        v9 = *v5;
        *v5 = **v5;
        std::__forward_list_base<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::__delete_node[abi:ne200100](v4, v9);
      }

      v7 = v8;
    }

    while (v8);
    for (i = *v4; i; i = *i)
    {
      fst::Divide<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>((i + 2), v6, 0, &v12);
      *(i + 4) = v12;
      HIDWORD(v11) = HIDWORD(v13);
      *(i + 20) = v13;
      if (i + 2 != &v12)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(i + 4, __p, v15, (v15 - __p) >> 2);
      }

      if (__p)
      {
        v15 = __p;
        operator delete(__p);
      }

      LODWORD(v11) = *(a1 + 144);
      fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Quantize((i + 2), &v12, v11);
      *(i + 4) = v12;
      *(i + 20) = v13;
      if (i + 2 != &v12)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(i + 4, __p, v15, (v15 - __p) >> 2);
      }

      if (__p)
      {
        v15 = __p;
        operator delete(__p);
      }
    }
  }
}

void sub_1B584CD0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>();
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

void sub_1B584CE7C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[8];
    if (v3)
    {
      __p[9] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>::DeterminizeArc(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero((a1 + 2));
  operator new();
}

void sub_1B584CF58(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void fst::Divide<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::Zero();
  LODWORD(__p) = *a1;
  *&v36 = *v8;
  if (*&__p == *&v36)
  {
    v9 = *(a1 + 8);
    LODWORD(__p) = *(a1 + 4);
    LODWORD(v36) = v9;
    v10 = v8[2];
    *&v33 = v8[1];
    v39 = v10;
    if (*&__p == *&v33 && *&v36 == v39)
    {
      v11 = fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::Zero();
      LODWORD(__p) = *a2;
      *&v36 = *v11;
      if (*&__p != *&v36 || (v12 = *(a2 + 8), LODWORD(__p) = *(a2 + 4), LODWORD(v36) = v12, v13 = v11[2], *&v33 = v11[1], v39 = v13, *&__p != *&v33) || *&v36 != v39)
      {

        fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(a4);
        return;
      }

      if (kaldi::g_kaldi_verbose_level < -1)
      {
LABEL_58:
        exit(1);
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Division by zero [0/0] in CompactLatticeWeightTpl", 49);
LABEL_57:
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
      goto LABEL_58;
    }
  }

  v14 = fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::Zero();
  v15 = *a2;
  LODWORD(__p) = *a2;
  *&v36 = *v14;
  if (*&__p == *&v36)
  {
    v16 = *(a2 + 8);
    LODWORD(__p) = *(a2 + 4);
    LODWORD(v36) = v16;
    v17 = v14[2];
    *&v33 = v14[1];
    v39 = v17;
    if (*&__p == *&v33 && *&v36 == v39)
    {
      if (kaldi::g_kaldi_verbose_level < -1)
      {
        goto LABEL_58;
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Error: division by zero in CompactLatticeWeightTpl::Divide()", 60);
      goto LABEL_57;
    }
  }

  v18 = *a1;
  v19 = (LODWORD(v15) & 0x7FFFFFFFu) > 0x7F7FFFFF;
  v20 = NAN;
  if (*a1 != -INFINITY)
  {
    v21 = v18 - v15;
    if (v18 == INFINITY)
    {
      v21 = INFINITY;
    }

    if (!v19)
    {
      v20 = v21;
    }
  }

  v22 = vsub_f32(*(a1 + 4), *(a2 + 4));
  *v23.f32 = v22;
  *&v23.u32[2] = v22;
  v24.i32[0] = vmovn_s32(vceqq_f32(v23, xmmword_1B5AE39F0)).u32[0];
  v24.i32[1] = vmovn_s32(vmvnq_s8(vceqq_f32(v23, v23))).i32[1];
  if (vmaxv_u16(v24))
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "LatticeWeightTpl::Divide, NaN or invalid number produced. ", 58);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "[dividing by zero?]  Returning zero.", 36);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&__p);
    }

    v26 = INFINITY;
    v27 = INFINITY;
  }

  else
  {
    if (v22.f32[1] == INFINITY || v22.f32[0] == INFINITY)
    {
      v26 = INFINITY;
    }

    else
    {
      v26 = v22.f32[0];
    }

    if (v22.f32[0] == INFINITY)
    {
      v27 = INFINITY;
    }

    else
    {
      v27 = v22.f32[1];
    }
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v36, *(a1 + 16), *(a1 + 24), (*(a1 + 24) - *(a1 + 16)) >> 2);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v33, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  v29 = v34 - v33;
  v30 = v36;
  v31 = v37;
  if (v34 - v33 > (v37 - v36))
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Error in Divide (CompactLatticeWeightTpl): cannot divide, length mismatch.", 74);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
    }

    exit(1);
  }

  if (a3 == 1)
  {
    v32 = &v37[-v29];
    if (!memcmp(v33, &v37[-v29], v34 - v33))
    {
      __p = 0;
      v41 = 0;
      v42 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&__p, v30, v31 - v29, (v32 - v30) >> 2);
      *a4 = v20;
      *(a4 + 4) = v26;
      *(a4 + 8) = v27;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a4 + 16, __p, v41, (v41 - __p) >> 2);
      goto LABEL_38;
    }

    if (kaldi::g_kaldi_verbose_level >= -1)
    {
LABEL_53:
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Error in Divide (CompactLatticeWeighTpl): cannot divide, data mismatch.", 71);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
    }

LABEL_54:
    exit(1);
  }

  if (a3)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Cannot divide CompactLatticeWeightTpl with DIVIDE_ANY.", 54);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
    }

    goto LABEL_54;
  }

  if (memcmp(v33, v36, v34 - v33))
  {
    if (kaldi::g_kaldi_verbose_level < -1)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  __p = 0;
  v41 = 0;
  v42 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&__p, &v30[v29], v31, (v31 - &v30[v29]) >> 2);
  *a4 = v20;
  *(a4 + 4) = v26;
  *(a4 + 8) = v27;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a4 + 16, __p, v41, (v41 - __p) >> 2);
LABEL_38:
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }
}

uint64_t fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Quantize@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  LODWORD(a3) = 981467136;
  fst::PairWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::Quantize(a1, &v7, a3);
  v5 = v8;
  *a2 = v7;
  *(a2 + 4) = v5;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2 + 16, *(a1 + 16), *(a1 + 24), (*(a1 + 24) - *(a1 + 16)) >> 2);
}

uint64_t fst::PairWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::Quantize@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *result;
  if ((*result & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v3 = floorf((v3 / *&a3) + 0.5) * *&a3;
  }

  v4 = *(result + 4);
  v5 = vaddv_f32(v4);
  v6 = 0x7F0000007FLL;
  if (v5 != -INFINITY)
  {
    if (v5 == INFINITY)
    {
      v6 = vneg_f32(0x7F0000007FLL);
    }

    else
    {
      v6 = vmul_n_f32(vrndm_f32(vadd_f32(vdiv_f32(v4, vdup_lane_s32(*&a3, 0)), 0x3F0000003F000000)), *&a3);
    }
  }

  *a2 = v3;
  *(a2 + 4) = v6;
  return result;
}

uint64_t fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::DefaultCommonDivisor<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>::FindState(uint64_t a1, uint64_t ***a2)
{
  State = fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::FindState(*(a1 + 184), a2);
  v5 = State;
  if (*(a1 + 152))
  {
    v6 = *(a1 + 160);
    if (0xCCCCCCCCCCCCCCCDLL * ((v6[1] - *v6) >> 3) <= State)
    {
      fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::DefaultCommonDivisor<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>::ComputeDistance(a1, a2, v8);
      std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::push_back[abi:ne200100](v6, v8);
      if (__p)
      {
        v10 = __p;
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_1B584D7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::FindState(void *a1, uint64_t a2)
{
  *v6 = a2;
  v2 = (a1[12] - a1[11]) >> 3;
  Id = fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::FindId(a1 + 1, v6, 1);
  if (Id != v2)
  {
    v4 = *v6;
    if (*v6)
    {
      std::__forward_list_base<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::clear(*v6);
      MEMORY[0x1B8C85350](v4, 0x1020C405F07FB98);
    }
  }

  return Id;
}

void fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::DefaultCommonDivisor<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>::ComputeDistance(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t a3@<X8>)
{
  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(a3);
  for (i = *a2; i; i = *i)
  {
    v7 = *(i + 2);
    v8 = **(a1 + 152);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(*(a1 + 152) + 8) - v8) >> 3) <= v7)
    {
      fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v17);
    }

    else
    {
      v9 = (v8 + 40 * v7);
      v17 = *v9;
      v18 = *(v9 + 1);
      v20 = 0;
      v21 = 0;
      v19 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v19, *(v9 + 2), *(v9 + 3), (*(v9 + 3) - *(v9 + 2)) >> 2);
    }

    fst::Times<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>((i + 2), &v17, v10);
    fst::Plus<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>(a3, v10, &v13);
    *a3 = v13;
    *(a3 + 4) = v14;
    if (&v13 != a3)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a3 + 16), __p, v16, (v16 - __p) >> 2);
    }

    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }

    if (v19)
    {
      v20 = v19;
      operator delete(v19);
    }
  }
}

void sub_1B584D9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a22)
  {
    operator delete(a22);
  }

  v25 = *(v23 + 16);
  if (v25)
  {
    *(v23 + 24) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::FindId(void *a1, void *a2, int a3)
{
  a1[13] = a2;
  v6 = std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::find<int>(a1 + 3, &fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::kCurrentKey);
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
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 3, &v20);
  return v20;
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::find<int>(void *a1, int *a2)
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

    v7 = fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey::operator()(v5, *v6);
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
      if (fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual::operator()(a1 + 6, *(i + 4), *a2))
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

uint64_t fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual::operator()(uint64_t *a1, int a2, int a3)
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
    return std::operator==[abi:ne200100]<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,std::allocator<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>(*v7, v6);
  }

  else
  {
    return 0;
  }
}

uint64_t fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey::operator()(uint64_t a1, unsigned int **a2)
{
  v2 = *(a2 + 8);
  for (i = *a2; i; i = *i)
  {
    v4 = i[2];
    v2 ^= fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Hash(i + 4) ^ (2 * v2) ^ (32 * v4) ^ (v4 >> 59);
  }

  return v2;
}

uint64_t fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Hash(unsigned int *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = __CFADD__(v3, v2);
  v5 = v3 + v2;
  v6 = 0x100000000;
  if (!v4)
  {
    v6 = 0;
  }

  result = (v6 | v5) ^ (32 * *a1);
  v9 = a1 + 4;
  v8 = *(a1 + 2);
  v10 = *(v9 + 1) - v8;
  if (v10)
  {
    v11 = v10 >> 2;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    v12 = 6967;
    do
    {
      v13 = *v8++;
      result += v12 * v13;
      v12 *= 7499;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t std::operator==[abi:ne200100]<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,std::allocator<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>(uint64_t *a1, uint64_t *a2)
{
  while (1)
  {
    a1 = *a1;
    a2 = *a2;
    if (!a1 || a2 == 0)
    {
      break;
    }

    if (*(a1 + 2) == *(a2 + 2) && *(a1 + 4) == *(a2 + 4) && *(a1 + 5) == *(a2 + 5) && *(a1 + 6) == *(a2 + 6))
    {
      v5 = a1[4];
      v6 = a1[5] - v5;
      v7 = a2[4];
      if (v6 == a2[5] - v7 && !memcmp(v5, v7, v6))
      {
        continue;
      }
    }

    return 0;
  }

  return (a1 == 0) ^ (a2 != 0);
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *a1, int *a2)
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

    v7 = fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey::operator()(v5, *v6);
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

  if ((fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual::operator()(a1 + 6, *(v13 + 4), *a2) & 1) == 0)
  {
    goto LABEL_23;
  }

  return v13;
}

uint64_t std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::__construct_one_at_end[abi:ne200100]<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  *(v3 + 4) = *(a2 + 4);
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 16) = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v3 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  *(a1 + 8) = v3 + 40;
  return result;
}

uint64_t std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::__emplace_back_slow_path<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PruneProbsRecord>>(a1, v6);
  }

  v7 = 40 * v2;
  v16 = 0;
  v17 = v7;
  v18 = 40 * v2;
  *v7 = *a2;
  v8 = *(a2 + 4);
  *(v7 + 16) = 0;
  v9 = 40 * v2 + 16;
  *(v9 - 12) = v8;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v9, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  *&v18 = v18 + 40;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::~__split_buffer(&v16);
  return v15;
}

void sub_1B584E2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>::GetMutableState(a1, a2);
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
        fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>>::GC(a1, MutableState, 0, 0.666);
      }
    }
  }

  return v4;
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>::GetMutableState(uint64_t a1, int a2)
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
      std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::reserve((MutableState + 56), 0x80uLL);
      return *(a1 + 80);
    }

    v5 = *(a1 + 80);
    if (!*(v5 + 84))
    {
      *(a1 + 76) = a2;
      fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Reset(v5);
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

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>>::GC(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
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

      MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>::GetMutableState(a1, v23);
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
      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>>::GC(a1, a2, 1, a4);
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

void sub_1B584E83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Reset(uint64_t a1)
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

void sub_1B584E928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>>::SetArcs(uint64_t a1, uint64_t a2)
{
  fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetArcs(a2);
  if (*(a1 + 104) == 1 && (*(a2 + 80) & 4) != 0)
  {
    v4 = *(a2 + 64) - *(a2 + 56) + *(a1 + 112);
    *(a1 + 112) = v4;
    if (v4 > *(a1 + 96))
    {

      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>>::GC(a1, a2, 0, 0.666);
    }
  }
}

void std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>>>>::destroy(a1, a2[1]);
    v4 = a2[8];
    if (v4)
    {
      a2[9] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Start(uint64_t a1)
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

uint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Final@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasFinal(a1, a2) & 1) == 0)
  {
    (*(*a1 + 64))(&v12, a1, a2);
    v7 = v12;
    v8 = v13;
    v10 = 0;
    v11 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v14, v15, (v15 - v14) >> 2);
    fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::SetFinal(a1, a2, &v7);
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

void sub_1B584EBD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
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

void fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>>::GetMutableState(*(a1 + 120), a2);
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

void sub_1B584ECC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::NumArcs(void *a1, uint64_t a2)
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

uint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::NumInputEpsilons(void *a1, uint64_t a2)
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

uint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::NumOutputEpsilons(void *a1, uint64_t a2)
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

void *fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::DeterminizeFst(void *a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D342A8;
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
    fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::SetImpl(a1, v4, 0);
  }

  return a1;
}

uint64_t fst::CacheStateIterator<fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Done(uint64_t a1)
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
    fst::ArcIterator<fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::ArcIterator(&v19, *(a1 + 8), v6);
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

uint64_t *fst::ArcIterator<fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::ArcIterator(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 84);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    (*(**(a2 + 8) + 48))(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::InitArcIterator(uint64_t a1, uint64_t a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::InitArcIterator(a1, a2, a3);
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D34038;
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

void sub_1B584F430(_Unwind_Exception *a1)
{
  std::unique_ptr<quasar::AppleFileCoordinatorData>::~unique_ptr[abi:ne200100](v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void kaldi::quasar::CoreMLClassifier::~CoreMLClassifier(id **this)
{
  *this = &unk_1F2D34640;
  std::unique_ptr<quasar::AppleFileCoordinatorData>::~unique_ptr[abi:ne200100](this + 1);

  quasar::Bitmap::~Bitmap(this);
}

{
  *this = &unk_1F2D34640;
  std::unique_ptr<quasar::AppleFileCoordinatorData>::~unique_ptr[abi:ne200100](this + 1);
  quasar::Bitmap::~Bitmap(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::quasar::CoreMLClassifier::PredictProba(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = *MEMORY[0x1E69E9840];
  result = kaldi::MatrixBase<float>::NumRows(a2);
  if (result >= 1)
  {
    v6 = 0;
    do
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      for (i = 0; i < kaldi::MatrixBase<float>::NumCols(a2); ++i)
      {
        std::to_string(&v51, i);
        v9 = std::string::insert(&v51, 0, "i");
        v10 = *&v9->__r_.__value_.__l.__data_;
        v49 = v9->__r_.__value_.__r.__words[2];
        *__p = v10;
        v9->__r_.__value_.__l.__size_ = 0;
        v9->__r_.__value_.__r.__words[2] = 0;
        v9->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }

        v11 = [MEMORY[0x1E695FE68] featureValueWithDouble:*(*a2 + 4 * v6 * *(a2 + 16) + 4 * i)];
        if (v49 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
        [v7 setObject:v11 forKeyedSubscript:v13];

        if (SHIBYTE(v49) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v14 = objc_alloc(MEMORY[0x1E695FE40]);
      v50 = 0;
      v15 = [v14 initWithDictionary:v7 error:&v50];
      v16 = v50;
      v40 = v15;
      if (!v15)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "CoreML feature provider creation failed: ", 41);
        v29 = [v16 description];
        v30 = v29;
        v31 = [v29 UTF8String];
        v32 = strlen(v31);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v31, v32);

        kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
      }

      v17 = **(a1 + 8);
      v47 = v16;
      v41 = [v17 predictionFromFeatures:v15 error:&v47];
      v39 = v47;

      if (!v41)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "CoreML feature provider creation failed: ", 41);
        v34 = [v39 description];
        v35 = v34;
        v36 = [v34 UTF8String];
        v37 = strlen(v36);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v36, v37);

        kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
      }

      v18 = [v41 featureValueForName:@"classProbability"];
      v42 = [v18 dictionaryValue];

      if (!v42)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "classProbability", 16);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
      }

      if (v6)
      {
        v19 = [v42 count];
        if (v19 != kaldi::MatrixBase<float>::NumCols(a3))
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[classProbability count] == out->NumCols()", 42);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
        }
      }

      else
      {
        v20 = kaldi::MatrixBase<float>::NumRows(a2);
        kaldi::Matrix<float>::Resize(a3, v20, [v42 count], 1, 0);
      }

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v21 = v42;
      v22 = [v21 countByEnumeratingWithState:&v43 objects:v52 count:16];
      if (v22)
      {
        v23 = *v44;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v44 != v23)
            {
              objc_enumerationMutation(v21);
            }

            v25 = *(*(&v43 + 1) + 8 * j);
            v26 = [v21 objectForKeyedSubscript:v25];
            [v26 floatValue];
            *(*a3 + 4 * *(a3 + 16) * v6 + 4 * [v25 intValue]) = v27;
          }

          v22 = [v21 countByEnumeratingWithState:&v43 objects:v52 count:16];
        }

        while (v22);
      }

      result = kaldi::MatrixBase<float>::NumRows(a2);
      ++v6;
    }

    while (v6 < result);
  }

  return result;
}

void sub_1B584FA78(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1B5850010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&__p);
  std::deque<quasar::SearchState<std::string>>::~deque[abi:ne200100]((v25 - 176));
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::deque<quasar::SearchState<std::string>>::emplace_back<int,std::string,int>(void *a1, _DWORD *a2, __int128 *a3, int *a4)
{
  v8 = a1[2];
  v9 = a1[1];
  v10 = 102 * ((v8 - v9) >> 3) - 1;
  if (v8 == v9)
  {
    v10 = 0;
  }

  v11 = a1[5] + a1[4];
  if (v10 == v11)
  {
    std::deque<quasar::SearchState<std::string>>::__add_back_capacity(a1);
    v9 = a1[1];
    v11 = a1[5] + a1[4];
  }

  v12 = *(v9 + 8 * (v11 / 0x66)) + 40 * (v11 % 0x66);
  v13 = *a4;
  *v12 = *a2;
  v14 = (v12 + 8);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v14, *a3, *(a3 + 1));
  }

  else
  {
    v15 = *a3;
    *(v12 + 24) = *(a3 + 2);
    *&v14->__r_.__value_.__l.__data_ = v15;
  }

  *(v12 + 32) = v13;
  v16 = a1[4];
  v17 = a1[5] + 1;
  a1[5] = v17;
  v18 = v16 + v17;
  v19 = a1[1];
  v20 = (v19 + 8 * (v18 / 0x66));
  v21 = *v20 + 40 * (v18 % 0x66);
  if (a1[2] == v19)
  {
    v21 = 0;
  }

  if (v21 == *v20)
  {
    v21 = *(v20 - 1) + 4080;
  }

  return v21 - 40;
}

void *std::deque<quasar::SearchState<std::string>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x66;
  v3 = v1 - 102;
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

void sub_1B58504C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

float std::vector<std::pair<std::string,float>>::__construct_one_at_end[abi:ne200100]<std::string const&,float>(uint64_t a1, __int128 *a2, float *a3)
{
  v5 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
  }

  result = *a3;
  *(v5 + 24) = *a3;
  *(a1 + 8) = v5 + 32;
  return result;
}

uint64_t std::vector<std::pair<std::string,float>>::__emplace_back_slow_path<std::string const&,float>(uint64_t a1, __int128 *a2, _DWORD *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v25 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TextTokenizer::Token>>(a1, v9);
  }

  v10 = 32 * v3;
  v21 = 0;
  v22 = v10;
  v11 = 0;
  v23 = v10;
  v24 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v10, *a2, *(a2 + 1));
    v13 = v22;
    v14 = v23;
    v11 = v24;
  }

  else
  {
    v12 = *a2;
    *(v10 + 16) = *(a2 + 2);
    *v10 = v12;
    v13 = v10;
    v14 = v10;
  }

  *(v10 + 24) = *a3;
  v15 = v14 + 32;
  v16 = *(a1 + 8) - *a1;
  v17 = v13 - v16;
  memcpy((v13 - v16), *a1, v16);
  v18 = *a1;
  *a1 = v17;
  *(a1 + 8) = v15;
  v19 = *(a1 + 16);
  *(a1 + 16) = v11;
  v23 = v18;
  v24 = v19;
  v21 = v18;
  v22 = v18;
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(&v21);
  return v15;
}

void sub_1B58506AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t fst::LabelsToUTF8String<int>(uint64_t *a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  v4 = *a1;
  if (a1[1] == *a1)
  {
LABEL_17:
    std::stringbuf::str();
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = *__p;
    *(a2 + 16) = v13;
    v7 = 1;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      v6 = *(v4 + 4 * v5);
      if ((v6 & 0x80000000) != 0)
      {
        break;
      }

      if (v6 > 0x7F)
      {
        if (v6 > 0x7FF)
        {
          if (WORD1(v6))
          {
            if (v6 >> 21)
            {
              if (v6 >> 26)
              {
                LOBYTE(__p[0]) = (v6 >> 30) | 0xFC;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, __p, 1);
                LOBYTE(__p[0]) = BYTE3(v6) & 0x3F | 0x80;
              }

              else
              {
                LOBYTE(__p[0]) = HIBYTE(*(v4 + 4 * v5)) | 0xF8;
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, __p, 1);
              LOBYTE(__p[0]) = (v6 >> 18) & 0x3F | 0x80;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, __p, 1);
              LOBYTE(__p[0]) = (v6 >> 12) & 0x3F | 0x80;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, __p, 1);
              LOBYTE(__p[0]) = (v6 >> 6) & 0x3F | 0x80;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, __p, 1);
              LOBYTE(__p[0]) = v6 & 0x3F | 0x80;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, __p, 1);
            }

            else
            {
              LOBYTE(__p[0]) = (v6 >> 18) | 0xF0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, __p, 1);
              LOBYTE(__p[0]) = (v6 >> 12) & 0x3F | 0x80;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, __p, 1);
              LOBYTE(__p[0]) = (v6 >> 6) & 0x3F | 0x80;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, __p, 1);
              LOBYTE(__p[0]) = v6 & 0x3F | 0x80;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, __p, 1);
            }
          }

          else
          {
            LOBYTE(__p[0]) = (v6 >> 12) | 0xE0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, __p, 1);
            LOBYTE(__p[0]) = (v6 >> 6) & 0x3F | 0x80;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, __p, 1);
            LOBYTE(__p[0]) = v6 & 0x3F | 0x80;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, __p, 1);
          }
        }

        else
        {
          LOBYTE(__p[0]) = (v6 >> 6) | 0xC0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, __p, 1);
          LOBYTE(__p[0]) = v6 & 0x3F | 0x80;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, __p, 1);
        }
      }

      else
      {
        LOBYTE(__p[0]) = *(v4 + 4 * v5);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, __p, 1);
      }

      ++v5;
      v4 = *a1;
      if (v5 >= (a1[1] - *a1) >> 2)
      {
        goto LABEL_17;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v8 = fst::LogMessage::LogMessage(&v14, __p);
    v9 = fst::cerr(v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "LabelsToUTF8String: Invalid character found: ", 45);
    MEMORY[0x1B8C84C00](v10, v6);
    fst::LogMessage::~LogMessage(&v14);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    v7 = 0;
  }

  v15 = *MEMORY[0x1E69E54E8];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&v19);
  return v7;
}

void sub_1B5850B38(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, int a9, __int16 a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a13, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](va);
  _Unwind_Resume(a1);
}

uint64_t std::string::__insert_with_size<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(std::string *this, uint64_t a2, std::string::value_type *a3, std::string::value_type *a4, std::string::size_type __n_add)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = a2 - this->__r_.__value_.__r.__words[0];
    if (__n_add)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    return v9 + v8;
  }

  v8 = a2 - this;
  if (!__n_add)
  {
    v9 = this;
    return v9 + v8;
  }

  v9 = this;
LABEL_6:
  if (v9 <= a3 && &v9->__r_.__value_.__l.__data_ + size + 1 > a3)
  {
    std::string::__init_with_sentinel[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, a3, a4);
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = __p.__r_.__value_.__l.__size_;
    }

    v12 = std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(this, __n_add, v8, p_p, p_p + v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return v12;
  }

  return std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(this, __n_add, v8, a3, a4);
}

void sub_1B5850CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::string::__init_with_sentinel[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(std::string *this, std::string::value_type *a2, std::string::value_type *a3)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      std::string::push_back(this, *v4++);
    }

    while (v4 != a3);
  }
}

void sub_1B5850D14(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

uint64_t std::vector<quasar::SearchState<std::string>>::__emplace_back_slow_path<int const&,std::string&,float>(uint64_t *a1, _DWORD *a2, __int128 *a3, int *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v8 = 0x666666666666666;
  }

  else
  {
    v8 = v5;
  }

  v24 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PronChoice>>(a1, v8);
  }

  v9 = 40 * v4;
  v21 = 0;
  v22 = v9;
  v23 = v9;
  v10 = *a4;
  *v9 = *a2;
  v11 = (v9 + 8);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v11, *a3, *(a3 + 1));
    v13 = v22;
    v14 = v23;
  }

  else
  {
    v12 = *a3;
    *(v9 + 24) = *(a3 + 2);
    *&v11->__r_.__value_.__l.__data_ = v12;
    v13 = v9;
    v14 = v9;
  }

  *(v9 + 32) = v10;
  *&v23 = v14 + 40;
  v15 = a1[1];
  v16 = v13 + *a1 - v15;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::SearchState<std::string>>,quasar::SearchState<std::string>*>(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  v18 = a1[2];
  v20 = v23;
  *(a1 + 1) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  std::__split_buffer<quasar::PronChoice>::~__split_buffer(&v21);
  return v20;
}

void sub_1B5850EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::PronChoice>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::SearchState<std::string>>,quasar::SearchState<std::string>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
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
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      *(a4 + 32) = *(v6 + 32);
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 40;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::SearchState<std::string>>,quasar::SearchState<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::SearchState<std::string>>,quasar::SearchState<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::PronChoice>,quasar::PronChoice*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::deque<quasar::SearchState<std::string>>::pop_back(void *a1)
{
  v2 = a1[5] - 1;
  v3 = *(a1[1] + 8 * ((v2 + a1[4]) / 0x66uLL)) + 40 * ((v2 + a1[4]) % 0x66uLL);
  if (*(v3 + 31) < 0)
  {
    operator delete(*(v3 + 8));
    v2 = a1[5] - 1;
  }

  a1[5] = v2;

  return std::deque<quasar::SearchState<std::string>>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<quasar::SearchState<std::string>>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 102 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x66)
  {
    a2 = 1;
  }

  if (v5 < 0xCC)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t std::deque<quasar::SearchState<std::string>>::emplace_back<quasar::SearchState<std::string>>(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 102 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<quasar::SearchState<std::string>>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66);
  *v8 = *a2;
  v9 = *(a2 + 8);
  *(v8 + 24) = *(a2 + 24);
  *(v8 + 8) = v9;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(v8 + 32) = *(a2 + 32);
  v10 = a1[4];
  v11 = a1[5] + 1;
  a1[5] = v11;
  v12 = v10 + v11;
  v13 = a1[1];
  v14 = (v13 + 8 * (v12 / 0x66));
  v15 = *v14 + 40 * (v12 % 0x66);
  if (a1[2] == v13)
  {
    v15 = 0;
  }

  if (v15 == *v14)
  {
    v15 = *(v14 - 1) + 4080;
  }

  return v15 - 40;
}

uint64_t std::deque<quasar::SearchState<std::string>>::~deque[abi:ne200100](void *a1)
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
    v6 = &v2[v5 / 0x66];
    v7 = *v6;
    v8 = *v6 + 40 * (v5 % 0x66);
    v9 = v2[(a1[5] + v5) / 0x66] + 40 * ((a1[5] + v5) % 0x66);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 31) < 0)
        {
          operator delete(*(v8 + 8));
          v7 = *v6;
        }

        v8 += 40;
        if (v8 - v7 == 4080)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 51;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_18;
    }

    v12 = 102;
  }

  a1[4] = v12;
LABEL_18:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::~__split_buffer(a1);
}

uint64_t kaldi::GetHmmAsFst(int **a1, uint64_t a2, kaldi::HmmTopology *a3, uint64_t a4, void *a5)
{
  if (*(a4 + 4))
  {
    v9 = *a1;
    v10 = a1[1];
    v11 = v10 - *a1;
    if ((v11 >> 2) >= 2)
    {
      v12 = (v11 >> 2) >> 1;
      v13 = v10 - 1;
      do
      {
        v14 = *v9;
        *v9++ = *v13;
        *v13-- = v14;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v11 = a1[1] - *a1;
  }

  if ((**a2)(a2) != (v11 >> 2))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v46);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "Context size mismatch, ilabel-info [from context FST is ", 56);
    v36 = MEMORY[0x1B8C84C30](v35, a1[1] - *a1);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ", context-dependency object expects ", 36);
    v38 = (**a2)(a2);
    MEMORY[0x1B8C84C00](v37, v38);
    goto LABEL_39;
  }

  v15 = (*a1)[(*(*a2 + 8))(a2)];
  if (!v15)
  {
    if (*(a4 + 4) == 1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v46);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(&v46, "phone == 0.  Possibly you are trying to get a reversed FST with a non-central central position P (i.e. asymmetric context), but forgot to initialize the ContextFst object with P as N-1-P (or it could be a simpler problem)");
    }

    else
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v46);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(&v46, "phone == 0.  Some mismatch happened, or there is a code error.");
    }

LABEL_39:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v46);
  }

  kaldi::HmmTopology::TopologyForPhone(a3, v15);
  v40 = v15;
  v16 = kaldi::HmmTopology::NumPdfClasses(a3, v15);
  std::vector<int>::vector[abi:ne200100](&v44, v16);
  v17 = v44;
  v18 = v45;
  v19 = (v45 - v44) >> 2;
  if (v19 >= 1)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      if (((*(*a2 + 16))(a2, a1, v21, &v17[v20]) & 1) == 0)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
        v25 = *a1;
        if (a1[1] != *a1)
        {
          v26 = 0;
          do
          {
            v27 = MEMORY[0x1B8C84C00](&__p, v25[v26]);
            LOBYTE(v46) = 32;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, &v46, 1);
            ++v26;
            v25 = *a1;
          }

          while (v26 < a1[1] - *a1);
        }

        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v46);
        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "GetHmmAsFst: context-dependency object could not produce ", 57);
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "an answer: pdf-class = ", 23);
        v30 = MEMORY[0x1B8C84C00](v29, v21);
        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " ctx-window = ", 14);
        std::stringbuf::str();
        if ((v42 & 0x80u) == 0)
        {
          v32 = v41;
        }

        else
        {
          v32 = v41[0];
        }

        if ((v42 & 0x80u) == 0)
        {
          v33 = v42;
        }

        else
        {
          v33 = v41[1];
        }

        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v32, v33);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ".  This probably points to either a coding error in some graph-building process, a mismatch of topology with context-dependency object, the wrong FST being passed on a command-line, or something of  that general nature.", 219);
        if (v42 < 0)
        {
          operator delete(v41[0]);
        }

        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v46);
      }

      ++v21;
      v17 = v44;
      v18 = v45;
      v20 += 4;
    }

    while (v21 < ((v45 - v44) >> 2));
    v19 = (v45 - v44) >> 2;
  }

  LODWORD(v46) = v40;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v47, v17, v18, v19);
  if (!a5 || (v22 = std::__hash_table<std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *>,std::__unordered_map_hasher<std::pair<int,std::vector<int>>,std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *>,kaldi::HmmCacheHash,std::equal_to<std::pair<int,std::vector<int>>>,true>,std::__unordered_map_equal<std::pair<int,std::vector<int>>,std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *>,std::equal_to<std::pair<int,std::vector<int>>>,kaldi::HmmCacheHash,true>,std::allocator<std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *>>>::find<std::pair<int,std::vector<int>>>(a5, &v46)) == 0)
  {
    operator new();
  }

  v23 = v22[6];
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  return v23;
}

void sub_1B5851AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::ostringstream::~ostringstream(va);
  JUMPOUT(0x1B5851B00);
}

void sub_1B5851ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a54)
  {
    operator delete(a54);
  }

  if (a50)
  {
    operator delete(a50);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::Reverse<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1, uint64_t *a2, char a3)
{
  (*(*a2 + 224))(a2);
  v6 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v6);
  v7 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v7);
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v8 = fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1);
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
    fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, &v44);
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

void sub_1B58526F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 - 136);
  if (v22)
  {
    *(v20 - 128) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

void fst::PushInLog<(fst::ReweightType)0>(uint64_t a1)
{
  v1 = &unk_1F2D0D2F8;
  v2 = a1;
  fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFst();
}

void sub_1B58528D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(va);
  _Unwind_Resume(a1);
}

void kaldi::GetHmmAsFstSimple(void *a1, uint64_t a2, kaldi::HmmTopology *a3)
{
  v6 = (a1[1] - *a1) >> 2;
  if ((**a2)(a2) == v6)
  {
    v7 = (*(*a2 + 8))(a2);
    kaldi::HmmTopology::TopologyForPhone(a3, *(*a1 + 4 * v7));
    operator new();
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Context size mismatch, ilabel-info [from context FST is ", 56);
  v9 = MEMORY[0x1B8C84C30](v8, (a1[1] - *a1) >> 2);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", context-dependency object expects ", 36);
  v11 = (**a2)(a2);
  MEMORY[0x1B8C84C00](v10, v11);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
}

void sub_1B5852CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::GetHTransducer(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  memset(v34, 0, sizeof(v34));
  v35 = 1065353216;
  std::vector<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*,std::allocator<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*>>::vector[abi:ne200100](&v33, v11);
  memset(v32, 0, sizeof(v32));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v32, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a5 + 8) = *a5;
  v13 = a3[18];
  v12 = a3[19];
  v14 = *a1;
  v15 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  memset(&v31, 0, sizeof(v31));
  if ((a6 & 0x80000000) == 0)
  {
    __x[0] = 0;
    std::vector<int>::resize(&v31, v15, __x);
    v14 = *a1;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  }

  if (v15 >= 2)
  {
    v16 = 0;
    v17 = (v12 - v13) >> 2;
    v18 = 1;
    do
    {
      v19 = v14 + v16;
      v20 = *(v19 + 24);
      if (*(v19 + 32) - v20 == 4 && *v20 <= 0)
      {
        v30 = v17;
        std::vector<int>::push_back[abi:ne200100](a5, &v30);
        operator new();
      }

      *__x = 0;
      v28 = 0;
      v29 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__x, *(v19 + 24), *(v19 + 32), (*(v19 + 32) - *(v19 + 24)) >> 2);
      __p = 0;
      v25 = 0;
      v26 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *__x, v28, (v28 - *__x) >> 2);
      HmmAsFst = kaldi::GetHmmAsFst(&__p, a2, a3, a4, v34);
      if (__p)
      {
        v25 = __p;
        operator delete(__p);
      }

      if ((a6 & 0x80000000) == 0)
      {
        v22 = (*(*a2 + 8))(a2);
        if (*(*__x + 4 * v22) >= a6)
        {
          v30 = v17;
          v31.__begin_[v18] = v17;
          std::vector<int>::push_back[abi:ne200100](a5, &v30);
          LODWORD(v17) = v17 + 1;
        }
      }

      *(v33 + v18) = HmmAsFst;
      if (*__x)
      {
        v28 = *__x;
        operator delete(*__x);
      }

      ++v18;
      v14 = *a1;
      v16 += 24;
    }

    while (v18 < (-1431655765 * ((a1[1] - *a1) >> 3)));
  }

  fst::MakeLoopFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>();
}

void sub_1B58531C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  std::__hash_table<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,true>,std::__unordered_map_equal<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeEquality,kaldi::quasar::AttributeHash,true>,std::allocator<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>>>::~__hash_table(&a27);
  _Unwind_Resume(a1);
}

void kaldi::AddSelfLoops(kaldi::TransitionModel *a1, kaldi::TransitionModel *a2, int a3, void *a4, float a5)
{
  (*(*a4 + 24))(a4);
  if (a3)
  {
    *v60 = a1;
    *&v60[2] = a2;
    fst::MakePrecedingInputSymbolsSameClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,kaldi::TidToTstateMapper>(1, a4, v60);
    v59 = -1;
    v10 = (*(*a4 + 160))(a4);
    std::vector<int>::vector[abi:ne200100](&v57, v10);
    v11 = *(a4[1] + 72) - *(a4[1] + 64);
    if ((v11 >> 3) >= 1)
    {
      v12 = 0;
      v13 = (v11 >> 3) & 0x7FFFFFFF;
      do
      {
        *&v61 = &unk_1F2D04CD8;
        v63 = 0;
        fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a4);
        v14 = a4[1];
        v15 = *(*(v14 + 64) + 8 * v12);
        *(&v61 + 1) = v15;
        v62 = v14 + 8;
        for (i = v63; ; i = ++v63)
        {
          v18 = v15 + 24;
          v17 = *(v15 + 24);
          if (i >= (*(v18 + 8) - v17) >> 4)
          {
            break;
          }

          v19 = (v17 + 16 * i);
          v20 = v19[3];
          v21 = kaldi::TidToTstateMapper::operator()(v60, *v19);
          if (*(v57 + v20) == v59)
          {
            *(v57 + v20) = v21;
          }

          v15 = *(&v61 + 1);
        }

        ++v12;
      }

      while (v12 != v13);
    }

    v22 = (*(*a4 + 24))(a4);
    v23 = v57;
    if (*(v57 + v22) != -1)
    {
      (*(*a4 + 24))(a4);
      v23 = v57;
    }

    if (((v58 - v23) >> 2) < 1)
    {
      goto LABEL_44;
    }

    v24 = 0;
    do
    {
      v25 = *(v23 + v24);
      if (v25 >= 1)
      {
        NonSelfLoopLogProb = kaldi::TransitionModel::GetNonSelfLoopLogProb(a1, v25);
        v27 = (*(*a4 + 32))(a4, v24);
        v28 = -(NonSelfLoopLogProb * a5);
        v29.n128_u32[0] = 2143289344;
        if (v27 != -INFINITY && v28 != -INFINITY)
        {
          v29.n128_u32[0] = 2139095040;
          v30 = v27 == INFINITY || v28 == INFINITY;
          v31 = v28 + v27;
          if (!v30)
          {
            v29.n128_f32[0] = v31;
          }
        }

        (*(*a4 + 184))(a4, v24, v29);
        (*(*a4 + 296))(a4, v24, &v56);
        while (!(*(*v56 + 24))(v56))
        {
          v61 = *(*(*v56 + 32))(v56);
          v32 = INFINITY;
          if (*(&v61 + 2) != INFINITY && v28 != INFINITY)
          {
            v32 = v28 + *(&v61 + 2);
          }

          v35 = v28 == -INFINITY || *(&v61 + 2) == -INFINITY;
          v36 = NAN;
          if (!v35)
          {
            v36 = v32;
          }

          *(&v61 + 2) = v36;
          (*(*v56 + 88))(v56, &v61);
          (*(*v56 + 40))(v56);
        }

        if (v56)
        {
          (*(*v56 + 8))(v56);
        }

        v37 = kaldi::TransitionModel::SelfLoopOf(a1, v25);
        if (v37)
        {
          TransitionLogProb = kaldi::TransitionModel::GetTransitionLogProb(a1, v37);
          *&v61 = v37;
          *(&v61 + 2) = -(TransitionLogProb * a5);
          HIDWORD(v61) = v24;
          (*(*a4 + 208))(a4, v24, &v61);
        }
      }

      ++v24;
      v23 = v57;
    }

    while (v24 < ((v58 - v57) >> 2));
    if (v57)
    {
LABEL_44:
      v58 = v23;
      operator delete(v23);
    }
  }

  else
  {
    v57 = a1;
    v58 = a2;
    fst::MakeFollowingInputSymbolsSameClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,kaldi::TidToTstateMapper>(1, a4, &v57);
    v39 = (*(*a4 + 160))(a4);
    if (v39 >= 1)
    {
      v40 = 0;
      v41 = v39;
      do
      {
        *&v61 = &unk_1F2D04CD8;
        v63 = 0;
        fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a4);
        v42 = a4[1];
        *(&v61 + 1) = *(*(v42 + 64) + 8 * v40);
        v62 = v42 + 8;
        v43 = v63;
        v44 = *(*(&v61 + 1) + 24);
        v45 = *(*(&v61 + 1) + 32) - v44;
        v46 = -1;
        while (v43 < v45 >> 4)
        {
          *v60 = *(v44 + 16 * v43);
          v47 = kaldi::TidToTstateMapper::operator()(&v57, v60[0]);
          if (v46 == -1)
          {
            v46 = v47;
          }

          if (v46 >= 1)
          {
            v48 = kaldi::TransitionModel::GetNonSelfLoopLogProb(a1, v46);
            v49 = NAN;
            if (*&v60[2] != -INFINITY)
            {
              v50 = -(v48 * a5);
              if (v50 != -INFINITY)
              {
                v49 = INFINITY;
                v51 = v50 == INFINITY || *&v60[2] == INFINITY;
                v52 = *&v60[2] + v50;
                if (!v51)
                {
                  v49 = v52;
                }
              }
            }

            *&v60[2] = v49;
            fst::MutableArcIterator<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::SetValue(&v61, v60);
          }

          v43 = ++v63;
          v44 = *(*(&v61 + 1) + 24);
          v45 = *(*(&v61 + 1) + 32) - v44;
        }

        LODWORD(v61) = (*(*a4 + 32))(a4, v40);
        v60[0] = 2139095040;
        if (*&v61 == INFINITY && (v46 - 1) <= 0xFFFFFFFD)
        {
          v53 = kaldi::TransitionModel::SelfLoopOf(a1, v46);
          if (v53)
          {
            v54 = v53;
            v55 = kaldi::TransitionModel::GetTransitionLogProb(a1, v53);
            *&v61 = v54;
            *(&v61 + 2) = -(v55 * a5);
            HIDWORD(v61) = v40;
            (*(*a4 + 208))(a4, v40, &v61);
          }
        }

        ++v40;
      }

      while (v40 != v41);
    }
  }
}

void sub_1B58540E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::SplitToPhones(kaldi::TransitionModel *a1, uint64_t a2, uint64_t *a3)
{
  std::vector<std::vector<int>>::clear[abi:ne200100](a3);
  IsReordered = kaldi::IsReordered(a1, a2);
  v7 = *a2;
  if (*a2 == *(a2 + 8))
  {
    v10 = 1;
    return v10 & 1;
  }

  v8 = IsReordered;
  v9 = 0;
  v30 = 0;
  v31 = 0;
  v10 = 1;
  v32 = 0;
  do
  {
    if (kaldi::TransitionModel::IsFinal(a1, v7[v9]))
    {
      if (v8)
      {
        v11 = (v9 + 1);
        v12 = *a2;
        if (v9 + 1 < (*(a2 + 8) - *a2) >> 2)
        {
          while (kaldi::TransitionModel::IsSelfLoop(a1, v12[v9 + 1]))
          {
            kaldi::TransitionModel::TransitionIdToTransitionState(a1, *(*a2 + 4 * v9));
            kaldi::TransitionModel::TransitionIdToTransitionState(a1, *(*a2 + 4 * v9 + 4));
            v12 = *a2;
            v13 = v9 + 1;
            v14 = v9 + 2 >= (*(a2 + 8) - *a2) >> 2;
            ++v9;
            if (v14)
            {
              v11 = (v13 + 1);
              v9 = v13;
              goto LABEL_18;
            }
          }

          v11 = (v9 + 1);
        }

LABEL_18:
        __p = v11;
        std::vector<long long>::push_back[abi:ne200100](&v30, &__p);
        v15 = v9 + 1;
      }

      else
      {
        v15 = v9 + 1;
        __p = (v9 + 1);
        std::vector<long long>::push_back[abi:ne200100](&v30, &__p);
      }
    }

    else
    {
      v15 = v9 + 1;
      if (v9 + 1 == (*(a2 + 8) - *a2) >> 2)
      {
        __p = (v9 + 1);
        std::vector<long long>::push_back[abi:ne200100](&v30, &__p);
LABEL_12:
        v10 = 0;
        goto LABEL_19;
      }

      v16 = kaldi::TransitionModel::TransitionIdToTransitionState(a1, *(*a2 + 4 * v9));
      v17 = kaldi::TransitionModel::TransitionIdToTransitionState(a1, *(*a2 + 4 * v15));
      if (v16 != v17)
      {
        v18 = kaldi::TransitionModel::TransitionStateToPhone(a1, v16);
        if (v18 != kaldi::TransitionModel::TransitionStateToPhone(a1, v17))
        {
          __p = v15;
          std::vector<long long>::push_back[abi:ne200100](&v30, &__p);
          goto LABEL_12;
        }
      }
    }

LABEL_19:
    v7 = *a2;
    v9 = v15;
  }

  while (v15 < (*(a2 + 8) - *a2) >> 2);
  v19 = v30;
  if (v31 == v30)
  {
    if (v30)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v20 = 0;
    v21 = 0;
    do
    {
      __p = 0;
      v28 = 0;
      v29 = 0;
      std::vector<std::vector<unsigned int>>::push_back[abi:ne200100](a3, &__p);
      if (__p)
      {
        v28 = __p;
        operator delete(__p);
      }

      v22 = kaldi::TransitionModel::TransitionIdToTransitionState(a1, *(*a2 + 4 * v21));
      v23 = kaldi::TransitionModel::TransitionStateToPhone(a1, v22);
      if (**kaldi::HmmTopology::TopologyForPhone(a1, v23) != -1)
      {
        v10 &= kaldi::TransitionModel::TransitionStateToHmmState(a1, v22) == 0;
      }

      v19 = v30;
      v24 = v30[v20];
      if (v21 < v24)
      {
        v25 = 4 * v21;
        do
        {
          std::vector<int>::push_back[abi:ne200100]((a3[1] - 24), (*a2 + v25));
          ++v21;
          v19 = v30;
          v24 = v30[v20];
          v25 += 4;
        }

        while (v21 < v24);
      }

      v21 = v24;
      ++v20;
    }

    while (v20 < (v31 - v19) >> 3);
LABEL_33:
    v31 = v19;
    operator delete(v19);
  }

  return v10 & 1;
}

void sub_1B5854430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::IsReordered(kaldi::TransitionModel *this, int **a2)
{
  v4 = *a2;
  v5 = a2[1];
  if ((v5 - *a2) >= 5)
  {
    v6 = 0;
    do
    {
      v7 = kaldi::TransitionModel::TransitionIdToTransitionState(this, v4[v6]);
      if (v7 != kaldi::TransitionModel::TransitionIdToTransitionState(this, (*a2)[v6 + 1]))
      {
        IsSelfLoop = kaldi::TransitionModel::IsSelfLoop(this, (*a2)[v6]);
        v9 = kaldi::TransitionModel::IsSelfLoop(this, (*a2)[v6 + 1]);
        if (IsSelfLoop)
        {
          return 1;
        }

        if (v9)
        {
          return 0;
        }
      }

      ++v6;
      v4 = *a2;
      v5 = a2[1];
    }

    while (v6 + 1 < (v5 - *a2));
  }

  if (v4 == v5)
  {
    return 0;
  }

  v10 = kaldi::TransitionModel::IsSelfLoop(this, *v4);
  return !v10 & kaldi::TransitionModel::IsSelfLoop(this, *(a2[1] - 1));
}

uint64_t kaldi::ConvertAlignment(kaldi::TransitionModel *a1, kaldi::HmmTopology *a2, uint64_t a3, void *a4, uint64_t *a5, std::vector<unsigned int> *this, int a7, int a8, char a9)
{
  if (a7 == 1 || (a9 & 1) == 0)
  {

    return kaldi::ConvertAlignmentInternal(a1, a2, a3, a4, a7 - 1, a7, a5, this);
  }

  else
  {
    v27 = a7;
    std::vector<std::vector<int>>::vector[abi:ne200100](v28, a7);
    if (a7 < 1)
    {
LABEL_8:
      this->__end_ = this->__begin_;
      std::vector<int>::reserve(this, (a4[1] - *a4) >> 2);
      v19 = (a4[1] - *a4) >> 2;
      v20 = v19 % v27 + v19 / v27;
      if (v20 >= 1)
      {
        v21 = 0;
        v22 = v20 & 0x7FFFFFFF;
        do
        {
          v23 = 24 * (a7 - 1);
          v24 = (a7 - 1) + 1;
          if (a7 >= 1)
          {
            do
            {
              v25 = *(v28[0] + v23);
              if (v21 < ((*(v28[0] + v23 + 8) - v25) >> 2))
              {
                std::vector<int>::push_back[abi:ne200100](&this->__begin_, (v25 + 4 * v21));
              }

              v23 -= 24;
              v18 = v24-- <= 1;
            }

            while (!v18);
          }

          ++v21;
        }

        while (v21 < v22);
      }

      v29 = v28;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v29);
      return 1;
    }

    else
    {
      v16 = 24 * (a7 - 1);
      v17 = (a7 - 1);
      while ((kaldi::ConvertAlignmentInternal(a1, a2, a3, a4, v17, a7, a5, (v28[0] + v16)) & 1) != 0)
      {
        v16 -= 24;
        v18 = v17-- < 1;
        if (v18)
        {
          goto LABEL_8;
        }
      }

      v29 = v28;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v29);
      return 0;
    }
  }
}

void sub_1B585477C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

uint64_t kaldi::ConvertAlignmentInternal(kaldi::TransitionModel *a1, kaldi::HmmTopology *a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t *a7, std::vector<unsigned int> *this)
{
  this->__end_ = this->__begin_;
  std::vector<int>::reserve(this, (*(a4 + 8) - *a4) >> 2);
  v127 = 0;
  v128 = 0;
  v129 = 0;
  if ((kaldi::SplitToPhones(a1, a4, &v127) & 1) == 0)
  {
    v30 = 0;
    goto LABEL_115;
  }

  v121 = a3;
  v114 = this;
  v15 = (v128 - v127) >> 3;
  v16 = 0xAAAAAAAAAAAAAAABLL * v15;
  v17 = -1431655765 * v15;
  std::vector<int>::vector[abi:ne200100](v126, v17);
  if (v16 << 32)
  {
    v18 = 0;
    v19 = 0;
    v20 = v17 <= 1 ? 1 : v17;
    do
    {
      v21 = kaldi::TransitionModel::TransitionIdToPhone(a1, **(v127 + v18));
      *(v126[0] + v19++) = v21;
      v18 += 24;
    }

    while (v20 != v19);
    if (a7)
    {
      v22 = 0;
      v23 = *a7;
      v24 = (a7[1] - *a7) >> 2;
      v25 = v126[0];
      do
      {
        v26 = v25[v22];
        if (v26 < 0 || v26 >= v24 || (v27 = *(v23 + 4 * v26), v27 == -1))
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v112 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "ConvertAlignment: could not map phone ", 38);
          MEMORY[0x1B8C84C00](v112, *(v126[0] + v22));
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
        }

        v25[v22++] = v27;
      }

      while (v20 != v22);
    }
  }

  kaldi::IsReordered(a1, a4);
  std::vector<std::vector<int>>::vector[abi:ne200100](v125, v17);
  v119 = v17;
  if (a6 == 1 && kaldi::HmmTopology::operator==(a1, a2))
  {
    if (v16 >= 1)
    {
      v28 = 0;
      v29 = v16 & 0x7FFFFFFF;
      do
      {
        std::vector<int>::resize((v125[0] + v28), (*(v127 + v28 + 8) - *(v127 + v28)) >> 2);
        v28 += 24;
        --v29;
      }

      while (v29);
    }

LABEL_69:
    v65 = (**v121)(v121);
    v66 = (*(*v121 + 8))(v121);
    v67 = v65 + v16;
    if (v65 + v16 <= -v65)
    {
LABEL_112:
      v30 = 1;
      goto LABEL_113;
    }

    v117 = v65;
    v118 = v65;
    v68 = -v65;
    v69 = v66;
    v113 = v65;
    v116 = v65 + v16;
    v115 = v66;
    while (1)
    {
      v70 = v68 + v69;
      if (v17 > v68 + v69)
      {
        break;
      }

LABEL_109:
      if (v67 == ++v68)
      {
        goto LABEL_112;
      }
    }

    LODWORD(__p[0]) = 0;
    std::vector<int>::vector[abi:ne200100](&v123, v118);
    v71 = v127;
    if (v65 >= 1)
    {
      v72 = 0xAAAAAAAAAAAAAAABLL * ((v128 - v127) >> 3);
      v73 = v126[0];
      v74 = v123;
      v75 = v113;
      v76 = v68;
      do
      {
        if (v72 > v76)
        {
          *v74 = v73[v76];
        }

        ++v76;
        ++v74;
        --v75;
      }

      while (v75);
    }

    v120 = v68;
    v77 = v71 + 24 * v70;
    v78 = v125[0];
    v80 = *v77;
    v79 = *(v77 + 8);
    v81 = (*(*v121 + 8))(v121);
    v82 = kaldi::TransitionModel::TransitionIdToPhone(a1, **v77);
    v83 = *(v123 + v81);
    v84 = kaldi::HmmTopology::TopologyForPhone(a1, v82);
    v85 = kaldi::HmmTopology::TopologyForPhone(a2, v83);
    v87 = *v84;
    v86 = v84[1];
    v88 = *v85;
    if (v86 - *v84 == v85[1] - *v85)
    {
      if (v87 == v86)
      {
        v93 = 0;
LABEL_92:
        v94 = (v78 + 24 * v70);
        if ((v93 & 1) != 0 || v94[1] - *v94 != *(v77 + 8) - *v77)
        {
          kaldi::GetRandomAlignmentForPhone(v121, a2, &v123);
        }

        v95 = kaldi::HmmTopology::NumPdfClasses(a2, v83);
        std::vector<int>::vector[abi:ne200100](&v135, v95);
        if (v95 >= 1)
        {
          v96 = 0;
          for (i = 0; i != v95; ++i)
          {
            if (((*(*v121 + 16))(v121, &v123, i, &v135.__begin_[v96]) & 1) == 0)
            {
              std::ostringstream::basic_ostringstream[abi:ne200100](&v133);
              kaldi::WriteIntegerByteArray<int>(&v133, 0, 0, (v124 - v123) >> 2, v123);
              kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
              v109 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "tree did not succeed in converting phone window ", 48);
              std::stringbuf::str();
              if ((v131 & 0x80u) == 0)
              {
                v110 = v130;
              }

              else
              {
                v110 = v130[0];
              }

              if ((v131 & 0x80u) == 0)
              {
                v111 = v131;
              }

              else
              {
                v111 = v130[1];
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v109, v110, v111);
              if (v131 < 0)
              {
                operator delete(v130[0]);
              }

              kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
            }

            ++v96;
          }
        }

        if ((v79 - v80) << 30)
        {
          v98 = 0;
          if (((v79 - v80) >> 2) <= 1)
          {
            v99 = 1;
          }

          else
          {
            v99 = ((v79 - v80) >> 2);
          }

          do
          {
            v100 = *(*v77 + 4 * v98);
            v101 = kaldi::TransitionModel::TransitionIdToTransitionState(a1, v100);
            v102 = kaldi::TransitionModel::TransitionStateToForwardPdfClass(a1, v101);
            v103 = kaldi::TransitionModel::TransitionStateToSelfLoopPdfClass(a1, v101);
            v104 = kaldi::TransitionModel::TransitionIdToHmmState(a1, v100);
            v105 = kaldi::TransitionModel::TransitionIdToTransitionIndex(a1, v100);
            if (v102 >= (v135.__end_ - v135.__begin_))
            {
              kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "ConvertAlignment: error converting alignment, possibly different topologies?", 76);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
            }

            v106 = v105;
            v107 = kaldi::TransitionModel::TupleToTransitionState(a2, v83, v104, v135.__begin_[v102], v135.__begin_[v103]);
            *&(*v94)[4 * v98++] = kaldi::TransitionModel::PairToTransitionId(a2, v107, v106);
          }

          while (v99 != v98);
        }

        if (v135.__begin_)
        {
          v135.__end_ = v135.__begin_;
          operator delete(v135.__begin_);
        }

        std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(v114, v114->__end_, *v94, v94[1], (v94[1] - *v94) >> 2);
        v17 = v119;
        v65 = v117;
        v67 = v116;
        v68 = v120;
        v69 = v115;
        if (v123)
        {
          v124 = v123;
          operator delete(v123);
        }

        goto LABEL_109;
      }

      while (*v87 == *v88)
      {
        if (*(v87 + 4) != *(v88 + 4))
        {
          break;
        }

        v90 = *(v87 + 8);
        v89 = *(v87 + 16);
        v91 = *(v88 + 8);
        if (v89 - v90 != *(v88 + 16) - v91)
        {
          break;
        }

        while (v90 != v89)
        {
          if (*v90 != *v91 || *(v90 + 4) != *(v91 + 4))
          {
            goto LABEL_91;
          }

          v90 += 8;
          v91 += 8;
        }

        v93 = 0;
        v87 += 32;
        v88 += 32;
        if (v87 == v86)
        {
          goto LABEL_92;
        }
      }
    }

LABEL_91:
    v93 = 1;
    goto LABEL_92;
  }

  std::vector<int>::vector[abi:ne200100](&v133, v17);
  memset(&v135, 0, sizeof(v135));
  v31 = v133;
  if (v16 >= 1)
  {
    v32 = v16 & 0x7FFFFFFF;
    v33 = (v127 + 8);
    v34 = v133;
    do
    {
      *v34++ = (*v33 - *(v33 - 1)) >> 2;
      v33 += 3;
      --v32;
    }

    while (v32);
  }

  v35 = v134 - v31;
  v36 = ((v134 - v31) >> 2);
  std::vector<int>::vector[abi:ne200100](__p, v36);
  std::vector<int>::resize(&v135, v36);
  v37 = v35 >> 2;
  v38 = (v35 >> 2) & 0x7FFFFFFF;
  if ((v35 >> 2) >= 1)
  {
    v39 = 0;
    do
    {
      v40 = kaldi::HmmTopology::MinLength(a2, *(v126[0] + v39));
      *(__p[0] + v39++) = v40;
    }

    while (v38 != v39);
    v41 = 0;
    v42 = v133;
    begin = v135.__begin_;
    v44 = v38;
    do
    {
      v45 = (v41 + a5) / a6;
      v46 = *v42++;
      v41 += v46;
      *begin++ = (v41 + a5) / a6 - v45;
      --v44;
    }

    while (v44);
  }

  v47 = __p[0];
  v48 = 1;
  v49 = v135.__begin_;
LABEL_29:
  while (2)
  {
    v50 = v48;
    if ((v48 & 1) == 0)
    {
      break;
    }

    if (v37 >= 1)
    {
      v51 = 0;
      v48 = 0;
      v52 = 1;
      v53 = 1;
      while (1)
      {
        v54 = v49[v51];
        if (v54 >= v47[v51])
        {
          ++v51;
        }

        else
        {
          if (v51)
          {
            v55 = 0;
            v56 = v51;
            while (1)
            {
              v57 = v56 - 1;
              v58 = v49[(v56 - 1)];
              if (v58 > v47[(v56 - 1)])
              {
                break;
              }

              v55 += v58;
              --v56;
              if (v57 + 1 < 2)
              {
                goto LABEL_37;
              }
            }

            v59 = v56 - 1;
          }

          else
          {
LABEL_37:
            v59 = -1;
            v55 = 0x7FFFFFFF;
          }

          if (v51 + 1 < v37)
          {
            v60 = 0;
            v61 = v52;
            while (1)
            {
              v62 = v49[v61];
              if (v62 > v47[v61])
              {
                break;
              }

              v60 += v62;
              if (v38 == ++v61)
              {
                goto LABEL_47;
              }
            }

            if (v60 < v55)
            {
              v59 = v61;
            }
          }

LABEL_47:
          if (v59 == -1)
          {
            v48 = 1;
            if (v53)
            {
              goto LABEL_55;
            }

            goto LABEL_29;
          }

          v49[v51] = v54 + 1;
          --v49[v59];
          v48 = 1;
          ++v51;
        }

        v53 = v51 < v37;
        ++v52;
        if (v51 == v38)
        {
          goto LABEL_52;
        }
      }
    }

    v53 = 0;
    v48 = 0;
LABEL_52:
    if (!v53)
    {
      continue;
    }

    break;
  }

LABEL_55:
  if (v47)
  {
    __p[1] = v47;
    operator delete(v47);
  }

  if (v50)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Failed to produce suitable phone lengths", 40);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(__p);
    }
  }

  else if (v16 >= 1)
  {
    v63 = 0;
    v64 = 0;
    do
    {
      std::vector<int>::resize((v125[0] + v63), v135.__begin_[v64++]);
      v63 += 24;
    }

    while ((v16 & 0x7FFFFFFF) != v64);
  }

  if (v135.__begin_)
  {
    v135.__end_ = v135.__begin_;
    operator delete(v135.__begin_);
  }

  v17 = v119;
  if (v133)
  {
    v134 = v133;
    operator delete(v133);
  }

  if ((v50 & 1) == 0)
  {
    goto LABEL_69;
  }

  v30 = 0;
LABEL_113:
  __p[0] = v125;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v126[0])
  {
    v126[1] = v126[0];
    operator delete(v126[0]);
  }

LABEL_115:
  __p[0] = &v127;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](__p);
  return v30;
}

void sub_1B5855240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  a70 = &a30;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a70);
  _Unwind_Resume(a1);
}

void kaldi::AddTransitionProbs(kaldi *a1, uint64_t a2, uint64_t a3, float a4, float a5)
{
  v5 = *(*(a3 + 8) + 72) - *(*(a3 + 8) + 64);
  if ((v5 >> 3) >= 1)
  {
    v11 = 0;
    v12 = ((*(a1 + 19) - *(a1 + 18)) >> 2) - 1;
    v13 = (v5 >> 3) & 0x7FFFFFFF;
    do
    {
      v35 = &unk_1F2D04CD8;
      v38 = 0;
      fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a3);
      v14 = *(a3 + 8);
      v15 = *(*(v14 + 64) + 8 * v11);
      v36 = v15;
      v37 = v14 + 8;
      for (i = v38; ; i = ++v38)
      {
        v18 = v15 + 24;
        v17 = *(v15 + 24);
        if (i >= (*(v18 + 8) - v17) >> 4)
        {
          break;
        }

        v34 = *(v17 + 16 * i);
        if (v34.n128_i32[0] >= 1 && v34.n128_u32[0] <= v12)
        {
          kaldi::GetScaledTransitionLogProb(a1, v34.n128_u32[0], a4, a5);
          v28 = NAN;
          if (v34.n128_f32[2] != -INFINITY && v27 != INFINITY)
          {
            v28 = INFINITY;
            v29 = v34.n128_f32[2] == INFINITY || v27 == -INFINITY;
            v30 = v34.n128_f32[2] - v27;
            if (!v29)
            {
              v28 = v30;
            }
          }

          v34.n128_f32[2] = v28;
        }

        else if (v34.n128_u32[0])
        {
          v20 = *a2;
          v21 = *(a2 + 8);
          if (v21 == *a2)
          {
            goto LABEL_30;
          }

          v22 = (v21 - *a2) >> 2;
          do
          {
            v23 = v22 >> 1;
            v24 = &v20[v22 >> 1];
            v26 = *v24;
            v25 = v24 + 1;
            v22 += ~(v22 >> 1);
            if (v26 < v34.n128_i32[0])
            {
              v20 = v25;
            }

            else
            {
              v22 = v23;
            }
          }

          while (v22);
          if (v20 == v21 || v34.n128_i32[0] < *v20)
          {
LABEL_30:
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v33);
            v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "AddTransitionProbs: invalid symbol ", 35);
            v32 = MEMORY[0x1B8C84C00](v31, v34.n128_u32[0]);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " on graph input side.", 21);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v33);
          }
        }

        fst::MutableArcIterator<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::SetValue(&v35, &v34);
        v15 = v36;
      }

      ++v11;
    }

    while (v11 != v13);
  }
}

void kaldi::GetScaledTransitionLogProb(kaldi *this, const kaldi::TransitionModel *a2, float a3, float a4)
{
  v4 = a2;
  if (a3 == a4)
  {
    kaldi::TransitionModel::GetTransitionLogProb(this, a2);
  }

  else if (kaldi::TransitionModel::IsSelfLoop(this, a2))
  {
    kaldi::TransitionModel::GetTransitionLogProb(this, v4);
  }

  else
  {
    v6 = kaldi::TransitionModel::TransitionIdToTransitionState(this, v4);
    kaldi::TransitionModel::GetNonSelfLoopLogProb(this, v6);
    kaldi::TransitionModel::GetTransitionLogProbIgnoringSelfLoops(this, v4);
  }
}

void kaldi::AddTransitionProbs(kaldi *a1, uint64_t a2, float a3, float a4)
{
  v4 = *(*(a2 + 8) + 72) - *(*(a2 + 8) + 64);
  if ((v4 >> 3) >= 1)
  {
    v9 = 0;
    v10 = ((*(a1 + 19) - *(a1 + 18)) >> 2) - 1;
    v11 = (v4 >> 3) & 0x7FFFFFFF;
    do
    {
      v34 = &unk_1F2CFC4E0;
      v37 = 0;
      fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::MutateCheck(a2);
      v12 = *(a2 + 8);
      v13 = *(*(v12 + 64) + 8 * v9);
      v35 = v13;
      v36 = v12 + 8;
      for (i = v37; ; i = ++v37)
      {
        v16 = v13 + 48;
        v15 = *(v13 + 48);
        if (i >= 0xAAAAAAAAAAAAAAABLL * ((*(v16 + 8) - v15) >> 4))
        {
          break;
        }

        v17 = (v15 + 48 * i);
        v28 = *v17;
        v29 = v17[1];
        v31 = 0;
        v32 = 0;
        v30 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v30, v17[2], v17[3], (v17[3] - v17[2]) >> 2);
        v33 = *(v17 + 10);
        v18 = HIDWORD(v29);
        LODWORD(v19) = v29;
        v20 = v30;
        if (v31 != v30)
        {
          v21 = 0;
          do
          {
            v22 = v20[v21];
            if (v22 < 1 || v22 > v10)
            {
              kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
              v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "AddTransitionProbs: invalid symbol ", 35);
              v26 = MEMORY[0x1B8C84C00](v25, v22);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " on lattice input side.", 23);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
            }

            kaldi::GetScaledTransitionLogProb(a1, v20[v21], a3, a4);
            v19 = v19 - v24;
            ++v21;
            v20 = v30;
          }

          while (v21 < v31 - v30);
        }

        v29 = __PAIR64__(v18, LODWORD(v19));
        fst::MutableArcIterator<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>::SetValue(&v34, &v28);
        if (v30)
        {
          v31 = v30;
          operator delete(v30);
        }

        v13 = v35;
      }

      ++v9;
    }

    while (v9 != v11);
  }
}

void sub_1B58557CC(_Unwind_Exception *a1)
{
  v3 = *(v1 - 184);
  if (v3)
  {
    *(v1 - 176) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void kaldi::GetRandomAlignmentForPhone(uint64_t a1, kaldi::HmmTopology *a2, uint64_t *a3)
{
  memset(v5, 0, 24);
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v5, *a3, a3[1], (a3[1] - *a3) >> 2);
  kaldi::GetHmmAsFstSimple(v5, a1, a2);
}

void sub_1B5855B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst((v10 - 160));
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst((v10 - 144));
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst((v10 - 128));
  _Unwind_Resume(a1);
}

void fst::GetInputSymbols<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>(uint64_t a1, char a2, std::vector<unsigned int> *a3)
{
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  v15 = 0;
  (*(*a1 + 128))(a1, &v13);
  while (1)
  {
    if (!v13)
    {
      if (v15 >= v14)
      {
        goto LABEL_27;
      }

LABEL_7:
      v6 = v15;
      goto LABEL_8;
    }

    if ((*(*v13 + 16))(v13))
    {
      break;
    }

    if (!v13)
    {
      goto LABEL_7;
    }

    v6 = (*(*v13 + 24))();
LABEL_8:
    v12 = 0;
    (*(*a1 + 136))(a1, v6, v10);
    while (1)
    {
      if (!v10[0])
      {
        if (v12 >= v10[2])
        {
          goto LABEL_20;
        }

LABEL_14:
        v7 = (v10[1] + 16 * v12);
        goto LABEL_15;
      }

      if ((*(*v10[0] + 24))(v10[0]))
      {
        break;
      }

      if (!v10[0])
      {
        goto LABEL_14;
      }

      v7 = (*(*v10[0] + 32))();
LABEL_15:
      std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v16, v7);
      if (v10[0])
      {
        (*(*v10[0] + 40))(v10[0]);
      }

      else
      {
        ++v12;
      }
    }

    if (v10[0])
    {
      (*(*v10[0] + 8))();
      goto LABEL_22;
    }

LABEL_20:
    if (v11)
    {
      --*v11;
    }

LABEL_22:
    if (v13)
    {
      (*(*v13 + 32))(v13);
    }

    else
    {
      ++v15;
    }
  }

  if (v13)
  {
    (*(*v13 + 8))();
  }

LABEL_27:
  if ((a2 & 1) == 0)
  {
    for (i = v17[0]; i; i = *i)
    {
      v9 = *(i + 7);
      if (v9 <= 0)
      {
        if ((v9 & 0x80000000) == 0)
        {
          LODWORD(v10[0]) = 0;
          std::__tree<int>::__erase_unique<int>(&v16, v10);
          break;
        }

        ++i;
      }
    }
  }

  kaldi::CopySetToVector<int>(&v16, a3);
  std::__sort<std::__less<int,int> &,int *>();
  std::__tree<int>::destroy(&v16, v17[0]);
}

void sub_1B585607C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  fst::ImplToFst<fst::RandGenFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(&a14);
  _Unwind_Resume(a1);
}

uint64_t kaldi::ChangeReorderingOfAlignment(uint64_t this, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  v4 = v3 >> 2;
  if ((v3 >> 2))
  {
    v6 = this;
    LODWORD(v7) = 0;
    v8 = (v3 >> 2);
    while (2)
    {
      v9 = v7;
      v10 = *(v2 + 4 * v7);
      v11 = kaldi::TransitionModel::TransitionIdToTransitionState(v6, v10);
      this = kaldi::TransitionModel::IsSelfLoop(v6, v10);
      v12 = this;
      v13 = v7 + 1;
      while (1)
      {
        v7 = v13;
        v14 = *a2;
        if (v8 == v7)
        {
          v17 = v14 + 4 * v8;
          v18 = *(v14 + 4 * v9);
          *(v14 + 4 * v9) = *(v17 - 4);
          *(v17 - 4) = v18;
          return this;
        }

        this = kaldi::TransitionModel::TransitionIdToTransitionState(v6, *(v14 + 4 * v7));
        if (this != v11)
        {
          break;
        }

        this = kaldi::TransitionModel::IsSelfLoop(v6, *(*a2 + 4 * v7));
        v13 = v7 + 1;
        if ((this & 1) == 0)
        {
          if (v12)
          {
            LODWORD(v7) = v7 + 1;
          }

          break;
        }
      }

      v2 = *a2;
      v15 = *(*a2 + 4 * v9);
      v16 = *a2 + 4 * v7;
      *(*a2 + 4 * v9) = *(v16 - 4);
      *(v16 - 4) = v15;
      if (v7 != v4)
      {
        continue;
      }

      break;
    }
  }

  return this;
}

void fst::MakePrecedingInputSymbolsSameClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,kaldi::TidToTstateMapper>(char a1, uint64_t a2, kaldi::TransitionModel **a3)
{
  memset(&v64, 0, sizeof(v64));
  __x = -1;
  if (a1)
  {
    v5 = (*(*a2 + 24))(a2);
    v6 = v5;
    if (v5 < 0)
    {
      goto LABEL_110;
    }

    std::vector<int>::resize(&v64, (v5 + 1), &__x);
    v64.__begin_[v6] = 0;
  }

  v61 = 0;
  v62 = 0;
  v60 = &v61;
  LODWORD(v45) = 0;
  (*(*a2 + 128))(a2, &v43);
LABEL_5:
  if (!v43)
  {
    if (v45 >= v44)
    {
      goto LABEL_36;
    }

    goto LABEL_10;
  }

  if (!(*(*v43 + 16))(v43))
  {
    if (v43)
    {
      v7 = (*(*v43 + 24))();
LABEL_11:
      v57 = 0;
      (*(*a2 + 136))(a2, v7, v54);
      while (1)
      {
        if (v54[0])
        {
          if ((*(*v54[0] + 24))(v54[0]))
          {
            if (v54[0])
            {
              (*(*v54[0] + 8))();
              goto LABEL_31;
            }

LABEL_29:
            if (v56)
            {
              --*v56;
            }

LABEL_31:
            if (v43)
            {
              (*(*v43 + 32))(v43);
            }

            else
            {
              LODWORD(v45) = v45 + 1;
            }

            goto LABEL_5;
          }

          if (v54[0])
          {
            v8 = (*(*v54[0] + 32))();
            goto LABEL_18;
          }
        }

        else if (v57 >= v55)
        {
          goto LABEL_29;
        }

        v8 = (v54[1] + 16 * v57);
LABEL_18:
        begin = v64.__begin_;
        v11 = v8 + 3;
        v10 = v8[3];
        if (v10 >= v64.__end_ - v64.__begin_)
        {
          std::vector<int>::resize(&v64, v10 + 1, &__x);
          v10 = *v11;
          begin = v64.__begin_;
        }

        v12 = begin[v10];
        v13 = *v8;
        if (v12 == __x)
        {
          v14 = kaldi::TidToTstateMapper::operator()(a3, v13);
          v64.__begin_[*v11] = v14;
        }

        else if (v12 != kaldi::TidToTstateMapper::operator()(a3, v13))
        {
          std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v60, v8 + 3);
        }

        if (v54[0])
        {
          (*(*v54[0] + 40))(v54[0]);
        }

        else
        {
          ++v57;
        }
      }
    }

LABEL_10:
    v7 = v45;
    goto LABEL_11;
  }

  if (v43)
  {
    (*(*v43 + 8))();
  }

LABEL_36:
  if (!v62)
  {
    goto LABEL_109;
  }

  kaldi::ConstIntegerSet<int>::ConstIntegerSet(v54, &v60);
  __p = 0;
  v52 = 0;
  v53 = 0;
  LODWORD(v50) = 0;
  (*(*a2 + 128))(a2, &v48);
  while (2)
  {
    if (!v48)
    {
      if (v50 >= v49)
      {
        goto LABEL_81;
      }

      goto LABEL_43;
    }

    if (!((*v48)[2])(v48))
    {
      if (v48)
      {
        v15 = ((*v48)[3])();
        goto LABEL_44;
      }

LABEL_43:
      v15 = v50;
LABEL_44:
      v47 = 0;
      (*(*a2 + 136))(a2, v15, &v43);
      v16 = v15;
LABEL_45:
      if (v43)
      {
        if ((*(*v43 + 24))(v43))
        {
          if (v43)
          {
            (*(*v43 + 8))();
            goto LABEL_76;
          }

LABEL_74:
          if (v46)
          {
            --*v46;
          }

LABEL_76:
          if (v48)
          {
            ((*v48)[4])(v48);
          }

          else
          {
            LODWORD(v50) = v50 + 1;
          }

          continue;
        }

        if (v43)
        {
          v17 = (*(*v43 + 32))();
          goto LABEL_51;
        }
      }

      else if (v47 >= v45)
      {
        goto LABEL_74;
      }

      v17 = (v44 + 16 * v47);
LABEL_51:
      if (*v17 && kaldi::ConstIntegerSet<int>::count(v54, v17[3]))
      {
        if (v43)
        {
          v18 = (*(*v43 + 48))(v43);
        }

        else
        {
          v18 = v47;
        }

        v19 = v52;
        if (v52 >= v53)
        {
          v21 = (v52 - __p) >> 4;
          v22 = v21 + 1;
          if ((v21 + 1) >> 60)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v23 = v53 - __p;
          if ((v53 - __p) >> 3 > v22)
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
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,unsigned long>>>(&__p, v24);
          }

          v25 = (16 * v21);
          *v25 = v16;
          v25[1] = v18;
          v20 = 16 * v21 + 16;
          v26 = v25 - (v52 - __p);
          memcpy(v26, __p, v52 - __p);
          v27 = __p;
          __p = v26;
          v52 = v20;
          v53 = 0;
          if (v27)
          {
            operator delete(v27);
          }
        }

        else
        {
          *v52 = v16;
          *(v19 + 1) = v18;
          v20 = (v19 + 16);
        }

        v52 = v20;
      }

      if (v43)
      {
        (*(*v43 + 40))(v43);
      }

      else
      {
        ++v47;
      }

      goto LABEL_45;
    }

    break;
  }

  if (v48)
  {
    ((*v48)[1])();
  }

LABEL_81:
  v28 = 0;
  v29 = __p;
  v49 = 0;
  v50 = 0;
  v48 = &v49;
  while (2)
  {
    v30 = v29[4 * v28];
    v47 = 0;
    (*(*a2 + 136))(a2, v30, &v43);
    v31 = *(__p + 2 * v28 + 1);
    if (v43)
    {
      (*(*v43 + 64))(v43, v31);
      if (v43)
      {
        v32 = (*(*v43 + 32))(v43);
        goto LABEL_88;
      }

      v31 = v47;
    }

    else
    {
      v47 = *(__p + 2 * v28 + 1);
    }

    v32 = (v44 + 16 * v31);
LABEL_88:
    *v42 = *v32;
    v33 = kaldi::TidToTstateMapper::operator()(a3, v42[0]);
    v41[0] = v42[3];
    v41[1] = v33;
    v34 = v49;
    if (v49)
    {
      while (2)
      {
        v35 = *(v34 + 7);
        if (v42[3] >= v35)
        {
          if (v35 < v42[3])
          {
            goto LABEL_93;
          }

          v36 = *(v34 + 8);
          if (v33 >= v36)
          {
            if (v36 >= v33)
            {
              goto LABEL_96;
            }

LABEL_93:
            ++v34;
          }
        }

        v34 = *v34;
        if (!v34)
        {
          break;
        }

        continue;
      }
    }

    v37 = (*(*a2 + 200))(a2);
    v38 = v41;
    *(std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__emplace_unique_key_args<std::pair<int,int>,std::piecewise_construct_t const&,std::tuple<std::pair<int,int>&&>,std::tuple<>>(&v48, v41) + 36) = v37;
    v38 = 0;
    v39 = 0;
    v40 = v42[3];
    (*(*a2 + 208))(a2, v37, &v38);
LABEL_96:
    v38 = v41;
    v42[3] = *(std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__emplace_unique_key_args<std::pair<int,int>,std::piecewise_construct_t const&,std::tuple<std::pair<int,int>&&>,std::tuple<>>(&v48, v41) + 36);
    (*(*a2 + 296))(a2, v30, &v38);
    (*(*v38 + 64))(v38, *(__p + 2 * v28 + 1));
    (*(*v38 + 88))(v38, v42);
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }

    if (v43)
    {
      (*(*v43 + 8))(v43);
    }

    else if (v46)
    {
      --*v46;
    }

    ++v28;
    v29 = __p;
    if (v28 < (v52 - __p) >> 4)
    {
      continue;
    }

    break;
  }

  std::__tree<int>::destroy(&v48, v49);
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

  if (v55)
  {
    operator delete(v55);
  }

LABEL_109:
  std::__tree<int>::destroy(&v60, v61);
LABEL_110:
  if (v64.__begin_)
  {
    v64.__end_ = v64.__begin_;
    operator delete(v64.__begin_);
  }
}

void sub_1B5856BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  kaldi::ConstIntegerSet<int>::~ConstIntegerSet(&a27);
  std::__tree<int>::destroy(v30 - 144, *(v30 - 136));
  v32 = *(v30 - 112);
  if (v32)
  {
    *(v30 - 104) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::TidToTstateMapper::operator()(kaldi::TransitionModel **a1, uint64_t a2)
{
  if (a2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 < 1)
  {
    if (!a2)
    {
      return 0;
    }

    goto LABEL_10;
  }

  v4 = *a1;
  if ((((*(*a1 + 19) - *(*a1 + 18)) >> 2) - 1) < a2)
  {
LABEL_10:
    v7 = a1[1];
    v8 = *v7;
    v9 = *(v7 + 1);
    if (v9 == v8)
    {
      goto LABEL_20;
    }

    v10 = v9 - v8;
    do
    {
      v11 = v10 >> 1;
      v12 = &v8[v10 >> 1];
      v14 = *v12;
      v13 = v12 + 1;
      v10 += ~(v10 >> 1);
      if (v14 < a2)
      {
        v8 = v13;
      }

      else
      {
        v10 = v11;
      }
    }

    while (v10);
    if (v8 == v9 || *v8 > a2)
    {
LABEL_20:
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Label ", 6);
      v16 = MEMORY[0x1B8C84C00](v15, a2);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " neither 0, nor a disambiguation symbol ", 40);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "(#transition id = ", 18);
      v19 = MEMORY[0x1B8C84C00](v18, ((*(*a1 + 19) - *(*a1 + 18)) >> 2) - 1);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v19, ").");
      goto LABEL_22;
    }

    return 0;
  }

  if (kaldi::TransitionModel::IsSelfLoop(v4, a2))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v20, "AddSelfLoops: graph already has self-loops.");
LABEL_22:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v20);
  }

  v5 = *a1;

  return kaldi::TransitionModel::TransitionIdToTransitionState(v5, a2);
}

uint64_t kaldi::ConstIntegerSet<int>::ConstIntegerSet(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  kaldi::CopySetToVector<int>(a2, (a1 + 40));
  kaldi::ConstIntegerSet<int>::InitInternal(a1);
  return a1;
}

void sub_1B5856F9C(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  if (v4)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  if (*v2)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void fst::MakeFollowingInputSymbolsSameClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,kaldi::TidToTstateMapper>(int a1, uint64_t a2, kaldi::TransitionModel **a3)
{
  __p = 0;
  v36 = 0;
  v37 = 0;
  LODWORD(v34) = 0;
  (*(*a2 + 128))(a2, &v32);
  while (1)
  {
    if (!v32)
    {
      if (v34 >= v33)
      {
        goto LABEL_41;
      }

LABEL_7:
      v6 = v34;
      goto LABEL_8;
    }

    if ((*(*v32 + 16))(v32))
    {
      break;
    }

    if (!v32)
    {
      goto LABEL_7;
    }

    v6 = (*(*v32 + 24))();
LABEL_8:
    v31 = v6;
    v30 = 0;
    (*(*a2 + 136))(a2);
    v7 = -1;
    while (1)
    {
      if (v26)
      {
        v8 = (*(*v26 + 24))(v26);
        v9 = v26;
        if (v8)
        {
          v12 = 0;
LABEL_23:
          (*(*v9 + 8))(v9);
          goto LABEL_27;
        }

        v10 = (*(*v26 + 32))();
      }

      else
      {
        if (v30 >= v28)
        {
          v12 = 0;
          goto LABEL_25;
        }

        v10 = (v27 + 16 * v30);
      }

      v11 = *v10;
      if (v7 == -1)
      {
        v7 = kaldi::TidToTstateMapper::operator()(a3, v11);
        goto LABEL_18;
      }

      if (v7 != kaldi::TidToTstateMapper::operator()(a3, v11))
      {
        break;
      }

LABEL_18:
      if (v26)
      {
        (*(*v26 + 40))(v26);
      }

      else
      {
        ++v30;
      }
    }

    v12 = 1;
    v9 = v26;
    if (v26)
    {
      goto LABEL_23;
    }

LABEL_25:
    if (v29)
    {
      --*v29;
    }

LABEL_27:
    if (a1 && (v7 + 1) >= 2)
    {
      LODWORD(v26) = (*(*a2 + 32))(a2, v31);
      LODWORD(v25) = 2139095040;
      if (*&v26 == INFINITY)
      {
        v13 = v12;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
LABEL_30:
        std::vector<int>::push_back[abi:ne200100](&__p, &v31);
      }
    }

    else if (v12)
    {
      goto LABEL_30;
    }

    if (v32)
    {
      (*(*v32 + 32))(v32);
    }

    else
    {
      LODWORD(v34) = v34 + 1;
    }
  }

  if (v32)
  {
    (*(*v32 + 8))();
  }

LABEL_41:
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v14 = __p;
  if (v36 == __p)
  {
    goto LABEL_67;
  }

  v15 = 0;
  v16 = 0;
  while (2)
  {
    v17 = v14[v16];
    v33 = v15;
    v30 = 0;
    (*(*a2 + 136))(a2, v17, &v26);
    while (2)
    {
      if (!v26)
      {
        if (v30 >= v28)
        {
          goto LABEL_55;
        }

        goto LABEL_49;
      }

      if (!(*(*v26 + 24))(v26))
      {
        if (v26)
        {
          v18 = (*(*v26 + 32))();
          goto LABEL_50;
        }

LABEL_49:
        v18 = (v27 + 16 * v30);
LABEL_50:
        std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](&v32, v18);
        if (v26)
        {
          (*(*v26 + 40))(v26);
        }

        else
        {
          ++v30;
        }

        continue;
      }

      break;
    }

    if (v26)
    {
      (*(*v26 + 8))();
      goto LABEL_57;
    }

LABEL_55:
    if (v29)
    {
      --*v29;
    }

LABEL_57:
    v15 = v32;
    v19 = v33;
    if (v33 != v32)
    {
      v20 = 0;
      v21 = 0;
      do
      {
        if (*&v15[v20])
        {
          v22 = (*(*a2 + 200))(a2);
          v23 = *&v15[v20 + 12];
          v26 = *&v15[v20];
          LODWORD(v27) = 0;
          HIDWORD(v27) = v23;
          (*(*a2 + 208))(a2, v22, &v26);
          (*(*a2 + 296))(a2, v17, &v25);
          (*(*v25 + 64))(v25, v21);
          v24 = *&v15[v20 + 4];
          LODWORD(v26) = 0;
          HIDWORD(v26) = v24;
          LODWORD(v27) = *&v15[v20 + 8];
          HIDWORD(v27) = v22;
          (*(*v25 + 88))(v25, &v26);
          if (v25)
          {
            (*(*v25 + 8))(v25);
          }

          v15 = v32;
          v19 = v33;
        }

        ++v21;
        v20 += 16;
      }

      while (v21 < (v19 - v15) >> 4);
    }

    ++v16;
    v14 = __p;
    if (v16 < (v36 - __p) >> 2)
    {
      continue;
    }

    break;
  }

  if (v15)
  {
    v33 = v15;
    operator delete(v15);
    v14 = __p;
  }

LABEL_67:
  if (v14)
  {
    v36 = v14;
    operator delete(v14);
  }
}

void sub_1B5857620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *>,std::__unordered_map_hasher<std::pair<int,std::vector<int>>,std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *>,kaldi::HmmCacheHash,std::equal_to<std::pair<int,std::vector<int>>>,true>,std::__unordered_map_equal<std::pair<int,std::vector<int>>,std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *>,std::equal_to<std::pair<int,std::vector<int>>>,kaldi::HmmCacheHash,true>,std::allocator<std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *>>>::find<std::pair<int,std::vector<int>>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4++;
      v6 = v7 + 7853 * v6;
    }

    while (v4 != v5);
  }

  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = v6 + 103049 * *a2;
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v6 + 103049 * *a2;
    if (*&v8 <= v9)
    {
      v12 = v9 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v9;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (*v13)
  {
    do
    {
      v15 = v14[1];
      if (v15 == v9)
      {
        if (std::equal_to<std::pair<int,std::vector<int>>>::operator()[abi:ne200100](a1, (v14 + 2), a2))
        {
          return v14;
        }
      }

      else
      {
        if (v11 > 1)
        {
          if (v15 >= *&v8)
          {
            v15 %= *&v8;
          }
        }

        else
        {
          v15 &= *&v8 - 1;
        }

        if (v15 != v12)
        {
          return 0;
        }
      }

      v14 = *v14;
    }

    while (v14);
  }

  return v14;
}

BOOL std::equal_to<std::pair<int,std::vector<int>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 == *a3 && (v4 = *(a2 + 8), v5 = *(a2 + 16) - v4, v6 = *(a3 + 8), v5 == *(a3 + 16) - v6))
  {
    return memcmp(v4, v6, v5) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t fst::Push<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::ReweightType)0>(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 3) == 1)
  {
    (*(*a2 + 168))(a2, a1);

    fst::Push<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(a2, 0);
  }

  if ((a3 & 2) != 0)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::VectorFst();
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "WARNING");
  v5 = fst::LogMessage::LogMessage(v9, __p);
  v6 = fst::cerr(v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Push: pushing type is set to 0: ", 32);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "pushing neither labels nor weights.", 35);
  fst::LogMessage::~LogMessage(v9);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(*a2 + 168))(a2, a1);
}

void sub_1B5857C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~ImplToFst(&a19);
  fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ImplToFst(&__p);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~ImplToFst((v29 - 128));
  __p = (v29 - 112);
  std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void sub_1B5857D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  fst::LogMessage::~LogMessage(va);
  JUMPOUT(0x1B5857D58);
}

void fst::ShortestDistance<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::VectorFst();
  }

  fst::AutoQueue<int>::AutoQueue<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>(v3, a1);
}

void sub_1B5857FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  a22 = &a17;
  std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::__destroy_vector::operator()[abi:ne200100](&a22);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::~ImplToFst(&a20);
  _Unwind_Resume(a1);
}

void *fst::ComputeTotalWeight<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) <= (*(*a1 + 24))(a1))
    {
      v7 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
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
    v8 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
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
        fst::Times<int,(fst::StringType)0>((v10 + v11), &v21, &v30);
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

        fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(v24, &v30, v14);
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

        fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v27, &v30, v18);
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

void sub_1B585830C(_Unwind_Exception *a1, uint64_t a2, ...)
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

uint64_t fst::Reweight<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>(uint64_t *a1, void *a2, int a3)
{
  result = (*(*a1 + 160))(a1);
  if (!result)
  {
    return result;
  }

  if (a3 == 1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v112, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v112, "ERROR");
    }

    v6 = fst::LogMessage::LogMessage(&v119, &v112);
    v7 = fst::cerr(v6);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Reweight: Reweighting to the final states requires ", 51);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Weight to be right distributive: ", 33);
    v38 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Type();
    v39 = *(v38 + 23);
    if (v39 >= 0)
    {
      v40 = v38;
    }

    else
    {
      v40 = *v38;
    }

    if (v39 >= 0)
    {
      v41 = *(v38 + 23);
    }

    else
    {
      v41 = *(v38 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v40, v41);
    fst::LogMessage::~LogMessage(&v119);
    if (SHIBYTE(v114[0]) < 0)
    {
      operator delete(v112);
    }

    return (*(*a1 + 192))(a1, 4, 4);
  }

  v126 = 0;
  (*(*a1 + 128))(a1, &v124);
  while (1)
  {
    if (v124)
    {
      if ((*(*v124 + 16))(v124))
      {
        goto LABEL_87;
      }

      if (v124)
      {
        v8 = (*(*v124 + 24))(v124);
        goto LABEL_12;
      }
    }

    else if (v126 >= v125)
    {
      goto LABEL_87;
    }

    v8 = v126;
LABEL_12:
    if (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) == v8)
    {
      break;
    }

    v9 = v8;
    v10 = *a2 + 40 * v8;
    v119 = *v10;
    std::list<int>::list(&v120, v10 + 8);
    v123 = *(v10 + 32);
    v11 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
    if (v119)
    {
      v12 = v122 + 1;
    }

    else
    {
      v12 = 0;
    }

    if (*v11)
    {
      v13 = *(v11 + 24) + 1;
    }

    else
    {
      v13 = 0;
    }

    if (v12 != v13)
    {
      goto LABEL_34;
    }

    v14 = v121;
    v15 = (v11 + 16);
    v16 = v119 && v119 == *v11;
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

      if (v14 == &v120)
      {
        goto LABEL_33;
      }

      if (*(v14 + 16) != *(v20 + 16))
      {
        goto LABEL_34;
      }

      v18 = 0;
      v14 = *(v14 + 8);
      v15 = (v20 + 8);
    }

    if (v119)
    {
      goto LABEL_34;
    }

LABEL_33:
    *&v112 = v123;
    LODWORD(v107) = *(v11 + 32);
    if (v123 != *&v107)
    {
LABEL_34:
      (*(*a1 + 296))(a1, v9, &v118);
      while (!(*(*v118 + 24))(v118))
      {
        v21 = (*(*v118 + 32))(v118);
        v112 = *v21;
        LODWORD(v113) = *(v21 + 8);
        std::list<int>::list(v114, v21 + 16);
        v22 = *(v21 + 48);
        v116 = *(v21 + 40);
        v117 = v22;
        if (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) > v22)
        {
          v23 = *a2 + 40 * v22;
          LODWORD(v107) = *v23;
          std::list<int>::list(&v108, v23 + 8);
          v111 = *(v23 + 32);
          v24 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
          if (v107)
          {
            v25 = v110 + 1;
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
            goto LABEL_52;
          }

          v27 = v109;
          v28 = (v24 + 16);
          for (i = 1; ; i = 0)
          {
            v30 = *v28;
            if (i)
            {
              if (!v107)
              {
                break;
              }

              if (v107 != *v24)
              {
                goto LABEL_52;
              }
            }

            if (v27 == &v108)
            {
              break;
            }

            if (*(v27 + 16) != *(v30 + 16))
            {
              goto LABEL_52;
            }

            v27 = *(v27 + 8);
            v28 = (v30 + 8);
          }

          v104 = v111;
          v101 = *(v24 + 32);
          if (v111 != v101)
          {
LABEL_52:
            if (!a3)
            {
              fst::Times<int,(fst::StringType)0>(&v113, &v107, &v127);
              v31 = NAN;
              if (v116 != -INFINITY)
              {
                v31 = NAN;
                if (v111 != -INFINITY)
                {
                  v31 = INFINITY;
                  if (v111 != INFINITY && v116 != INFINITY)
                  {
                    v31 = v116 + v111;
                  }
                }
              }

              fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v101, &v127, v31);
              std::__list_imp<char *>::clear(v128);
              fst::DivideLeft<int,(fst::StringType)0>(&v101, &v119, &v127);
              v33 = NAN;
              if (v103 != -INFINITY)
              {
                if ((LODWORD(v123) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
                {
                  v33 = INFINITY;
                  if (v103 != INFINITY)
                  {
                    v33 = v103 - v123;
                  }
                }

                else
                {
                  v33 = NAN;
                }
              }

              fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v104, &v127, v33);
              std::__list_imp<char *>::clear(v128);
              *&v113 = v104;
              std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v114, v105[1], v105);
              v116 = v106;
              std::__list_imp<char *>::clear(v105);
              std::__list_imp<char *>::clear(v102);
            }

            (*(*v118 + 88))(v118, &v112);
          }

          std::__list_imp<char *>::clear(&v108);
        }

        std::__list_imp<char *>::clear(v114);
        (*(*v118 + 40))(v118);
      }

      if (v118)
      {
        (*(*v118 + 8))(v118);
      }

      if (!a3)
      {
        (*(*a1 + 32))(&v112);
        fst::DivideLeft<int,(fst::StringType)0>(&v112, &v119, &v107);
        v34 = NAN;
        if (v115 != -INFINITY)
        {
          if ((LODWORD(v123) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
          {
            v34 = INFINITY;
            if (v115 != INFINITY)
            {
              v34 = v115 - v123;
            }
          }

          else
          {
            v34 = NAN;
          }
        }

        fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(v99, &v107, v34);
        std::__list_imp<char *>::clear(&v108);
        (*(*a1 + 184))(a1, v9, v99);
        std::__list_imp<char *>::clear(v100);
        std::__list_imp<char *>::clear(&v113);
      }
    }

    std::__list_imp<char *>::clear(&v120);
    if (v124)
    {
      (*(*v124 + 32))(v124);
    }

    else
    {
      ++v126;
    }
  }

  while (1)
  {
LABEL_87:
    if (!v124)
    {
      if (v126 >= v125)
      {
        break;
      }

      goto LABEL_84;
    }

    if ((*(*v124 + 16))(v124))
    {
      break;
    }

    if (!v124)
    {
      goto LABEL_86;
    }

    (*(*v124 + 24))(v124);
LABEL_84:
    if (v124)
    {
      (*(*v124 + 32))(v124);
    }

    else
    {
LABEL_86:
      ++v126;
    }
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) <= (*(*a1 + 24))(a1))
  {
    v35 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
  }

  else
  {
    v35 = *a2 + 40 * (*(*a1 + 24))(a1);
  }

  v119 = *v35;
  std::list<int>::list(&v120, v35 + 8);
  v123 = *(v35 + 32);
  v42 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
  v44 = a1;
  if (v119)
  {
    v45 = v122 + 1;
  }

  else
  {
    v45 = 0;
  }

  if (*v42)
  {
    v46 = *(v42 + 24) + 1;
  }

  else
  {
    v46 = 0;
  }

  if (v45 != v46)
  {
    goto LABEL_123;
  }

  v47 = v121;
  v48 = (v42 + 16);
  v49 = v119 && v119 == *v42;
  v50 = !v49;
  v51 = 1;
  v52 = !v50;
  while (1)
  {
    v53 = *v48;
    if ((v51 & 1) != 0 && !v52)
    {
      break;
    }

    if (v47 == &v120)
    {
      goto LABEL_122;
    }

    if (*(v47 + 16) != *(v53 + 16))
    {
      goto LABEL_123;
    }

    v51 = 0;
    v47 = *(v47 + 8);
    v48 = (v53 + 8);
  }

  if (v119)
  {
    goto LABEL_123;
  }

LABEL_122:
  *&v112 = v123;
  LODWORD(v107) = *(v42 + 32);
  v43.n128_f32[0] = v123;
  if (v123 != *&v107)
  {
LABEL_123:
    v54 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
    if (v119)
    {
      v55 = v122 + 1;
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
      goto LABEL_144;
    }

    v57 = v121;
    v58 = (v54 + 16);
    v59 = v119 && v119 == *v54;
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

      if (v57 == &v120)
      {
        goto LABEL_143;
      }

      if (*(v57 + 16) != *(v63 + 16))
      {
        goto LABEL_144;
      }

      v61 = 0;
      v57 = *(v57 + 8);
      v58 = (v63 + 8);
    }

    if (v119)
    {
      goto LABEL_144;
    }

LABEL_143:
    *&v112 = v123;
    LODWORD(v107) = *(v54 + 32);
    v43.n128_f32[0] = v123;
    if (v123 != *&v107)
    {
LABEL_144:
      v64 = (*(*a1 + 64))(a1, 0x2000000000, 1);
      v65 = *a1;
      if ((v64 & 0x2000000000) != 0)
      {
        v90 = (*(v65 + 24))(a1);
        (*(*a1 + 296))(a1);
        while (!(*(*v127 + 24))(v127))
        {
          v70 = (*(*v127 + 32))(v127);
          v112 = *v70;
          LODWORD(v113) = *(v70 + 8);
          std::list<int>::list(v114, v70 + 16);
          v71 = *(v70 + 48);
          v116 = *(v70 + 40);
          v117 = v71;
          if (a3)
          {
            v72 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
            fst::Divide<int>(v72, &v119, 1, &v101);
            v73 = *(v72 + 32);
            v74 = NAN;
            if (v73 != -INFINITY)
            {
              if ((LODWORD(v123) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
              {
                v74 = INFINITY;
                if (v73 != INFINITY)
                {
                  v74 = v73 - v123;
                }
              }

              else
              {
                v74 = NAN;
              }
            }

            fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v104, &v101, v74);
            std::__list_imp<char *>::clear(v102);
            fst::Times<int,(fst::StringType)0>(&v104, &v113, &v101);
            v78 = NAN;
            if (v106 != -INFINITY)
            {
              v78 = NAN;
              if (v116 != -INFINITY)
              {
                v78 = INFINITY;
                if (v116 != INFINITY && v106 != INFINITY)
                {
                  v78 = v106 + v116;
                }
              }
            }

            fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v107, &v101, v78);
            std::__list_imp<char *>::clear(v102);
            LODWORD(v113) = v107;
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v114, v109, &v108);
            v116 = v111;
            std::__list_imp<char *>::clear(&v108);
            v77 = v105;
          }

          else
          {
            fst::Times<int,(fst::StringType)0>(&v119, &v113, &v104);
            v75 = NAN;
            if (v123 != -INFINITY)
            {
              v75 = NAN;
              if (v116 != -INFINITY)
              {
                v75 = INFINITY;
                if (v116 != INFINITY && v123 != INFINITY)
                {
                  v75 = v123 + v116;
                }
              }
            }

            fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v107, &v104, v75);
            std::__list_imp<char *>::clear(v105);
            LODWORD(v113) = v107;
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v114, v109, &v108);
            v116 = v111;
            v77 = &v108;
          }

          std::__list_imp<char *>::clear(v77);
          (*(*v127 + 88))(v127, &v112);
          std::__list_imp<char *>::clear(v114);
          (*(*v127 + 40))(v127);
        }

        if (v127)
        {
          (*(*v127 + 8))(v127);
        }

        v44 = a1;
        if (a3)
        {
          v80 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
          fst::Divide<int>(v80, &v119, 1, &v107);
          v81 = *(v80 + 32);
          v82 = NAN;
          if (v81 != -INFINITY)
          {
            if ((LODWORD(v123) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
            {
              v82 = INFINITY;
              if (v81 != INFINITY)
              {
                v82 = v81 - v123;
              }
            }

            else
            {
              v82 = NAN;
            }
          }

          fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v112, &v107, v82);
          std::__list_imp<char *>::clear(&v108);
          (*(*a1 + 32))(&v107, a1, v90);
          fst::Times<int,(fst::StringType)0>(&v112, &v107, &v104);
          v86 = NAN;
          if (v115 != -INFINITY)
          {
            v86 = NAN;
            if (v111 != -INFINITY)
            {
              v86 = INFINITY;
              if (v111 != INFINITY && v115 != INFINITY)
              {
                v86 = v115 + v111;
              }
            }
          }

          fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(v95, &v104, v86);
          std::__list_imp<char *>::clear(v105);
          (*(*a1 + 184))(a1, v90, v95);
          std::__list_imp<char *>::clear(v96);
          v83 = &v108;
        }

        else
        {
          (*(*a1 + 32))(&v112, a1, v90);
          fst::Times<int,fst::LogWeightTpl<float>,(fst::GallicType)0>(&v119, &v112, v97);
          (*(*a1 + 184))(a1, v90, v97);
          v83 = &v98;
        }

        std::__list_imp<char *>::clear(v83);
        v85 = &v113;
      }

      else
      {
        v66 = (*(v65 + 200))(a1);
        if (a3)
        {
          v67 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
          fst::Divide<int>(v67, &v119, 1, &v112);
          v68 = *(v67 + 32);
          v69 = NAN;
          if (v68 != -INFINITY)
          {
            if ((LODWORD(v123) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
            {
              v69 = INFINITY;
              if (v68 != INFINITY)
              {
                v69 = v68 - v123;
              }
            }

            else
            {
              v69 = NAN;
            }
          }

          fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v107, &v112, v69);
          std::__list_imp<char *>::clear(&v113);
        }

        else
        {
          LODWORD(v107) = v119;
          std::list<int>::list(&v108, &v120);
          v111 = v123;
        }

        v92 = v107;
        std::list<int>::list(v93, &v108);
        v94 = v111;
        v84 = (*(*a1 + 24))(a1);
        v112 = 0;
        LODWORD(v113) = v92;
        std::list<int>::list(v114, v93);
        v116 = v94;
        v117 = v84;
        std::__list_imp<char *>::clear(v93);
        v44 = a1;
        (*(*a1 + 208))(a1, v66, &v112);
        (*(*v44 + 176))(v44, v66);
        std::__list_imp<char *>::clear(v114);
        v85 = &v108;
      }

      std::__list_imp<char *>::clear(v85);
    }
  }

  v88 = (*(*v44 + 64))(v44, 0x3FFFFFFF0007, 0, v43);
  v89 = fst::ReweightProperties(v88);
  (*(*v44 + 192))(v44, v89, 0x3FFFFFFF0007);
  std::__list_imp<char *>::clear(&v120);
  result = v124;
  if (v124)
  {
    return (*(*v124 + 8))(v124);
  }

  return result;
}

void sub_1B5859598(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v1 + 8));
  std::__list_imp<char *>::clear((v3 - 240));
  std::__list_imp<char *>::clear(v2);
  v5 = *(v3 - 144);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  _Unwind_Resume(a1);
}

void *fst::RemoveWeight<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>(uint64_t a1, uint64_t a2, int a3)
{
  result = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
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
  result = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
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
      fst::Divide<int>(&v37, a2, 1, &v34);
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

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(v44, &v34, v26);
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
    fst::DivideLeft<int,(fst::StringType)0>(&v38, a2, &v46);
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

    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v34, &v46, v30);
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
  fst::DivideLeft<int,(fst::StringType)0>(&v37, a2, &v34);
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

  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(v32, &v34, v31);
  std::__list_imp<char *>::clear(v35);
  (*(*a1 + 184))(a1, v27, v32);
  std::__list_imp<char *>::clear(v33);
  return std::__list_imp<char *>::clear(&v38);
}

void sub_1B5859F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__list_imp<char *>::clear((v13 + 8));
  std::__list_imp<char *>::clear(va);
  _Unwind_Resume(a1);
}

void fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::~VectorFst(void *a1)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(*(*(a1 + 8) + 64) + 8 * a2);
  *a3 = *v4;
  result = std::list<int>::list((a3 + 8), (v4 + 2));
  *(a3 + 32) = v4[8];
  return result;
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 72) - *(v2 + 64)) >> 3;
  return result;
}

uint64_t fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
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

uint64_t fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 88) = a2;
  result = (*(*v4 + 24))(v4);
  *(v4 + 8) = result & 0xCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

void *fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  v8 = *a3;
  std::list<int>::list(v9, (a3 + 2));
  v10 = a3[8];
  fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::SetFinal(v6, a2, &v8);
  return std::__list_imp<char *>::clear(v9);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::AddArc(uint64_t a1, int a2, int *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::AddArc(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0x6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::DeleteStates(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::DeleteStates(v2);
  result = (*(*v2 + 24))(v2);
  v2[1] = (*(v2 + 2) | result) & 4 | 0x156A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::DeleteArcs(*(v6[8] + 8 * a2), a3);
  result = (*(*v6 + 24))(v6);
  v6[1] = v6[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::DeleteArcs(v4, a2);
}

void *fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 64);

  return std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(v4, a2);
}

void *fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 64) + 8 * a2) + 56);

  return std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::reserve(v6, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(v4, a2);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D34910;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2D34860;
  std::string::basic_string[abi:ne200100]<0>(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950003;
  return a1;
}

void sub_1B585AB50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = &unk_1F2D348D8;
  v3 = a1 + 8;
  v2 = a1[8];
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Destroy(v2[v4++]);
      v2 = a1[8];
    }

    while (v4 < (a1[9] - v2) >> 3);
  }

  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  return fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::~FstImpl(a1);
}

void fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::~VectorFstImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::~VectorFstBaseImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::~FstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D34910;
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

uint64_t fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::Write(uint64_t a1)
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

void sub_1B585AE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B585AF4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::operator=(uint64_t a1)
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

void sub_1B585B054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(uint64_t result)
{
  if (*(*(result + 8) + 56) >= 2)
  {
    operator new();
  }

  return result;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D34910;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2D34860;
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
    v6 = fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>(a2);
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
      fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>::AddState();
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

uint64_t fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>(uint64_t a1)
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

void sub_1B585B880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>();
  }

  _Unwind_Resume(exception_object);
}

void *fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  v4 = *(*(a1 + 64) + 8 * a2);
  v7 = *a3;
  std::list<int>::list(v8, (a3 + 2));
  v5 = a3[8];
  v9 = v5;
  *v4 = v7;
  if (v4 != &v7)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v4 + 8), v8[1], v8);
    v5 = v9;
  }

  *(v4 + 32) = v5;
  return std::__list_imp<char *>::clear(v8);
}

void *std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::reserve(void *result, unint64_t a2)
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

void sub_1B585BA08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void sub_1B585BABC(_Unwind_Exception *exception_object)
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

uint64_t fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::AddArc(void *a1, _DWORD *a2)
{
  if (!*a2)
  {
    ++a1[5];
  }

  if (!a2[1])
  {
    ++a1[6];
  }

  return std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::push_back[abi:ne200100](a1 + 7, a2);
}

uint64_t std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::__emplace_back_slow_path<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0> const&>(a1, a2);
  }

  else
  {
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::__construct_one_at_end[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0> const&>(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

void *std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::__construct_one_at_end[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0> const&>(uint64_t a1, uint64_t a2)
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

uint64_t std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::__emplace_back_slow_path<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0> const&>(uint64_t *a1, uint64_t a2)
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
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>*>(a1, *a1, v8, v9);
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

void sub_1B585BD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

unint64_t fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>(a1, a2, a3, 0);
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

    return fst::ComputeProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>(a1, a2, a3, 1);
  }
}

void sub_1B585BE68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
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
      fst::DfsVisit<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>(v7, &v86);
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
              v54 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
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
                v64 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
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
          v24 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
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
            v36 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
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

void sub_1B585C8F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
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

void sub_1B585D194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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
  fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::InitVisit(uint64_t a1, uint64_t a2)
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

unint64_t fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::FinishState(uint64_t a1, int a2, int a3)
{
  (*(**(a1 + 32) + 32))(&v33);
  v6 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
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

void fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D34A88;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

{
  *a1 = &unk_1F2D34A88;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D34AC8;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B585D7FC(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D34AC8;
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

void *std::deque<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>> *,std::allocator<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>> *>>::push_back(void *result, void *a2)
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
    result = std::deque<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>> *,std::allocator<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>> *>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>> *,std::allocator<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>> *>>::__add_back_capacity(void *a1)
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

void sub_1B585DB08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ArcBuffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::SetFromFst<fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
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

void sub_1B585DE00(_Unwind_Exception *exception_object)
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

uint64_t fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::WriteFst<fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>(void *a1, void *a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  *v32 = 0u;
  *v33 = 0u;
  v6 = -1;
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
    v37 = fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>(a1);
    goto LABEL_6;
  }

  v8 = a2 + *(*a2 - 24);
  if ((v8[32] & 5) == 0)
  {
    (*(**(v8 + 5) + 32))(__p);
    v6 = v40;
    if (v40 != -1)
    {
      goto LABEL_3;
    }
  }

  v7 = 1;
LABEL_6:
  v9 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::WriteFstHeader(a1, a2, a3, 2, __p, v9 | 3, v31);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v28 = v6;
  v10 = *(a1[1] + 72) - *(a1[1] + 64);
  if ((v10 >> 3) < 1)
  {
    v12 = 0;
  }

  else
  {
    v29 = v7;
    v11 = 0;
    v12 = (v10 >> 3) & 0x7FFFFFFF;
    do
    {
      (*(*a1 + 32))(__p, a1, v11);
      fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Write(__p);
      std::__list_imp<char *>::clear(&__p[0].__r_.__value_.__l.__size_);
      __p[0].__r_.__value_.__r.__words[0] = (*(*a1 + 40))(a1, v11);
      std::ostream::write();
      v13 = *(*(a1[1] + 64) + 8 * v11);
      v15 = *(v13 + 56);
      v14 = *(v13 + 64);
      if (v14 == v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = *(v13 + 56);
      }

      if (v14 != v15)
      {
        if ((0x6DB6DB6DB6DB6DB7 * ((v14 - v15) >> 3)) <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = 0x6DB6DB6DB6DB6DB7 * ((v14 - v15) >> 3);
        }

        do
        {
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *v16;
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v16[1];
          std::ostream::write();
          fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Write(v16 + 2);
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v16[12];
          std::ostream::write();
          v16 += 14;
          --v17;
        }

        while (v17);
      }

      ++v11;
    }

    while (v11 != v12);
    v7 = v29;
  }

  std::ostream::flush();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v18 = fst::LogMessage::LogMessage(&v30, __p);
    v19 = fst::cerr(v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "VectorFst::Write: write failed: ", 32);
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
LABEL_29:
    fst::LogMessage::~LogMessage(&v30);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    updated = 0;
    goto LABEL_32;
  }

  if (!v7)
  {
    if (v37 == v12)
    {
      updated = 1;
      goto LABEL_32;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v26 = fst::LogMessage::LogMessage(&v30, __p);
    v27 = fst::cerr(v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Inconsistent number of states observed during write", 51);
    goto LABEL_29;
  }

  v37 = v12;
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  updated = fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::UpdateFstHeader(a1, a2, a3, 2, __p, v9 | 3, v31, v28);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

LABEL_32:
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

void sub_1B585E30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a15);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::WriteFstHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>::Type();
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

uint64_t fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::UpdateFstHeader(uint64_t a1, void *a2, uint64_t a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::WriteFstHeader(a1, a2, a3, a4, a5, a6, a7);
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

uint64_t fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>::Type()
{
  {
    operator new();
  }

  return fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>::Type(void)::type;
}

uint64_t fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::WriteFile(fst *a1, uint64_t a2)
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

void *fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::SetFinal(void *a1, int a2, int *a3)
{
  v6 = *(a1[8] + 8 * a2);
  v18 = *v6;
  std::list<int>::list(v19, (v6 + 2));
  v20 = v6[8];
  v15 = *a3;
  std::list<int>::list(v16, (a3 + 2));
  v17 = a3[8];
  fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::SetFinal(a1, a2, &v15);
  std::__list_imp<char *>::clear(v16);
  v7 = (*(*a1 + 24))(a1);
  v12 = v18;
  std::list<int>::list(v13, v19);
  v14 = v20;
  v9 = *a3;
  std::list<int>::list(v10, (a3 + 2));
  v11 = a3[8];
  a1[1] = a1[1] & 4 | fst::SetFinalProperties<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>(v7, &v12, &v9);
  std::__list_imp<char *>::clear(v10);
  std::__list_imp<char *>::clear(v13);
  return std::__list_imp<char *>::clear(v19);
}

void sub_1B585EF5C(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v3 + 8));
  std::__list_imp<char *>::clear((v2 + 8));
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::AddArc(void *a1, int a2, int *a3)
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
  a1[1] = a1[1] & 4 | fst::AddArcProperties<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>(v8, a2, a3, v7);
  v9 = *(a1[8] + 8 * a2);

  return fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::AddArc(v9, a3);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::DeleteStates(uint64_t a1, char **a2)
{
  v3 = a1;
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

  v10 = *(v3 + 64);
  if (*(v3 + 72) == v10)
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
        fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Destroy(*(v10 + 8 * v11));
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
      v10 = *(v3 + 64);
    }

    while (v11 < (*(v3 + 72) - v10) >> 3);
    v13 = v12;
  }

  std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize(v4, v13);
  v14 = *(v3 + 64);
  if (*(v3 + 72) != v14)
  {
    v15 = 0;
    v35 = v3;
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
        v23 = v19 + 16;
        do
        {
          v24 = *(__p[0] + *v22);
          if (v24 == -1)
          {
            v26 = *(v22 - 6);
            v27.i64[0] = v26;
            v27.i64[1] = HIDWORD(v26);
            v17 = vaddq_s64(v17, vceqzq_s64(v27));
          }

          else
          {
            *v22 = v24;
            if (v20 != v21)
            {
              v36 = v17;
              v25 = v19 + 56 * v21;
              *v25 = *(v22 - 6);
              *(v25 + 8) = *(v22 - 10);
              std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v25 + 16), *(v22 - 3), v23);
              *(v25 + 40) = *(v22 - 2);
              *(v25 + 48) = *v22;
              v14 = *v4;
              v17 = v36;
            }

            ++v21;
          }

          ++v20;
          v16 = *(v14 + 8 * v15);
          v28 = 0x6DB6DB6DB6DB6DB7 * ((*(v16 + 64) - *(v16 + 56)) >> 3);
          v22 += 14;
          v23 += 56;
        }

        while (v20 < v28);
        v29 = v17.i64[1];
        v30 = v17.i64[0];
        v3 = v35;
      }

      else
      {
        v21 = 0;
        v28 = 0;
        v29 = *(v16 + 48);
        v30 = *(v16 + 40);
      }

      fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::DeleteArcs(v16, v28 - v21);
      v14 = *(v3 + 64);
      v31 = *(v3 + 72);
      v32 = *(v14 + 8 * v15);
      *(v32 + 40) = v30;
      *(v32 + 48) = v29;
      ++v15;
    }

    while (v15 < (v31 - v14) >> 3);
  }

  v33 = *(v3 + 88);
  if (v33 == -1)
  {
    v34 = __p[0];
    if (!__p[0])
    {
      return;
    }
  }

  else
  {
    v34 = __p[0];
    *(v3 + 88) = *(__p[0] + v33);
  }

  __p[1] = v34;
  operator delete(v34);
}

void sub_1B585F2B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::DeleteArcs(void *a1, int a2)
{
  v3 = *(a1[8] + 8 * a2);
  v3[5] = 0;
  v3[6] = 0;
  v5 = v3[7];
  v4 = v3[8];
  if (v4 != v5)
  {
    do
    {
      v6 = v4 - 56;
      std::__list_imp<char *>::clear((v4 - 40));
      v4 = v6;
    }

    while (v6 != v5);
  }

  v3[8] = v5;
  result = (*(*a1 + 24))(a1);
  a1[1] = a1[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ArcMap<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 224))(a2);
  v4 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v4);
  (*(*a2 + 288))(a2, 0);
  v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  result = (*(*a1 + 24))(a1);
  if (result == -1)
  {
    if ((v5 & 4) != 0)
    {
      v18 = *(*a2 + 192);

      return v18(a2, 4, 4);
    }

    return result;
  }

  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v7 = fst::CountStates<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(a1) != 0;
    (*(*a2 + 248))(a2, v7);
  }

  LODWORD(v30[0]) = 0;
  (*(*a1 + 128))(a1, &v28);
  while (!v28)
  {
    if (SLODWORD(v30[0]) >= v29)
    {
      goto LABEL_14;
    }

LABEL_9:
    (*(*a2 + 200))(a2);
    if (v28)
    {
      (*(*v28 + 32))(v28);
    }

    else
    {
      ++LODWORD(v30[0]);
    }
  }

  if (!(*(*v28 + 16))(v28))
  {
    goto LABEL_9;
  }

  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

LABEL_14:
  v39 = 0;
  (*(*a1 + 128))(a1, &v37);
  while (2)
  {
    if (!v37)
    {
      if (v39 >= v38)
      {
        goto LABEL_53;
      }

      goto LABEL_20;
    }

    if (!(*(*v37 + 16))(v37))
    {
      if (v37)
      {
        v8 = (*(*v37 + 24))(v37);
        goto LABEL_21;
      }

LABEL_20:
      v8 = v39;
LABEL_21:
      if (v8 == (*(*a1 + 24))(a1))
      {
        (*(*a2 + 176))(a2, v8);
      }

      v9 = (*(*a1 + 40))(a1, v8);
      (*(*a2 + 256))(a2, v8, v9);
      v36 = 0;
      (*(*a1 + 136))(a1, v8, &v32);
LABEL_24:
      if (v32)
      {
        if ((*(*v32 + 24))(v32))
        {
          if (v32)
          {
            (*(*v32 + 8))(v32);
            goto LABEL_37;
          }

LABEL_35:
          if (v35)
          {
            --*v35;
          }

LABEL_37:
          *&v11 = (*(*a1 + 32))(a1, v8);
          v32 = 0;
          v33 = v11 | 0xFFFFFFFF00000000;
          fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>::operator()(&v32, &v28);
          if (v28)
          {
            v12 = FLAGS_fst_error_fatal;
            if (FLAGS_fst_error_fatal == 1)
            {
              std::string::basic_string[abi:ne200100]<0>(v25, "FATAL");
              v13 = fst::LogMessage::LogMessage(&v27, v25);
            }

            else
            {
              std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
              v13 = fst::LogMessage::LogMessage(&v24, __p);
            }

            v14 = fst::cerr(v13);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "ArcMap: non-zero arc labels for superfinal arc", 46);
            if (v12)
            {
              fst::LogMessage::~LogMessage(&v27);
              if (v26 < 0)
              {
                v15 = v25[0];
                goto LABEL_46;
              }
            }

            else
            {
              fst::LogMessage::~LogMessage(&v24);
              if (v23 < 0)
              {
                v15 = __p[0];
LABEL_46:
                operator delete(v15);
              }
            }

            (*(*a2 + 192))(a2, 4, 4);
          }

          v19 = v29;
          std::list<int>::list(v20, v30);
          v21 = v31;
          (*(*a2 + 184))(a2, v8, &v19);
          std::__list_imp<char *>::clear(v20);
          std::__list_imp<char *>::clear(v30);
          if (v37)
          {
            (*(*v37 + 32))(v37);
          }

          else
          {
            ++v39;
          }

          continue;
        }

        if (v32)
        {
          v10 = (*(*v32 + 32))(v32);
          goto LABEL_30;
        }
      }

      else if (v36 >= v34)
      {
        goto LABEL_35;
      }

      v10 = (v33 + 16 * v36);
LABEL_30:
      fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>::operator()(v10, &v28);
      (*(*a2 + 208))(a2, v8, &v28);
      std::__list_imp<char *>::clear(v30);
      if (v32)
      {
        (*(*v32 + 40))(v32);
      }

      else
      {
        ++v36;
      }

      goto LABEL_24;
    }

    break;
  }

  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

LABEL_53:
  v16 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v17 = fst::ProjectProperties(v5, 1);
  return (*(*a2 + 192))(a2, v17 & 0x3FFCFFFF0007 | v16, 0x3FFFFFFF0007);
}