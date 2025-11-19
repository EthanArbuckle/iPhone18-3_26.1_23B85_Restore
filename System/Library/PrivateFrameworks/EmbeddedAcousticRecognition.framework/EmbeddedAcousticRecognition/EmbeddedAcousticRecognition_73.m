uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::NumArcs(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::Expand(a1, a2);
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

  return (*(*v5 + 32) - *(*v5 + 24)) >> 4;
}

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::Expand(uint64_t a1, int a2)
{
  v4 = *(a1 + 160);
  if (v4 == a2)
  {

    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
  }

  v6 = *(a1 + 136);
  v8 = v4 != -1 && v4 <= a2;
  v45 = 0;
  (*(*v6 + 136))(v6, (a2 - v8), &v41);
  while (1)
  {
    if (!v41)
    {
      if (v45 >= v43)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if ((*(*v41 + 24))(v41))
    {
      break;
    }

    if (v41)
    {
      v9 = (*(*v41 + 32))(v41);
      goto LABEL_18;
    }

LABEL_17:
    v9 = v42 + 80 * v45;
LABEL_18:
    v34 = *v9;
    v35 = *(v9 + 8);
    std::list<int>::list(v37, v9 + 16);
    v38 = *(v9 + 40);
    std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::list(v39, v9 + 48);
    v10 = *(v9 + 72);
    v11 = *(a1 + 160);
    if (v11 != -1 && v11 <= v10)
    {
      ++v10;
    }

    if (v10 >= *(a1 + 164))
    {
      *(a1 + 164) = v10 + 1;
    }

    v40 = v10;
    *&v33 = fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::operator()(*(a1 + 144), &v34);
    *(&v33 + 1) = v13;
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](MutableState + 24, &v33);
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v39);
    std::__list_imp<char *>::clear(v37);
    if (v41)
    {
      (*(*v41 + 40))(v41);
    }

    else
    {
      ++v45;
    }
  }

  if (v41)
  {
    (*(*v41 + 8))(v41);
    goto LABEL_32;
  }

LABEL_30:
  if (v44)
  {
    --*v44;
  }

LABEL_32:
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasFinal(a1, a2) & 1) == 0 || (LODWORD(v34) = fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::Final(a1, a2), LODWORD(v41) = 2139095040, *&v34 == INFINITY))
  {
    v15 = *(a1 + 156);
    if (v15 == 2)
    {
      v22 = *(a1 + 144);
      (*(**(a1 + 136) + 32))(&v27);
      fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::GallicArc(&v34, 0, 0, &v27, -1);
      v23 = fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::operator()(v22, &v34);
      v25 = v24;
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v39);
      std::__list_imp<char *>::clear(v37);
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v29);
      std::__list_imp<char *>::clear(v28);
      if (HIDWORD(v23) || v23 || (*&v34 = v25, LODWORD(v41) = 2139095040, v25 != INFINITY))
      {
        v26 = *(a1 + 160);
        v34 = v23;
        v35 = v25;
        v36 = v26;
        v20 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2) + 24;
        v21 = &v34;
        goto LABEL_44;
      }
    }

    else if (v15 == 1)
    {
      v16 = *(a1 + 144);
      (*(**(a1 + 136) + 32))(&v30);
      fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::GallicArc(&v34, 0, 0, &v30, -1);
      v17 = fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::operator()(v16, &v34);
      v41 = v17;
      v42 = v18;
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v39);
      std::__list_imp<char *>::clear(v37);
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v32);
      std::__list_imp<char *>::clear(v31);
      if (v17)
      {
        v19 = *(a1 + 160);
        if (v19 == -1)
        {
          v19 = *(a1 + 164);
          *(a1 + 160) = v19;
          *(a1 + 164) = v19 + 1;
        }

        HIDWORD(v42) = v19;
        v20 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2) + 24;
        v21 = &v41;
LABEL_44:
        std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](v20, v21);
      }
    }
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B5582A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v3 + 48));
  std::__list_imp<char *>::clear((v3 + 16));
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(va1);
  std::__list_imp<char *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::NumInputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::Expand(a1, a2);
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

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::Expand(a1, a2);
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

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ImplToFst(void *result, uint64_t a2, int a3)
{
  *result = &unk_1F2D1D9A0;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::StateIterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = &unk_1F2D1DA50;
  *(a1 + 8) = v3;
  v4 = *(v3 + 136);
  *(a1 + 32) = 0;
  (*(*v4 + 128))(v4, a1 + 16);
  *(a1 + 40) = 0;
  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;
  fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::CheckSuperfinal(a1);
  return a1;
}

void sub_1B5582DA4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::StateIterator(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::CheckSuperfinal(uint64_t result)
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
      fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::GallicArc(v8, 0, 0, &v5, -1);
      v4 = fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>::operator()(v3, v8);
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v10);
      std::__list_imp<char *>::clear(v9);
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v7);
      result = std::__list_imp<char *>::clear(v6);
      if (v4)
      {
        *(v2 + 44) = 1;
      }
    }
  }

  return result;
}

void sub_1B5582ED8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v2 + 48));
  std::__list_imp<char *>::clear((v2 + 16));
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(va1);
  std::__list_imp<char *>::clear(va);
  _Unwind_Resume(a1);
}

void *fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D1DA50;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D1DA50;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Done(uint64_t a1)
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

uint64_t fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Next(uint64_t a1)
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

        return fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::CheckSuperfinal(a1);
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

uint64_t fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::Reset(uint64_t a1)
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

  return fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::CheckSuperfinal(a1);
}

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::InitArcIterator(uint64_t a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitArcIterator(a1, a2, a3);
}

void *fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicFactor<int,fst::TropicalWeightTpl<float>,(fst::GallicType)4>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D1D710;
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

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D1D128;
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

uint64_t fst::DeterminizeFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::~DeterminizeFstImpl(void *a1)
{
  *a1 = &unk_1F2D1CEC8;
  v2 = a1[20];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return fst::DeterminizeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~DeterminizeFstImplBase(a1);
}

uint64_t *fst::ArcIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::ArcIterator(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 52);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::Expand(*(a2 + 8), a3);
  }

  return a1;
}

void *fst::DeterminizeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::DeterminizeFst(void *a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D1B560;
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
    fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetImpl(a1, v4, 0);
  }

  return a1;
}

uint64_t fst::CacheStateIterator<fst::DeterminizeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done(uint64_t a1)
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
    fst::ArcIterator<fst::DeterminizeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ArcIterator(&v19, *(a1 + 8), v6);
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

uint64_t *fst::ArcIterator<fst::DeterminizeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ArcIterator(uint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t fst::DeterminizeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::InitArcIterator(uint64_t a1, uint64_t a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitArcIterator(a1, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

void sub_1B55839FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  std::__list_imp<char *>::clear((v19 + 8));
  std::__list_imp<char *>::clear((v20 + 8));
  a19 = (v21 - 72);
  std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

uint64_t fst::AcceptorMinimize<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 64))(a1, 0x200010000, 1))
  {
    fst::Connect<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a1);
  }

  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  }

  v2 = fst::LogMessage::LogMessage(&v5, __p);
  v3 = fst::cerr(v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "FST is not an unweighted acceptor", 33);
  fst::LogMessage::~LogMessage(&v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(*a1 + 192))(a1, 4, 4);
}

void sub_1B5583D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ArcMap<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicToNewSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a2 + 224))(a2);
  v6 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v6);
  (*(*a2 + 288))(a2, 0);
  v7 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  result = (*(*a1 + 24))(a1);
  if (result == -1)
  {
    if ((v7 & 4) != 0)
    {
      v18 = *(*a2 + 192);

      return v18(a2, 4, 4);
    }

    return result;
  }

  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v9 = fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a1) != -1;
    (*(*a2 + 248))(a2, v9);
  }

  LODWORD(v24) = 0;
  (*(*a1 + 128))(a1, &v22);
  while (!v22)
  {
    if (v24 >= v23)
    {
      goto LABEL_14;
    }

LABEL_9:
    (*(*a2 + 200))(a2);
    if (v22)
    {
      (*(*v22 + 32))(v22);
    }

    else
    {
      LODWORD(v24) = v24 + 1;
    }
  }

  if (!(*(*v22 + 16))(v22))
  {
    goto LABEL_9;
  }

  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

LABEL_14:
  v33 = 0;
  (*(*a1 + 128))(a1, &v31);
  LODWORD(v10) = -1;
  while (2)
  {
    if (!v31)
    {
      if (v33 >= v32)
      {
        goto LABEL_47;
      }

      goto LABEL_20;
    }

    if (!(*(*v31 + 16))(v31))
    {
      if (v31)
      {
        v11 = (*(*v31 + 24))(v31);
        goto LABEL_21;
      }

LABEL_20:
      v11 = v33;
LABEL_21:
      if (v11 == (*(*a1 + 24))(a1))
      {
        (*(*a2 + 176))(a2, v11);
      }

      v12 = (*(*a1 + 40))(a1, v11);
      (*(*a2 + 256))(a2, v11, v12);
      v26 = 0;
      (*(*a1 + 136))(a1, v11, &v22);
LABEL_24:
      if (v22)
      {
        if ((*(*v22 + 24))(v22))
        {
          if (v22)
          {
            (*(*v22 + 8))();
            goto LABEL_37;
          }

LABEL_35:
          if (v25)
          {
            --*v25;
          }

LABEL_37:
          (*(*a1 + 32))(&v19, a1, v11);
          v22 = 0;
          LODWORD(v23) = v19;
          std::list<int>::list(&v24, v20);
          v27 = v21;
          v28 = -1;
          v29 = fst::GallicToNewSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::operator()(a3, &v22);
          v30 = v15;
          std::__list_imp<char *>::clear(&v24);
          std::__list_imp<char *>::clear(v20);
          if (v29)
          {
            if (v10 == -1)
            {
              v10 = (*(*a2 + 200))(a2);
              (*(*a2 + 184))(a2, v10, 0.0);
            }

            HIDWORD(v30) = v10;
            (*(*a2 + 208))(a2, v11, &v29);
            (*(*a2 + 184))(a2, v11, INFINITY);
          }

          else
          {
            (*(*a2 + 184))(a2, v11, *&v30);
          }

          if (v31)
          {
            (*(*v31 + 32))(v31);
          }

          else
          {
            ++v33;
          }

          continue;
        }

        if (v22)
        {
          v13 = (*(*v22 + 32))();
          goto LABEL_30;
        }
      }

      else if (v26 >= v24)
      {
        goto LABEL_35;
      }

      v13 = (v23 + 56 * v26);
LABEL_30:
      v29 = fst::GallicToNewSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::operator()(a3, v13);
      v30 = v14;
      (*(*a2 + 208))(a2, v11, &v29);
      if (v22)
      {
        (*(*v22 + 40))(v22);
      }

      else
      {
        ++v26;
      }

      goto LABEL_24;
    }

    break;
  }

  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

LABEL_47:
  v16 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v17 = v7 & 0x2EBC21080007;
  if (*(a3 + 72))
  {
    v17 = v7 & 0x2EBC21080003 | 4;
  }

  return (*(*a2 + 192))(a2, v17 | v16, 0x3FFFFFFF0007);
}

void sub_1B55846A0(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 16));
  std::__list_imp<char *>::clear((v1 + 8));
  v5 = *(v3 - 104);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  _Unwind_Resume(a1);
}

void fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::~VectorFst(void *a1)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(*(*(a1 + 8) + 64) + 8 * a2);
  *a3 = *v4;
  result = std::list<int>::list((a3 + 8), (v4 + 2));
  *(a3 + 32) = v4[8];
  return result;
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 72) - *(v2 + 64)) >> 3;
  return result;
}

uint64_t fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
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

uint64_t fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 88) = a2;
  result = (*(*v4 + 24))(v4);
  *(v4 + 8) = result & 0xCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

void *fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  v8 = *a3;
  std::list<int>::list(v9, (a3 + 2));
  v10 = a3[8];
  fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::SetFinal(v6, a2, &v8);
  return std::__list_imp<char *>::clear(v9);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::AddArc(uint64_t a1, int a2, int *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::AddArc(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0x6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::DeleteStates(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::DeleteStates(v2);
  result = (*(*v2 + 24))(v2);
  v2[1] = (*(v2 + 2) | result) & 4 | 0x156A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::DeleteArcs(*(v6[8] + 8 * a2), a3);
  result = (*(*v6 + 24))(v6);
  v6[1] = v6[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::DeleteArcs(v4, a2);
}

void *fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 64);

  return std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(v4, a2);
}

void *fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 64) + 8 * a2) + 56);

  return std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::reserve(v6, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(v4, a2);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D1DDE8;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2D1DD38;
  std::string::basic_string[abi:ne200100]<0>(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950003;
  return a1;
}

void sub_1B558522C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = &unk_1F2D1DDB0;
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

  return fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::~FstImpl(a1);
}

void fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::~VectorFstImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::~VectorFstBaseImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::~FstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D1DDE8;
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

uint64_t fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Write(uint64_t a1)
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

void sub_1B558552C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5585628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::operator=(uint64_t a1)
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

void sub_1B5585730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::MutateCheck(uint64_t result)
{
  if (*(*(result + 8) + 56) >= 2)
  {
    operator new();
  }

  return result;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D1DDE8;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2D1DD38;
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
    v6 = fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a2);
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
      fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::AddState();
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

uint64_t fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(uint64_t a1)
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

void sub_1B5585F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ArcMap<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicToNewSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>();
  }

  _Unwind_Resume(exception_object);
}

void *fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::SetFinal(uint64_t a1, int a2, int *a3)
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

uint64_t fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero(void)::zero;
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::TropicalWeightTpl<float>>::Zero()
{
  {
    operator new();
  }

  return fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::TropicalWeightTpl<float>>::Zero(void)::zero;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::TropicalWeightTpl<float>>::Zero()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::TropicalWeightTpl<float>>::Zero(void)::zero;
}

void sub_1B55863A4(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  MEMORY[0x1B8C85350](v1, 0x1020C4067685F46);
  _Unwind_Resume(a1);
}

void *std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::reserve(void *result, unint64_t a2)
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

void sub_1B55864C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void sub_1B5586574(_Unwind_Exception *exception_object)
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

uint64_t fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::AddArc(void *a1, _DWORD *a2)
{
  if (!*a2)
  {
    ++a1[5];
  }

  if (!a2[1])
  {
    ++a1[6];
  }

  return std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::push_back[abi:ne200100](a1 + 7, a2);
}

uint64_t std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::__emplace_back_slow_path<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0> const&>(a1, a2);
  }

  else
  {
    std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::__construct_one_at_end[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0> const&>(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

void *std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::__construct_one_at_end[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0> const&>(uint64_t a1, uint64_t a2)
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

uint64_t std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::__emplace_back_slow_path<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0> const&>(uint64_t *a1, uint64_t a2)
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
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(a1, *a1, v8, v9);
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

void sub_1B55867D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

unint64_t fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a1, a2, a3, 0);
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

    return fst::ComputeProperties<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a1, a2, a3, 1);
  }
}

void sub_1B5586920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
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
      fst::DfsVisit<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(v7, &v86);
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
              v54 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
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
                v64 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One();
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
          v24 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One();
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
            v36 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
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

void sub_1B55873B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
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

uint64_t fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One(void)::one;
}

void sub_1B5587D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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
  fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::InitVisit(uint64_t a1, uint64_t a2)
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

unint64_t fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::FinishState(uint64_t a1, int a2, int a3)
{
  (*(**(a1 + 32) + 32))(&v33);
  v6 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
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

void fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D1DF60;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

{
  *a1 = &unk_1F2D1DF60;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D1DFA0;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B5588388(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D1DFA0;
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

void *std::deque<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> *,std::allocator<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> *>>::push_back(void *result, void *a2)
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
    result = std::deque<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> *,std::allocator<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> *>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> *,std::allocator<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> *>>::__add_back_capacity(void *a1)
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

void sub_1B5588694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::TropicalWeightTpl<float>>::One()
{
  {
    operator new();
  }

  return fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::TropicalWeightTpl<float>>::One(void)::one;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::TropicalWeightTpl<float>>::One()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::TropicalWeightTpl<float>>::One(void)::one;
}

void sub_1B5588874(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  MEMORY[0x1B8C85350](v1, 0x1020C4067685F46);
  _Unwind_Resume(a1);
}

void fst::ArcBuffer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::SetFromFst<fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
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

void sub_1B5588B68(_Unwind_Exception *exception_object)
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

uint64_t fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::WriteFst<fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>(void *a1, void *a2, uint64_t a3)
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
    v37 = fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a1);
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
  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::WriteFstHeader(a1, a2, a3, 2, __p, v9 | 3, v31);
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
  updated = fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::UpdateFstHeader(a1, a2, a3, 2, __p, v9 | 3, v31, v28);
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

void sub_1B5589074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a15);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::WriteFstHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::Type();
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

uint64_t fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::UpdateFstHeader(uint64_t a1, void *a2, uint64_t a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::WriteFstHeader(a1, a2, a3, a4, a5, a6, a7);
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

uint64_t fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::Type()
{
  {
    operator new();
  }

  return fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::Type(void)::type;
}

uint64_t fst::Fst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::WriteFile(fst *a1, uint64_t a2)
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

void *fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::SetFinal(void *a1, int a2, int *a3)
{
  v6 = *(a1[8] + 8 * a2);
  v18 = *v6;
  std::list<int>::list(v19, (v6 + 2));
  v20 = v6[8];
  v15 = *a3;
  std::list<int>::list(v16, (a3 + 2));
  v17 = a3[8];
  fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::SetFinal(a1, a2, &v15);
  std::__list_imp<char *>::clear(v16);
  v7 = (*(*a1 + 24))(a1);
  v12 = v18;
  std::list<int>::list(v13, v19);
  v14 = v20;
  v9 = *a3;
  std::list<int>::list(v10, (a3 + 2));
  v11 = a3[8];
  a1[1] = a1[1] & 4 | fst::SetFinalProperties<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>(v7, &v12, &v9);
  std::__list_imp<char *>::clear(v10);
  std::__list_imp<char *>::clear(v13);
  return std::__list_imp<char *>::clear(v19);
}

void sub_1B5589CC4(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v3 + 8));
  std::__list_imp<char *>::clear((v2 + 8));
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::SetFinalProperties<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>(unint64_t a1, int *a2, int *a3)
{
  v6 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
  v7 = *a2;
  if (*a2)
  {
    v8 = *(a2 + 3) + 1;
  }

  else
  {
    v8 = 0;
  }

  if (*v6)
  {
    v9 = *(v6 + 24) + 1;
  }

  else
  {
    v9 = 0;
  }

  if (v8 != v9)
  {
    goto LABEL_22;
  }

  v10 = (a2 + 4);
  v11 = (v6 + 16);
  v12 = v7 && v7 == *v6;
  v13 = !v12;
  v14 = 1;
  v15 = !v13;
  while (1)
  {
    v16 = *v10;
    v17 = *v11;
    if ((v14 & 1) != 0 && !v15)
    {
      break;
    }

    if (v16 == a2 + 2)
    {
      goto LABEL_21;
    }

    if (*(v16 + 16) != *(v17 + 16))
    {
      goto LABEL_22;
    }

    v14 = 0;
    v10 = (v16 + 8);
    v11 = (v17 + 8);
  }

  if (v7)
  {
    goto LABEL_22;
  }

LABEL_21:
  if (*(a2 + 8) != *(v6 + 32))
  {
LABEL_22:
    v18 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One();
    v19 = *a2;
    if (*a2)
    {
      v20 = *(a2 + 3) + 1;
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

    if (v20 != v21)
    {
      goto LABEL_43;
    }

    v22 = (a2 + 4);
    v23 = (v18 + 16);
    v24 = v19 && v19 == *v18;
    v25 = !v24;
    v26 = 1;
    v27 = !v25;
    while (1)
    {
      v28 = *v22;
      v29 = *v23;
      if ((v26 & 1) != 0 && !v27)
      {
        break;
      }

      if (v28 == a2 + 2)
      {
        goto LABEL_42;
      }

      if (*(v28 + 16) != *(v29 + 16))
      {
        goto LABEL_43;
      }

      v26 = 0;
      v22 = (v28 + 8);
      v23 = (v29 + 8);
    }

    if (v19)
    {
      goto LABEL_43;
    }

LABEL_42:
    if (*(a2 + 8) != *(v18 + 32))
    {
LABEL_43:
      a1 &= ~0x100000000uLL;
    }
  }

  v30 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
  v31 = *a3;
  if (*a3)
  {
    v32 = *(a3 + 3) + 1;
  }

  else
  {
    v32 = 0;
  }

  if (*v30)
  {
    v33 = *(v30 + 24) + 1;
  }

  else
  {
    v33 = 0;
  }

  if (v32 != v33)
  {
    goto LABEL_65;
  }

  v34 = (a3 + 4);
  v35 = (v30 + 16);
  v36 = v31 && v31 == *v30;
  v37 = !v36;
  v38 = 1;
  v39 = !v37;
  while (1)
  {
    v40 = *v34;
    v41 = *v35;
    if ((v38 & 1) != 0 && !v39)
    {
      break;
    }

    if (v40 == a3 + 2)
    {
      goto LABEL_64;
    }

    if (*(v40 + 16) != *(v41 + 16))
    {
      goto LABEL_65;
    }

    v38 = 0;
    v34 = (v40 + 8);
    v35 = (v41 + 8);
  }

  if (v31)
  {
    goto LABEL_65;
  }

LABEL_64:
  if (*(a3 + 8) != *(v30 + 32))
  {
LABEL_65:
    v42 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One();
    v43 = *a3;
    if (*a3)
    {
      v44 = *(a3 + 3) + 1;
    }

    else
    {
      v44 = 0;
    }

    if (*v42)
    {
      v45 = *(v42 + 24) + 1;
    }

    else
    {
      v45 = 0;
    }

    if (v44 != v45)
    {
      goto LABEL_86;
    }

    v46 = (a3 + 4);
    v47 = (v42 + 16);
    v48 = v43 && v43 == *v42;
    v49 = !v48;
    v50 = 1;
    v51 = !v49;
    while (1)
    {
      v52 = *v46;
      v53 = *v47;
      if ((v50 & 1) != 0 && !v51)
      {
        break;
      }

      if (v52 == a3 + 2)
      {
        goto LABEL_85;
      }

      if (*(v52 + 16) != *(v53 + 16))
      {
        goto LABEL_86;
      }

      v50 = 0;
      v46 = (v52 + 8);
      v47 = (v53 + 8);
    }

    if (v43)
    {
      goto LABEL_86;
    }

LABEL_85:
    if (*(a3 + 8) != *(v42 + 32))
    {
LABEL_86:
      a1 = a1 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
    }
  }

  return a1 & 0x3FFFFFF0007;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::AddArc(void *a1, int a2, int *a3)
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
  a1[1] = a1[1] & 4 | fst::AddArcProperties<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(v8, a2, a3, v7);
  v9 = *(a1[8] + 8 * a2);

  return fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::AddArc(v9, a3);
}

uint64_t fst::AddArcProperties<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(unint64_t a1, int a2, int *a3, _DWORD *a4)
{
  v7 = *a3;
  v6 = a3[1];
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

  if (!v7)
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
    if (*a4 <= v7)
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

  v12 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
  v13 = a3[2];
  if (v13)
  {
    v14 = *(a3 + 4) + 1;
  }

  else
  {
    v14 = 0;
  }

  if (*v12)
  {
    v15 = *(v12 + 24) + 1;
  }

  else
  {
    v15 = 0;
  }

  if (v14 != v15)
  {
    goto LABEL_38;
  }

  v16 = (a3 + 6);
  v17 = (v12 + 16);
  v18 = v13 && v13 == *v12;
  v19 = !v18;
  v20 = 1;
  v21 = !v19;
  while (1)
  {
    v22 = *v16;
    v23 = *v17;
    if ((v20 & 1) != 0 && !v21)
    {
      break;
    }

    if (v22 == a3 + 4)
    {
      goto LABEL_37;
    }

    if (*(v22 + 16) != *(v23 + 16))
    {
      goto LABEL_38;
    }

    v20 = 0;
    v16 = (v22 + 8);
    v17 = (v23 + 8);
  }

  if (v13)
  {
    goto LABEL_38;
  }

LABEL_37:
  if (*(a3 + 10) != *(v12 + 32))
  {
LABEL_38:
    v24 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One();
    v25 = a3[2];
    if (v25)
    {
      v26 = *(a3 + 4) + 1;
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
      goto LABEL_59;
    }

    v28 = (a3 + 6);
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

      if (v34 == a3 + 4)
      {
        goto LABEL_58;
      }

      if (*(v34 + 16) != *(v35 + 16))
      {
        goto LABEL_59;
      }

      v32 = 0;
      v28 = (v34 + 8);
      v29 = (v35 + 8);
    }

    if (v25)
    {
      goto LABEL_59;
    }

LABEL_58:
    if (*(a3 + 10) != *(v24 + 32))
    {
LABEL_59:
      v10 = v10 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
    }
  }

  if (a3[12] <= a2)
  {
    v36 = v10 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
  }

  else
  {
    v36 = v10;
  }

  if ((v36 & 0x4000000000) != 0)
  {
    return v36 & 0x5D7FFEB0007 | 0x2800000000;
  }

  else
  {
    return v36 & 0x5D7FFEB0007;
  }
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::DeleteStates(uint64_t a1, char **a2)
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

void sub_1B558A534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::DeleteArcs(void *a1, int a2)
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

uint64_t fst::MutableArcIterator<fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::SetValue(uint64_t a1, uint64_t a2)
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

  v10 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
  v11 = *(v4 + 8);
  if (v11)
  {
    v12 = *(v4 + 32) + 1;
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
    goto LABEL_30;
  }

  v14 = (v4 + 24);
  v15 = (v10 + 16);
  v16 = v11 && v11 == *v10;
  v17 = !v16;
  v18 = 1;
  v19 = !v17;
  while (1)
  {
    v20 = *v14;
    v21 = *v15;
    if ((v18 & 1) != 0 && !v19)
    {
      break;
    }

    if (v20 == v4 + 16)
    {
      goto LABEL_29;
    }

    if (*(v20 + 16) != *(v21 + 16))
    {
      goto LABEL_30;
    }

    v18 = 0;
    v14 = (v20 + 8);
    v15 = (v21 + 8);
  }

  if (v11)
  {
    goto LABEL_30;
  }

LABEL_29:
  if (*(v4 + 40) != *(v10 + 32))
  {
LABEL_30:
    v22 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One();
    v23 = *(v4 + 8);
    if (v23)
    {
      v24 = *(v4 + 32) + 1;
    }

    else
    {
      v24 = 0;
    }

    if (*v22)
    {
      v25 = *(v22 + 24) + 1;
    }

    else
    {
      v25 = 0;
    }

    if (v24 != v25)
    {
      goto LABEL_51;
    }

    v26 = (v4 + 24);
    v27 = (v22 + 16);
    v28 = v23 && v23 == *v22;
    v29 = !v28;
    v30 = 1;
    v31 = !v29;
    while (1)
    {
      v32 = *v26;
      v33 = *v27;
      if ((v30 & 1) != 0 && !v31)
      {
        break;
      }

      if (v32 == v4 + 16)
      {
        goto LABEL_50;
      }

      if (*(v32 + 16) != *(v33 + 16))
      {
        goto LABEL_51;
      }

      v30 = 0;
      v26 = (v32 + 8);
      v27 = (v33 + 8);
    }

    if (v23)
    {
      goto LABEL_51;
    }

LABEL_50:
    if (*(v4 + 40) != *(v22 + 32))
    {
LABEL_51:
      **(a1 + 16) &= ~0x100000000uLL;
    }
  }

  v34 = 0x30FC30007;
  if (*a2 == *v4 && *(a2 + 4) == *(v4 + 4) && *(a2 + 48) == *(v4 + 48))
  {
    v34 = 0x3FFFFFFF0007;
  }

  fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetArc(*(a1 + 8), a2, *(a1 + 24));
  v35 = *a2;
  v36 = *(a2 + 4);
  if (*a2 != v36)
  {
    **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  }

  if (v35)
  {
    if (!v36)
    {
      v37 = *(a1 + 16);
      v38 = *v37;
LABEL_63:
      *v37 = v38 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
    }
  }

  else
  {
    v37 = *(a1 + 16);
    v39 = *v37 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
    *v37 = v39;
    if (!v36)
    {
      v38 = v39 & 0xFFFFFFFFFD3FFFFFLL | 0x400000;
      *v37 = v38;
      goto LABEL_63;
    }
  }

  result = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
  v41 = *(a2 + 8);
  if (v41)
  {
    v42 = *(a2 + 32) + 1;
  }

  else
  {
    v42 = 0;
  }

  if (*result)
  {
    v43 = *(result + 24) + 1;
  }

  else
  {
    v43 = 0;
  }

  if (v42 != v43)
  {
    goto LABEL_85;
  }

  v44 = (a2 + 24);
  v45 = (result + 16);
  v46 = v41 && v41 == *result;
  v47 = !v46;
  v48 = 1;
  v49 = !v47;
  while (1)
  {
    v50 = *v44;
    v51 = *v45;
    if ((v48 & 1) != 0 && !v49)
    {
      break;
    }

    if (v50 == a2 + 16)
    {
      goto LABEL_84;
    }

    if (*(v50 + 16) != *(v51 + 16))
    {
      goto LABEL_85;
    }

    v48 = 0;
    v44 = (v50 + 8);
    v45 = (v51 + 8);
  }

  if (v41)
  {
    goto LABEL_85;
  }

LABEL_84:
  if (*(a2 + 40) != *(result + 32))
  {
LABEL_85:
    result = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One();
    v52 = *(a2 + 8);
    if (v52)
    {
      v53 = *(a2 + 32) + 1;
    }

    else
    {
      v53 = 0;
    }

    if (*result)
    {
      v54 = *(result + 24) + 1;
    }

    else
    {
      v54 = 0;
    }

    if (v53 != v54)
    {
      goto LABEL_106;
    }

    v55 = (a2 + 24);
    v56 = (result + 16);
    v57 = v52 && v52 == *result;
    v58 = !v57;
    v59 = 1;
    v60 = !v58;
    while (1)
    {
      v61 = *v55;
      v62 = *v56;
      if ((v59 & 1) != 0 && !v60)
      {
        break;
      }

      if (v61 == a2 + 16)
      {
        goto LABEL_105;
      }

      if (*(v61 + 16) != *(v62 + 16))
      {
        goto LABEL_106;
      }

      v59 = 0;
      v55 = (v61 + 8);
      v56 = (v62 + 8);
    }

    if (v52)
    {
      goto LABEL_106;
    }

LABEL_105:
    if (*(a2 + 40) != *(result + 32))
    {
LABEL_106:
      **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
    }
  }

  **(a1 + 16) &= v34;
  return result;
}

uint64_t fst::ArcMap<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(uint64_t a1, uint64_t a2)
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
    v7 = fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1) != 0;
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
          fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::operator()(&v32, &v28);
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
      fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::operator()(v10, &v28);
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

void sub_1B558B39C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34, uint64_t a35)
{
  std::__list_imp<char *>::clear((v35 + 16));
  v38 = *(v36 - 112);
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  _Unwind_Resume(a1);
}

void *fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>::operator()@<X0>(float *a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 3) == -1)
  {
    v30 = a1[2];
    v29[8] = 2139095040;
    if (v30 == INFINITY)
    {
      v12 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
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

    v8 = fst::StringWeight<int,(fst::StringType)0>::One();
    v26 = *v8;
    v7 = v27;
    std::list<int>::list(v27, (v8 + 2));
    fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v28, &v26, a1[2]);
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
    v10 = fst::StringWeight<int,(fst::StringType)0>::One();
    v19 = *v10;
    v7 = v20;
    std::list<int>::list(v20, (v10 + 2));
    fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v21, &v19, a1[2]);
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

  fst::StringWeight<int,(fst::StringType)0>::StringWeight(&v14, v4);
  fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v16, &v14, a1[2]);
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

uint64_t fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(uint64_t a1, int *a2, float a3)
{
  v6 = *a2;
  std::list<int>::list(v7, (a2 + 2));
  fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::TropicalWeightTpl<float>>::ProductWeight(a1, &v6, a3);
  std::__list_imp<char *>::clear(v7);
  return a1;
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::TropicalWeightTpl<float>>::ProductWeight(uint64_t a1, int *a2, float a3)
{
  v6 = *a2;
  std::list<int>::list(v7, (a2 + 2));
  *a1 = v6;
  std::list<int>::list((a1 + 8), v7);
  *(a1 + 32) = a3;
  std::__list_imp<char *>::clear(v7);
  return a1;
}

void fst::ShortestDistance<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::VectorFst();
  }

  fst::AutoQueue<int>::AutoQueue<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(v3, a1);
}

void sub_1B558BA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  a22 = &a17;
  std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::__destroy_vector::operator()[abi:ne200100](&a22);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::~ImplToFst(&a20);
  _Unwind_Resume(a1);
}

void *fst::ComputeTotalWeight<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) <= (*(*a1 + 24))(a1))
    {
      v7 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
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
    v8 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
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
        (*(*a1 + 32))(&v19, a1, v12);
        fst::Times<int,(fst::StringType)0>((v10 + v11), &v19, &v28);
        v13 = *(v10 + v11 + 32);
        v14 = NAN;
        if (v13 != -INFINITY)
        {
          v14 = NAN;
          if (v21 != -INFINITY)
          {
            v14 = INFINITY;
            v15 = v21 == INFINITY || v13 == INFINITY;
            v16 = v13 + v21;
            if (!v15)
            {
              v14 = v16;
            }
          }
        }

        fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(v22, &v28, v14);
        std::__list_imp<char *>::clear(v29);
        fst::Plus<int>(a4, v22, &v28);
        v17 = *(a4 + 32);
        v18 = NAN;
        if (v17 != -INFINITY)
        {
          v18 = NAN;
          if (v24 != -INFINITY)
          {
            if (v17 >= v24)
            {
              v18 = v24;
            }

            else
            {
              v18 = *(a4 + 32);
            }
          }
        }

        fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v25, &v28, v18);
        std::__list_imp<char *>::clear(v29);
        *a4 = v25;
        if (&v25 != a4)
        {
          std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a4 + 8), v26[1], v26);
        }

        *(a4 + 32) = v27;
        std::__list_imp<char *>::clear(v26);
        std::__list_imp<char *>::clear(v23);
        result = std::__list_imp<char *>::clear(v20);
        ++v12;
        v10 = *a2;
        v11 += 40;
      }

      while (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) > v12);
    }
  }

  return result;
}

void sub_1B558BD74(_Unwind_Exception *a1, uint64_t a2, ...)
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

uint64_t fst::Reweight<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(uint64_t *a1, void *a2, int a3)
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
    v38 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Type();
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
    v11 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
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
          v24 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
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

              fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v101, &v127, v31);
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

              fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v104, &v127, v33);
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

        fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(v99, &v107, v34);
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
    v35 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
  }

  else
  {
    v35 = *a2 + 40 * (*(*a1 + 24))(a1);
  }

  v119 = *v35;
  std::list<int>::list(&v120, v35 + 8);
  v123 = *(v35 + 32);
  v42 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One();
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
    v54 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
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
            v72 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One();
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

            fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v104, &v101, v74);
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

            fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v107, &v101, v78);
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

            fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v107, &v104, v75);
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
          v80 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One();
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

          fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v112, &v107, v82);
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

          fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(v95, &v104, v86);
          std::__list_imp<char *>::clear(v105);
          (*(*a1 + 184))(a1, v90, v95);
          std::__list_imp<char *>::clear(v96);
          v83 = &v108;
        }

        else
        {
          (*(*a1 + 32))(&v112, a1, v90);
          fst::Times<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>(&v119, &v112, v97);
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
          v67 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One();
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

          fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v107, &v112, v69);
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

void sub_1B558D000(_Unwind_Exception *a1)
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

void *fst::RemoveWeight<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(uint64_t a1, uint64_t a2, int a3)
{
  result = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One();
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
  result = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
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

      fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(v44, &v34, v26);
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

    fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v34, &v46, v30);
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

  fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(v32, &v34, v31);
  std::__list_imp<char *>::clear(v35);
  (*(*a1 + 184))(a1, v27, v32);
  std::__list_imp<char *>::clear(v33);
  return std::__list_imp<char *>::clear(&v38);
}

void sub_1B558D968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__list_imp<char *>::clear((v13 + 8));
  std::__list_imp<char *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t fst::ShortestDistance<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = *a3;
  v13 = *(a3 + 16);
  v14 = *(a3 + 20);
  v15 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  memset(v19, 0, 29);
  v5 = *a2;
  v4 = a2[1];
  if (v4 != *a2)
  {
    do
    {
      v6 = v4 - 40;
      std::__list_imp<char *>::clear((v4 - 32));
      v4 = v6;
    }

    while (v6 != v5);
  }

  a2[1] = v5;
  fst::ShortestDistanceState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::ShortestDistance(v12);
  if (BYTE12(v19[1]) == 1)
  {
    v8 = *a2;
    v7 = a2[1];
    if (v7 != *a2)
    {
      do
      {
        v9 = v7 - 40;
        std::__list_imp<char *>::clear((v7 - 32));
        v7 = v9;
      }

      while (v9 != v8);
    }

    a2[1] = v8;
    v10 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::NoWeight();
    std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::resize(a2, 1uLL, v10);
  }

  return fst::ShortestDistanceState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::~ShortestDistanceState(v12);
}

void sub_1B558DB48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  fst::ShortestDistanceState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::~ShortestDistanceState(va);
  _Unwind_Resume(a1);
}

uint64_t fst::Reverse<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(uint64_t a1, uint64_t *a2, char a3)
{
  (*(*a2 + 224))(a2);
  v6 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v6);
  v7 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v7);
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v8 = fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a1);
    (*(*a2 + 248))(a2, (v8 + 1));
  }

  v9 = (*(*a1 + 24))(a1);
  v103 = 0;
  v63 = v9;
  if (a3)
  {
    goto LABEL_56;
  }

  LODWORD(v93) = 0;
  (*(*a1 + 128))(a1, &v91);
  for (i = 0xFFFFFFFFLL; ; i = v13)
  {
    if (v91)
    {
      v11 = (*(*v91 + 16))(v91);
      v12 = v91;
      if (v11)
      {
        goto LABEL_34;
      }

      if (v91)
      {
        v13 = (*(*v91 + 24))();
        goto LABEL_11;
      }
    }

    else if (v93 >= v92)
    {
      goto LABEL_36;
    }

    v13 = v93;
LABEL_11:
    (*(*a1 + 32))(&p_p, a1, v13);
    v14 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
    v15 = p_p ? v99 + 1 : 0;
    v16 = *v14 ? *(v14 + 24) + 1 : 0;
    if (v15 != v16)
    {
      break;
    }

    v17 = v98;
    v18 = (v14 + 16);
    for (j = 1; ; j = 0)
    {
      v20 = *v18;
      if (j)
      {
        if (!p_p)
        {
          break;
        }

        if (p_p != *v14)
        {
          goto LABEL_25;
        }
      }

      if (v17 == &v97)
      {
        break;
      }

      if (*(v17 + 16) != *(v20 + 16))
      {
        goto LABEL_25;
      }

      v17 = *(v17 + 8);
      v18 = (v20 + 8);
    }

    *&__p = v100;
    v74 = *(v14 + 32);
    v21 = v100;
    std::__list_imp<char *>::clear(&v97);
    if (v21 != v74)
    {
      goto LABEL_26;
    }

    v13 = i;
LABEL_27:
    if (v91)
    {
      (*(*v91 + 32))(v91);
    }

    else
    {
      LODWORD(v93) = v93 + 1;
    }
  }

LABEL_25:
  std::__list_imp<char *>::clear(&v97);
LABEL_26:
  if (i == -1)
  {
    goto LABEL_27;
  }

  i = 0xFFFFFFFFLL;
  v12 = v91;
LABEL_34:
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

LABEL_36:
  if (i == -1)
  {
LABEL_56:
    i = (*(*a2 + 200))(a2);
    v32 = 1;
    goto LABEL_57;
  }

  (*(*a1 + 32))(&p_p, a1, i);
  v22 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One();
  if (p_p)
  {
    v23 = v99 + 1;
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
    goto LABEL_134;
  }

  v25 = v98;
  v26 = (v22 + 16);
  v27 = p_p && p_p == *v22;
  v28 = !v27;
  v29 = 1;
  v30 = !v28;
  while (1)
  {
    v31 = *v26;
    if ((v29 & 1) != 0 && !v30)
    {
      break;
    }

    if (v25 == &v97)
    {
      goto LABEL_136;
    }

    if (*(v25 + 16) != *(v31 + 16))
    {
      goto LABEL_134;
    }

    v29 = 0;
    v25 = *(v25 + 8);
    v26 = (v31 + 8);
  }

  if (p_p)
  {
LABEL_134:
    std::__list_imp<char *>::clear(&v97);
    goto LABEL_135;
  }

LABEL_136:
  *&v91 = v100;
  LODWORD(__p) = *(v22 + 32);
  v62 = v100;
  std::__list_imp<char *>::clear(&v97);
  if (v62 != *&__p)
  {
LABEL_135:
    __p = 0;
    v78 = 0;
    v79 = 0;
    p_p = &__p;
    v97 = 0;
    v98 = 0;
    v99 = &v103;
    fst::DfsVisit<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(a1, &p_p);
  }

  v32 = 0;
LABEL_57:
  v90 = 0;
  (*(*a1 + 128))(a1, &v88);
  while (2)
  {
    if (!v88)
    {
      if (v90 >= v89)
      {
        goto LABEL_127;
      }

      goto LABEL_63;
    }

    if (!(*(*v88 + 16))(v88))
    {
      if (v88)
      {
        v33 = (*(*v88 + 24))();
LABEL_64:
        v34 = v33 + v32;
        while ((*(*a2 + 160))(a2) <= v34)
        {
          (*(*a2 + 200))(a2);
        }

        if (v33 == v63)
        {
          v35 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::One();
          v85 = *v35;
          std::list<int>::list(v86, (v35 + 2));
          v87 = v35[8];
          (*(*a2 + 184))(a2, (v33 + v32), &v85);
          std::__list_imp<char *>::clear(v86);
        }

        (*(*a1 + 32))(&v91, a1, v33);
        v36 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
        if (v91)
        {
          v37 = v94 + 1;
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
          v39 = v93;
          v40 = (v36 + 16);
          if (v91)
          {
            v41 = v91 == *v36;
          }

          else
          {
            v41 = 0;
          }

          v42 = !v41;
          v43 = 1;
          v44 = v42 ^ 1;
          while (1)
          {
            v45 = *v40;
            if ((v43 & 1) != 0 && !v44)
            {
              break;
            }

            if (v39 == &v92)
            {
              goto LABEL_90;
            }

            if (*(v39 + 16) != *(v45 + 16))
            {
              goto LABEL_89;
            }

            v43 = 0;
            v39 = *(v39 + 8);
            v40 = (v45 + 8);
          }

          if (v91)
          {
            goto LABEL_89;
          }

LABEL_90:
          LODWORD(p_p) = v95;
          LODWORD(__p) = *(v36 + 32);
          v46 = *&v95 != *&__p;
        }

        else
        {
LABEL_89:
          v46 = 1;
        }

        if ((v32 & v46) == 1)
        {
          fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Reverse(&v91, &v82);
          p_p = 0;
          LODWORD(v97) = v82;
          std::list<int>::list(&v98, v83);
          v101 = v84;
          v102 = v33 + v32;
          std::__list_imp<char *>::clear(v83);
          (*(*a2 + 208))(a2, 0, &p_p);
          std::__list_imp<char *>::clear(&v98);
        }

        v81 = 0;
        (*(*a1 + 136))(a1, v33, &__p);
LABEL_94:
        if (__p)
        {
          if ((*(*__p + 24))(__p))
          {
            if (__p)
            {
              (*(*__p + 8))();
              goto LABEL_122;
            }

LABEL_120:
            if (v80)
            {
              --*v80;
            }

LABEL_122:
            std::__list_imp<char *>::clear(&v92);
            if (v88)
            {
              (*(*v88 + 32))(v88);
            }

            else
            {
              ++v90;
            }

            continue;
          }

          if (__p)
          {
            v47 = (*(*__p + 32))();
LABEL_100:
            v48 = *(v47 + 48);
            fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Reverse((v47 + 8), &v74);
            v49 = (v48 + v32);
            if (v49 == i)
            {
              v50 = v32;
            }

            else
            {
              v50 = 1;
            }

            if ((v50 & 1) == 0)
            {
              (*(*a1 + 32))(&v69, a1, i);
              fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Reverse(&v69, &v71);
              fst::Times<int,(fst::StringType)1>(&v71, &v74, &v104);
              v51 = NAN;
              if (v73 != -INFINITY)
              {
                v51 = NAN;
                if (v76 != -INFINITY)
                {
                  v51 = INFINITY;
                  if (v76 != INFINITY && v73 != INFINITY)
                  {
                    v51 = v73 + v76;
                  }
                }
              }

              fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&p_p, &v104, v51);
              std::__list_imp<char *>::clear(v105);
              v74 = *&p_p;
              std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v75, v98, &v97);
              v76 = v100;
              std::__list_imp<char *>::clear(&v97);
              std::__list_imp<char *>::clear(v72);
              std::__list_imp<char *>::clear(v70);
            }

            v53 = *v47;
            v66 = v74;
            std::list<int>::list(v67, v75);
            v68 = v76;
            p_p = v53;
            *&v97 = v66;
            std::list<int>::list(&v98, v67);
            v101 = v68;
            v102 = v34;
            std::__list_imp<char *>::clear(v67);
            while (1)
            {
              v54 = (*(*a2 + 160))(a2);
              v55 = *a2;
              if (v54 > v49)
              {
                break;
              }

              (*(v55 + 200))(a2);
            }

            (*(v55 + 208))(a2, v49, &p_p);
            std::__list_imp<char *>::clear(&v98);
            std::__list_imp<char *>::clear(v75);
            if (__p)
            {
              (*(*__p + 40))(__p);
            }

            else
            {
              ++v81;
            }

            goto LABEL_94;
          }
        }

        else if (v81 >= v79)
        {
          goto LABEL_120;
        }

        v47 = v78 + 56 * v81;
        goto LABEL_100;
      }

LABEL_63:
      v33 = v90;
      goto LABEL_64;
    }

    break;
  }

  if (v88)
  {
    (*(*v88 + 8))();
  }

LABEL_127:
  (*(*a2 + 176))(a2, i);
  if (i == v63)
  {
    v56 = v32;
  }

  else
  {
    v56 = 1;
  }

  if ((v56 & 1) == 0)
  {
    (*(*a1 + 32))(&p_p, a1, v63);
    fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Reverse(&p_p, v64);
    (*(*a2 + 184))(a2, v63, v64);
    std::__list_imp<char *>::clear(v65);
    std::__list_imp<char *>::clear(&v97);
  }

  v57 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  v58 = v103;
  v59 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v60 = fst::ReverseProperties(v58 | v57, v32);
  return (*(*a2 + 192))(a2, v59 | v60, 0x3FFFFFFF0007);
}

void sub_1B558EA98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ShortestDistance<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = *a3;
  v14 = *(a3 + 16);
  v15 = *(a3 + 20);
  v16 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  memset(v20, 0, 29);
  v6 = *a2;
  v5 = a2[1];
  if (v5 != *a2)
  {
    do
    {
      v7 = v5 - 40;
      std::__list_imp<char *>::clear((v5 - 32));
      v5 = v7;
    }

    while (v7 != v6);
  }

  a2[1] = v6;
  fst::ShortestDistanceState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::ShortestDistance(v13, *(a3 + 12));
  if (BYTE12(v20[1]) == 1)
  {
    v9 = *a2;
    v8 = a2[1];
    if (v8 != *a2)
    {
      do
      {
        v10 = v8 - 40;
        std::__list_imp<char *>::clear((v8 - 32));
        v8 = v10;
      }

      while (v10 != v9);
    }

    a2[1] = v9;
    v11 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::NoWeight();
    std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>>::resize(a2, 1uLL, v11);
  }

  return fst::ShortestDistanceState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::~ShortestDistanceState(v13);
}

void sub_1B558ED78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  fst::ShortestDistanceState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::~ShortestDistanceState(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::resize(uint64_t *result, unint64_t a2, _DWORD *a3)
{
  v3 = result;
  v4 = result[1];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    return std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::__append(result, v7, a3);
  }

  else if (!v6)
  {
    v8 = *result + 40 * a2;
    if (v4 != v8)
    {
      do
      {
        v9 = v4 - 40;
        result = std::__list_imp<char *>::clear((v4 - 32));
        v4 = v9;
      }

      while (v9 != v8);
    }

    v3[1] = v8;
  }

  return result;
}

uint64_t fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::NoWeight()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::NoWeight(void)::no_weight;
}

void *fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Reverse@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::TropicalWeightTpl<float>>::Reverse(a1, &v4);
  *a2 = v4;
  std::list<int>::list((a2 + 8), v5);
  *(a2 + 32) = v6;
  return std::__list_imp<char *>::clear(v5);
}

void fst::AutoQueue<int>::AutoQueue<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(uint64_t a1, uint64_t a2)
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
        fst::DfsVisit<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(a2, v5);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1B558F6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

uint64_t fst::AutoQueue<int>::SccQueueType<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::NaturalLess<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v11 = *(a3 + 8) - *a3;
  if (v11)
  {
    v12 = v11 >> 2;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    bzero(*a3, 4 * v12);
  }

  v76 = 0;
  (*(*a1 + 128))(a1, &v74);
  while (1)
  {
    result = v74;
    if (!v74)
    {
      if (v76 >= v75)
      {
        return result;
      }

LABEL_11:
      v15 = v76;
      goto LABEL_12;
    }

    v14 = (*(*v74 + 16))(v74);
    result = v74;
    if (v14)
    {
      break;
    }

    if (!v74)
    {
      goto LABEL_11;
    }

    v15 = (*(*v74 + 24))();
LABEL_12:
    v73 = 0;
    (*(*a1 + 136))(a1, v15, v71);
    while (1)
    {
      if (!v71[0])
      {
        if (v73 >= v71[2])
        {
          goto LABEL_118;
        }

        goto LABEL_18;
      }

      if ((*(*v71[0] + 24))(v71[0]))
      {
        break;
      }

      if (v71[0])
      {
        v16 = (*(*v71[0] + 32))();
        goto LABEL_19;
      }

LABEL_18:
      v16 = v71[1] + 56 * v73;
LABEL_19:
      v17 = *(*a2 + 4 * v15);
      if (v17 == *(*a2 + 4 * *(v16 + 48)))
      {
        v18 = *a3;
        if (!a4 || (v19 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One(), fst::NaturalLess<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::operator()(a4, v16 + 8, v19)))
        {
          v20 = 1;
          goto LABEL_67;
        }

        if ((v18[v17] | 2) == 2)
        {
          v21 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
          v22 = *(v16 + 8);
          if (v22)
          {
            v23 = *(v16 + 32) + 1;
          }

          else
          {
            v23 = 0;
          }

          if (*v21)
          {
            v24 = *(v21 + 24) + 1;
          }

          else
          {
            v24 = 0;
          }

          if (v23 != v24)
          {
            goto LABEL_45;
          }

          v25 = (v16 + 24);
          v26 = (v21 + 16);
          v27 = v22 && v22 == *v21;
          v28 = !v27;
          v29 = 1;
          v30 = !v28;
          while (1)
          {
            v31 = *v25;
            v32 = *v26;
            if ((v29 & 1) != 0 && !v30)
            {
              break;
            }

            if (v31 == v16 + 16)
            {
              goto LABEL_44;
            }

            if (*(v31 + 16) != *(v32 + 16))
            {
              goto LABEL_45;
            }

            v29 = 0;
            v25 = (v31 + 8);
            v26 = (v32 + 8);
          }

          if (v22)
          {
            goto LABEL_45;
          }

LABEL_44:
          v78 = *(v16 + 40);
          v77 = *(v21 + 32);
          if (v78 != v77)
          {
LABEL_45:
            v33 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One();
            v34 = *(v16 + 8);
            if (v34)
            {
              v35 = *(v16 + 32) + 1;
            }

            else
            {
              v35 = 0;
            }

            if (*v33)
            {
              v36 = *(v33 + 24) + 1;
            }

            else
            {
              v36 = 0;
            }

            if (v35 != v36)
            {
              goto LABEL_66;
            }

            v37 = (v16 + 24);
            v38 = (v33 + 16);
            v39 = v34 && v34 == *v33;
            v40 = !v39;
            v41 = 1;
            v42 = !v40;
            while (1)
            {
              v43 = *v37;
              v44 = *v38;
              if ((v41 & 1) != 0 && !v42)
              {
                break;
              }

              if (v43 == v16 + 16)
              {
                goto LABEL_65;
              }

              if (*(v43 + 16) != *(v44 + 16))
              {
                goto LABEL_66;
              }

              v41 = 0;
              v37 = (v43 + 8);
              v38 = (v44 + 8);
            }

            if (v34)
            {
              goto LABEL_66;
            }

LABEL_65:
            v78 = *(v16 + 40);
            v77 = *(v33 + 32);
            if (v78 != v77)
            {
LABEL_66:
              v20 = 3;
              goto LABEL_67;
            }
          }

          v20 = 2;
LABEL_67:
          v18[v17] = v20;
        }

        *a5 = 0;
      }

      v45 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
      v47 = *(v16 + 8);
      if (v47)
      {
        v48 = *(v16 + 32) + 1;
      }

      else
      {
        v48 = 0;
      }

      if (*v45)
      {
        v49 = *(v45 + 24) + 1;
      }

      else
      {
        v49 = 0;
      }

      if (v48 != v49)
      {
        goto LABEL_90;
      }

      v50 = (v16 + 24);
      v51 = (v45 + 16);
      v52 = v47 && v47 == *v45;
      v53 = !v52;
      v54 = 1;
      v55 = !v53;
      while (1)
      {
        v56 = *v50;
        v57 = *v51;
        if ((v54 & 1) != 0 && !v55)
        {
          break;
        }

        if (v56 == v16 + 16)
        {
          goto LABEL_89;
        }

        if (*(v56 + 16) != *(v57 + 16))
        {
          goto LABEL_90;
        }

        v54 = 0;
        v50 = (v56 + 8);
        v51 = (v57 + 8);
      }

      if (v47)
      {
        goto LABEL_90;
      }

LABEL_89:
      v78 = *(v16 + 40);
      v77 = *(v45 + 32);
      v46.n128_f32[0] = v78;
      if (v78 != v77)
      {
LABEL_90:
        v58 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One();
        v59 = *(v16 + 8);
        if (v59)
        {
          v60 = *(v16 + 32) + 1;
        }

        else
        {
          v60 = 0;
        }

        if (*v58)
        {
          v61 = *(v58 + 24) + 1;
        }

        else
        {
          v61 = 0;
        }

        if (v60 != v61)
        {
          goto LABEL_111;
        }

        v62 = (v16 + 24);
        v63 = (v58 + 16);
        v64 = v59 && v59 == *v58;
        v65 = !v64;
        v66 = 1;
        v67 = !v65;
        while (1)
        {
          v68 = *v62;
          v69 = *v63;
          if ((v66 & 1) != 0 && !v67)
          {
            break;
          }

          if (v68 == v16 + 16)
          {
            goto LABEL_110;
          }

          if (*(v68 + 16) != *(v69 + 16))
          {
            goto LABEL_111;
          }

          v66 = 0;
          v62 = (v68 + 8);
          v63 = (v69 + 8);
        }

        if (v59)
        {
          goto LABEL_111;
        }

LABEL_110:
        v78 = *(v16 + 40);
        v77 = *(v58 + 32);
        v46.n128_f32[0] = v78;
        if (v78 != v77)
        {
LABEL_111:
          *a6 = 0;
        }
      }

      if (v71[0])
      {
        (*(*v71[0] + 40))(v71[0], v46);
      }

      else
      {
        ++v73;
      }
    }

    if (v71[0])
    {
      (*(*v71[0] + 8))();
      goto LABEL_120;
    }

LABEL_118:
    if (v72)
    {
      --*v72;
    }

LABEL_120:
    if (v74)
    {
      (*(*v74 + 32))(v74);
    }

    else
    {
      ++v76;
    }
  }

  if (v74)
  {
    return (*(*v74 + 8))();
  }

  return result;
}

void sub_1B558FDEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  _Unwind_Resume(exception_object);
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(uint64_t a1)
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
  fst::DfsVisit<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::TopOrderVisitor<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>();
}

void sub_1B558FFC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
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

void sub_1B55907E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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
  fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Type()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Type(void)::type;
}

void sub_1B55908F8(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

BOOL fst::NaturalLess<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  fst::Plus<int>(a2, a3, &v27);
  v5 = *(a2 + 32);
  v6 = NAN;
  if (v5 != -INFINITY)
  {
    v7 = *(a3 + 32);
    v6 = NAN;
    if (v7 != -INFINITY)
    {
      if (v5 >= v7)
      {
        v6 = *(a3 + 32);
      }

      else
      {
        v6 = *(a2 + 32);
      }
    }
  }

  fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v24, &v27, v6);
  std::__list_imp<char *>::clear(v28);
  if (v24)
  {
    v8 = v25[2] + 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *a2;
  if (*a2)
  {
    v10 = *(a2 + 24) + 1;
  }

  else
  {
    v10 = 0;
  }

  if (v8 != v10)
  {
    goto LABEL_35;
  }

  v11 = v25[1];
  v12 = *(a2 + 16);
  v13 = v12;
  if (v24)
  {
    if (v24 != v9)
    {
LABEL_35:
      v22 = 0;
      goto LABEL_36;
    }

    while (v11 != v25)
    {
      if (*(v11 + 16) != *(v13 + 16))
      {
        goto LABEL_35;
      }

      v11 = *(v11 + 8);
      v13 = *(v13 + 8);
    }
  }

  v27 = v26;
  v14 = *(a2 + 32);
  v29 = v14;
  if (v26 != v14)
  {
    goto LABEL_35;
  }

  if (*a3)
  {
    v15 = *(a3 + 24) + 1;
  }

  else
  {
    v15 = 0;
  }

  if (v8 == v15)
  {
    v16 = (a3 + 16);
    if (v9)
    {
      v17 = v9 == *a3;
    }

    else
    {
      v17 = 0;
    }

    v18 = !v17;
    v19 = 1;
    v20 = v18 ^ 1;
    while (1)
    {
      v21 = *v16;
      if ((v19 & 1) != 0 && !v20)
      {
        break;
      }

      if (v12 == a2 + 8)
      {
        goto LABEL_39;
      }

      if (*(v12 + 16) != *(v21 + 16))
      {
        goto LABEL_38;
      }

      v19 = 0;
      v12 = *(v12 + 8);
      v16 = (v21 + 8);
    }

    if (v9)
    {
      goto LABEL_38;
    }

LABEL_39:
    v27 = v14;
    v29 = *(a3 + 32);
    v22 = v14 != v29;
  }

  else
  {
LABEL_38:
    v22 = 1;
  }

LABEL_36:
  std::__list_imp<char *>::clear(v25);
  return v22;
}

void fst::ShortestDistanceState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::ShortestDistance(void *a1)
{
  if ((*(**a1 + 24))(*a1) != -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v2 = fst::LogMessage::LogMessage(&v11, __p);
    v3 = fst::cerr(v2);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ShortestDistance: Weight needs to be right distributive: ", 57);
    v5 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Type();
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
    fst::LogMessage::~LogMessage(&v11);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_15;
  }

  if ((*(**a1 + 64))(*a1, 4, 0))
  {
LABEL_15:
    *(a1 + 116) = 1;
  }
}

void sub_1B5590C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *fst::Times<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  fst::Times<int,(fst::StringType)0>(a1, a2, &v12);
  v6 = *(a1 + 32);
  v7 = NAN;
  if (v6 != -INFINITY)
  {
    v8 = *(a2 + 32);
    v7 = NAN;
    if (v8 != -INFINITY)
    {
      v7 = INFINITY;
      v9 = v8 == INFINITY || v6 == INFINITY;
      v10 = v6 + v8;
      if (!v9)
      {
        v7 = v10;
      }
    }
  }

  fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::GallicWeight(a3, &v12, v7);
  return std::__list_imp<char *>::clear(v13);
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>,fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      *(a4 + v7) = *(v6 + v7);
      result = std::list<int>::list((a4 + v7 + 8), v6 + v7 + 8);
      *(a4 + v7 + 32) = *(v6 + v7 + 32);
      v7 += 40;
    }

    while (v8 + 40 != a3);
    while (v6 != a3)
    {
      result = std::__list_imp<char *>::clear((v6 + 8));
      v6 += 40;
    }
  }

  return result;
}

void sub_1B5590E00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 32);
    do
    {
      std::__list_imp<char *>::clear(v5);
      v5 -= 5;
      v4 += 40;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

void fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::~VectorFst(void *a1)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(*(*(a1 + 8) + 64) + 8 * a2);
  *a3 = *v4;
  result = std::list<int>::list((a3 + 8), (v4 + 2));
  *(a3 + 32) = v4[8];
  return result;
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 72) - *(v2 + 64)) >> 3;
  return result;
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
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

uint64_t fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 88) = a2;
  result = (*(*v4 + 24))(v4);
  *(v4 + 8) = result & 0xCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

void *fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  v8 = *a3;
  std::list<int>::list(v9, (a3 + 2));
  v10 = a3[8];
  fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::SetFinal(v6, a2, &v8);
  return std::__list_imp<char *>::clear(v9);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::AddArc(uint64_t a1, int a2, int *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::AddArc(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0x6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::DeleteStates(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::DeleteStates(v2);
  result = (*(*v2 + 24))(v2);
  v2[1] = (*(v2 + 2) | result) & 4 | 0x156A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::DeleteArcs(*(v6[8] + 8 * a2), a3);
  result = (*(*v6 + 24))(v6);
  v6[1] = v6[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::DeleteArcs(v4, a2);
}

void *fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 64);

  return std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(v4, a2);
}

void *fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 64) + 8 * a2) + 56);

  return std::vector<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::reserve(v6, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(v4, a2);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D1E320;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2D1E270;
  std::string::basic_string[abi:ne200100]<0>(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950003;
  return a1;
}

void sub_1B559197C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = &unk_1F2D1E2E8;
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

  return fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::~FstImpl(a1);
}

void fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::~VectorFstImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::~VectorFstBaseImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::~FstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D1E320;
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

uint64_t fst::Fst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::Write(uint64_t a1)
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

void sub_1B5591C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5591D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::operator=(uint64_t a1)
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

void sub_1B5591E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(uint64_t result)
{
  if (*(*(result + 8) + 56) >= 2)
  {
    operator new();
  }

  return result;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D1E320;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2D1E270;
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
    v6 = fst::CountStates<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(a2);
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
      fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::AddState();
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

uint64_t fst::CountStates<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(uint64_t a1)
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

void sub_1B55926AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::CountStates<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>();
  }

  _Unwind_Resume(exception_object);
}

void *fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::SetFinal(uint64_t a1, int a2, int *a3)
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

uint64_t fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Zero()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Zero(void)::zero;
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::TropicalWeightTpl<float>>::Zero()
{
  {
    operator new();
  }

  return fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::TropicalWeightTpl<float>>::Zero(void)::zero;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::TropicalWeightTpl<float>>::Zero()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::TropicalWeightTpl<float>>::Zero(void)::zero;
}

void sub_1B5592AF4(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  MEMORY[0x1B8C85350](v1, 0x1020C4067685F46);
  _Unwind_Resume(a1);
}

void *std::vector<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::reserve(void *result, unint64_t a2)
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

void sub_1B5592C10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void sub_1B5592CC4(_Unwind_Exception *exception_object)
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

uint64_t fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::AddArc(void *a1, _DWORD *a2)
{
  if (!*a2)
  {
    ++a1[5];
  }

  if (!a2[1])
  {
    ++a1[6];
  }

  return std::vector<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::push_back[abi:ne200100](a1 + 7, a2);
}

uint64_t std::vector<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::__emplace_back_slow_path<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> const&>(a1, a2);
  }

  else
  {
    std::vector<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::__construct_one_at_end[abi:ne200100]<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> const&>(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

void *std::vector<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::__construct_one_at_end[abi:ne200100]<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> const&>(uint64_t a1, uint64_t a2)
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

uint64_t std::vector<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::__emplace_back_slow_path<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> const&>(uint64_t *a1, uint64_t a2)
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
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*>(a1, *a1, v8, v9);
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

void sub_1B5592F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

unint64_t fst::TestProperties<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(a1, a2, a3, 0);
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

    return fst::ComputeProperties<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(a1, a2, a3, 1);
  }
}

void sub_1B5593070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
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
      fst::DfsVisit<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::SccVisitor<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>(v7, &v86);
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
              v54 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Zero();
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
                v64 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::One();
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
          v24 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::One();
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
            v36 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Zero();
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

void sub_1B5593B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
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

uint64_t fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::One()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::One(void)::one;
}

void sub_1B5594470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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
  fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::InitVisit(uint64_t a1, uint64_t a2)
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

unint64_t fst::SccVisitor<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::FinishState(uint64_t a1, int a2, int a3)
{
  (*(**(a1 + 32) + 32))(&v33);
  v6 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Zero();
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

void fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D1E498;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

{
  *a1 = &unk_1F2D1E498;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D1E4D8;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B5594AD8(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D1E4D8;
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

void *std::deque<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> *>>::push_back(void *result, void *a2)
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
    result = std::deque<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> *>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> *>>::__add_back_capacity(void *a1)
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

void sub_1B5594DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::TropicalWeightTpl<float>>::One()
{
  {
    operator new();
  }

  return fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::TropicalWeightTpl<float>>::One(void)::one;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::TropicalWeightTpl<float>>::One()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::TropicalWeightTpl<float>>::One(void)::one;
}

void sub_1B5594FC4(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  MEMORY[0x1B8C85350](v1, 0x1020C4067685F46);
  _Unwind_Resume(a1);
}

void fst::ArcBuffer<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::SetFromFst<fst::Fst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
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

void sub_1B55952B8(_Unwind_Exception *exception_object)
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

uint64_t fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::WriteFst<fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>>(void *a1, void *a2, uint64_t a3)
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
    v37 = fst::CountStates<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(a1);
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
  fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::WriteFstHeader(a1, a2, a3, 2, __p, v9 | 3, v31);
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
  updated = fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::UpdateFstHeader(a1, a2, a3, 2, __p, v9 | 3, v31, v28);
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

void sub_1B55957C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a15);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::WriteFstHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Type();
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

uint64_t fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::UpdateFstHeader(uint64_t a1, void *a2, uint64_t a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::WriteFstHeader(a1, a2, a3, a4, a5, a6, a7);
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