void sub_1B5570CEC(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 16));
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>>::NumInputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>>::Expand(a1, a2);
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

  return *(*v5 + 8);
}

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>>::Expand(a1, a2);
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

  return *(*v5 + 16);
}

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ImplToFst(void *result, uint64_t a2, int a3)
{
  *result = &unk_1F2D1CDC0;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>>>::StateIterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = &unk_1F2D1CE70;
  *(a1 + 8) = v3;
  v4 = *(v3 + 136);
  *(a1 + 32) = 0;
  (*(*v4 + 128))(v4, a1 + 16);
  *(a1 + 40) = 0;
  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;
  fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>>>::CheckSuperfinal(a1);
  return a1;
}

void sub_1B557102C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>>>::StateIterator(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>>>::CheckSuperfinal(uint64_t result)
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

      v3 = *(v1 + 144);
      (*(**(v1 + 136) + 32))(&v5);
      v8 = 0;
      v9 = v5;
      std::list<int>::list(v10, v6);
      v11 = v7;
      v12 = -1;
      v4 = fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>::operator()(v3, &v8);
      std::__list_imp<char *>::clear(v10);
      result = std::__list_imp<char *>::clear(v6);
      if (v4)
      {
        *(v2 + 44) = 1;
      }
    }
  }

  return result;
}

void sub_1B5571160(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 16));
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

void *fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D1CE70;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D1CE70;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>>>::Done(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    if (*(a1 + 32) >= *(a1 + 24))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  if (((*(*v2 + 16))(v2) & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = *(a1 + 44) ^ 1;
  return v3 & 1;
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>>>::Next(uint64_t a1)
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

        return fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>>>::CheckSuperfinal(a1);
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

uint64_t fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>>>::Reset(uint64_t a1)
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

  return fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>>>::CheckSuperfinal(a1);
}

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>>::InitArcIterator(uint64_t a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitArcIterator(a1, a2, a3);
}

void *fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D1CB30;
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

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D1C548;
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

uint64_t fst::DeterminizeFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::~DeterminizeFstImpl(void *a1)
{
  *a1 = &unk_1F2D1C2E8;
  v2 = a1[20];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return fst::DeterminizeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~DeterminizeFstImplBase(a1);
}

uint64_t *fst::ArcIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>>>::ArcIterator(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 52);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)2>>::Expand(*(a2 + 8), a3);
  }

  return a1;
}

void sub_1B5571858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v15 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~DeterminizeFstImplBase(v14);
  _Unwind_Resume(a1);
}

void sub_1B55719E4(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x20C4093837F09);
  fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::~ImplToFst((v2 - 48));
  _Unwind_Resume(a1);
}

void fst::DeterminizeFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::~DeterminizeFstImpl(void *a1)
{
  fst::DeterminizeFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::~DeterminizeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::DeterminizeFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0) || (*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0)))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::DeterminizeFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::Expand(uint64_t a1, int a2)
{
  fst::ArcIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::ArcIterator(&v9, *(a1 + 160), a2);
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

void fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::~ArcMapFst(void *a1)
{
  fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::Write(uint64_t a1)
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

void sub_1B5572050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B557214C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::Init(uint64_t a1)
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

void sub_1B5572444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::~ArcMapFstImpl(uint64_t a1)
{
  fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::~ArcMapFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0) || (fst::ProjectProperties(0, 1) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D1D0F0;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D1D0B8;
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
  *a1 = &unk_1F2D1D0F0;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D1D0B8;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

void sub_1B5572664(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D1D0F0;
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

void fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::~CacheBaseImpl(void *a1)
{
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::~CacheBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::~FstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void *fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>::VectorCacheStore(void *a1, _BYTE *a2)
{
  *a1 = *a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a1 + 4;
  a1[5] = a1 + 4;
  a1[6] = 0;
  a1[7] = 0;
  fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>::Clear(a1);
  a1[7] = a1[5];
  return a1;
}

void sub_1B5572830(_Unwind_Exception *a1)
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

void *fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>::Clear(void *a1)
{
  v2 = a1[1];
  if (a1[2] != v2)
  {
    v3 = 0;
    do
    {
      fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Destroy(*(v2 + 8 * v3++));
      v2 = a1[1];
    }

    while (v3 < (a1[2] - v2) >> 3);
  }

  a1[2] = v2;

  return std::__list_imp<char *>::clear(a1 + 4);
}

void fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Destroy(uint64_t a1)
{
  if (a1)
  {
    v2 = (a1 + 80);
    std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::__destroy_vector::operator()[abi:ne200100](&v2);
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((a1 + 40));
    std::__list_imp<char *>::clear((a1 + 8));
    operator delete(a1);
  }
}

void std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::__base_destruct_at_end[abi:ne200100](void *result, uint64_t a2)
{
  v3 = result;
  for (i = result[1]; i != a2; i -= 80)
  {
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((i - 32));
    result = std::__list_imp<char *>::clear((i - 64));
  }

  v3[1] = a2;
  return result;
}

void std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        std::__list_imp<char *>::clear(v2 + 3);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::~CacheBaseImpl(void *a1)
{
  *a1 = &unk_1F2D1D0B8;
  v2 = a1[15];
  if (v2)
  {
    v3 = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>::~VectorCacheStore(v2);
    MEMORY[0x1B8C85350](v3, 0x10A0C407A9BBF1FLL);
  }

  v4 = a1[9];
  if (v4)
  {
    operator delete(v4);
  }

  return fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::~FstImpl(a1);
}

void *fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>::~VectorCacheStore(void *a1)
{
  fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>::Clear(a1);
  std::__list_imp<char *>::clear(a1 + 4);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::~ArcMapFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D1D028;
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

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::~CacheBaseImpl(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::Start(uint64_t a1)
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

void *fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::HasFinal(a1, a2) & 1) == 0)
  {
    v6 = *(a1 + 156);
    if (v6 == 1)
    {
      v8 = *(a1 + 160);
      if (v8 != a2)
      {
        v20 = v8 != -1 && v8 <= a2;
        v21 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v20));
        v46 = 0;
        v47 = v21;
        v48 = -1;
        fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::operator()(&v46, &v51);
        if (v51)
        {
          v24 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Zero();
          v30 = *v24;
          v22 = v31;
          std::list<int>::list(v31, (v24 + 2));
          v32 = v24[8];
          v23 = v33;
          std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v33, (v24 + 10));
          fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::SetFinal(a1, a2, &v30);
        }

        else
        {
          v34 = v52;
          v22 = v35;
          std::list<int>::list(v35, v53);
          v36 = v54;
          v23 = v37;
          std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v37, v55);
          fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::SetFinal(a1, a2, &v34);
        }

        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v23);
        std::__list_imp<char *>::clear(v22);
        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v55);
        v18 = v53;
        goto LABEL_35;
      }

      v9 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::One();
      v38 = *v9;
      v10 = &v38;
      std::list<int>::list(v39, (v9 + 2));
      v40 = v9[8];
      std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v41, (v9 + 10));
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::SetFinal(a1, a2, &v38);
    }

    else
    {
      if (v6 != 2)
      {
        v11 = *(a1 + 160);
        v13 = v11 != -1 && v11 <= a2;
        v14 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v13));
        v46 = 0;
        v47 = v14;
        v48 = -1;
        fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::operator()(&v46, &v51);
        if (v51)
        {
          if (FLAGS_fst_error_fatal == 1)
          {
            std::string::basic_string[abi:ne200100]<0>(&v46, "FATAL");
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(&v46, "ERROR");
          }

          v15 = fst::LogMessage::LogMessage(&v50, &v46);
          v16 = fst::cerr(v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "ArcMapFst: non-zero arc labels for superfinal arc", 49);
          fst::LogMessage::~LogMessage(&v50);
          if (v49 < 0)
          {
            operator delete(v46);
          }

          *(a1 + 8) |= 4uLL;
        }

        v42 = v52;
        std::list<int>::list(v43, v53);
        v44 = v54;
        std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v45, v55);
        fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::SetFinal(a1, a2, &v42);
        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v45);
        std::__list_imp<char *>::clear(v43);
        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v55);
        v18 = v53;
        goto LABEL_35;
      }

      if (*(a1 + 160) == a2)
      {
        v7 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::One();
      }

      else
      {
        v7 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Zero();
      }

      v17 = v7;
      v26 = *v7;
      v10 = &v26;
      std::list<int>::list(v27, (v7 + 2));
      v28 = v17[8];
      std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v29, (v17 + 10));
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::SetFinal(a1, a2, &v26);
    }

    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v10 + 5);
    v18 = v10 + 2;
LABEL_35:
    std::__list_imp<char *>::clear(v18);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Final(a1, a2, a3);
}

void sub_1B5573020(_Unwind_Exception *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v2);
  std::__list_imp<char *>::clear(v1);
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v3 - 96));
  std::__list_imp<char *>::clear((v3 - 128));
  _Unwind_Resume(a1);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::HasFinal(uint64_t a1, int a2)
{
  v2 = *(a1 + 120);
  if (*(v2 + 76) == a2)
  {
    v3 = (v2 + 80);
  }

  else
  {
    v4 = a2 + 1;
    v6 = v2 + 8;
    v5 = *(v2 + 8);
    if (v4 >= (*(v6 + 8) - v5) >> 3)
    {
      return 0;
    }

    v3 = (v5 + 8 * v4);
  }

  v7 = *v3;
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 104);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  *(v7 + 104) = v8 | 8;
  return 1;
}

void *fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::operator()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 12) == -1)
  {
    v28 = *(a1 + 8);
    v27[16] = 2139095040;
    if (v28 == INFINITY)
    {
      v11 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Zero();
      v21 = *v11;
      v6 = v22;
      std::list<int>::list(v22, (v11 + 2));
      v23 = v11[8];
      std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v24, (v11 + 10));
      fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::GallicArc(a2, 0, 0, &v21, -1);
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v24);
      return std::__list_imp<char *>::clear(v6);
    }

    v7 = fst::StringWeight<int,(fst::StringType)2>::One();
    v25 = *v7;
    v6 = v26;
    std::list<int>::list(v26, (v7 + 2));
    fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::GallicWeight(v27, &v25, *(a1 + 8));
    v8 = v27;
    fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::GallicArc(a2, 0, 0, v27, -1);
    goto LABEL_7;
  }

  v5 = *a1;
  v4 = *(a1 + 4);
  if (!v4)
  {
    v9 = fst::StringWeight<int,(fst::StringType)2>::One();
    v18 = *v9;
    v6 = v19;
    std::list<int>::list(v19, (v9 + 2));
    fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::GallicWeight(v20, &v18, *(a1 + 8));
    v10 = *(a1 + 12);
    v8 = v20;
    fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::GallicArc(a2, v5, v5, v20, v10);
LABEL_7:
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v8 + 5);
    std::__list_imp<char *>::clear(v8 + 1);
    return std::__list_imp<char *>::clear(v6);
  }

  fst::StringWeight<int,(fst::StringType)2>::StringWeight(&v13, v4);
  fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::GallicWeight(&v15, &v13, *(a1 + 8));
  fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::GallicArc(a2, v5, v5, &v15, *(a1 + 12));
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v17);
  std::__list_imp<char *>::clear(v16);
  v6 = &v14;
  return std::__list_imp<char *>::clear(v6);
}

void sub_1B5573314(_Unwind_Exception *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v2 + 40));
  std::__list_imp<char *>::clear(v1);
  _Unwind_Resume(a1);
}

void *fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>>>::GetMutableState(*(a1 + 120), a2);
  v6 = *a3;
  std::list<int>::list(v7, (a3 + 2));
  v8 = a3[8];
  std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v9, (a3 + 10));
  *MutableState = v6;
  if (MutableState == &v6)
  {
    *(MutableState + 32) = v8;
  }

  else
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((MutableState + 8), v7[1], v7);
    *(MutableState + 32) = v8;
    std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,void *>,std::__list_const_iterator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,void *>>((MutableState + 40), v9[1], v9);
  }

  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v9);
  result = std::__list_imp<char *>::clear(v7);
  *(MutableState + 104) |= 9u;
  return result;
}

uint64_t fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::GallicWeight(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  std::list<int>::list((a1 + 8), (a2 + 2));
  *(a1 + 32) = a2[8];
  std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list((a1 + 40), (a2 + 10));
  return a1;
}

{
  *a1 = *a2;
  std::list<int>::list((a1 + 8), (a2 + 2));
  *(a1 + 32) = a2[8];
  std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list((a1 + 40), (a2 + 10));
  return a1;
}

uint64_t fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::One()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::One(void)::one;
}

uint64_t fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Zero()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Zero(void)::zero;
}

void *fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 120);
  if (*(v3 + 76) == a2)
  {
    v4 = (v3 + 80);
  }

  else
  {
    v5 = a2 + 1;
    v7 = v3 + 8;
    v6 = *(v3 + 8);
    if (v5 >= (*(v7 + 8) - v6) >> 3)
    {
      v8 = 0;
      return fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Final(v8, a3);
    }

    v4 = (v6 + 8 * v5);
  }

  v8 = *v4;
  return fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Final(v8, a3);
}

uint64_t fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::GallicArc(uint64_t a1, int a2, int a3, _DWORD *a4, int a5)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = *a4;
  std::list<int>::list((a1 + 16), (a4 + 2));
  *(a1 + 40) = a4[8];
  std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list((a1 + 48), (a4 + 10));
  *(a1 + 72) = a5;
  return a1;
}

uint64_t fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::GallicWeight(uint64_t a1, int *a2, float a3)
{
  v6 = *a2;
  std::list<int>::list(v7, (a2 + 2));
  fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>::GallicWeight(&v8, &v6, a3);
  fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::UnionWeight(a1, &v8);
  std::__list_imp<char *>::clear(v9);
  std::__list_imp<char *>::clear(v7);
  return a1;
}

void sub_1B5573788(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::UnionWeight(uint64_t a1, int *a2)
{
  *a1 = *a2;
  v4 = a2 + 2;
  std::list<int>::list((a1 + 8), (a2 + 2));
  *(a1 + 32) = a2[8];
  *(a1 + 40) = a1 + 40;
  *(a1 + 48) = a1 + 40;
  *(a1 + 56) = 0;
  v5 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>::NoWeight();
  v6 = *a2;
  if (*a2)
  {
    v7 = *(a2 + 3) + 1;
  }

  else
  {
    v7 = 0;
  }

  if (*v5)
  {
    v8 = *(v5 + 24) + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v7 == v8)
  {
    v9 = (a2 + 4);
    v10 = (v5 + 16);
    for (i = 1; ; i = 0)
    {
      v12 = *v9;
      v13 = *v10;
      if (i)
      {
        if (!v6)
        {
          break;
        }

        if (v6 != *v5)
        {
          return a1;
        }
      }

      if (v12 == v4)
      {
        break;
      }

      if (*(v12 + 16) != *(v13 + 16))
      {
        return a1;
      }

      v9 = (v12 + 8);
      v10 = (v13 + 8);
    }

    if (*(a2 + 8) == *(v5 + 32))
    {
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__create_node[abi:ne200100]<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2> const&>();
    }
  }

  return a1;
}

void sub_1B55738D4(_Unwind_Exception *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v2);
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>::NoWeight()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>::NoWeight(void)::no_weight;
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)2>,fst::TropicalWeightTpl<float>>::NoWeight()
{
  {
    operator new();
  }

  return fst::ProductWeight<fst::StringWeight<int,(fst::StringType)2>,fst::TropicalWeightTpl<float>>::NoWeight(void)::no_weight;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)2>,fst::TropicalWeightTpl<float>>::NoWeight()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::StringWeight<int,(fst::StringType)2>,fst::TropicalWeightTpl<float>>::NoWeight(void)::no_weight;
}

void sub_1B5573B5C(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  MEMORY[0x1B8C85350](v1, 0x1020C4067685F46);
  _Unwind_Resume(a1);
}

uint64_t fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>>::GetMutableState(a1, a2);
  v4 = MutableState;
  if (*(a1 + 88) == 1)
  {
    v5 = *(MutableState + 104);
    if ((v5 & 4) == 0)
    {
      *(MutableState + 104) = v5 | 4;
      v6 = *(MutableState + 88) - *(MutableState + 80) + *(a1 + 112) + 112;
      *(a1 + 112) = v6;
      *(a1 + 104) = 1;
      if (v6 > *(a1 + 96))
      {
        fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>>>::GC(a1, MutableState, 0, 0.666);
      }
    }
  }

  return v4;
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>>::GetMutableState(uint64_t a1, int a2)
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
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>::GetMutableState(a1, 0);
      *(a1 + 80) = MutableState;
      *(MutableState + 104) |= 4u;
      std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::reserve((MutableState + 80), 0x80uLL);
      return *(a1 + 80);
    }

    v5 = *(a1 + 80);
    if (!*(v5 + 108))
    {
      *(a1 + 76) = a2;
      fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Reset(v5);
      result = *(a1 + 80);
      *(result + 104) |= 4u;
      return result;
    }

    *(v5 + 104) &= ~4u;
    *(a1 + 72) = 0;
  }

  v6 = a2 + 1;

  return fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>::GetMutableState(a1, v6);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>>>::GC(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
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

      MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>>::GetMutableState(a1, v23);
      v25 = *(a1 + 112);
      if (v25 > v20 && !*(MutableState + 108))
      {
        if (a3)
        {
          if (MutableState != a2)
          {
            v26 = *(MutableState + 104);
LABEL_19:
            if ((v26 & 4) != 0)
            {
              v27 = *(MutableState + 88) - *(MutableState + 80) + 112;
              FstCheck(v27 <= v25, "(size) <= (cache_size_)", "../libquasar/libkaldi/tools/openfst/src/include/fst/cache.h", 730);
              *(a1 + 112) -= v27;
            }

            fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>>::Delete(a1);
            v21 = *(a1 + 56);
            continue;
          }
        }

        else
        {
          v26 = *(MutableState + 104);
          if ((v26 & 8) == 0 && MutableState != a2)
          {
            goto LABEL_19;
          }
        }
      }

      *(MutableState + 104) &= ~8u;
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
      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>>>::GC(a1, a2, 1, a4);
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

void sub_1B5574174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>::GetMutableState(uint64_t a1, int a2)
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

void *fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Reset(uint64_t a1)
{
  v2 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Zero();
  v3 = v2;
  *a1 = *v2;
  if (v2 == a1)
  {
    *(a1 + 32) = *(v2 + 32);
  }

  else
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a1 + 8), *(v2 + 16), v2 + 8);
    *(a1 + 32) = *(v3 + 32);
    std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,void *>,std::__list_const_iterator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,void *>>((a1 + 40), *(v3 + 48), v3 + 40);
  }

  v6 = *(a1 + 80);
  v5 = (a1 + 80);
  v4 = v6;
  v5[3] = 0;
  *(v5 - 2) = 0;
  *(v5 - 1) = 0;

  return std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::__base_destruct_at_end[abi:ne200100](v5, v4);
}

uint64_t fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::CacheState(uint64_t a1)
{
  v2 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Zero();
  *a1 = *v2;
  std::list<int>::list((a1 + 8), (v2 + 2));
  *(a1 + 32) = v2[8];
  std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list((a1 + 40), (v2 + 10));
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 64) = 0u;
  return a1;
}

void *std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B5574484(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::construct[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4> const&,0>(a1, a4, v7);
      v7 += 80;
      a4 = v12 + 80;
      v12 += 80;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v5 + 48));
      std::__list_imp<char *>::clear((v5 + 16));
      v5 += 80;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void *std::allocator_traits<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::construct[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4> const&,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *(a2 + 8) = *(a3 + 8);
  std::list<int>::list((a2 + 16), a3 + 16);
  *(a2 + 40) = *(a3 + 40);
  result = std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list((a2 + 48), a3 + 48);
  *(a2 + 72) = *(a3 + 72);
  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void *std::_AllocatorDestroyRangeReverse<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>*>::operator()[abi:ne200100](void *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 80)
  {
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v3 - 32));
    result = std::__list_imp<char *>::clear((v3 - 64));
  }

  return result;
}

void **std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::~__split_buffer(void **a1)
{
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::__destruct_at_end[abi:ne200100](a1, a1[1]);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::__destruct_at_end[abi:ne200100](void *result, uint64_t a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v4[2] = v2 - 80;
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v2 - 32));
      result = std::__list_imp<char *>::clear((v2 - 64));
      v2 = v4[2];
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 == a2)
  {
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a1 + 8), *(a2 + 16), a2 + 8);
    *(a1 + 32) = *(a2 + 32);
    std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,void *>,std::__list_const_iterator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,void *>>((a1 + 40), *(a2 + 48), a2 + 40);
  }

  return a1;
}

void *std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,void *>,std::__list_const_iterator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,void *>>(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  if (a2 != a3 && v6 != a1)
  {
    do
    {
      *(v6 + 4) = *(v4 + 16);
      if (v6 != v4)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v6 + 3, *(v4 + 32), v4 + 24);
      }

      *(v6 + 12) = *(v4 + 48);
      v4 = *(v4 + 8);
      v6 = v6[1];
    }

    while (v4 != a3 && v6 != a1);
  }

  if (v6 == a1)
  {

    return std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,void *>,std::__list_const_iterator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,void *>>(a1, a1, v4, a3);
  }

  else
  {

    return std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::erase(a1, v6, a1);
  }
}

uint64_t std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,void *>,std::__list_const_iterator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,void *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__create_node[abi:ne200100]<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2> const&>();
  }

  return a2;
}

void sub_1B5574960(void *a1)
{
  __cxa_begin_catch(a1);
  std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,void *>,std::__list_const_iterator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,void *>>(v1);
  __cxa_rethrow();
}

void *std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::erase(uint64_t a1, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v6 = *(*a3 + 8);
    v7 = *a2;
    *(v7 + 8) = v6;
    *v6 = v7;
    do
    {
      v8 = v4[1];
      --*(a1 + 16);
      std::__list_imp<char *>::clear(v4 + 3);
      operator delete(v4);
      v4 = v8;
    }

    while (v8 != a3);
  }

  return a3;
}

void fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>>::Delete(void *a1)
{
  v1 = *(a1[7] + 16);
  if (!v1 || v1 - 1 == *(a1 + 19))
  {
    *(a1 + 19) = -1;
    a1[10] = 0;
  }

  fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>::Delete(a1);
}

void fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>::Delete(void *a1)
{
  fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Destroy(*(a1[1] + 8 * *(a1[7] + 16)));
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

void *std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__create_node[abi:ne200100]<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2> const&>();
  }

  return result;
}

{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (a2)
  {
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__create_node[abi:ne200100]<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2> const&>();
  }

  return result;
}

uint64_t fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::One()
{
  {
    operator new();
  }

  return fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::One(void)::one;
}

void sub_1B5574BF8(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  MEMORY[0x1B8C85350](v1, 0x1020C404C081FCELL);
  _Unwind_Resume(a1);
}

uint64_t fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::Zero()
{
  {
    operator new();
  }

  return fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::Zero(void)::zero;
}

void sub_1B5574D60(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  MEMORY[0x1B8C85350](v1, 0x1020C404C081FCELL);
  _Unwind_Resume(a1);
}

void *fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Final@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  std::list<int>::list((a2 + 8), (a1 + 2));
  *(a2 + 32) = a1[8];
  return std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list((a2 + 40), (a1 + 10));
}

unint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::NumArcs(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::Expand(a1, a2);
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

  return 0xCCCCCCCCCCCCCCCDLL * ((*(*v5 + 88) - *(*v5 + 80)) >> 4);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::HasArcs(uint64_t a1, int a2)
{
  v2 = *(a1 + 120);
  if (*(v2 + 76) == a2)
  {
    v3 = (v2 + 80);
  }

  else
  {
    v4 = a2 + 1;
    v6 = v2 + 8;
    v5 = *(v2 + 8);
    if (v4 >= (*(v6 + 8) - v5) >> 3)
    {
      return 0;
    }

    v3 = (v5 + 8 * v4);
  }

  v7 = *v3;
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 104);
  if ((v8 & 2) == 0)
  {
    return 0;
  }

  *(v7 + 104) = v8 | 8;
  return 1;
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::Expand(uint64_t a1, int a2)
{
  v4 = *(a1 + 160);
  if (v4 == a2)
  {

    return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::SetArcs(a1, a2);
  }

  v6 = *(a1 + 136);
  v8 = v4 != -1 && v4 <= a2;
  v36 = 0;
  (*(*v6 + 136))(v6, (a2 - v8), &v32);
  while (1)
  {
    if (!v32)
    {
      if (v36 >= v34)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if ((*(*v32 + 24))(v32))
    {
      break;
    }

    if (v32)
    {
      v9 = (*(*v32 + 32))();
      goto LABEL_18;
    }

LABEL_17:
    v9 = (v33 + 16 * v36);
LABEL_18:
    v44 = *v9;
    v10 = HIDWORD(v44);
    v11 = *(a1 + 160);
    if (v11 != -1 && v11 <= SHIDWORD(v44))
    {
      v10 = HIDWORD(v44) + 1;
    }

    if (v10 >= *(a1 + 164))
    {
      *(a1 + 164) = v10 + 1;
    }

    HIDWORD(v44) = v10;
    fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::operator()(&v44, &v38);
    fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::PushArc(a1, a2, &v38);
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v42);
    std::__list_imp<char *>::clear(v40);
    if (v32)
    {
      (*(*v32 + 40))(v32);
    }

    else
    {
      ++v36;
    }
  }

  if (v32)
  {
    (*(*v32 + 8))();
    goto LABEL_32;
  }

LABEL_30:
  if (v35)
  {
    --*v35;
  }

LABEL_32:
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::HasFinal(a1, a2) & 1) == 0 || (fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::Final(a1, a2, &v38), v13 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Zero(), v14 = fst::operator==<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>(&v38, v13), std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(&v41), std::__list_imp<char *>::clear(&v39), v14))
  {
    v15 = *(a1 + 156);
    if (v15 == 1)
    {
      v23 = *(a1 + 160);
      v25 = v23 != -1 && v23 <= a2;
      *&v26 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v25));
      v32 = 0;
      v33 = v26 | 0xFFFFFFFF00000000;
      fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::operator()(&v32, &v38);
      if (v38)
      {
        v27 = *(a1 + 160);
        if (v27 == -1)
        {
          v27 = *(a1 + 164);
          *(a1 + 160) = v27;
          *(a1 + 164) = v27 + 1;
        }

        v43 = v27;
        fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::PushArc(a1, a2, &v38);
      }

      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v42);
      goto LABEL_58;
    }

    if (v15 == 2)
    {
      v16 = *(a1 + 160);
      v18 = v16 != -1 && v16 <= a2;
      *&v19 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v18));
      v32 = 0;
      v33 = v19 | 0xFFFFFFFF00000000;
      fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::operator()(&v32, &v38);
      v20 = v38;
      v21 = HIDWORD(v38);
      if (v38)
      {
LABEL_45:
        v28 = v39;
        std::list<int>::list(v29, v40);
        v30 = v41;
        std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v31, v42);
        fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::GallicArc(&v32, v20, v21, &v28, *(a1 + 160));
        fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::PushArc(a1, a2, &v32);
        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v37);
        std::__list_imp<char *>::clear(&v34);
        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v31);
        std::__list_imp<char *>::clear(v29);
      }

      else
      {
        v22 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Zero();
        if ((fst::operator==<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>(&v39, v22) & 1) == 0)
        {
          v20 = v38;
          v21 = HIDWORD(v38);
          goto LABEL_45;
        }
      }

      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v42);
LABEL_58:
      std::__list_imp<char *>::clear(v40);
    }
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::SetArcs(a1, a2);
}

void sub_1B5575338(_Unwind_Exception *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v1 + 48));
  std::__list_imp<char *>::clear((v1 + 16));
  _Unwind_Resume(a1);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::SetArcs(uint64_t a1, int a2)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>>>::GetMutableState(*(a1 + 120), a2);
  fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>>>::SetArcs(*(a1 + 120), MutableState);
  v5 = *(MutableState + 80);
  v6 = *(MutableState + 88) - v5;
  if (v6)
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 4);
    v8 = *(a1 + 68);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v9 = (v5 + 72);
    do
    {
      v11 = *v9;
      v9 += 20;
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
  *(MutableState + 104) |= 0xAu;
  return result;
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::PushArc(uint64_t a1, int a2, uint64_t a3)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>>>::GetMutableState(*(a1 + 120), a2);
  v5 = MutableState;
  v6 = MutableState[11];
  if (v6 >= MutableState[12])
  {
    result = std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::__emplace_back_slow_path<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4> const&>(MutableState + 10, a3);
  }

  else
  {
    std::allocator_traits<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::construct[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4> const&,0>((MutableState + 10), v6, a3);
    result = v6 + 80;
    v5[11] = v6 + 80;
  }

  v5[11] = result;
  return result;
}

uint64_t fst::operator==<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    v3 = 0;
    v5 = *(a1 + 32);
    if (v5 == -INFINITY)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if (*(a1 + 24))
  {
    v4 = 0;
  }

  else
  {
    v4 = v2 == -2;
  }

  v5 = *(a1 + 32);
  if (!v4 && v5 != -INFINITY)
  {
LABEL_9:
    v3 = *(a1 + 56) + 1;
  }

LABEL_10:
  if (!*a2)
  {
    v6 = 0;
    if (*(a2 + 32) == -INFINITY)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v6 = 0;
  if (*(a2 + 24))
  {
    v7 = 0;
  }

  else
  {
    v7 = *a2 == -2;
  }

  if (!v7 && *(a2 + 32) != -INFINITY)
  {
LABEL_18:
    v6 = *(a2 + 56) + 1;
  }

LABEL_19:
  if (v3 == v6)
  {
    v8 = (a1 + 48);
    v9 = (a2 + 48);
    v11 = v2 == -2 && *(a1 + 24) == 0 || v5 == -INFINITY;
    v12 = 1;
LABEL_27:
    v13 = *v8;
    v14 = *v9;
    v15 = *v8 + 16;
    while (1)
    {
      v16 = v12;
      if (v12)
      {
        if (v2)
        {
          v17 = a1;
          if (v11)
          {
            return 1;
          }
        }

        else
        {
          v18 = 1;
          v17 = a1;
          if (v5 == -INFINITY)
          {
            return v18;
          }
        }
      }

      else
      {
        v17 = v15;
        if (v13 == a1 + 40)
        {
          return 1;
        }
      }

      if (v16)
      {
        v19 = a2;
      }

      else
      {
        v19 = v14 + 16;
      }

      v20 = *v17;
      if (*v17)
      {
        v21 = *(v17 + 24) + 1;
      }

      else
      {
        v21 = 0;
      }

      if (*v19)
      {
        v22 = *(v19 + 24) + 1;
      }

      else
      {
        v22 = 0;
      }

      if (v21 != v22)
      {
        return 0;
      }

      v23 = (v17 + 16);
      v24 = (v19 + 16);
      v25 = v20 && v20 == *v19;
      v26 = !v25;
      v27 = 1;
      v28 = !v26;
      while (1)
      {
        v29 = *v23;
        v30 = *v24;
        if ((v27 & 1) != 0 && !v28)
        {
          break;
        }

        if (v29 == v17 + 8)
        {
          goto LABEL_58;
        }

        if (*(v29 + 16) != *(v30 + 16))
        {
          return 0;
        }

        v27 = 0;
        v23 = (v29 + 8);
        v24 = (v30 + 8);
      }

      if (v20)
      {
        return 0;
      }

LABEL_58:
      if (*(v17 + 32) != *(v19 + 32))
      {
        return 0;
      }

      v12 = 0;
      if ((v16 & 1) == 0)
      {
        v12 = 0;
        v8 = (v13 + 8);
        v9 = (v14 + 8);
        goto LABEL_27;
      }
    }
  }

  return 0;
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>>>::SetArcs(uint64_t a1, uint64_t a2)
{
  fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::SetArcs(a2);
  if (*(a1 + 104) == 1 && (*(a2 + 104) & 4) != 0)
  {
    v4 = *(a2 + 88) - *(a2 + 80) + *(a1 + 112);
    *(a1 + 112) = v4;
    if (v4 > *(a1 + 96))
    {

      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>>>::GC(a1, a2, 0, 0.666);
    }
  }
}

void *fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::SetArcs(void *result)
{
  v1 = result[10];
  v2 = result[11] - v1;
  if (v2)
  {
    v3 = 0xCCCCCCCCCCCCCCCDLL * (v2 >> 4);
    if (v3 <= 1)
    {
      v3 = 1;
    }

    v4 = (v1 + 4);
    do
    {
      if (!*(v4 - 1))
      {
        ++result[8];
      }

      if (!*v4)
      {
        ++result[9];
      }

      v4 += 20;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::__emplace_back_slow_path<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4> const&>(uint64_t *a1, uint64_t a2)
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

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>(a1, v6);
  }

  v13 = 0;
  v14 = 80 * v2;
  std::allocator_traits<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::construct[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4> const&,0>(a1, 80 * v2, a2);
  v15 = 80 * v2 + 80;
  v7 = a1[1];
  v8 = 80 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::~__split_buffer(&v13);
  return v12;
}

void sub_1B5575940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::NumInputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::Expand(a1, a2);
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

  return *(*v5 + 64);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::Expand(a1, a2);
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

  return *(*v5 + 72);
}

unint64_t fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>(a1, a2, a3, 0);
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

    return fst::ComputeProperties<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>(a1, a2, a3, 1);
  }
}

void sub_1B5575B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v7 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v8 = v7;
  if (!a4 || (v9 = v7 & 0x3FFFFFFF0000 | (2 * v7) & 0x2AAAAAAA0000 | (v7 >> 1) & 0x155555550000 | 7, (a2 & ~v9) != 0))
  {
    v8 = v7 & 7;
    v56 = v8;
    v10 = (*(*a1 + 16))(a1);
    if ((a2 & 0xF3C00000000) != 0 && v10)
    {
      v50 = 0;
      v51 = 0;
      v52[0] = 0;
      v52[1] = &v56;
      fst::DfsVisit<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>(a1, &v50);
    }

    if ((a2 & 0xFFFFF0C3FFFFFFF8) != 0)
    {
      v37 = a3;
      v11 = a2 & 0xC0000;
      v12 = 0x10425A810000;
      if ((a2 & 0xC0000) != 0)
      {
        v12 = 0x10425A850000;
      }

      v13 = v8 | v12;
      v14 = a2 & 0x300000;
      if ((a2 & 0x300000) != 0)
      {
        v13 |= 0x100000uLL;
      }

      v56 = v13;
      memset(&v49, 0, sizeof(v49));
      memset(&v48, 0, sizeof(v48));
      v47 = 0;
      v15 = a1;
      (*(*a1 + 128))(a1, &v45);
      v39 = 0;
LABEL_12:
      if (v45)
      {
        if (!(*(*v45 + 16))(v45))
        {
          if (v45)
          {
            v16 = (*(*v45 + 24))();
LABEL_18:
            v17 = (*(*v15 + 40))(v15, v16);
            v18 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>::NoWeight();
            LODWORD(v51) = *v18;
            std::list<int>::list(v52, (v18 + 2));
            v53 = v18[8];
            v54[0] = v54;
            v54[1] = v54;
            v54[2] = 0;
            v49.__end_ = v49.__begin_;
            v48.__end_ = v48.__begin_;
            if (v11)
            {
              std::vector<int>::reserve(&v49, v17);
            }

            if (v14)
            {
              std::vector<int>::reserve(&v48, v17);
            }

            v43 = 0;
            (*(*v15 + 136))(v15, v16, &v40);
            v19 = 1;
            while (1)
            {
              if (v40)
              {
                if ((*(*v40 + 24))(v40))
                {
                  if (v40)
                  {
                    (*(*v40 + 8))();
                    goto LABEL_65;
                  }

LABEL_63:
                  if (v42)
                  {
                    --*v42;
                  }

LABEL_65:
                  v15 = a1;
                  if (v11 && (std::__sort<std::__less<int,int> &,int *>(), v27 = v49.__end_ - v49.__begin_, v27 >= 2))
                  {
                    v28 = v27 - 1;
                    v29 = v49.__begin_ + 1;
                    while (*v29 != *(v29 - 1))
                    {
                      ++v29;
                      if (!--v28)
                      {
                        goto LABEL_70;
                      }
                    }

                    v56 = v56 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
                    if (!v14)
                    {
LABEL_79:
                      if (v39 >= 1)
                      {
                        v56 = v56 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                      }

                      (*(*a1 + 32))(&v40, a1, v16);
                      v33 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Zero();
                      if (fst::operator==<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>(&v40, v33))
                      {
                        if ((*(*a1 + 40))(a1, v16) != 1)
                        {
                          v56 = v56 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                        }
                      }

                      else
                      {
                        v34 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::One();
                        if ((fst::operator==<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>(&v40, v34) & 1) == 0)
                        {
                          v56 = v56 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                        }

                        ++v39;
                      }

                      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v44);
                      std::__list_imp<char *>::clear(v41);
                      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v54);
                      std::__list_imp<char *>::clear(v52);
                      if (v45)
                      {
                        (*(*v45 + 32))(v45);
                      }

                      else
                      {
                        ++v47;
                      }

                      goto LABEL_12;
                    }
                  }

                  else
                  {
LABEL_70:
                    if (!v14)
                    {
                      goto LABEL_79;
                    }
                  }

                  std::__sort<std::__less<int,int> &,int *>();
                  v30 = v48.__end_ - v48.__begin_;
                  if (v30 >= 2)
                  {
                    v31 = v30 - 1;
                    v32 = v48.__begin_ + 1;
                    while (*v32 != *(v32 - 1))
                    {
                      ++v32;
                      if (!--v31)
                      {
                        goto LABEL_79;
                      }
                    }

                    v56 = v56 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
                  }

                  goto LABEL_79;
                }

                if (v40)
                {
                  v20 = (*(*v40 + 32))();
                  goto LABEL_29;
                }
              }

              else if (v43 >= v41[1])
              {
                goto LABEL_63;
              }

              v20 = v41[0] + 80 * v43;
LABEL_29:
              v21 = *v20;
              v22 = *v20;
              if (*v20 != *(v20 + 4))
              {
                v56 = v56 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
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

                v23 = v56;
              }

              else
              {
                v23 = v56 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
              }

              v56 = v23 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
              if (!v22)
              {
LABEL_39:
                v56 = v56 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
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
              if (v21 < v50)
              {
                v56 = v56 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
              }

              if (v22 < SHIDWORD(v50))
              {
                v56 = v56 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
              }

LABEL_44:
              v24 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::One();
              if ((fst::operator==<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>(v20 + 8, v24) & 1) == 0)
              {
                v25 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Zero();
                if ((fst::operator==<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>(v20 + 8, v25) & 1) == 0)
                {
                  v56 = v56 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                }
              }

              v26 = *(v20 + 72);
              if (v26 <= v16)
              {
                v56 = v56 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
              }

              if (v26 != v16 + 1)
              {
                v56 = v56 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
              }

              v50 = *v20;
              LODWORD(v51) = *(v20 + 8);
              if (&v50 == v20)
              {
                v53 = *(v20 + 40);
              }

              else
              {
                std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v52, *(v20 + 24), v20 + 16);
                v53 = *(v20 + 40);
                std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,void *>,std::__list_const_iterator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,void *>>(v54, *(v20 + 56), v20 + 48);
                v26 = *(v20 + 72);
              }

              v55 = v26;
              if (v11)
              {
                std::vector<int>::push_back[abi:ne200100](&v49.__begin_, v20);
              }

              if (v14)
              {
                std::vector<int>::push_back[abi:ne200100](&v48.__begin_, (v20 + 4));
              }

              if (v40)
              {
                (*(*v40 + 40))(v40);
                v19 = 0;
              }

              else
              {
                v19 = 0;
                ++v43;
              }
            }
          }

LABEL_17:
          v16 = v47;
          goto LABEL_18;
        }

        if (v45)
        {
          (*(*v45 + 8))();
        }
      }

      else if (v47 < v46)
      {
        goto LABEL_17;
      }

      v35 = (*(*v15 + 24))(v15);
      a3 = v37;
      if (v35 != -1 && (*(*a1 + 24))(a1))
      {
        v56 = v56 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
      }

      if (v48.__begin_)
      {
        v48.__end_ = v48.__begin_;
        operator delete(v48.__begin_);
      }

      if (v49.__begin_)
      {
        v49.__end_ = v49.__begin_;
        operator delete(v49.__begin_);
      }

      v8 = v56;
    }

    v9 = v8 & 0x3FFFFFFF0000 | (2 * v8) & 0x2AAAAAAA0000 | (v8 >> 1) & 0x155555550000 | 7;
  }

  *a3 = v9;
  return v8;
}

void sub_1B55763F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5576CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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
  fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::InitVisit(uint64_t a1, uint64_t a2)
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

uint64_t fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>(uint64_t a1)
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

void sub_1B5577018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>();
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::FinishState(uint64_t a1, int a2, int a3)
{
  (*(**(a1 + 32) + 32))(&v22);
  v6 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Zero();
  v7 = fst::operator==<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>(&v22, v6);
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v24);
  result = std::__list_imp<char *>::clear(v23);
  if (!v7)
  {
    *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v9 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * a2) != *(v9 + 4 * a2))
  {
    goto LABEL_16;
  }

  v10 = 0;
  v11 = *(a1 + 80);
  v12 = **(a1 + 16);
  v13 = (*(v11 + 8) - 4);
  v14 = v13;
  do
  {
    v15 = *v14--;
    v10 |= *(v12 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15;
  }

  while (v15 != a2);
  v16 = *a1;
  v17 = **(a1 + 72);
  while (1)
  {
    v18 = *v13;
    if (v16)
    {
      *(*v16 + 4 * v18) = *(a1 + 48);
    }

    result = v18 >> 6;
    v19 = 1 << v18;
    if ((v10 & 1) == 0)
    {
      break;
    }

    *(v12 + 8 * result) |= v19;
    *(v17 + 8 * result) &= ~v19;
    if (v18 == a2)
    {
      *(v11 + 8) = v13;
      goto LABEL_15;
    }

LABEL_13:
    --v13;
  }

  *(v17 + 8 * result) &= ~v19;
  if (v18 != a2)
  {
    goto LABEL_13;
  }

  *(v11 + 8) = v13;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_15:
  ++*(a1 + 48);
LABEL_16:
  if (a3 != -1)
  {
    v20 = **(a1 + 16);
    if ((*(v20 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2))
    {
      *(v20 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v21 = *(v9 + 4 * a2);
    if (v21 < *(v9 + 4 * a3))
    {
      *(v9 + 4 * a3) = v21;
    }
  }

  return result;
}

void sub_1B557724C(_Unwind_Exception *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v1 + 40));
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::BackArc(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 72);
  v4 = *(**(a1 + 56) + 4 * v3);
  v5 = **(a1 + 64);
  if (v4 < *(v5 + 4 * a2))
  {
    *(v5 + 4 * a2) = v4;
  }

  v6 = **(a1 + 16);
  if ((*(v6 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
  {
    *(v6 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = *(a1 + 24);
  v8 = *v7 & 0xFFFFFFF3FFFFFFFFLL | 0x400000000;
  *v7 = v8;
  if (*(a3 + 72) == *(a1 + 40))
  {
    *v7 = v8 & 0xFFFFFFC7FFFFFFFFLL | 0x1000000000;
  }

  return 1;
}

uint64_t fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::ForwardOrCrossArc(void **a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 72);
  v4 = *a1[7];
  v5 = *(v4 + 4 * v3);
  if (v5 >= *(v4 + 4 * a2))
  {
    v6 = v3 >> 6;
    v7 = 1 << v3;
  }

  else
  {
    v6 = v3 >> 6;
    v7 = 1 << v3;
    if ((*(*a1[9] + 8 * v6) & v7) != 0)
    {
      v8 = *a1[8];
      if (v5 < *(v8 + 4 * a2))
      {
        *(v8 + 4 * a2) = v5;
      }
    }
  }

  v9 = *a1[2];
  if ((*(v9 + 8 * v6) & v7) != 0)
  {
    *(v9 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  return 1;
}

void fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D1D1D8;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D1D1D8;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D1D218;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B5577514(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D1D218;
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

void *std::deque<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>> *,std::allocator<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>> *>>::push_back(void *result, void *a2)
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
    result = std::deque<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>> *,std::allocator<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>> *>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>> *,std::allocator<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>> *>>::__add_back_capacity(void *a1)
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

void sub_1B5577820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ArcBuffer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::SetFromFst<fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  (*(*a2 + 136))(a2, a3, &v26);
  if (!v26 && (a4 & 1) == 0)
  {
    v10 = v27 + 80 * v28;
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
    v15 = malloc_type_malloc(80 * v25, 0x1020040B5FA0AF2uLL);
    *a1 = v15;
    *(a1 + 16) = v15;
    v14 = v15;
  }

  else
  {
    v14 = *(a1 + 16);
    v15 = *a1;
  }

  *(a1 + 24) = &v14[20 * v13];
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
  v15 += 20;
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
    v24 = (v15 - 20);
    *v24 = *v23;
    *(v24 + 2) = *(v23 + 8);
    if (v15 - 20 == v23)
    {
      *(v15 - 10) = *(v23 + 40);
    }

    else
    {
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v15 - 8, *(v23 + 24), v23 + 16);
      *(v15 - 10) = *(v23 + 40);
      std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,void *>,std::__list_const_iterator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,void *>>(v15 - 4, *(v23 + 56), v23 + 48);
    }

    *(v15 - 2) = *(v23 + 72);
    if (!v16)
    {
      ++v20;
      goto LABEL_13;
    }

    v15 += 20;
    (*(*v16 + 40))(v16);
  }

  v23 = v17 + 80 * v20;
  if (v20 < v19)
  {
    goto LABEL_18;
  }

  if (v18)
  {
    --*v18;
  }
}

void sub_1B5577B88(_Unwind_Exception *exception_object)
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

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::ImplToFst(void *result, uint64_t a2, int a3)
{
  *result = &unk_1F2D1D128;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

void sub_1B5577ED0(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>::CopyStates(a1, a2);
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
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>::GetMutableState(a1, 0);
    }

    *(a1 + 80) = MutableState;
  }

  return a1;
}

void fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>::CopyStates(void *a1, uint64_t a2)
{
  fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>::Clear(a1);
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

uint64_t fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::CacheState(uint64_t a1, uint64_t a2)
{
  fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Final(a2, a1);
  v4 = *(a2 + 64);
  v5 = *(a2 + 80);
  v6 = *(a2 + 88);
  *(a1 + 80) = 0;
  *(a1 + 64) = v4;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4> const*>,std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4> const*>>(a1 + 80, v5, v6, 0xCCCCCCCCCCCCCCCDLL * ((v6 - v5) >> 4));
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

void sub_1B5578190(_Unwind_Exception *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v1 + 40));
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4> const*>,std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4> const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5578214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4> const*,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4> const*,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      std::allocator_traits<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::construct[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4> const&,0>(a1, v4, v6);
      v6 += 80;
      v4 = v12 + 80;
      v12 += 80;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::StateIterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = &unk_1F2D1D258;
  *(a1 + 8) = v3;
  v4 = *(v3 + 136);
  *(a1 + 32) = 0;
  (*(*v4 + 128))(v4, a1 + 16);
  *(a1 + 40) = 0;
  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;
  fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::CheckSuperfinal(a1);
  return a1;
}

void sub_1B55783C0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>>::StateIterator(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::CheckSuperfinal(uint64_t result)
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
      fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::operator()(&v4, &v7);
      if (v7)
      {
        *(v2 + 44) = 1;
      }

      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v9);
      return std::__list_imp<char *>::clear(v8);
    }
  }

  return result;
}

void *fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D1D258;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D1D258;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Next(uint64_t a1)
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

        return fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::CheckSuperfinal(a1);
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

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Reset(uint64_t a1)
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

  return fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::CheckSuperfinal(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::InitArcIterator(uint64_t a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::InitArcIterator(a1, a2, a3);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 120);
  if (*(v3 + 76) == a2)
  {
    v4 = (v3 + 80);
  }

  else
  {
    v4 = (*(v3 + 8) + 8 * a2 + 8);
  }

  v5 = *v4;
  v8 = *(v5 + 108);
  v6 = (v5 + 108);
  v7 = v8;
  v9 = *(v6 - 7);
  v10 = 0xCCCCCCCCCCCCCCCDLL * ((*(v6 - 5) - v9) >> 4);
  if (*(v6 - 5) == v9)
  {
    v9 = 0;
  }

  *a3 = 0;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v6;
  *v6 = v7 + 1;
  return result;
}

void *fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::DefaultDeterminizeFilter<fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(void *a1, uint64_t a2, void *a3)
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

void fst::DeterminizeFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::DeterminizeFst<fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D1D2C0;
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

void sub_1B5578A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::~ImplToFst(v18);
  _Unwind_Resume(a1);
}

_DWORD *fst::ImplToFst<fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::SetImpl(uint64_t a1, uint64_t a2, char a3)
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

void *fst::ImplToFst<fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D1D3A0;
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

void fst::DeterminizeFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::~DeterminizeFst(void *a1)
{
  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

void sub_1B5579050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::~DeterminizeFstImplBase(v18);
  _Unwind_Resume(a1);
}

uint64_t fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::~DeterminizeFstImplBase(void *a1)
{
  *a1 = &unk_1F2D1D4D8;
  v2 = a1[17];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::~CacheBaseImpl(a1);
}

void fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(void *a1)
{
  fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>::Expand(uint64_t *a1, int a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>::GetLabelMap(a1, a2, &v8);
  v4 = v8;
  if (v8 != v9)
  {
    do
    {
      fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>::AddArc(a1, a2, (v4 + 5));
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

  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::SetArcs(a1, a2);
  std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>>>>::destroy(&v8, v9[0]);
}

uint64_t fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>::ComputeStart(uint64_t a1)
{
  v1 = (*(**(a1 + 136) + 24))(*(a1 + 136));
  if (v1 != -1)
  {
    v2 = v1;
    v3 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::One();
    v5 = *v3;
    std::list<int>::list(v6, (v3 + 2));
    v7 = v3[8];
    std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v8, (v3 + 10));
    fst::DeterminizeElement<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::DeterminizeElement(v9, v2, &v5);
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v8);
    std::__list_imp<char *>::clear(v6);
    operator new();
  }

  return 0xFFFFFFFFLL;
}

void sub_1B557966C(_Unwind_Exception *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v2 + 40));
  std::__list_imp<char *>::clear(v1);
  _Unwind_Resume(a1);
}

void *fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>::ComputeFinal@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(*(*(a1 + 184) + 88) + 8 * a2);
  v6 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Zero();
  *a3 = *v6;
  std::list<int>::list((a3 + 8), (v6 + 2));
  *(a3 + 32) = v6[8];
  result = std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list((a3 + 40), (v6 + 10));
  for (i = *v5; i; i = *i)
  {
    (*(**(a1 + 136) + 32))(&v32);
    fst::Times<int,fst::TropicalWeightTpl<float>>(i + 4, &v32, &v35);
    fst::Plus<int,fst::TropicalWeightTpl<float>>(a3, &v35, &v38);
    *a3 = v38;
    if (&v38 != a3)
    {
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a3 + 8), v40, &v39);
    }

    *(a3 + 32) = v41;
    std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__move_assign((a3 + 40), v42);
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v42);
    std::__list_imp<char *>::clear(&v39);
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v37);
    std::__list_imp<char *>::clear(v36);
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v34);
    std::__list_imp<char *>::clear(v33);
    v26 = *a3;
    std::list<int>::list(v27, a3 + 8);
    v28 = *(a3 + 32);
    std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(&v29, a3 + 40);
    v38 = v26;
    std::list<int>::list(&v39, v27);
    v41 = v28;
    v42[0] = v42;
    v42[1] = v42;
    v43 = 0;
    v9 = v31;
    if (v31)
    {
      v11 = v29;
      v10 = v30;
      v12 = *(v29 + 8);
      v13 = *v30;
      *(v13 + 8) = v12;
      *v12 = v13;
      v14 = v42[0];
      *(v42[0] + 8) = v10;
      *v10 = v14;
      v42[0] = v11;
      *(v11 + 8) = v42;
      v43 = v9;
      v31 = 0;
    }

    *a3 = v38;
    if (&v38 != a3)
    {
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a3 + 8), v40, &v39);
    }

    *(a3 + 32) = v41;
    std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__move_assign((a3 + 40), v42);
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v42);
    std::__list_imp<char *>::clear(&v39);
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(&v29);
    result = std::__list_imp<char *>::clear(v27);
    v15 = *a3;
    if (*a3)
    {
      if (*(a3 + 24))
      {
        v16 = 0;
      }

      else
      {
        v16 = v15 == -2;
      }

      if (!v16 && *(a3 + 32) != -INFINITY)
      {
LABEL_16:
        if ((*(a3 + 56) + 1) >= 2)
        {
          v19 = v15 != -2 || *(a3 + 24) != 0 || v15 == 0;
          v20 = 1;
          v21 = (a3 + 48);
LABEL_27:
          v22 = *v21;
          while (1)
          {
            v23 = v20;
            if (v20)
            {
              v24 = a3;
              if (!v19)
              {
                goto LABEL_41;
              }
            }

            else
            {
              v24 = v22 + 16;
              if (v22 == a3 + 40)
              {
                goto LABEL_41;
              }
            }

            if (*v24)
            {
              if (*v24 == -2 && *(v24 + 24) == 0)
              {
                break;
              }
            }

            if (*(v24 + 32) == -INFINITY)
            {
              break;
            }

            v20 = 0;
            if ((v23 & 1) == 0)
            {
              v20 = 0;
              v21 = (v22 + 8);
              goto LABEL_27;
            }
          }

          *(a1 + 8) |= 4uLL;
        }
      }
    }

    else if (*(a3 + 32) != -INFINITY)
    {
      goto LABEL_16;
    }

LABEL_41:
    ;
  }

  return result;
}

void *fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::CompactHashBiTable(void *a1, size_t a2)
{
  a1[1] = a1;
  a1[2] = a1;
  std::unordered_set<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::unordered_set((a1 + 3), a2, a1 + 1, a1 + 2);
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  if (a2)
  {
    std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(a1 + 10, a2);
  }

  return a1;
}

void sub_1B5579ADC(_Unwind_Exception *a1)
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

uint64_t std::unordered_set<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::unordered_set(uint64_t a1, size_t a2, void *a3, void *a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *a3;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = *a4;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__rehash<true>(a1, a2);
  return a1;
}

void *std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::__base_destruct_at_end[abi:ne200100](void *result, uint64_t a2)
{
  v3 = result;
  for (i = result[1]; i != a2; i -= 64)
  {
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((i - 24));
    result = std::__list_imp<char *>::clear((i - 56));
  }

  v3[1] = a2;
  return result;
}

uint64_t fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(void *a1)
{
  *a1 = &unk_1F2D1D450;
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
    v4 = fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::~DefaultDeterminizeStateTable(v3);
    MEMORY[0x1B8C85350](v4, 0x10E0C400200E20DLL);
  }

  return fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::~DeterminizeFstImplBase(a1);
}

uint64_t fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::~DefaultDeterminizeStateTable(uint64_t a1)
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
        std::__forward_list_base<fst::DeterminizeElement<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::clear(v2[v5]);
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

void std::__forward_list_base<fst::DeterminizeElement<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::clear(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    do
    {
      v3 = *v2;
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v2 + 7);
      std::__list_imp<char *>::clear(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  *a1 = 0;
}

void sub_1B5579EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::~DeterminizeFstImplBase(v18);
  _Unwind_Resume(a1);
}

void sub_1B557A084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::~CacheBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t *fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>::GetLabelMap(uint64_t *result, int a2, void *a3)
{
  v4 = result;
  v5 = **(*(result[23] + 88) + 8 * a2);
  if (v5)
  {
    while (1)
    {
      v6 = v5[2];
      v7 = *(v4 + 136);
      v23 = 0;
      (*(*v7 + 136))(v7, v6, v21);
      result = v21[0];
      if (!v21[0])
      {
        break;
      }

      v8 = (*(*v21[0] + 24))(v21[0]);
      result = v21[0];
      if (!v8)
      {
        if (v21[0])
        {
          v9 = (*(*v21[0] + 32))(v21[0]);
        }

        else
        {
LABEL_7:
          v9 = (v21[1] + 80 * v23);
        }

        v10 = v9[18];
        fst::Times<int,fst::TropicalWeightTpl<float>>(v5 + 4, v9 + 2, &v17);
        fst::DeterminizeElement<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::DeterminizeElement(v20, v10, &v17);
        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v19);
        std::__list_imp<char *>::clear(v18);
        fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::FilterArc(*(v4 + 176), v9, (v5 + 2), v20, a3);
      }

      if (!v21[0])
      {
        goto LABEL_11;
      }

      result = (*(*v21[0] + 8))(v21[0]);
LABEL_13:
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_14;
      }
    }

    if (v23 < v21[2])
    {
      goto LABEL_7;
    }

LABEL_11:
    if (v22)
    {
      --*v22;
    }

    goto LABEL_13;
  }

LABEL_14:
  v13 = *a3;
  v11 = a3 + 1;
  v12 = v13;
  if (v13 != v11)
  {
    do
    {
      result = fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>::NormArc(v4, (v12 + 5));
      v14 = v12[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v12[2];
          v16 = *v15 == v12;
          v12 = v15;
        }

        while (!v16);
      }

      v12 = v15;
    }

    while (v15 != v11);
  }

  return result;
}

void sub_1B557A310(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 120);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  else
  {
    v4 = *(v1 - 96);
    if (v4)
    {
      --*v4;
    }
  }

  _Unwind_Resume(exception_object);
}

void *fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>::AddArc(uint64_t a1, int a2, uint64_t a3)
{
  v6 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>::NoWeight();
  v11 = *v6;
  std::list<int>::list(v12, (v6 + 2));
  v7 = v6[8];
  v14[0] = v14;
  v14[1] = v14;
  v14[2] = 0;
  v10[0] = *a3;
  v10[1] = v10[0];
  v8 = *(a3 + 8);
  v13 = v7;
  v11 = v8;
  if (v10 == a3)
  {
    v13 = *(a3 + 40);
  }

  else
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v12, *(a3 + 24), a3 + 16);
    v13 = *(a3 + 40);
    std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,void *>,std::__list_const_iterator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,void *>>(v14, *(a3 + 56), a3 + 48);
  }

  State = fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>::FindState(a1, *(a3 + 72));
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::PushArc(a1, a2, v10);
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v14);
  return std::__list_imp<char *>::clear(v12);
}

void sub_1B557A484(_Unwind_Exception *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v1);
  std::__list_imp<char *>::clear((v2 + 16));
  _Unwind_Resume(a1);
}

void *fst::Times<int,fst::TropicalWeightTpl<float>>@<X0>(int *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *a1;
  std::list<int>::list(v12, (a1 + 2));
  v13 = a1[8];
  std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v14, (a1 + 10));
  v7 = *a2;
  std::list<int>::list(v8, (a2 + 2));
  v9 = a2[8];
  std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v10, (a2 + 10));
  fst::Times<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>(&v11, &v7, &v15);
  fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::GallicWeight(a3, &v15);
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v17);
  std::__list_imp<char *>::clear(v16);
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v10);
  std::__list_imp<char *>::clear(v8);
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v14);
  return std::__list_imp<char *>::clear(v12);
}

void sub_1B557A580(_Unwind_Exception *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v1 + 40));
  std::__list_imp<char *>::clear((v1 + 8));
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v2 + 40));
  std::__list_imp<char *>::clear((v2 + 8));
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v3 + 40));
  std::__list_imp<char *>::clear((v3 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::DeterminizeElement<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::DeterminizeElement(uint64_t a1, int a2, _DWORD *a3)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  std::list<int>::list((a1 + 16), (a3 + 2));
  *(a1 + 40) = a3[8];
  std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list((a1 + 48), (a3 + 10));
  return a1;
}

void fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::FilterArc(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  if (*(std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a5, a2) + 10) == -1)
  {
    fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>::DeterminizeArc(&v6, a2);
  }

  std::__forward_list_base<fst::DeterminizeElement<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::__create_node[abi:ne200100]<fst::DeterminizeElement<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>> const&>();
}

void sub_1B557A740(_Unwind_Exception *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v1 + 48));
  std::__list_imp<char *>::clear((v1 + 16));
  _Unwind_Resume(a1);
}

uint64_t *fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>::NormArc(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  result = std::forward_list<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::sort[abi:ne200100](v4);
  v6 = *v4;
  if (*v4)
  {
    v7 = (a2 + 8);
    v8 = *v4;
    do
    {
      fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>::operator()(a2 + 8, (v8 + 2), &v18);
      *v7 = v18;
      if (v7 != &v18)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a2 + 16), v20, &v19);
      }

      *(a2 + 40) = v21;
      std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__move_assign((a2 + 48), v22);
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v22);
      result = std::__list_imp<char *>::clear(&v19);
      if (v6 == v8 || *(v8 + 2) != *(v6 + 2))
      {
        v16 = *v8;
        v6 = v8;
      }

      else
      {
        fst::Plus<int,fst::TropicalWeightTpl<float>>(v6 + 4, v8 + 4, &v18);
        *(v6 + 4) = v18;
        if (v6 + 2 != &v18)
        {
          std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v6 + 3, v20, &v19);
        }

        *(v6 + 12) = v21;
        std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__move_assign(v6 + 7, v22);
        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v22);
        std::__list_imp<char *>::clear(&v19);
        v9 = *(v6 + 4);
        if ((v9 != -2 || v6[5]) && *(v6 + 12) != -INFINITY && (v6[9] + 1) >= 2)
        {
          v10 = (v6 + 8);
          v11 = 1;
LABEL_14:
          v12 = *v10;
          while (1)
          {
            v13 = v11;
            if (v11)
            {
              v14 = v6 + 2;
              if (v9)
              {
                v14 = v6 + 2;
                if (v9 == -2)
                {
                  v14 = v6 + 2;
                  if (!v6[5])
                  {
                    goto LABEL_31;
                  }
                }
              }
            }

            else
            {
              v14 = v12 + 2;
              if (v12 == v6 + 7)
              {
                goto LABEL_31;
              }
            }

            if (*v14)
            {
              if (*v14 == -2 && v14[3] == 0)
              {
                break;
              }
            }

            if (*(v14 + 8) == -INFINITY)
            {
              break;
            }

            v11 = 0;
            if ((v13 & 1) == 0)
            {
              v11 = 0;
              v10 = (v12 + 1);
              goto LABEL_14;
            }
          }

          *(a1 + 8) |= 4uLL;
        }

LABEL_31:
        v16 = *v8;
        result = std::forward_list<fst::DeterminizeElement<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::erase_after(v4, v6);
      }

      v8 = v16;
    }

    while (v16);
    for (i = *v4; i; i = *i)
    {
      fst::Divide<int,fst::TropicalWeightTpl<float>>(i + 4, v7, 0, &v18);
      *(i + 4) = v18;
      if (i + 2 != &v18)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(i + 3, v20, &v19);
      }

      *(i + 12) = v21;
      std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__move_assign(i + 7, v22);
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v22);
      std::__list_imp<char *>::clear(&v19);
      fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Quantize((i + 2), &v18, *(a1 + 144));
      *(i + 4) = v18;
      if (i + 2 != &v18)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(i + 3, v20, &v19);
      }

      *(i + 12) = v21;
      std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__move_assign(i + 7, v22);
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v22);
      result = std::__list_imp<char *>::clear(&v19);
    }
  }

  return result;
}

void sub_1B557AA50(_Unwind_Exception *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v1 + 40));
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

float fst::Times<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v5 = *a1;
  if (*a1)
  {
    if (*(a1 + 24))
    {
      v6 = 0;
    }

    else
    {
      v6 = v5 == -2;
    }

    if (v6 || *(a1 + 32) == -INFINITY)
    {
      goto LABEL_10;
    }
  }

  else if (*(a1 + 32) == -INFINITY)
  {
    goto LABEL_10;
  }

  if ((*(a1 + 56) + 1) >= 2)
  {
    v13 = (a1 + 48);
    v16 = v5 != -2 || *(a1 + 24) != 0 || v5 == 0;
    v17 = 1;
LABEL_32:
    v18 = *v13;
    while (1)
    {
      v19 = v17;
      if (v17)
      {
        v20 = a1;
        if (!v16)
        {
          break;
        }
      }

      else
      {
        v20 = v18 + 16;
        if (v18 == a1 + 40)
        {
          break;
        }
      }

      if (*v20)
      {
        if (*v20 == -2 && *(v20 + 24) == 0)
        {
          goto LABEL_68;
        }
      }

      if (*(v20 + 32) == -INFINITY)
      {
        goto LABEL_68;
      }

      v17 = 0;
      if ((v19 & 1) == 0)
      {
        v17 = 0;
        v13 = (v18 + 8);
        goto LABEL_32;
      }
    }
  }

LABEL_10:
  v7 = *a2;
  if (*a2)
  {
    if (*(a2 + 24))
    {
      v8 = 0;
    }

    else
    {
      v8 = v7 == -2;
    }

    if (v8 || *(a2 + 32) == -INFINITY)
    {
      goto LABEL_19;
    }
  }

  else if (*(a2 + 32) == -INFINITY)
  {
    goto LABEL_19;
  }

  if ((*(a2 + 56) + 1) < 2)
  {
LABEL_19:
    v9 = fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::Zero();
    if ((fst::operator==<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>(v4, v9) & 1) != 0 || (v10 = fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::Zero(), fst::operator==<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>(a2, v10)))
    {
      v11 = fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::Zero();
      *a3 = *v11;
      std::list<int>::list((a3 + 8), (v11 + 2));
      *(a3 + 32) = v11[8];
      std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list((a3 + 40), (v11 + 10));
      return result;
    }

    v51 = v4 + 40;
    v33 = *(v4 + 48);
    v34 = *(a2 + 48);
    v35 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>::NoWeight();
    *a3 = *v35;
    std::list<int>::list((a3 + 8), (v35 + 2));
    *(a3 + 32) = v35[8];
    *(a3 + 40) = a3 + 40;
    *(a3 + 48) = a3 + 40;
    v52 = v4;
    *(a3 + 56) = 0;
    v36 = v33;
    v37 = 1;
LABEL_71:
    v53 = v36;
    v54 = v36 + 16;
LABEL_72:
    v38 = v37;
    if (v37)
    {
      if (*v4)
      {
        if (*(v4 + 24))
        {
          v39 = 0;
        }

        else
        {
          v39 = *v4 == -2;
        }

        if (v39)
        {
          return result;
        }

        result = *(v4 + 32);
        if (result == -INFINITY)
        {
          return result;
        }
      }

      else
      {
        result = *(v4 + 32);
        if (result == -INFINITY)
        {
          return result;
        }
      }
    }

    else if (v36 == v51)
    {
      return result;
    }

    v40 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>::NoWeight();
    LODWORD(v62) = *v40;
    std::list<int>::list(v63, (v40 + 2));
    v64 = v40[8];
    v65[0] = v65;
    v65[1] = v65;
    v65[2] = 0;
    if (v38)
    {
      v41 = v4;
    }

    else
    {
      v41 = v54;
    }

    v42 = 1;
    while (1)
    {
      v43 = v42;
      if (v42)
      {
        if (*a2)
        {
          if (*(a2 + 24))
          {
            v44 = 0;
          }

          else
          {
            v44 = *a2 == -2;
          }

          if (v44 || *(a2 + 32) == -INFINITY)
          {
LABEL_110:
            fst::Plus<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>(a3, &v62, &v56);
            *a3 = v56;
            v4 = v52;
            if (&v56 != a3)
            {
              std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a3 + 8), v57[1], v57);
            }

            *(a3 + 32) = v58;
            std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__move_assign((a3 + 40), v59);
            std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v59);
            std::__list_imp<char *>::clear(v57);
            v34 = *(a2 + 48);
            std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v65);
            std::__list_imp<char *>::clear(v63);
            v37 = 0;
            v36 = v53;
            if ((v38 & 1) == 0)
            {
              v37 = 0;
              v36 = *(v53 + 8);
              goto LABEL_71;
            }

            goto LABEL_72;
          }
        }

        else if (*(a2 + 32) == -INFINITY)
        {
          goto LABEL_110;
        }
      }

      else if (v34 == a2 + 40)
      {
        goto LABEL_110;
      }

      if (v42)
      {
        v45 = a2;
      }

      else
      {
        v45 = v34 + 16;
      }

      fst::Times<int,(fst::StringType)2>(v41, v45, &v56);
      v46 = *(v41 + 32);
      v47 = NAN;
      if (v46 != -INFINITY)
      {
        v48 = *(v45 + 32);
        v47 = NAN;
        if (v48 != -INFINITY)
        {
          v47 = INFINITY;
          v49 = v48 == INFINITY || v46 == INFINITY;
          v50 = v46 + v48;
          if (!v49)
          {
            v47 = v50;
          }
        }
      }

      fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>::GallicWeight(v60, &v56, v47);
      std::__list_imp<char *>::clear(v57);
      fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::PushBack(&v62, v60, 1);
      std::__list_imp<char *>::clear(v61);
      v42 = 0;
      if ((v43 & 1) == 0)
      {
        v42 = 0;
        v34 = *(v34 + 8);
      }
    }
  }

  v22 = (a2 + 48);
  v25 = v7 != -2 || *(a2 + 24) != 0 || v7 == 0;
  v26 = 1;
LABEL_55:
  v27 = *v22;
  while (1)
  {
    v28 = v26;
    if (v26)
    {
      v29 = a2;
      if (!v25)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v29 = v27 + 16;
      if (v27 == a2 + 40)
      {
        goto LABEL_19;
      }
    }

    if (*v29)
    {
      if (*v29 == -2 && *(v29 + 24) == 0)
      {
        break;
      }
    }

    if (*(v29 + 32) == -INFINITY)
    {
      break;
    }

    v26 = 0;
    if ((v28 & 1) == 0)
    {
      v26 = 0;
      v22 = (v27 + 8);
      goto LABEL_55;
    }
  }

LABEL_68:
  v32 = fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::NoWeight();
  *a3 = *v32;
  std::list<int>::list((a3 + 8), (v32 + 2));
  *(a3 + 32) = v32[8];
  std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list((a3 + 40), (v32 + 10));
  return result;
}

uint64_t fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::NoWeight()
{
  {
    operator new();
  }

  return fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::NoWeight(void)::no_weight;
}

void sub_1B557B15C(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v3 + 8));
  std::__list_imp<char *>::clear((v2 + 8));
  MEMORY[0x1B8C85350](v1, 0x1020C404C081FCELL);
  _Unwind_Resume(a1);
}

uint64_t *fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::PushBack(uint64_t *result, uint64_t a2, int a3)
{
  v4 = result;
  v5 = *a2;
  if (*a2)
  {
    if (v5 == -2 && *(a2 + 24) == 0)
    {
      goto LABEL_8;
    }
  }

  v7 = *(a2 + 32);
  if (v7 >= -INFINITY && v7 <= -INFINITY)
  {
    goto LABEL_8;
  }

  if (*result != -2 || result[3])
  {
    v8 = *(result + 8);
    if (v8 < -INFINITY || v8 > -INFINITY)
    {
      if (a3)
      {
        v9 = result;
        if (result[7])
        {
          v9 = result[5] + 16;
        }

        if (!fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>::Compare::operator()(&v13, v9, a2))
        {
          fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>::Merge::operator()(v9, a2, &v10);
          *v9 = v10;
          if (v9 != &v10)
          {
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v9 + 8), v11[1], v11);
          }

          *(v9 + 32) = v12;
          return std::__list_imp<char *>::clear(v11);
        }
      }

      else if (!fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>::Compare::operator()(&v13, result, a2))
      {
        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__create_node[abi:ne200100]<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2> const&>();
      }

LABEL_8:
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__create_node[abi:ne200100]<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2> const&>();
    }
  }

  *result = v5;
  if (result != a2)
  {
    result = std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(result + 1, *(a2 + 16), a2 + 8);
  }

  *(v4 + 8) = *(a2 + 32);
  return result;
}

void sub_1B557B36C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<char *>::clear(va);
  _Unwind_Resume(a1);
}

float fst::Plus<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  if (*a1)
  {
    if (*(a1 + 24))
    {
      v7 = 0;
    }

    else
    {
      v7 = v6 == -2;
    }

    if (v7 || *(a1 + 32) == -INFINITY)
    {
      goto LABEL_10;
    }
  }

  else if (*(a1 + 32) == -INFINITY)
  {
    goto LABEL_10;
  }

  if ((*(a1 + 56) + 1) >= 2)
  {
    v13 = (a1 + 48);
    v16 = v6 != -2 || *(a1 + 24) != 0 || v6 == 0;
    v17 = 1;
LABEL_33:
    v18 = *v13;
    while (1)
    {
      v19 = v17;
      if (v17)
      {
        v20 = a1;
        if (!v16)
        {
          break;
        }
      }

      else
      {
        v20 = v18 + 16;
        if (v18 == a1 + 40)
        {
          break;
        }
      }

      if (*v20)
      {
        if (*v20 == -2 && *(v20 + 24) == 0)
        {
          goto LABEL_69;
        }
      }

      if (*(v20 + 32) == -INFINITY)
      {
        goto LABEL_69;
      }

      v17 = 0;
      if ((v19 & 1) == 0)
      {
        v17 = 0;
        v13 = (v18 + 8);
        goto LABEL_33;
      }
    }
  }

LABEL_10:
  v8 = *a2;
  if (!*a2)
  {
    if (*(a2 + 32) == -INFINITY)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (*(a2 + 24))
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 == -2;
  }

  if (!v9 && *(a2 + 32) != -INFINITY)
  {
LABEL_18:
    if ((*(a2 + 56) + 1) < 2)
    {
      goto LABEL_19;
    }

    v22 = (a2 + 48);
    v25 = v8 != -2 || *(a2 + 24) != 0 || v8 == 0;
    v26 = 1;
LABEL_56:
    v27 = *v22;
    while (1)
    {
      v28 = v26;
      if (v26)
      {
        v29 = a2;
        if (!v25)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v29 = v27 + 16;
        if (v27 == a2 + 40)
        {
          goto LABEL_19;
        }
      }

      if (*v29)
      {
        if (*v29 == -2 && *(v29 + 24) == 0)
        {
          break;
        }
      }

      if (*(v29 + 32) == -INFINITY)
      {
        break;
      }

      v26 = 0;
      if ((v28 & 1) == 0)
      {
        v26 = 0;
        v22 = (v27 + 8);
        goto LABEL_56;
      }
    }

LABEL_69:
    v31 = fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::NoWeight();
    *a3 = *v31;
    std::list<int>::list((a3 + 8), (v31 + 2));
    *(a3 + 32) = v31[8];
    std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list((a3 + 40), (v31 + 10));
    return result;
  }

LABEL_19:
  v10 = fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::Zero();
  if (fst::operator==<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>(a1, v10))
  {
    *a3 = *a2;
    std::list<int>::list((a3 + 8), a2 + 8);
    *(a3 + 32) = *(a2 + 32);
    std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list((a3 + 40), a2 + 40);
  }

  else
  {
    v12 = fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::Zero();
    if (!fst::operator==<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>(a2, v12))
    {
      v32 = *(a1 + 48);
      v49 = a2 + 40;
      v50 = a1 + 40;
      v33 = *(a2 + 48);
      v34 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>::NoWeight();
      *a3 = *v34;
      std::list<int>::list((a3 + 8), (v34 + 2));
      *(a3 + 32) = v34[8];
      *(a3 + 40) = a3 + 40;
      *(a3 + 48) = a3 + 40;
      *(a3 + 56) = 0;
      v35 = 1;
      v36 = 1;
LABEL_74:
      if (*a1)
      {
        if (*(a1 + 24))
        {
          v37 = 0;
        }

        else
        {
          v37 = *a1 == -2;
        }

        if (!v37)
        {
          result = *(a1 + 32);
          if (result != -INFINITY)
          {
            while (1)
            {
LABEL_82:
              if (v35)
              {
                if (*a2)
                {
                  if (*(a2 + 24))
                  {
                    v38 = 0;
                  }

                  else
                  {
                    v38 = *a2 == -2;
                  }

                  if (v38)
                  {
                    goto LABEL_108;
                  }

                  result = *(a2 + 32);
                  if (result == -INFINITY)
                  {
                    goto LABEL_108;
                  }
                }

                else
                {
                  result = *(a2 + 32);
                  if (result == -INFINITY)
                  {
                    goto LABEL_108;
                  }
                }
              }

              else if (v33 == v49)
              {
                goto LABEL_108;
              }

              if (v36)
              {
                v39 = a1;
              }

              else
              {
                v39 = (v32 + 16);
              }

              v66 = *v39;
              std::list<int>::list(v67, (v39 + 2));
              v68 = v39[8];
              if (v35)
              {
                v40 = a2;
              }

              else
              {
                v40 = (v33 + 16);
              }

              v63 = *v40;
              std::list<int>::list(v64, (v40 + 2));
              v65 = v40[8];
              if (fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>::Compare::operator()(v69, &v66, &v63))
              {
                v60 = v66;
                std::list<int>::list(v61, v67);
                v62 = v68;
                fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::PushBack(a3, &v60, 1);
                std::__list_imp<char *>::clear(v61);
                if (v36)
                {
                  v36 = 0;
                }

                else
                {
                  v36 = 0;
                  v32 = *(v32 + 8);
                }
              }

              else
              {
                v57 = v63;
                std::list<int>::list(v58, v64);
                v59 = v65;
                fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::PushBack(a3, &v57, 1);
                std::__list_imp<char *>::clear(v58);
                if (v35)
                {
                  v35 = 0;
                }

                else
                {
                  v35 = 0;
                  v33 = *(v33 + 8);
                }
              }

              std::__list_imp<char *>::clear(v64);
              std::__list_imp<char *>::clear(v67);
              if (v36)
              {
                goto LABEL_74;
              }

              if (v32 == v50)
              {
                goto LABEL_108;
              }
            }
          }
        }
      }

      else
      {
        result = *(a1 + 32);
        if (result != -INFINITY)
        {
          goto LABEL_82;
        }
      }

      while (1)
      {
LABEL_108:
        v41 = v36;
        if (v36)
        {
          v42 = *a1;
          if (*a1)
          {
            if (*(a1 + 24))
            {
              v43 = 0;
            }

            else
            {
              v43 = v42 == -2;
            }

            if (v43 || (result = *(a1 + 32), v44 = a1, result >= -INFINITY) && result <= -INFINITY)
            {
              while (1)
              {
LABEL_122:
                v45 = v35;
                if (v35)
                {
                  v46 = *a2;
                  if (*a2)
                  {
                    if (*(a2 + 24))
                    {
                      v47 = 0;
                    }

                    else
                    {
                      v47 = v46 == -2;
                    }

                    if (v47)
                    {
                      return result;
                    }

                    result = *(a2 + 32);
                    v48 = a2;
                    if (result == -INFINITY)
                    {
                      return result;
                    }
                  }

                  else
                  {
                    result = *(a2 + 32);
                    v48 = a2;
                    if (result == -INFINITY)
                    {
                      return result;
                    }
                  }
                }

                else
                {
                  if (v33 == v49)
                  {
                    return result;
                  }

                  v46 = *(v33 + 16);
                  v48 = v33 + 16;
                }

                v51 = v46;
                std::list<int>::list(v52, v48 + 8);
                v53 = *(v48 + 32);
                fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::PushBack(a3, &v51, 1);
                std::__list_imp<char *>::clear(v52);
                v35 = 0;
                if ((v45 & 1) == 0)
                {
                  v35 = 0;
                  v33 = *(v33 + 8);
                }
              }
            }
          }

          else
          {
            result = *(a1 + 32);
            v44 = a1;
            if (result == -INFINITY)
            {
              goto LABEL_122;
            }
          }
        }

        else
        {
          if (v32 == v50)
          {
            goto LABEL_122;
          }

          v42 = *(v32 + 16);
          v44 = v32 + 16;
        }

        v54 = v42;
        std::list<int>::list(v55, v44 + 8);
        v56 = *(v44 + 32);
        fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::PushBack(a3, &v54, 1);
        std::__list_imp<char *>::clear(v55);
        v36 = 0;
        if ((v41 & 1) == 0)
        {
          v36 = 0;
          v32 = *(v32 + 8);
        }
      }
    }

    *a3 = *a1;
    std::list<int>::list((a3 + 8), a1 + 8);
    *(a3 + 32) = *(a1 + 32);
    std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list((a3 + 40), a1 + 40);
  }

  return result;
}

uint64_t fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::UnionWeight(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  std::list<int>::list((a1 + 8), (a2 + 2));
  *(a1 + 32) = a2[8];
  std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list((a1 + 40), 1);
  return a1;
}

uint64_t fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>::Compare::operator()(uint64_t a1, int *a2, int *a3)
{
  v21 = *a2;
  std::list<int>::list(v22, (a2 + 2));
  v17 = *a3;
  std::list<int>::list(&v18, (a3 + 2));
  if (v21)
  {
    v4 = v23 + 1;
  }

  else
  {
    v4 = 0;
  }

  if (!v17 || v20 + 1 <= v4)
  {
    if (v17)
    {
      v6 = v20 + 1;
    }

    else
    {
      v6 = 0;
    }

    if (v21 && v23 + 1 > v6)
    {
LABEL_12:
      v5 = 0;
      goto LABEL_13;
    }

    v8 = v22[1];
    v9 = &v19;
    v10 = 1;
LABEL_15:
    v11 = *v9;
    while (1)
    {
      v12 = v10;
      if (v10)
      {
        if (!v21)
        {
          goto LABEL_12;
        }

        v13 = &v21;
      }

      else
      {
        v13 = (v8 + 2);
        if (v8 == v22)
        {
          goto LABEL_12;
        }
      }

      v14 = *v13;
      v15 = (v12 & 1) != 0 ? &v17 : (v11 + 16);
      v16 = *v15;
      if (v14 < v16)
      {
        break;
      }

      if (v14 > v16)
      {
        goto LABEL_12;
      }

      v10 = 0;
      if ((v12 & 1) == 0)
      {
        v10 = 0;
        v8 = v8[1];
        v9 = (v11 + 8);
        goto LABEL_15;
      }
    }
  }

  v5 = 1;
LABEL_13:
  std::__list_imp<char *>::clear(&v18);
  std::__list_imp<char *>::clear(v22);
  return v5;
}

void *fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>::Merge::operator()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v10 = *a1;
  std::list<int>::list(v11, a1 + 8);
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

  fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>::GallicWeight(a3, &v10, v7);
  return std::__list_imp<char *>::clear(v11);
}

void std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__move_assign(uint64_t *a1, uint64_t *a2)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(a1);
  v4 = a2[2];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = *(*a2 + 8);
    v8 = *v5;
    *(v8 + 8) = v7;
    *v7 = v8;
    v9 = *a1;
    *(v9 + 8) = v5;
    *v5 = v9;
    *a1 = v6;
    *(v6 + 8) = a1;
    a1[2] += v4;
    a2[2] = 0;
  }
}

uint64_t *std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>();
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

void sub_1B557BF44(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t *__p)
{
  if (*(a1 + 8) == 1)
  {
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(__p + 11);
    std::__list_imp<char *>::clear(__p + 7);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>::DeterminizeArc(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Zero();
  *(a1 + 8) = *v3;
  std::list<int>::list((a1 + 16), (v3 + 2));
  *(a1 + 40) = v3[8];
  std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list((a1 + 48), (v3 + 10));
  operator new();
}

void sub_1B557C044(_Unwind_Exception *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v1 + 48));
  std::__list_imp<char *>::clear((v1 + 16));
  _Unwind_Resume(a1);
}

void sub_1B557C0E8(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v1 + 3);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>::operator()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>::Zero();
  v36 = *v5;
  std::list<int>::list(v37, v5 + 8);
  v38 = *(v5 + 32);
  v6 = (a1 + 48);
  v7 = 1;
LABEL_2:
  v8 = *v6;
  v9 = *v6 + 16;
  while (1)
  {
    v10 = v7;
    if ((v7 & 1) == 0)
    {
      if (v8 == a1 + 40)
      {
        break;
      }

      v12 = v9;
      goto LABEL_13;
    }

    if (!*a1)
    {
      v13 = *(a1 + 32);
      if (v13 >= -INFINITY && v13 <= -INFINITY)
      {
        break;
      }

      goto LABEL_10;
    }

    v11 = !*(a1 + 24) && *a1 == -2;
    if (v11 || *(a1 + 32) == -INFINITY)
    {
      break;
    }

LABEL_10:
    v12 = a1;
LABEL_13:
    fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>::operator()(&v36, v12, &v32);
    v36 = v32;
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v37, v34, &v33);
    v38 = v35;
    std::__list_imp<char *>::clear(&v33);
    v7 = 0;
    if ((v10 & 1) == 0)
    {
      v7 = 0;
      v6 = (v8 + 8);
      goto LABEL_2;
    }
  }

  v14 = (a2 + 48);
  v15 = 1;
  while (2)
  {
    v16 = *v14;
    v17 = *v14 + 16;
LABEL_19:
    v18 = v15;
    if ((v15 & 1) == 0)
    {
      if (v16 == a2 + 40)
      {
        goto LABEL_33;
      }

      v20 = v17;
      goto LABEL_29;
    }

    if (!*a2)
    {
      v21 = *(a2 + 32);
      if (v21 >= -INFINITY && v21 <= -INFINITY)
      {
        goto LABEL_33;
      }

LABEL_26:
      v20 = a2;
LABEL_29:
      fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>::operator()(&v36, v20, &v32);
      v36 = v32;
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v37, v34, &v33);
      v38 = v35;
      std::__list_imp<char *>::clear(&v33);
      v15 = 0;
      if ((v18 & 1) == 0)
      {
        v15 = 0;
        v14 = (v16 + 8);
        continue;
      }

      goto LABEL_19;
    }

    break;
  }

  if (*(a2 + 24))
  {
    v19 = 0;
  }

  else
  {
    v19 = *a2 == -2;
  }

  if (!v19 && *(a2 + 32) != -INFINITY)
  {
    goto LABEL_26;
  }

LABEL_33:
  v22 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>::Zero();
  if (v36)
  {
    v23 = v37[2] + 1;
  }

  else
  {
    v23 = 0;
  }

  if (*v22)
  {
    v24 = *(v22 + 24) + 1;
  }

  else
  {
    v24 = 0;
  }

  if (v23 != v24)
  {
    goto LABEL_49;
  }

  v25 = v37[1];
  v26 = (v22 + 16);
  for (i = 1; ; i = 0)
  {
    v28 = *v26;
    if (i)
    {
      if (!v36)
      {
        break;
      }

      if (v36 != *v22)
      {
        goto LABEL_49;
      }
    }

    if (v25 == v37)
    {
      break;
    }

    if (*(v25 + 16) != *(v28 + 16))
    {
      goto LABEL_49;
    }

    v25 = *(v25 + 8);
    v26 = (v28 + 8);
  }

  v32 = LODWORD(v38);
  v39 = *(v22 + 32);
  if (v38 == v39)
  {
    v29 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Zero();
    *a3 = *v29;
    std::list<int>::list((a3 + 8), (v29 + 2));
    *(a3 + 32) = v29[8];
    std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list((a3 + 40), (v29 + 10));
  }

  else
  {
LABEL_49:
    fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::GallicWeight(a3, &v36);
  }

  return std::__list_imp<char *>::clear(v37);
}

void sub_1B557C408(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  std::__list_imp<char *>::clear(v1);
  _Unwind_Resume(a1);
}

void *fst::Plus<int,fst::TropicalWeightTpl<float>>@<X0>(int *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *a1;
  std::list<int>::list(v12, (a1 + 2));
  v13 = a1[8];
  std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v14, (a1 + 10));
  v7 = *a2;
  std::list<int>::list(v8, (a2 + 2));
  v9 = a2[8];
  std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v10, (a2 + 10));
  fst::Plus<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>(&v11, &v7, &v15);
  fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::GallicWeight(a3, &v15);
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v17);
  std::__list_imp<char *>::clear(v16);
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v10);
  std::__list_imp<char *>::clear(v8);
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v14);
  return std::__list_imp<char *>::clear(v12);
}

void sub_1B557C52C(_Unwind_Exception *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v1 + 40));
  std::__list_imp<char *>::clear((v1 + 8));
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v2 + 40));
  std::__list_imp<char *>::clear((v2 + 8));
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v3 + 40));
  std::__list_imp<char *>::clear((v3 + 8));
  _Unwind_Resume(a1);
}

uint64_t *std::forward_list<fst::DeterminizeElement<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::erase_after(uint64_t a1, uint64_t **a2)
{
  v3 = *a2;
  v4 = *a2 + 3;
  *a2 = **a2;
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v3 + 7);
  std::__list_imp<char *>::clear(v4);
  operator delete(v3);
  return *a2;
}

void *fst::Divide<int,fst::TropicalWeightTpl<float>>@<X0>(int *a1@<X0>, int *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v13 = *a1;
  std::list<int>::list(v14, (a1 + 2));
  v15 = a1[8];
  std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v16, (a1 + 10));
  v9 = *a2;
  std::list<int>::list(v10, (a2 + 2));
  v11 = a2[8];
  std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v12, (a2 + 10));
  fst::Divide<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>(&v13, &v9, a3, &v17);
  fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::GallicWeight(a4, &v17);
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v19);
  std::__list_imp<char *>::clear(v18);
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v12);
  std::__list_imp<char *>::clear(v10);
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v16);
  return std::__list_imp<char *>::clear(v14);
}

void sub_1B557C6CC(_Unwind_Exception *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v1 + 40));
  std::__list_imp<char *>::clear((v1 + 8));
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v2 + 40));
  std::__list_imp<char *>::clear((v2 + 8));
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v3 + 40));
  std::__list_imp<char *>::clear((v3 + 8));
  _Unwind_Resume(a1);
}

void *fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Quantize@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::Quantize(a1, &v5, a3);
  fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::GallicWeight(a2, &v5);
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v7);
  return std::__list_imp<char *>::clear(v6);
}

void sub_1B557C778(_Unwind_Exception *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v1 + 40));
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::GallicWeight(uint64_t a1, int *a2)
{
  v5 = *a2;
  std::list<int>::list(v6, (a2 + 2));
  v7 = a2[8];
  fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::UnionWeight(a1, &v5);
  std::__list_imp<char *>::clear(v6);
  return a1;
}

float fst::Divide<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  if (*a1)
  {
    if (*(a1 + 24))
    {
      v9 = 0;
    }

    else
    {
      v9 = v8 == -2;
    }

    if (v9 || *(a1 + 32) == -INFINITY)
    {
      goto LABEL_10;
    }
  }

  else if (*(a1 + 32) == -INFINITY)
  {
    goto LABEL_10;
  }

  if ((*(a1 + 56) + 1) >= 2)
  {
    v16 = (a1 + 48);
    v19 = v8 != -2 || *(a1 + 24) != 0 || v8 == 0;
    v20 = 1;
LABEL_32:
    v21 = *v16;
    while (1)
    {
      v22 = v20;
      if (v20)
      {
        v23 = a1;
        if (!v19)
        {
          break;
        }
      }

      else
      {
        v23 = v21 + 16;
        if (v21 == a1 + 40)
        {
          break;
        }
      }

      if (*v23)
      {
        if (*v23 == -2 && *(v23 + 24) == 0)
        {
          goto LABEL_68;
        }
      }

      if (*(v23 + 32) == -INFINITY)
      {
        goto LABEL_68;
      }

      v20 = 0;
      if ((v22 & 1) == 0)
      {
        v20 = 0;
        v16 = (v21 + 8);
        goto LABEL_32;
      }
    }
  }

LABEL_10:
  v10 = *a2;
  if (*a2)
  {
    if (*(a2 + 24))
    {
      v11 = 0;
    }

    else
    {
      v11 = v10 == -2;
    }

    if (!v11 && *(a2 + 32) != -INFINITY)
    {
      goto LABEL_18;
    }
  }

  else if (*(a2 + 32) != -INFINITY)
  {
LABEL_18:
    if ((*(a2 + 56) + 1) < 2)
    {
      goto LABEL_19;
    }

    v25 = (a2 + 48);
    v28 = v10 != -2 || *(a2 + 24) != 0 || v10 == 0;
    v29 = 1;
LABEL_55:
    v30 = *v25;
    while (1)
    {
      v31 = v29;
      if (v29)
      {
        v32 = a2;
        if (!v28)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v32 = v30 + 16;
        if (v30 == a2 + 40)
        {
          goto LABEL_19;
        }
      }

      if (*v32)
      {
        if (*v32 == -2 && *(v32 + 24) == 0)
        {
          break;
        }
      }

      if (*(v32 + 32) == -INFINITY)
      {
        break;
      }

      v29 = 0;
      if ((v31 & 1) == 0)
      {
        v29 = 0;
        v25 = (v30 + 8);
        goto LABEL_55;
      }
    }

LABEL_68:
    v34 = fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::NoWeight();
    *a4 = *v34;
    std::list<int>::list((a4 + 8), (v34 + 2));
    *(a4 + 32) = v34[8];
    std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list((a4 + 40), (v34 + 10));
    return result;
  }

LABEL_19:
  v12 = fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::Zero();
  if ((fst::operator==<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>(a1, v12) & 1) != 0 || (v13 = fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::Zero(), fst::operator==<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>(a2, v13)))
  {
    v14 = fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::Zero();
    *a4 = *v14;
    std::list<int>::list((a4 + 8), (v14 + 2));
    *(a4 + 32) = v14[8];
    std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list((a4 + 40), (v14 + 10));
    return result;
  }

  v35 = (a2 + 40);
  v36 = *a2 == -2 && !*(a2 + 24) || *(a2 + 32) == -INFINITY;
  v37 = *(a1 + 48);
  v38 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>::NoWeight();
  *a4 = *v38;
  std::list<int>::list((a4 + 8), (v38 + 2));
  *(a4 + 32) = v38[8];
  *(a4 + 40) = a4 + 40;
  *(a4 + 48) = a4 + 40;
  *(a4 + 56) = 0;
  if (*a1)
  {
    if (*(a1 + 24))
    {
      v39 = 0;
    }

    else
    {
      v39 = *a1 == -2;
    }

    if (v39 || (result = *(a1 + 32), result == -INFINITY))
    {
LABEL_82:
      if (*a2)
      {
        if (*(a2 + 24))
        {
          v40 = 0;
        }

        else
        {
          v40 = *a2 == -2;
        }

        if (!v40)
        {
          result = *(a2 + 32);
          if (result != -INFINITY)
          {
LABEL_90:
            if (!*(a2 + 56))
            {
              for (i = 1; ; i = 0)
              {
                v47 = v37;
                v54 = v37 + 16;
                do
                {
                  v48 = i;
                  if (i)
                  {
                    if (*a1)
                    {
                      if (*(a1 + 24))
                      {
                        v49 = 0;
                      }

                      else
                      {
                        v49 = *a1 == -2;
                      }

                      if (v49)
                      {
                        return result;
                      }

                      result = *(a1 + 32);
                      v50 = a1;
                      if (result == -INFINITY)
                      {
                        return result;
                      }
                    }

                    else
                    {
                      result = *(a1 + 32);
                      v50 = a1;
                      if (result == -INFINITY)
                      {
                        return result;
                      }
                    }
                  }

                  else
                  {
                    v50 = v54;
                    if (v47 == a1 + 40)
                    {
                      return result;
                    }
                  }

                  if (v35 == *(a2 + 48))
                  {
                    v51 = a2;
                  }

                  else
                  {
                    v51 = *(a2 + 40) + 16;
                  }

                  fst::Divide<int,(fst::StringType)2>(v50, v51, a3, &v59);
                  v52 = *(v50 + 32);
                  v53 = NAN;
                  if (v52 != -INFINITY)
                  {
                    if ((*(v51 + 32) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
                    {
                      v53 = INFINITY;
                      if (v52 != INFINITY)
                      {
                        v53 = v52 - *(v51 + 32);
                      }
                    }

                    else
                    {
                      v53 = NAN;
                    }
                  }

                  fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>::GallicWeight(v55, &v59, v53);
                  std::__list_imp<char *>::clear(v60);
                  fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::PushBack(a4, v55, 1);
                  std::__list_imp<char *>::clear(v56);
                  i = 0;
                }

                while ((v48 & 1) != 0);
                v37 = *(v47 + 8);
              }
            }
          }
        }
      }

      else
      {
        result = *(a2 + 32);
        if (result != -INFINITY)
        {
          goto LABEL_90;
        }
      }

      v41 = fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::NoWeight();
      fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::operator=(a4, v41);
      return result;
    }
  }

  else
  {
    result = *(a1 + 32);
    if (result == -INFINITY)
    {
      goto LABEL_82;
    }
  }

  if (*(a1 + 56))
  {
    goto LABEL_82;
  }

  if (!v36)
  {
    v42 = *(a2 + 48);
    while (1)
    {
      v43 = a2;
      if (v35 != v42)
      {
        v43 = *v35 + 16;
      }

      fst::Divide<int,(fst::StringType)2>(a1, v43, a3, &v59);
      v44 = *(a1 + 32);
      v45 = NAN;
      if (v44 != -INFINITY)
      {
        if ((*(v43 + 32) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v45 = INFINITY;
          if (v44 != INFINITY)
          {
            v45 = v44 - *(v43 + 32);
          }
        }

        else
        {
          v45 = NAN;
        }
      }

      fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>::GallicWeight(v57, &v59, v45);
      std::__list_imp<char *>::clear(v60);
      fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::PushBack(a4, v57, 1);
      std::__list_imp<char *>::clear(v58);
      v42 = *(a2 + 48);
      if (v35 == v42)
      {
        break;
      }

      v35 = *v35;
    }
  }

  return result;
}

void sub_1B557CE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(a10);
  std::__list_imp<char *>::clear((v10 + 8));
  _Unwind_Resume(a1);
}

float *fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::Quantize@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v6 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>::NoWeight();
  *a2 = *v6;
  result = std::list<int>::list((a2 + 8), (v6 + 2));
  *(a2 + 32) = v6[8];
  *(a2 + 40) = a2 + 40;
  *(a2 + 48) = a2 + 40;
  *(a2 + 56) = 0;
  v8 = (a1 + 48);
  v9 = 1;
LABEL_2:
  v10 = *v8;
  v11 = *v8 + 16;
  while (1)
  {
    v12 = v9;
    if ((v9 & 1) == 0)
    {
      result = v11;
      if (v10 == a1 + 40)
      {
        return result;
      }

      goto LABEL_13;
    }

    if (*a1)
    {
      if (*a1 == -2 && *(a1 + 24) == 0)
      {
        return result;
      }
    }

    v14 = *(a1 + 32);
    result = a1;
    if (v14 >= -INFINITY && v14 <= -INFINITY)
    {
      return result;
    }

LABEL_13:
    fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>::Quantize(result, v15, a3);
    fst::UnionWeight<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>::PushBack(a2, v15, 1);
    result = std::__list_imp<char *>::clear(v16);
    v9 = 0;
    if ((v12 & 1) == 0)
    {
      v9 = 0;
      v8 = (v10 + 8);
      goto LABEL_2;
    }
  }
}

void sub_1B557CF88(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v3 + 8));
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v2);
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>::FindState(uint64_t a1, int **a2)
{
  State = fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::FindState(*(a1 + 184), a2);
  v5 = State;
  if (*(a1 + 152))
  {
    v6 = *(a1 + 160);
    if (State >= ((v6[1] - *v6) >> 6))
    {
      fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>::ComputeDistance(a1, a2, &v8);
      std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::push_back[abi:ne200100](v6, &v8);
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v10);
      std::__list_imp<char *>::clear(v9);
    }
  }

  return v5;
}

void sub_1B557D050(_Unwind_Exception *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v1 + 40));
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::FindState(void *a1, void **a2)
{
  v6 = a2;
  v2 = (a1[12] - a1[11]) >> 3;
  Id = fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::FindId(a1 + 1, &v6, 1);
  if (Id != v2)
  {
    v4 = v6;
    if (v6)
    {
      std::__forward_list_base<fst::DeterminizeElement<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::clear(v6);
      MEMORY[0x1B8C85350](v4, 0x1020C405F07FB98);
    }
  }

  return Id;
}

uint64_t std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::__emplace_back_slow_path<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>(a1, a2);
  }

  else
  {
    std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::__construct_one_at_end[abi:ne200100]<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>(a1, a2);
    result = v3 + 64;
  }

  a1[1] = result;
  return result;
}

void *fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicCommonDivisor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>::ComputeDistance@<X0>(uint64_t a1@<X0>, int **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Zero();
  *a3 = *v6;
  std::list<int>::list((a3 + 8), (v6 + 2));
  *(a3 + 32) = v6[8];
  result = std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list((a3 + 40), (v6 + 10));
  for (i = *a2; i; i = *i)
  {
    v9 = i[2];
    v10 = **(a1 + 152);
    if (v9 >= (*(*(a1 + 152) + 8) - v10) >> 6)
    {
      v11 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Zero();
    }

    else
    {
      v11 = (v10 + (v9 << 6));
    }

    v19 = *v11;
    std::list<int>::list(v20, (v11 + 2));
    v21 = v11[8];
    std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v22, (v11 + 10));
    fst::Times<int,fst::TropicalWeightTpl<float>>(i + 4, &v19, &v12);
    fst::Plus<int,fst::TropicalWeightTpl<float>>(a3, &v12, &v15);
    *a3 = v15;
    if (&v15 != a3)
    {
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a3 + 8), v16[1], v16);
    }

    *(a3 + 32) = v17;
    std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__move_assign((a3 + 40), v18);
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v18);
    std::__list_imp<char *>::clear(v16);
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v14);
    std::__list_imp<char *>::clear(v13);
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v22);
    result = std::__list_imp<char *>::clear(v20);
  }

  return result;
}

uint64_t fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::FindId(void *a1, void *a2, int a3)
{
  a1[13] = a2;
  v6 = std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::find<int>(a1 + 3, &fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::kCurrentKey);
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
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 3, &v20);
  return v20;
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::find<int>(void *a1, int *a2)
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

    v7 = fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleKey::operator()(v5, *v6);
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
      if (fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual::operator()(a1 + 6, *(i + 4), *a2))
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

uint64_t fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual::operator()(uint64_t *a1, int a2, int a3)
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
    return std::operator==[abi:ne200100]<fst::DeterminizeElement<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,std::allocator<fst::DeterminizeElement<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>(*v7, v6);
  }

  else
  {
    return 0;
  }
}

uint64_t fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleKey::operator()(uint64_t a1, uint64_t **a2)
{
  v2 = *(a2 + 8);
  for (i = *a2; i; i = *i)
  {
    v4 = 0;
    v5 = *(i + 2);
    v6 = i[8];
    v7 = *(i + 4);
    if (!v7 || (v7 == -2 ? (v8 = i[5] == 0) : (v8 = 0), !v8))
    {
      if (*(i + 12) != -INFINITY)
      {
        v9 = fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Hash(i + 4);
        while (1)
        {
          v4 ^= v9;
          if (v6 == i + 7)
          {
            break;
          }

          v9 = fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Hash((v6 + 16)) ^ (2 * v4);
          v6 = *(v6 + 8);
        }
      }
    }

    v2 ^= (2 * v2) ^ (32 * v5) ^ (v5 >> 59) ^ v4;
  }

  return v2;
}

uint64_t std::operator==[abi:ne200100]<fst::DeterminizeElement<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,std::allocator<fst::DeterminizeElement<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>(uint64_t *a1, uint64_t *a2)
{
  while (1)
  {
    a1 = *a1;
    a2 = *a2;
    if (!a1 || a2 == 0)
    {
      break;
    }

    if (*(a1 + 2) != *(a2 + 2) || (fst::operator==<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>((a1 + 2), (a2 + 2)) & 1) == 0)
    {
      return 0;
    }
  }

  return (a1 == 0) ^ (a2 != 0);
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *a1, int *a2)
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

    v7 = fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleKey::operator()(v5, *v6);
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

  if ((fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual::operator()(a1 + 6, *(v13 + 4), *a2) & 1) == 0)
  {
    goto LABEL_23;
  }

  return v13;
}

void *std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::__construct_one_at_end[abi:ne200100]<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  result = std::list<int>::list((v4 + 8), a2 + 8);
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 40) = v4 + 40;
  *(v4 + 48) = v4 + 40;
  *(v4 + 56) = 0;
  v6 = *(a2 + 56);
  if (v6)
  {
    v8 = *(a2 + 40);
    v7 = *(a2 + 48);
    v9 = *(v8 + 8);
    v10 = *v7;
    *(v10 + 8) = v9;
    *v9 = v10;
    v11 = *(v4 + 40);
    *(v11 + 8) = v7;
    *v7 = v11;
    *(v4 + 40) = v8;
    *(v8 + 8) = v4 + 40;
    *(v4 + 56) = v6;
    *(a2 + 56) = 0;
  }

  *(a1 + 8) = v4 + 64;
  return result;
}

uint64_t std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::__emplace_back_slow_path<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v24 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>>(a1, v7);
  }

  v8 = v2 << 6;
  v21 = 0;
  v22 = v8;
  v23 = v8;
  *v8 = *a2;
  std::list<int>::list((v8 + 8), a2 + 8);
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 40) = v8 + 40;
  *(v8 + 48) = v8 + 40;
  *(v8 + 56) = 0;
  v9 = *(a2 + 56);
  if (v9)
  {
    v11 = *(a2 + 40);
    v10 = *(a2 + 48);
    v12 = *(v11 + 8);
    v13 = *v10;
    *(v13 + 8) = v12;
    *v12 = v13;
    v14 = *(v8 + 40);
    *(v14 + 8) = v10;
    *v10 = v14;
    *(v8 + 40) = v11;
    *(v11 + 8) = v8 + 40;
    *(v8 + 56) = v9;
    *(a2 + 56) = 0;
  }

  *&v23 = v23 + 64;
  v15 = a1[1];
  v16 = v22 + *a1 - v15;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>,fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>*>(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  v18 = a1[2];
  v20 = v23;
  *(a1 + 1) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  std::__split_buffer<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::~__split_buffer(&v21);
  return v20;
}

void sub_1B557DB8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>,fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v4 = a4;
    v6 = a2;
    v7 = a2 + 40;
    do
    {
      v8 = v7 - 40;
      *v4 = *(v7 - 40);
      std::list<int>::list((v4 + 8), v7 - 32);
      *(v4 + 32) = *(v7 - 8);
      std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list((v4 + 40), v7);
      v4 = v13 + 64;
      v13 += 64;
      v7 += 64;
    }

    while (v8 + 64 != a3);
    v11 = 1;
    while (v6 != a3)
    {
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v6 + 40));
      std::__list_imp<char *>::clear((v6 + 8));
      v6 += 64;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>,fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>,fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>,fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void *std::_AllocatorDestroyRangeReverse<std::allocator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>,fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>*>::operator()[abi:ne200100](void *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 64)
  {
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v3 - 24));
    result = std::__list_imp<char *>::clear((v3 - 56));
  }

  return result;
}

void **std::__split_buffer<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::~__split_buffer(void **a1)
{
  std::__split_buffer<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::__destruct_at_end[abi:ne200100](a1, a1[1]);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::__destruct_at_end[abi:ne200100](void *result, uint64_t a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v4[2] = v2 - 64;
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v2 - 24));
      result = std::__list_imp<char *>::clear((v2 - 56));
      v2 = v4[2];
    }

    while (v2 != a2);
  }

  return result;
}

void std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::IntegerFilterState<signed char>>>>>>::destroy(a1, a2[1]);
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(a2 + 11);
    std::__list_imp<char *>::clear(a2 + 7);

    operator delete(a2);
  }
}

uint64_t fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::Start(uint64_t a1)
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

void *fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::Final@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::HasFinal(a1, a2) & 1) == 0)
  {
    (*(*a1 + 64))(&v11, a1, a2);
    v7 = v11;
    std::list<int>::list(v8, v12);
    v9 = v13;
    std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v10, v14);
    fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::SetFinal(a1, a2, &v7);
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v10);
    std::__list_imp<char *>::clear(v8);
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v14);
    std::__list_imp<char *>::clear(v12);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Final(a1, a2, a3);
}

void sub_1B557E024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v15 + 40));
  std::__list_imp<char *>::clear((v15 + 8));
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(va);
  std::__list_imp<char *>::clear((v14 + 8));
  _Unwind_Resume(a1);
}

unint64_t fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::NumArcs(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::HasArcs(a1, a2) & 1) == 0)
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

  return 0xCCCCCCCCCCCCCCCDLL * ((*(*v5 + 88) - *(*v5 + 80)) >> 4);
}

uint64_t fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::NumInputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::HasArcs(a1, a2) & 1) == 0)
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

  return *(*v5 + 64);
}

uint64_t fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::NumOutputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::HasArcs(a1, a2) & 1) == 0)
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

  return *(*v5 + 72);
}

void *fst::DeterminizeFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::DeterminizeFst(void *a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D1D2C0;
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
    fst::ImplToFst<fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::SetImpl(a1, v4, 0);
  }

  return a1;
}

uint64_t fst::CacheStateIterator<fst::DeterminizeFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Done(uint64_t a1)
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
    fst::ArcIterator<fst::DeterminizeFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::ArcIterator(&v19, *(a1 + 8), v6);
    v7 = *(v19 + 80);
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(v19 + 88) - v7) >> 4);
    v9 = *(a1 + 16);
    v10 = v8 - v20;
    if (v8 > v20)
    {
      v11 = *(v9 + 68);
      v12 = (v7 + 80 * v20 + 72);
      do
      {
        v14 = *v12;
        v12 += 20;
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
    --*(v19 + 108);
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

uint64_t *fst::ArcIterator<fst::DeterminizeFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::ArcIterator(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 108);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    (*(**(a2 + 8) + 48))(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::InitArcIterator(uint64_t a1, uint64_t a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::InitArcIterator(a1, a2, a3);
}

void fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::~FactorWeightFst(void *a1)
{
  fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

void sub_1B557EB14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  v21 = v19;
  v22 = (v19 - 5);
  v23 = *v21;
  if (*v21)
  {
    v18[30] = v23;
    operator delete(v23);
  }

  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>>>::~__hash_table(v22);
  std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>>::__destroy_vector::operator()[abi:ne200100](&__p);
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::~CacheBaseImpl(v18);
  _Unwind_Resume(a1);
}

void fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::~FactorWeightFstImpl(uint64_t a1)
{
  fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::~FactorWeightFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v2 + 8);
      std::__list_imp<char *>::clear(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>>::__base_destruct_at_end[abi:ne200100](void *result, uint64_t a2)
{
  v3 = result;
  for (i = result[1]; i != a2; i -= 72)
  {
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((i - 24));
    result = std::__list_imp<char *>::clear((i - 56));
  }

  v3[1] = a2;
  return result;
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::~FactorWeightFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D1D6C0;
  v2 = *(a1 + 136);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 232);
  if (v3)
  {
    *(a1 + 240) = v3;
    operator delete(v3);
  }

  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>>>::~__hash_table(a1 + 192);
  v5 = (a1 + 168);
  std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>>::__destroy_vector::operator()[abi:ne200100](&v5);
  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::~CacheBaseImpl(a1);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      result = (*(**(a1 + 136) + 24))(*(a1 + 136));
      if (result == -1)
      {
        return result;
      }

      v3 = (*(**(a1 + 136) + 24))(*(a1 + 136));
      v4 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::One();
      v6 = *v4;
      std::list<int>::list(v7, (v4 + 2));
      v8 = v4[8];
      std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v9, (v4 + 10));
      fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element::Element(v10, v3, &v6);
      State = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::FindState(a1, v10);
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v12);
      std::__list_imp<char *>::clear(v11);
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v9);
      std::__list_imp<char *>::clear(v7);
      *(a1 + 64) = State;
      *(a1 + 60) = 1;
      if (*(a1 + 68) <= State)
      {
        *(a1 + 68) = State + 1;
      }
    }
  }

  return *(a1 + 64);
}

void sub_1B557EFC0(_Unwind_Exception *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v1 + 48));
  std::__list_imp<char *>::clear((v1 + 16));
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v2 + 40));
  std::__list_imp<char *>::clear((v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::FindState(uint64_t a1, int *a2)
{
  if ((*(a1 + 148) & 2) != 0 || (v4 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::One(), !fst::operator==<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>((a2 + 2), v4)) || (v5 = *a2, *a2 == -1))
  {
    v12 = std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>>>::find<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>((a1 + 192), a2);
    if (v12)
    {
      return *(v12 + 22);
    }

    else
    {
      v13 = *(a1 + 168);
      v14 = *(a1 + 176);
      std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>>::push_back[abi:ne200100](a1 + 168, a2);
      v15 = a2[2];
      v18[0] = *a2;
      v18[2] = v15;
      std::list<int>::list(v19, (a2 + 4));
      v20 = a2[10];
      std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v21, (a2 + 12));
      v16 = (v14 - v13) >> 3;
      v11 = (954437177 * v16);
      v22 = 954437177 * v16;
      std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>>>::__emplace_unique_key_args<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::pair<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element const,int>>((a1 + 192), v18);
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v21);
      std::__list_imp<char *>::clear(v19);
    }
  }

  else
  {
    v6 = v5;
    v7 = *(a1 + 232);
    if (v5 >= ((*(a1 + 240) - v7) >> 2))
    {
      do
      {
        std::vector<int>::push_back[abi:ne200100]((a1 + 232), &fst::kNoStateId);
        v7 = *(a1 + 232);
        v5 = *a2;
        v6 = *a2;
      }

      while (v6 >= (*(a1 + 240) - v7) >> 2);
    }

    if (*(v7 + 4 * v6) == -1)
    {
      v8 = *(a1 + 168);
      v9 = *(a1 + 176);
      v10 = a1 + 168;
      *(v7 + 4 * v6) = 954437177 * ((v9 - v8) >> 3);
      std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>>::push_back[abi:ne200100](v10, a2);
      v5 = *a2;
      v7 = *(v10 + 64);
    }

    return *(v7 + 4 * v5);
  }

  return v11;
}

void sub_1B557F180(_Unwind_Exception *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v1 + 48));
  std::__list_imp<char *>::clear((v1 + 16));
  _Unwind_Resume(a1);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element::Element(uint64_t a1, int a2, _DWORD *a3)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  std::list<int>::list((a1 + 16), (a3 + 2));
  *(a1 + 40) = a3[8];
  std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list((a1 + 48), (a3 + 10));
  return a1;
}

uint64_t std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>>::__emplace_back_slow_path<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element const&>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>>::construct[abi:ne200100]<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element const&,0>(a1, *(a1 + 8), a2);
    result = v3 + 72;
    *(a1 + 8) = v3 + 72;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>>::__emplace_back_slow_path<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element const&>(uint64_t a1, _DWORD *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>>(a1, v6);
  }

  v13 = 0;
  v14 = 72 * v2;
  std::allocator_traits<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>>::construct[abi:ne200100]<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element const&,0>(a1, 72 * v2, a2);
  v15 = 72 * v2 + 72;
  v7 = *(a1 + 8);
  v8 = 72 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element> &>::~__split_buffer(&v13);
  return v12;
}

void sub_1B557F3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::allocator_traits<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>>::construct[abi:ne200100]<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element const&,0>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a2 = *a3;
  *(a2 + 8) = a3[2];
  std::list<int>::list((a2 + 16), (a3 + 4));
  *(a2 + 40) = a3[10];
  return std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list((a2 + 48), (a3 + 12));
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>>::construct[abi:ne200100]<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element const&,0>(a1, a4, v7);
      v7 += 9;
      a4 = v12 + 72;
      v12 += 72;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v5 + 6);
      std::__list_imp<char *>::clear(v5 + 2);
      v5 += 9;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void *std::_AllocatorDestroyRangeReverse<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element*>::operator()[abi:ne200100](void *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 72)
  {
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v3 - 24));
    result = std::__list_imp<char *>::clear((v3 - 56));
  }

  return result;
}

void **std::__split_buffer<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element> &>::~__split_buffer(void **a1)
{
  std::__split_buffer<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element> &>::__destruct_at_end[abi:ne200100](a1, a1[1]);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element> &>::__destruct_at_end[abi:ne200100](void *result, uint64_t a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v4[2] = v2 - 72;
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v2 - 24));
      result = std::__list_imp<char *>::clear((v2 - 56));
      v2 = v4[2];
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>>>::find<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>(void *a1, int *a2)
{
  v4 = std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,true>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (*(i + 4) == *a2 && (fst::operator==<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>((i + 3), (a2 + 2)) & 1) != 0)
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,true>::operator()[abi:ne200100](uint64_t a1, int *a2)
{
  v2 = 0;
  v3 = *a2;
  v4 = a2 + 12;
  v5 = *(a2 + 7);
  v6 = a2[2];
  if (!v6)
  {
    if (*(a2 + 10) == -INFINITY)
    {
      return v2 + 7853 * v3;
    }

    goto LABEL_11;
  }

  if (*(a2 + 4))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 == -2;
  }

  if (!v7 && *(a2 + 10) != -INFINITY)
  {
LABEL_11:
    v8 = fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Hash(a2 + 2);
    while (1)
    {
      v2 ^= v8;
      if (v5 == v4)
      {
        break;
      }

      v8 = fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Hash((v5 + 16)) ^ (2 * v2);
      v5 = *(v5 + 8);
    }
  }

  return v2 + 7853 * v3;
}

uint64_t *std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>>>::__emplace_unique_key_args<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::pair<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element const,int>>(void *a1, int *a2)
{
  v4 = std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,true>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_19;
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
LABEL_19:
    std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>>>::__construct_node_hash<std::pair<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element const,int>>();
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
      goto LABEL_19;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if (*(v11 + 4) != *a2 || (fst::operator==<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>((v11 + 3), (a2 + 2)) & 1) == 0)
  {
    goto LABEL_18;
  }

  return v11;
}

void sub_1B557FA90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B557FB60(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2 + 4);
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t *__p)
{
  if (*(a1 + 8) == 1)
  {
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(__p + 8);
    std::__list_imp<char *>::clear(__p + 4);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void *fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::HasFinal(a1, a2) & 1) == 0)
  {
    v6 = (*(a1 + 168) + 72 * a2);
    if (*v6 == -1)
    {
      v26 = v6[2];
      std::list<int>::list(v27, (v6 + 4));
      v28 = v6[10];
      std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v29, (v6 + 12));
    }

    else
    {
      (*(**(a1 + 136) + 32))(&v20);
      fst::Times<int,fst::TropicalWeightTpl<float>>(v6 + 2, &v20, &v26);
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v25);
      std::__list_imp<char *>::clear(&v21);
    }

    fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::GallicFactor(&v20, &v26);
    if (*(a1 + 148) & 1) == 0 || (v24)
    {
      goto LABEL_12;
    }

    if (v22 == 1)
    {
      if (*v20 == -2 && !*(v20 + 24))
      {
        goto LABEL_12;
      }

      v7 = *(v20 + 32);
      if (v7 >= -INFINITY && v7 <= -INFINITY)
      {
        goto LABEL_12;
      }
    }

    else if (v23 == v21)
    {
LABEL_12:
      v16 = v26;
      v8 = v17;
      std::list<int>::list(v17, v27);
      v18 = v28;
      v9 = v19;
      std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v19, v29);
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::SetFinal(a1, a2, &v16);
LABEL_13:
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v9);
      std::__list_imp<char *>::clear(v8);
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v29);
      std::__list_imp<char *>::clear(v27);
      return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Final(a1, a2, a3);
    }

    v11 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Zero();
    v12 = *v11;
    v8 = v13;
    std::list<int>::list(v13, (v11 + 2));
    v14 = v11[8];
    v9 = v15;
    std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v15, (v11 + 10));
    fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::SetFinal(a1, a2, &v12);
    goto LABEL_13;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Final(a1, a2, a3);
}

void sub_1B557FE10(_Unwind_Exception *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v2);
  std::__list_imp<char *>::clear(v1);
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v3 - 88));
  std::__list_imp<char *>::clear((v3 - 120));
  _Unwind_Resume(a1);
}

uint64_t fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::GallicFactor(uint64_t result, int *a2)
{
  *result = a2;
  *(result + 8) = a2 + 10;
  *(result + 16) = 1;
  *(result + 24) = *(a2 + 6);
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a2 + 3);
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = v2 == -2;
    }

    v5 = 1;
    if (!v4)
    {
      v6 = *(a2 + 8);
      if (v6 != -INFINITY)
      {
        v7 = *(a2 + 7);
        if (v7 != -1)
        {
          v5 = 0;
          v8 = !v3 && v2 == -2;
          if (!v8 && v6 != -INFINITY && !v7)
          {
            v9 = *(a2 + 3);
LABEL_17:
            v5 = (v9 + 1) < 2;
          }
        }
      }
    }
  }

  else
  {
    v5 = 1;
    if (*(a2 + 8) != -INFINITY)
    {
      v9 = *(a2 + 7);
      goto LABEL_17;
    }
  }

  *(result + 32) = v5;
  return result;
}

unint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::NumArcs(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Expand(a1, a2);
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

  return 0xCCCCCCCCCCCCCCCDLL * ((*(*v5 + 88) - *(*v5 + 80)) >> 4);
}

void *fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Expand(uint64_t a1, int a2)
{
  v4 = (*(a1 + 168) + 72 * a2);
  v75 = *v4;
  v76 = v4[2];
  std::list<int>::list(v77, (v4 + 4));
  v78 = v4[10];
  std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v79, (v4 + 12));
  if (v75 == -1)
  {
    goto LABEL_36;
  }

  v5 = *(a1 + 136);
  v74 = 0;
  (*(*v5 + 136))(v5);
  while (1)
  {
    if (!v70)
    {
      if (v74 >= v72)
      {
        goto LABEL_34;
      }

LABEL_8:
      v6 = (v71 + 80 * v74);
      goto LABEL_9;
    }

    if ((*(*v70 + 24))(v70))
    {
      break;
    }

    if (!v70)
    {
      goto LABEL_8;
    }

    v6 = (*(*v70 + 32))(v70);
LABEL_9:
    fst::Times<int,fst::TropicalWeightTpl<float>>(&v76, v6 + 2, &v66);
    fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::GallicFactor(&v61, &v66);
    if (*(a1 + 148) & 2) == 0 || (v65)
    {
      goto LABEL_11;
    }

    if (v63 == 1)
    {
      if (*v61 == -2 && !*(v61 + 24) || (v11 = *(v61 + 32), v11 >= -INFINITY) && v11 <= -INFINITY)
      {
LABEL_11:
        v7 = v6[18];
        v8 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::One();
        v57 = *v8;
        std::list<int>::list(v58, (v8 + 2));
        v59 = v8[8];
        std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v60, (v8 + 10));
        fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element::Element(&v44, v7, &v57);
        State = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::FindState(a1, &v44);
        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v49);
        std::__list_imp<char *>::clear(v46);
        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v60);
        std::__list_imp<char *>::clear(v58);
        LODWORD(v8) = *v6;
        v10 = v6[1];
        v53 = v66;
        std::list<int>::list(v54, v67);
        v55 = v68;
        std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v56, v69);
        fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::GallicArc(&v44, v8, v10, &v53, State);
        fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::PushArc(a1, a2, &v44);
        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v49);
        std::__list_imp<char *>::clear(v46);
        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v56);
        std::__list_imp<char *>::clear(v54);
        goto LABEL_12;
      }
    }

    else if (v64 == v62)
    {
      goto LABEL_11;
    }

    if (v63)
    {
      if (*v61 == -2 && !*(v61 + 24) || *(v61 + 32) == -INFINITY)
      {
        goto LABEL_12;
      }
    }

    else
    {
LABEL_30:
      if (v64 == v62)
      {
        goto LABEL_12;
      }
    }

    fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Value(&v61, &v44);
    v12 = v6[18];
    fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Quantize(&v50, &v41, *(a1 + 144));
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element::Element(v38, v12, &v41);
    v13 = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::FindState(a1, v38);
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v40);
    std::__list_imp<char *>::clear(v39);
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v43);
    std::__list_imp<char *>::clear(v42);
    v14 = *v6;
    v15 = v6[1];
    v34 = v44;
    std::list<int>::list(v35, &v45);
    v36 = v47;
    std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v37, &v48);
    fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::GallicArc(v38, v14, v15, &v34, v13);
    fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::PushArc(a1, a2, v38);
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v40);
    std::__list_imp<char *>::clear(v39);
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v37);
    std::__list_imp<char *>::clear(v35);
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v52);
    std::__list_imp<char *>::clear(v51);
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(&v48);
    std::__list_imp<char *>::clear(&v45);
    if (v63 == 1)
    {
      v63 = 0;
    }

    else
    {
      v64 = *(v64 + 8);
    }

    if ((v65 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_12:
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v69);
    std::__list_imp<char *>::clear(v67);
    if (v70)
    {
      (*(*v70 + 40))(v70);
    }

    else
    {
      ++v74;
    }
  }

  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  else
  {
LABEL_34:
    if (v73)
    {
      --*v73;
    }
  }

LABEL_36:
  if (*(a1 + 148))
  {
    if (v75 == -1)
    {
      goto LABEL_42;
    }

    (*(**(a1 + 136) + 32))(&v44);
    v16 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Zero();
    v17 = fst::operator==<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>(&v44, v16);
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(&v48);
    std::__list_imp<char *>::clear(&v45);
    if (v17)
    {
      goto LABEL_39;
    }

    if (v75 == -1)
    {
LABEL_42:
      v66 = v76;
      std::list<int>::list(v67, v77);
      v68 = v78;
      std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v69, v79);
    }

    else
    {
      (*(**(a1 + 136) + 32))(&v44);
      fst::Times<int,fst::TropicalWeightTpl<float>>(&v76, &v44, &v66);
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(&v48);
      std::__list_imp<char *>::clear(&v45);
    }

    v19 = *(a1 + 152);
    v20 = *(a1 + 156);
    fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::GallicFactor(&v70, &v66);
    if ((v74 & 1) == 0)
    {
      v21 = v72;
      do
      {
        if (v21)
        {
          if (*v70)
          {
            if (*v70 == -2 && *(v70 + 24) == 0)
            {
              break;
            }
          }

          v23 = *(v70 + 32);
          if (v23 >= -INFINITY && v23 <= -INFINITY)
          {
            break;
          }
        }

        else if (v73 == v71)
        {
          break;
        }

        fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Value(&v70, &v44);
        fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Quantize(&v50, &v31, *(a1 + 144));
        fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element::Element(v38, -1, &v31);
        v24 = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::FindState(a1, v38);
        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v40);
        std::__list_imp<char *>::clear(v39);
        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v33);
        std::__list_imp<char *>::clear(v32);
        v27 = v44;
        std::list<int>::list(v28, &v45);
        v29 = v47;
        std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v30, &v48);
        fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::GallicArc(v38, v19, v20, &v27, v24);
        fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::PushArc(a1, a2, v38);
        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v40);
        std::__list_imp<char *>::clear(v39);
        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v30);
        std::__list_imp<char *>::clear(v28);
        v25 = *(a1 + 160);
        v26 = *(a1 + 161);
        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v52);
        std::__list_imp<char *>::clear(v51);
        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(&v48);
        std::__list_imp<char *>::clear(&v45);
        if (v72 == 1)
        {
          LOBYTE(v72) = 0;
        }

        else
        {
          v73 = *(v73 + 8);
        }

        v21 = 0;
        v19 += v25;
        v20 += v26;
      }

      while ((v74 & 1) == 0);
    }

    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v69);
    std::__list_imp<char *>::clear(v67);
  }

LABEL_39:
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::SetArcs(a1, a2);
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v79);
  return std::__list_imp<char *>::clear(v77);
}

void sub_1B5580770(_Unwind_Exception *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v1 + 40));
  std::__list_imp<char *>::clear((v1 + 8));
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v2 + 48));
  std::__list_imp<char *>::clear((v2 + 16));
  _Unwind_Resume(a1);
}

void *fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Value@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) == 1)
  {
    v3 = *a1;
  }

  else
  {
    v3 = (*(a1 + 24) + 16);
  }

  v43 = *v3;
  std::list<int>::list(v44, (v3 + 2));
  v45 = v3[8];
  v40 = v43;
  std::list<int>::list(v41, v44);
  v5 = v43 == 0.0 || (v44[2] + 1) < 2;
  v42 = v5;
  fst::StringFactor<int,(fst::StringType)2>::Value(&v40, &v27);
  v35 = v27;
  v36[0] = v36;
  v36[1] = v36;
  v37 = 0;
  v6 = v30;
  if (v30)
  {
    v8 = v28;
    v7 = v29;
    v9 = *(v28 + 8);
    v10 = *v29;
    *(v10 + 8) = v9;
    *v9 = v10;
    v11 = v36[0];
    *(v36[0] + 8) = v7;
    *v7 = v11;
    v36[0] = v8;
    *(v8 + 8) = v36;
    v37 = v6;
    v30 = 0;
  }

  fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>::GallicWeight(&v38, &v35, v45);
  std::__list_imp<char *>::clear(v36);
  std::__list_imp<char *>::clear(&v32);
  std::__list_imp<char *>::clear(&v28);
  fst::StringFactor<int,(fst::StringType)2>::Value(&v40, &v27);
  v22 = v31;
  v23[0] = v23;
  v23[1] = v23;
  v24 = 0;
  v12 = v34;
  if (v34)
  {
    v14 = v32;
    v13 = v33;
    v15 = *(v32 + 8);
    v16 = *v33;
    *(v16 + 8) = v15;
    *v15 = v16;
    v17 = v23[0];
    *(v23[0] + 8) = v13;
    *v13 = v17;
    v23[0] = v14;
    *(v14 + 8) = v23;
    v24 = v12;
    v34 = 0;
  }

  fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>::GallicWeight(&v25, &v22, 0.0);
  std::__list_imp<char *>::clear(v23);
  std::__list_imp<char *>::clear(&v32);
  std::__list_imp<char *>::clear(&v28);
  fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::GallicWeight(&v27, &v38);
  fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::GallicWeight(&v19, &v25);
  std::pair<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>,fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::pair[abi:ne200100]<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>,fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>,0>(a2, &v27, &v19);
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v21);
  std::__list_imp<char *>::clear(v20);
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(&v32);
  std::__list_imp<char *>::clear(&v28);
  std::__list_imp<char *>::clear(v26);
  std::__list_imp<char *>::clear(v39);
  std::__list_imp<char *>::clear(v41);
  return std::__list_imp<char *>::clear(v44);
}

void sub_1B5580C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v31 + 40));
  std::__list_imp<char *>::clear((v31 + 8));
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(&a31);
  std::__list_imp<char *>::clear(&a27);
  std::__list_imp<char *>::clear(&a22);
  std::__list_imp<char *>::clear((v34 - 160));
  std::__list_imp<char *>::clear((v33 + 8));
  std::__list_imp<char *>::clear((v32 + 8));
  _Unwind_Resume(a1);
}

void sub_1B5580CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  std::__list_imp<char *>::clear(v31);
  std::__list_imp<char *>::clear(&a31);
  JUMPOUT(0x1B5580C94);
}

void *std::pair<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>,fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::~pair(void *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(a1 + 13);
  std::__list_imp<char *>::clear(a1 + 9);
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(a1 + 5);
  std::__list_imp<char *>::clear(a1 + 1);
  return a1;
}

uint64_t std::pair<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>,fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::pair[abi:ne200100]<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>,fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  std::list<int>::list((a1 + 8), a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = a1 + 40;
  *(a1 + 48) = a1 + 40;
  *(a1 + 56) = 0;
  v6 = *(a2 + 56);
  if (v6)
  {
    v8 = *(a2 + 40);
    v7 = *(a2 + 48);
    v9 = *(v8 + 8);
    v10 = *v7;
    *(v10 + 8) = v9;
    *v9 = v10;
    v11 = *(a1 + 40);
    *(v11 + 8) = v7;
    *v7 = v11;
    *(a1 + 40) = v8;
    *(v8 + 8) = a1 + 40;
    *(a1 + 56) = v6;
    *(a2 + 56) = 0;
  }

  *(a1 + 64) = *a3;
  std::list<int>::list((a1 + 72), a3 + 8);
  *(a1 + 96) = *(a3 + 32);
  *(a1 + 104) = a1 + 104;
  *(a1 + 112) = a1 + 104;
  *(a1 + 120) = 0;
  v12 = *(a3 + 56);
  if (v12)
  {
    v14 = *(a3 + 40);
    v13 = *(a3 + 48);
    v15 = *(v14 + 8);
    v16 = *v13;
    *(v16 + 8) = v15;
    *v15 = v16;
    v17 = *(a1 + 104);
    *(v17 + 8) = v13;
    *v13 = v17;
    *(a1 + 104) = v14;
    *(v14 + 8) = a1 + 104;
    *(a1 + 120) = v12;
    *(a3 + 56) = 0;
  }

  return a1;
}

void sub_1B5580E10(_Unwind_Exception *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v2);
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::NumInputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Expand(a1, a2);
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

  return *(*v5 + 64);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Expand(a1, a2);
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

  return *(*v5 + 72);
}

void *fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::ImplToFst(void *result, uint64_t a2, int a3)
{
  *result = &unk_1F2D1D710;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

void sub_1B55810F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v19 = *v17;
  if (*v17)
  {
    v15[30] = v19;
    operator delete(v19);
  }

  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,int>>>::~__hash_table(v16 + 24);
  __p = v16;
  std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Element>>::__destroy_vector::operator()[abi:ne200100](&__p);
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::~CacheBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::CacheStateIterator<fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>>::Done(uint64_t a1)
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
    fst::ArcIterator<fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>>::ArcIterator(&v19, *(a1 + 8), v6);
    v7 = *(v19 + 80);
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(v19 + 88) - v7) >> 4);
    v9 = *(a1 + 16);
    v10 = v8 - v20;
    if (v8 > v20)
    {
      v11 = *(v9 + 68);
      v12 = (v7 + 80 * v20 + 72);
      do
      {
        v14 = *v12;
        v12 += 20;
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
    --*(v19 + 108);
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

uint64_t *fst::ArcIterator<fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>>::ArcIterator(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 108);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Expand(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::InitArcIterator(uint64_t a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::InitArcIterator(a1, a2, a3);
}

void fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::~ArcMapFst(void *a1)
{
  fst::ImplToFst<fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::Init(uint64_t a1)
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
  if (result == -1)
  {
    *(a1 + 156) = 0;
    *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950000;
  }

  else
  {
    *(a1 + 156) = 1;
    result = (*(**(a1 + 136) + 64))(*(a1 + 136), 0x3FFFFFFF0004, 0);
    if (*(*(a1 + 144) + 4))
    {
      v5 = result & 0x2EBC21080003 | 4;
    }

    else
    {
      v5 = result & 0x2EBC21080007;
    }

    *(a1 + 8) = *(a1 + 8) & 4 | v5;
    if (*(a1 + 156) == 2)
    {
      *(a1 + 160) = 0;
    }
  }

  return result;
}

void sub_1B558194C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::~ArcMapFstImpl(uint64_t a1)
{
  fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::~ArcMapFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0) || *(*(a1 + 144) + 4) == 1))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::~ArcMapFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D1D950;
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
      MEMORY[0x1B8C85350](v3, 0x1000C4090D0E795);
    }
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D1D9A0;
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

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::Start(uint64_t a1)
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

float fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::Final(uint64_t a1, int a2)
{
  if (fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasFinal(a1, a2))
  {
    goto LABEL_21;
  }

  v4 = *(a1 + 156);
  if (v4 != 1)
  {
    if (v4 == 2)
    {
      if (*(a1 + 160) == a2)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = INFINITY;
      }

      MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
      *MutableState = v5;
      goto LABEL_20;
    }

    v7 = *(a1 + 144);
    (*(**(a1 + 136) + 32))(&v23);
    fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::GallicArc(__p, 0, 0, &v23, -1);
    v8 = fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::operator()(v7, __p);
    v10 = v9;
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v28);
    std::__list_imp<char *>::clear(v27);
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v25);
    std::__list_imp<char *>::clear(v24);
    if (v8)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      v11 = fst::LogMessage::LogMessage(&v22, __p);
      v12 = fst::cerr(v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ArcMapFst: non-zero arc labels for superfinal arc", 49);
      fst::LogMessage::~LogMessage(&v22);
      if (SHIBYTE(v27[0]) < 0)
      {
        operator delete(__p[0]);
      }

      *(a1 + 8) |= 4uLL;
    }

    goto LABEL_19;
  }

  if (*(a1 + 160) == a2)
  {
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
    *MutableState = 0;
  }

  else
  {
    v13 = *(a1 + 144);
    (*(**(a1 + 136) + 32))(&v19);
    fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::GallicArc(__p, 0, 0, &v19, -1);
    v14 = fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::operator()(v13, __p);
    v10 = v15;
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v28);
    std::__list_imp<char *>::clear(v27);
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v21);
    std::__list_imp<char *>::clear(v20);
    if (!v14)
    {
LABEL_19:
      MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
      *MutableState = v10;
      goto LABEL_20;
    }

    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
    *MutableState = 2139095040;
  }

LABEL_20:
  *(MutableState + 48) |= 9u;
LABEL_21:
  v16 = *(a1 + 120);
  if (*(v16 + 76) == a2)
  {
    v17 = v16 + 80;
  }

  else
  {
    v17 = *(v16 + 8) + 8 * a2 + 8;
  }

  return **v17;
}

void sub_1B5581F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  fst::LogMessage::~LogMessage(&a21);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::operator()(int *a1, unsigned int *a2)
{
  if (a2[18] == -1 && (v4 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>::Zero(), fst::operator==<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>((a2 + 2), v4)))
  {
    v5 = 0;
    v6 = *a2;
  }

  else
  {
    v21 = -1;
    if (!fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::Extract((a2 + 2), &v20, &v21) || (v6 = *a2, *a2 != a2[1]))
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      v7 = fst::LogMessage::LogMessage(&v19, __p);
      v8 = fst::cerr(v7);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "FromGallicMapper: unrepresentable weight: ", 42);
      v10 = fst::operator<<<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>(v9, (a2 + 2));
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " for arc with ilabel = ", 23);
      v12 = MEMORY[0x1B8C84C00](v11, *a2);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", olabel = ", 11);
      v14 = MEMORY[0x1B8C84C00](v13, a2[1]);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", nextstate = ", 14);
      MEMORY[0x1B8C84C00](v15, a2[18]);
      fst::LogMessage::~LogMessage(&v19);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      *(a1 + 4) = 1;
      v6 = *a2;
    }

    if (!v6 && v21 && a2[18] == -1)
    {
      v6 = *a1;
    }

    v5 = v21 << 32;
  }

  return v5 | v6;
}

void sub_1B5582148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::Extract(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 32);
    if (v3 == -2 && *(a1 + 24) == 0)
    {
      v6 = 1;
LABEL_13:
      v8 = v3 == -2 && v6;
      if (v8 || v4 == -INFINITY)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    if (v4 == -INFINITY || (*(a1 + 56) - 1) >= 0xFFFFFFFFFFFFFFFELL)
    {
      v6 = *(a1 + 24) == 0;
      goto LABEL_13;
    }

    return 0;
  }

  if (*(a1 + 32) == -INFINITY)
  {
LABEL_22:
    *a3 = 0;
    *a2 = 2139095040;
    return 1;
  }

  if ((*(a1 + 56) - 1) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

LABEL_18:
  v9 = *(a1 + 56);
  if (v9 == -1)
  {
    goto LABEL_22;
  }

  if (v9)
  {
    a1 = *(a1 + 40) + 16;
  }

  return fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>::Extract<(fst::GallicType)1>(a1, a2, a3);
}

void *fst::operator<<<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = *a2;
  if (*a2)
  {
    if (*(a2 + 24))
    {
      v6 = 0;
    }

    else
    {
      v6 = v5 == -2;
    }

    if (!v6 && *(a2 + 32) != -INFINITY)
    {
      goto LABEL_7;
    }

LABEL_26:
    v11 = "EmptySet";
    v12 = 8;
    goto LABEL_50;
  }

  v10 = *(a2 + 32);
  if (v10 >= -INFINITY && v10 <= -INFINITY)
  {
    goto LABEL_26;
  }

LABEL_7:
  v7 = a2 + 40;
  if ((*(a2 + 56) + 1) < 2)
  {
LABEL_8:
    fst::CompositeWeightWriter::CompositeWeightWriter(v21, a1);
    if (*FLAGS_fst_weight_parentheses)
    {
      v22 = *FLAGS_fst_weight_parentheses;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21[0], &v22, 1);
    }

    if (*a2)
    {
      if (*(a2 + 24))
      {
        v8 = 0;
      }

      else
      {
        v8 = *a2 == -2;
      }

      if (v8 || *(a2 + 32) == -INFINITY)
      {
        goto LABEL_21;
      }
    }

    else if (*(a2 + 32) == -INFINITY)
    {
      goto LABEL_21;
    }

    fst::CompositeWeightWriter::WriteElement<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>(v21, a2);
    while (v4 != v7)
    {
      fst::CompositeWeightWriter::WriteElement<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>(v21, v4 + 16);
      v4 = *(v4 + 8);
    }

LABEL_21:
    if (*FLAGS_fst_weight_parentheses)
    {
      v22 = *(FLAGS_fst_weight_parentheses + 1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21[0], &v22, 1);
    }

    return a1;
  }

  v15 = v5 != -2 || *(a2 + 24) != 0 || v5 == 0;
  v16 = 1;
  v17 = *(a2 + 48);
  while (1)
  {
    v18 = v16;
    if (v16)
    {
      v19 = a2;
      if (!v15)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v19 = v17 + 16;
      if (v17 == v7)
      {
        goto LABEL_8;
      }
    }

    if (*v19)
    {
      if (*v19 == -2 && *(v19 + 24) == 0)
      {
        break;
      }
    }

    if (*(v19 + 32) == -INFINITY)
    {
      break;
    }

    v16 = 0;
    if ((v18 & 1) == 0)
    {
      v16 = 0;
      v17 = *(v17 + 8);
    }
  }

  v11 = "BadSet";
  v12 = 6;
LABEL_50:

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v11, v12);
}

void *fst::CompositeWeightWriter::WriteElement<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *(a1 + 8) = v4 + 1;
  if (v4 >= 1)
  {
    v5 = *a1;
    LOBYTE(v7[0]) = *FLAGS_fst_weight_separator;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, 1);
  }

  fst::CompositeWeightWriter::CompositeWeightWriter(v7, *a1);
  if (*FLAGS_fst_weight_parentheses)
  {
    v8 = *FLAGS_fst_weight_parentheses;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7[0], &v8, 1);
  }

  fst::CompositeWeightWriter::WriteElement<fst::StringWeight<int,(fst::StringType)1>>(v7, a2);
  result = fst::CompositeWeightWriter::WriteElement<fst::LogWeightTpl<float>>(v7, (a2 + 32));
  if (*FLAGS_fst_weight_parentheses)
  {
    v8 = *(FLAGS_fst_weight_parentheses + 1);
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7[0], &v8, 1);
  }

  return result;
}