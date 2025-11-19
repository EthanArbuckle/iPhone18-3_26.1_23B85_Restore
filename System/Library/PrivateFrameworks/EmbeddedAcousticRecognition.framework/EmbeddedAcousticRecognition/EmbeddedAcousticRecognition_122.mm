uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::~FactorWeightFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D3F4E0;
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

  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::~__hash_table(a1 + 192);
  v5 = (a1 + 168);
  std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>::__destroy_vector::operator()[abi:ne200100](&v5);
  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::~CacheBaseImpl(a1);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Start(uint64_t a1)
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
      v4 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::One();
      v6 = *v4;
      std::list<int>::list(v7, (v4 + 2));
      v8 = v4[8];
      v9[0] = v3;
      v9[2] = v6;
      std::list<int>::list(v10, v7);
      v11 = v8;
      State = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::FindState(a1, v9);
      std::__list_imp<char *>::clear(v10);
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

void sub_1B5A43258(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v1 + 16));
  std::__list_imp<char *>::clear((v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::FindState(uint64_t a1, int *a2)
{
  if ((*(a1 + 148) & 2) != 0)
  {
    goto LABEL_21;
  }

  v4 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::One();
  v5 = a2[2];
  v6 = v5 ? *(a2 + 4) + 1 : 0;
  v7 = *v4 ? *(v4 + 24) + 1 : 0;
  if (v6 != v7)
  {
    goto LABEL_21;
  }

  v8 = (a2 + 6);
  v9 = (v4 + 16);
  for (i = 1; ; i = 0)
  {
    v11 = *v8;
    v12 = *v9;
    if (i)
    {
      if (!v5)
      {
        break;
      }

      if (v5 != *v4)
      {
        goto LABEL_21;
      }
    }

    if (v11 == a2 + 4)
    {
      break;
    }

    if (*(v11 + 16) != *(v12 + 16))
    {
      goto LABEL_21;
    }

    v8 = (v11 + 8);
    v9 = (v12 + 8);
  }

  v24[0] = a2[10];
  v28 = *(v4 + 32);
  v13 = *a2;
  if (*v24 != v28 || v13 == -1)
  {
LABEL_21:
    v15 = std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::find<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>((a1 + 192), a2);
    if (v15)
    {
      return *(v15 + 16);
    }

    else
    {
      v16 = -1431655765 * ((*(a1 + 176) - *(a1 + 168)) >> 4);
      std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Element>>::push_back[abi:ne200100]((a1 + 168), a2);
      v17 = a2[2];
      v24[0] = *a2;
      v24[2] = v17;
      std::list<int>::list(v25, (a2 + 4));
      v26 = a2[10];
      v27 = v16;
      std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::__emplace_unique_key_args<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::pair<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element const,int>>((a1 + 192), v24);
      std::__list_imp<char *>::clear(v25);
    }
  }

  else
  {
    v19 = v13;
    v20 = *(a1 + 232);
    if (v13 >= ((*(a1 + 240) - v20) >> 2))
    {
      do
      {
        std::vector<int>::push_back[abi:ne200100]((a1 + 232), &fst::kNoStateId);
        v20 = *(a1 + 232);
        v13 = *a2;
        v19 = *a2;
      }

      while (v19 >= (*(a1 + 240) - v20) >> 2);
    }

    if (*(v20 + 4 * v19) == -1)
    {
      v21 = *(a1 + 168);
      v22 = *(a1 + 176);
      v23 = (a1 + 168);
      *(v20 + 4 * v19) = -1431655765 * ((v22 - v21) >> 4);
      std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Element>>::push_back[abi:ne200100](v23, a2);
      v13 = *a2;
      v20 = v23[8];
    }

    return *(v20 + 4 * v13);
  }

  return v16;
}

uint64_t std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Element>>::push_back[abi:ne200100](uint64_t *a1, _DWORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Element>>::__emplace_back_slow_path<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Element const&>(a1, a2);
  }

  else
  {
    std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Element>>::__construct_one_at_end[abi:ne200100]<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Element const&>(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

void *std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Element>>::__construct_one_at_end[abi:ne200100]<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Element const&>(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 8) = a2[2];
  result = std::list<int>::list((v4 + 16), (a2 + 4));
  *(v4 + 40) = a2[10];
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Element>>::__emplace_back_slow_path<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Element const&>(uint64_t *a1, _DWORD *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>(a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  *(v7 + 8) = a2[2];
  std::list<int>::list((v7 + 16), (a2 + 4));
  *(v7 + 40) = a2[10];
  *&v16 = v16 + 48;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Element>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Element*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element> &>::~__split_buffer(&v14);
  return v13;
}

void sub_1B5A43654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Element>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Element*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      v9 = (a4 + v7);
      *v9 = *(v6 + v7);
      v9[2] = *(v6 + v7 + 8);
      result = std::list<int>::list((a4 + v7 + 16), v6 + v7 + 16);
      v9[10] = *(v6 + v7 + 40);
      v7 += 48;
    }

    while (v8 + 48 != a3);
    while (v6 != a3)
    {
      result = std::__list_imp<char *>::clear((v6 + 16));
      v6 += 48;
    }
  }

  return result;
}

void sub_1B5A43700(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 32);
    do
    {
      std::__list_imp<char *>::clear(v5);
      v5 -= 6;
      v4 += 48;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

void *fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasFinal(a1, a2) & 1) == 0)
  {
    v6 = (*(a1 + 168) + 48 * a2);
    if (*v6 == -1)
    {
      v26 = v6[2];
      std::list<int>::list(v27, (v6 + 4));
      v28 = *(v6 + 10);
    }

    else
    {
      (*(**(a1 + 136) + 32))(&v22);
      fst::Times<int,(fst::StringType)2>(v6 + 2, &v22, &v29);
      v7 = *(v6 + 10);
      v8 = NAN;
      if (v7 != -INFINITY)
      {
        v8 = NAN;
        if (v24 != -INFINITY)
        {
          v8 = INFINITY;
          v9 = v24 == INFINITY || v7 == INFINITY;
          v10 = v7 + v24;
          if (!v9)
          {
            v8 = v10;
          }
        }
      }

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::GallicWeight(&v26, &v29, v8);
      std::__list_imp<char *>::clear(v30);
      std::__list_imp<char *>::clear(v23);
    }

    LODWORD(v22) = v26;
    std::list<int>::list(v23, v27);
    v24 = v28;
    if (v26)
    {
      v11 = (v27[2] + 1) >= 2;
    }

    else
    {
      v11 = 0;
    }

    v12 = !v11;
    v25 = v12;
    if ((*(a1 + 148) & 1) == 0 || v12)
    {
      v19 = v26;
      v14 = v20;
      std::list<int>::list(v20, v27);
      v21 = v28;
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::SetFinal(a1, a2, &v19);
    }

    else
    {
      v13 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Zero();
      v16 = *v13;
      v14 = v17;
      std::list<int>::list(v17, (v13 + 2));
      v18 = v13[8];
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::SetFinal(a1, a2, &v16);
    }

    std::__list_imp<char *>::clear(v14);
    std::__list_imp<char *>::clear(v23);
    std::__list_imp<char *>::clear(v27);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Final(a1, a2, a3);
}

void sub_1B5A43958(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v1);
  std::__list_imp<char *>::clear((v3 + 8));
  std::__list_imp<char *>::clear((v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::NumArcs(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Expand(a1, a2);
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

void *fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Expand(uint64_t a1, int a2)
{
  v3 = *(a1 + 168) + 48 * a2;
  v80 = *v3;
  v81 = *(v3 + 8);
  std::list<int>::list(v82, v3 + 16);
  v83 = *(v3 + 40);
  if (v80 == -1)
  {
    goto LABEL_33;
  }

  v4 = *(a1 + 136);
  v79 = 0;
  (*(*v4 + 136))(v4);
  while (1)
  {
    if (!v76)
    {
      if (v79 >= v77[1])
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    if ((*(*v76 + 24))(v76))
    {
      break;
    }

    if (v76)
    {
      v5 = (*(*v76 + 32))(v76);
      goto LABEL_9;
    }

LABEL_8:
    v5 = v77[0] + 56 * v79;
LABEL_9:
    fst::Times<int,(fst::StringType)2>(&v81, v5 + 8, &v57);
    v6 = NAN;
    if (v83 != -INFINITY)
    {
      v7 = *(v5 + 40);
      v6 = NAN;
      if (v7 != -INFINITY)
      {
        v6 = INFINITY;
        if (v7 != INFINITY && v83 != INFINITY)
        {
          v6 = v83 + v7;
        }
      }
    }

    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::GallicWeight(&v73, &v57, v6);
    std::__list_imp<char *>::clear(&v58);
    v69 = *&v73;
    std::list<int>::list(v70, v74);
    v71 = v75;
    v10 = *&v73 == 0.0 || (v74[2] + 1) < 2;
    v72 = v10;
    if (*(a1 + 148) & 2) == 0 || (v10)
    {
      v15 = *(v5 + 48);
      v16 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::One();
      v66 = *v16;
      std::list<int>::list(v67, (v16 + 2));
      v68 = v16[8];
      LODWORD(v57) = v15;
      LODWORD(v58) = v66;
      std::list<int>::list(v59, v67);
      v61 = v68;
      LODWORD(v16) = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::FindState(a1, &v57);
      std::__list_imp<char *>::clear(v59);
      std::__list_imp<char *>::clear(v67);
      v17 = *v5;
      v63 = v73;
      std::list<int>::list(v64, v74);
      v65 = v75;
      v57 = v17;
      LODWORD(v58) = v63;
      std::list<int>::list(v59, v64);
      v61 = v65;
      LODWORD(v62[0]) = v16;
      MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GetMutableState(*(a1 + 120), a2);
      std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::push_back[abi:ne200100]((MutableState + 56), &v57);
      std::__list_imp<char *>::clear(v59);
      std::__list_imp<char *>::clear(v64);
    }

    else
    {
      fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Value(&v69, &v57);
      v11 = *(v5 + 48);
      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Quantize(&v61, &v54, *(a1 + 144));
      LODWORD(v49) = v11;
      LODWORD(v50) = v54;
      std::list<int>::list(v51, v55);
      v52 = v56;
      State = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::FindState(a1, &v49);
      std::__list_imp<char *>::clear(v51);
      std::__list_imp<char *>::clear(v55);
      v13 = *v5;
      v46 = v57;
      std::list<int>::list(v47, &v58);
      v48 = v60;
      v49 = v13;
      LODWORD(v50) = v46;
      std::list<int>::list(v51, v47);
      v52 = v48;
      v53 = State;
      v14 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GetMutableState(*(a1 + 120), a2);
      std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::push_back[abi:ne200100]((v14 + 56), &v49);
      std::__list_imp<char *>::clear(v51);
      std::__list_imp<char *>::clear(v47);
      std::__list_imp<char *>::clear(v62);
      std::__list_imp<char *>::clear(&v58);
      v72 = 1;
    }

    std::__list_imp<char *>::clear(v70);
    std::__list_imp<char *>::clear(v74);
    if (v76)
    {
      (*(*v76 + 40))(v76);
    }

    else
    {
      ++v79;
    }
  }

  if (v76)
  {
    (*(*v76 + 8))(v76);
    goto LABEL_33;
  }

LABEL_31:
  if (v78)
  {
    --*v78;
  }

LABEL_33:
  if (*(a1 + 148))
  {
    if (v80 == -1)
    {
      goto LABEL_65;
    }

    (*(**(a1 + 136) + 32))(&v57);
    v19 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Zero();
    v20 = v57 ? v59[1] + 1 : 0;
    v21 = *v19 ? *(v19 + 24) + 1 : 0;
    if (v20 == v21)
    {
      v22 = v59[0];
      v23 = (v19 + 16);
      if (v57)
      {
        v24 = v57 == *v19;
      }

      else
      {
        v24 = 0;
      }

      v25 = !v24;
      v26 = 1;
      v27 = v25 ^ 1;
      while (1)
      {
        v28 = *v23;
        if ((v26 & 1) != 0 && !v27)
        {
          break;
        }

        if (v22 == &v58)
        {
          goto LABEL_77;
        }

        if (*(v22 + 16) != *(v28 + 16))
        {
          goto LABEL_55;
        }

        v26 = 0;
        v22 = *(v22 + 8);
        v23 = (v28 + 8);
      }

      if (v57)
      {
        goto LABEL_55;
      }

LABEL_77:
      *&v49 = v60;
      v69 = *(v19 + 32);
      v37 = v60;
      v38 = v69;
      std::__list_imp<char *>::clear(&v58);
      if (v37 == v38)
      {
        goto LABEL_76;
      }
    }

    else
    {
LABEL_55:
      std::__list_imp<char *>::clear(&v58);
    }

    if (v80 == -1)
    {
LABEL_65:
      LODWORD(v76) = v81;
      std::list<int>::list(v77, v82);
      *&v79 = v83;
    }

    else
    {
      (*(**(a1 + 136) + 32))(&v57);
      fst::Times<int,(fst::StringType)2>(&v81, &v57, &v49);
      v29 = NAN;
      if (v83 != -INFINITY)
      {
        v29 = NAN;
        if (v60 != -INFINITY)
        {
          v29 = INFINITY;
          if (v60 != INFINITY && v83 != INFINITY)
          {
            v29 = v83 + v60;
          }
        }
      }

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::GallicWeight(&v76, &v49, v29);
      std::__list_imp<char *>::clear(&v50);
      std::__list_imp<char *>::clear(&v58);
    }

    v31 = *(a1 + 152);
    v69 = *&v76;
    std::list<int>::list(v70, v77);
    v71 = v79;
    if (v76)
    {
      v32 = v78 + 1 >= 2;
    }

    else
    {
      v32 = 0;
    }

    v33 = !v32;
    v72 = v33;
    if (v32)
    {
      fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Value(&v69, &v57);
      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Quantize(&v61, &v43, *(a1 + 144));
      LODWORD(v49) = -1;
      LODWORD(v50) = v43;
      std::list<int>::list(v51, v44);
      v52 = v45;
      v34 = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::FindState(a1, &v49);
      std::__list_imp<char *>::clear(v51);
      std::__list_imp<char *>::clear(v44);
      v40 = v57;
      std::list<int>::list(v41, &v58);
      v42 = v60;
      v49 = v31;
      LODWORD(v50) = v40;
      std::list<int>::list(v51, v41);
      v52 = v42;
      v53 = v34;
      v35 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GetMutableState(*(a1 + 120), a2);
      std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::push_back[abi:ne200100]((v35 + 56), &v49);
      std::__list_imp<char *>::clear(v51);
      std::__list_imp<char *>::clear(v41);
      std::__list_imp<char *>::clear(v62);
      std::__list_imp<char *>::clear(&v58);
      v72 = 1;
    }

    std::__list_imp<char *>::clear(v70);
    std::__list_imp<char *>::clear(v77);
  }

LABEL_76:
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::SetArcs(a1, a2);
  return std::__list_imp<char *>::clear(v82);
}

void sub_1B5A441F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  std::__list_imp<char *>::clear((v39 + 8));
  std::__list_imp<char *>::clear(&a39);
  std::__list_imp<char *>::clear((v40 - 136));
  _Unwind_Resume(a1);
}

void *fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Value@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = *a1;
  std::list<int>::list(v38, (a1 + 2));
  if (*a1)
  {
    v4 = (*(a1 + 3) + 1) >= 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = !v4;
  v39 = v5;
  fst::StringFactor<int,(fst::StringType)2>::Value(&v37, &v24);
  v32 = v24;
  v33[0] = v33;
  v33[1] = v33;
  v34 = 0;
  v6 = v27;
  if (v27)
  {
    v8 = v25;
    v7 = v26;
    v9 = *(v25 + 8);
    v10 = *v26;
    *(v10 + 8) = v9;
    *v9 = v10;
    v11 = v33[0];
    *(v33[0] + 8) = v7;
    *v7 = v11;
    v33[0] = v8;
    *(v8 + 8) = v33;
    v34 = v6;
    v27 = 0;
  }

  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::GallicWeight(&v35, &v32, *(a1 + 8));
  std::__list_imp<char *>::clear(v33);
  std::__list_imp<char *>::clear(&v29);
  std::__list_imp<char *>::clear(&v25);
  fst::StringFactor<int,(fst::StringType)2>::Value(&v37, &v24);
  v19 = v28;
  v20[0] = v20;
  v20[1] = v20;
  v21 = 0;
  v12 = v31;
  if (v31)
  {
    v14 = v29;
    v13 = v30;
    v15 = *(v29 + 8);
    v16 = *v30;
    *(v16 + 8) = v15;
    *v15 = v16;
    v17 = v20[0];
    *(v20[0] + 8) = v13;
    *v13 = v17;
    v20[0] = v14;
    *(v14 + 8) = v20;
    v21 = v12;
    v31 = 0;
  }

  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::GallicWeight(&v22, &v19, 0.0);
  std::__list_imp<char *>::clear(v20);
  std::__list_imp<char *>::clear(&v29);
  std::__list_imp<char *>::clear(&v25);
  std::pair<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::pair[abi:ne200100]<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>&,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>&,0>(a2, &v35, &v22);
  std::__list_imp<char *>::clear(v23);
  std::__list_imp<char *>::clear(v36);
  return std::__list_imp<char *>::clear(v38);
}

void sub_1B5A445B0(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v1 + 8));
  std::__list_imp<char *>::clear((v3 - 120));
  std::__list_imp<char *>::clear((v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t std::pair<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::pair[abi:ne200100]<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>&,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>&,0>(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  *a1 = *a2;
  std::list<int>::list((a1 + 8), (a2 + 2));
  *(a1 + 32) = a2[8];
  *(a1 + 40) = *a3;
  std::list<int>::list((a1 + 48), (a3 + 2));
  *(a1 + 72) = a3[8];
  return a1;
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::NumInputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Expand(a1, a2);
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

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Expand(a1, a2);
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

void *fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::ImplToFst(void *result, uint64_t a2, int a3)
{
  *result = &unk_1F2D3F530;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

void sub_1B5A44968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::~__hash_table(v16 + 24);
  __p = v16;
  std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>::__destroy_vector::operator()[abi:ne200100](&__p);
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::~CacheBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::CacheStateIterator<fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>>::Done(uint64_t a1)
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
    fst::ArcIterator<fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>>::ArcIterator(&v19, *(a1 + 8), v6);
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

uint64_t *fst::ArcIterator<fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>>::ArcIterator(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 84);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Expand(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::InitArcIterator(uint64_t a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::InitArcIterator(a1, a2, a3);
}

void fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::~ArcMapFst(void *a1)
{
  fst::ImplToFst<fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::Init(uint64_t a1)
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

void sub_1B5A451C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::~ArcMapFstImpl(uint64_t a1)
{
  fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::~ArcMapFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0) || *(*(a1 + 144) + 4) == 1))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::~ArcMapFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D3F770;
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

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D3F7C0;
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

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::Start(uint64_t a1)
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

float fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::Final(uint64_t a1, int a2)
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
    __p = 0;
    v27 = v23;
    std::list<int>::list(v28, v24);
    v29 = v25;
    v30 = -1;
    v8 = fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>::operator()(v7, &__p);
    v10 = v9;
    std::__list_imp<char *>::clear(v28);
    std::__list_imp<char *>::clear(v24);
    if (v8)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      }

      v11 = fst::LogMessage::LogMessage(&v22, &__p);
      v12 = fst::cerr(v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ArcMapFst: non-zero arc labels for superfinal arc", 49);
      fst::LogMessage::~LogMessage(&v22);
      if (SHIBYTE(v28[0]) < 0)
      {
        operator delete(__p);
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
    __p = 0;
    v27 = v19;
    std::list<int>::list(v28, v20);
    v29 = v21;
    v30 = -1;
    v14 = fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>::operator()(v13, &__p);
    v10 = v15;
    std::__list_imp<char *>::clear(v28);
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

void sub_1B5A45788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  fst::LogMessage::~LogMessage(&a17);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>::operator()(int *a1, unsigned int *a2)
{
  if (a2[12] != -1)
  {
    goto LABEL_18;
  }

  v4 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Zero();
  v5 = a2[2];
  v6 = v5 ? *(a2 + 4) + 1 : 0;
  v7 = *v4 ? *(v4 + 24) + 1 : 0;
  if (v6 != v7)
  {
    goto LABEL_18;
  }

  v8 = (a2 + 6);
  v9 = (v4 + 16);
  for (i = 1; ; i = 0)
  {
    v11 = *v8;
    v12 = *v9;
    if (i)
    {
      if (!v5)
      {
        break;
      }

      if (v5 != *v4)
      {
        goto LABEL_18;
      }
    }

    if (v11 == a2 + 4)
    {
      break;
    }

    if (*(v11 + 16) != *(v12 + 16))
    {
      goto LABEL_18;
    }

    v8 = (v11 + 8);
    v9 = (v12 + 8);
  }

  LODWORD(__p[0]) = a2[10];
  v29[0] = *(v4 + 32);
  if (*__p == v29[0])
  {
    v13 = 0;
    v14 = *a2;
  }

  else
  {
LABEL_18:
    v28 = -1;
    if (!fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>::Extract<(fst::GallicType)1>(a2 + 2, &v27, &v28) || (v14 = *a2, *a2 != a2[1]))
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      v15 = fst::LogMessage::LogMessage(&v26, __p);
      v16 = fst::cerr(v15);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "FromGallicMapper: unrepresentable weight: ", 42);
      fst::CompositeWeightWriter::CompositeWeightWriter(v29, v17);
      if (*FLAGS_fst_weight_parentheses)
      {
        v30 = *FLAGS_fst_weight_parentheses;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v29, &v30, 1);
      }

      fst::CompositeWeightWriter::WriteElement<fst::StringWeight<int,(fst::StringType)1>>(v29, a2 + 2);
      fst::CompositeWeightWriter::WriteElement<fst::LogWeightTpl<float>>(v29, a2 + 10);
      if (*FLAGS_fst_weight_parentheses)
      {
        v30 = *(FLAGS_fst_weight_parentheses + 1);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v29, &v30, 1);
      }

      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " for arc with ilabel = ", 23);
      v19 = MEMORY[0x1B8C84C00](v18, *a2);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", olabel = ", 11);
      v21 = MEMORY[0x1B8C84C00](v20, a2[1]);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", nextstate = ", 14);
      MEMORY[0x1B8C84C00](v22, a2[12]);
      fst::LogMessage::~LogMessage(&v26);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      *(a1 + 4) = 1;
      v14 = *a2;
    }

    if (!v14 && v28 && a2[12] == -1)
    {
      v14 = *a1;
    }

    v13 = v28 << 32;
  }

  return v13 | v14;
}

void sub_1B5A45A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::NumArcs(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::Expand(a1, a2);
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

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::Expand(uint64_t a1, int a2)
{
  v4 = *(a1 + 160);
  if (v4 == a2)
  {

    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
  }

  v6 = *(a1 + 136);
  v8 = v4 != -1 && v4 <= a2;
  v44 = 0;
  (*(*v6 + 136))(v6, (a2 - v8), &v40);
  while (1)
  {
    if (!v40)
    {
      if (v44 >= v42)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if ((*(*v40 + 24))(v40))
    {
      break;
    }

    if (v40)
    {
      v9 = (*(*v40 + 32))(v40);
      goto LABEL_18;
    }

LABEL_17:
    v9 = v41 + 56 * v44;
LABEL_18:
    v34 = *v9;
    v35 = *(v9 + 8);
    std::list<int>::list(v37, v9 + 16);
    v38 = *(v9 + 40);
    v10 = *(v9 + 48);
    v11 = *(a1 + 160);
    if (v11 != -1 && v11 <= v10)
    {
      ++v10;
    }

    if (v10 >= *(a1 + 164))
    {
      *(a1 + 164) = v10 + 1;
    }

    v39 = v10;
    *&v33 = fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>::operator()(*(a1 + 144), &v34);
    *(&v33 + 1) = v13;
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](MutableState + 24, &v33);
    std::__list_imp<char *>::clear(v37);
    if (v40)
    {
      (*(*v40 + 40))(v40);
    }

    else
    {
      ++v44;
    }
  }

  if (v40)
  {
    (*(*v40 + 8))(v40);
    goto LABEL_32;
  }

LABEL_30:
  if (v43)
  {
    --*v43;
  }

LABEL_32:
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasFinal(a1, a2) & 1) == 0 || (LODWORD(v34) = fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::Final(a1, a2), LODWORD(v40) = 2139095040, *&v34 == INFINITY))
  {
    v15 = *(a1 + 156);
    if (v15 == 2)
    {
      v22 = *(a1 + 144);
      (*(**(a1 + 136) + 32))(&v27);
      v34 = 0;
      v35 = *&v27;
      std::list<int>::list(v37, v28);
      v38 = v29;
      v39 = -1;
      v23 = fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>::operator()(v22, &v34);
      v25 = v24;
      std::__list_imp<char *>::clear(v37);
      std::__list_imp<char *>::clear(v28);
      if (HIDWORD(v23) || v23 || (*&v34 = v25, LODWORD(v40) = 2139095040, v25 != INFINITY))
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
      v34 = 0;
      v35 = *&v30;
      std::list<int>::list(v37, v31);
      v38 = v32;
      v39 = -1;
      v17 = fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>::operator()(v16, &v34);
      v40 = v17;
      v41 = v18;
      std::__list_imp<char *>::clear(v37);
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

        HIDWORD(v41) = v19;
        v20 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2) + 24;
        v21 = &v40;
LABEL_44:
        std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](v20, v21);
      }
    }
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B5A45F84(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 16));
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::NumInputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::Expand(a1, a2);
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

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::Expand(a1, a2);
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

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::ImplToFst(void *result, uint64_t a2, int a3)
{
  *result = &unk_1F2D3F7C0;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::StateIterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = &unk_1F2D3F870;
  *(a1 + 8) = v3;
  v4 = *(v3 + 136);
  *(a1 + 32) = 0;
  (*(*v4 + 128))(v4, a1 + 16);
  *(a1 + 40) = 0;
  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;
  fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::CheckSuperfinal(a1);
  return a1;
}

void sub_1B5A462C4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::StateIterator(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::CheckSuperfinal(uint64_t result)
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
      v4 = fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>::operator()(v3, &v8);
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

void sub_1B5A463F8(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 16));
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

void *fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D3F870;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D3F870;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::Done(uint64_t a1)
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

uint64_t fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::Next(uint64_t a1)
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

        return fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::CheckSuperfinal(a1);
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

uint64_t fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::Reset(uint64_t a1)
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

  return fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::CheckSuperfinal(a1);
}

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::InitArcIterator(uint64_t a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitArcIterator(a1, a2, a3);
}

void *fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D3F530;
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

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D3EF48;
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

uint64_t fst::DeterminizeFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::~DeterminizeFstImpl(void *a1)
{
  *a1 = &unk_1F2D3ECE8;
  v2 = a1[20];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return fst::DeterminizeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::~DeterminizeFstImplBase(a1);
}

uint64_t *fst::ArcIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::ArcIterator(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 52);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::Expand(*(a2 + 8), a3);
  }

  return a1;
}

void sub_1B5A46AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v15 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::~DeterminizeFstImplBase(v14);
  _Unwind_Resume(a1);
}

void sub_1B5A46C7C(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x20C4093837F09);
  fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::~ImplToFst((v2 - 48));
  _Unwind_Resume(a1);
}

void fst::DeterminizeFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::~DeterminizeFstImpl(void *a1)
{
  fst::DeterminizeFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::~DeterminizeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::DeterminizeFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0) || (*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0)))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::DeterminizeFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::Expand(uint64_t a1, int a2)
{
  fst::ArcIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::ArcIterator(&v9, *(a1 + 160), a2);
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

void fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::~ArcMapFst(void *a1)
{
  fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::Write(uint64_t a1)
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

void sub_1B5A472E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5A473E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::Init(uint64_t a1)
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

void sub_1B5A476DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::~ArcMapFstImpl(uint64_t a1)
{
  fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::~ArcMapFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0) || (fst::ProjectProperties(0, 1) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D3FAF0;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D3FAB8;
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
  *a1 = &unk_1F2D3FAF0;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D3FAB8;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

void sub_1B5A478FC(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D3FAF0;
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

void fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::~CacheBaseImpl(void *a1)
{
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::~CacheBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::~FstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void *fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>::VectorCacheStore(void *a1, _BYTE *a2)
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

void sub_1B5A47AC8(_Unwind_Exception *a1)
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

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::~CacheBaseImpl(void *a1)
{
  *a1 = &unk_1F2D3FAB8;
  v2 = a1[15];
  if (v2)
  {
    v3 = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>::~VectorCacheStore(v2);
    MEMORY[0x1B8C85350](v3, 0x10A0C407A9BBF1FLL);
  }

  v4 = a1[9];
  if (v4)
  {
    operator delete(v4);
  }

  return fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::~FstImpl(a1);
}

void *fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>::~VectorCacheStore(void *a1)
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

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::~ArcMapFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D3FA28;
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

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::~CacheBaseImpl(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::Start(uint64_t a1)
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

void *fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
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
        fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>::operator()(&v40, &v45);
        if (v45)
        {
          v23 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Zero();
          v28 = *v23;
          v22 = v29;
          std::list<int>::list(v29, (v23 + 2));
          v30 = v23[8];
          fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::SetFinal(a1, a2, &v28);
        }

        else
        {
          v31 = v46;
          v22 = v32;
          std::list<int>::list(v32, v47);
          v33 = v48;
          fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::SetFinal(a1, a2, &v31);
        }

        std::__list_imp<char *>::clear(v22);
        v18 = v47;
        goto LABEL_35;
      }

      v9 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::One();
      v34 = *v9;
      v10 = &v34;
      std::list<int>::list(v35, (v9 + 2));
      v36 = v9[8];
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::SetFinal(a1, a2, &v34);
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
        fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>::operator()(&v40, &v45);
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
        fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::SetFinal(a1, a2, &v37);
        std::__list_imp<char *>::clear(v38);
        v18 = v47;
        goto LABEL_35;
      }

      if (*(a1 + 160) == a2)
      {
        v7 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::One();
      }

      else
      {
        v7 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Zero();
      }

      v17 = v7;
      v25 = *v7;
      v10 = &v25;
      std::list<int>::list(v26, (v7 + 2));
      v27 = v17[8];
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::SetFinal(a1, a2, &v25);
    }

    v18 = v10 + 2;
LABEL_35:
    std::__list_imp<char *>::clear(v18);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Final(a1, a2, a3);
}

void sub_1B5A48058(_Unwind_Exception *a1)
{
  fst::LogMessage::~LogMessage((v1 - 105));
  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  std::__list_imp<char *>::clear((v1 - 88));
  _Unwind_Resume(a1);
}

void *fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>::operator()@<X0>(float *a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 3) == -1)
  {
    v30 = a1[2];
    v29[8] = 2139095040;
    if (v30 == INFINITY)
    {
      v12 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Zero();
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
    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::GallicWeight(&v28, &v26, a1[2]);
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
    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::GallicWeight(&v21, &v19, a1[2]);
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
  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::GallicWeight(&v16, &v14, a1[2]);
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

void *fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>>>::GetMutableState(*(a1 + 120), a2);
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

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::One()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::One(void)::one;
}

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Zero()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Zero(void)::zero;
}

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::GallicWeight(uint64_t a1, int *a2, float a3)
{
  v6 = *a2;
  std::list<int>::list(v7, (a2 + 2));
  fst::ProductWeight<fst::StringWeight<int,(fst::StringType)2>,fst::LogWeightTpl<float>>::ProductWeight(a1, &v6, a3);
  std::__list_imp<char *>::clear(v7);
  return a1;
}

uint64_t fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>>::GetMutableState(a1, a2);
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
        fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>>>::GC(a1, MutableState, 0, 0.666);
      }
    }
  }

  return v4;
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>>::GetMutableState(uint64_t a1, int a2)
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
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>::GetMutableState(a1, 0);
      *(a1 + 80) = MutableState;
      *(MutableState + 80) |= 4u;
      std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::reserve((MutableState + 56), 0x80uLL);
      return *(a1 + 80);
    }

    v5 = *(a1 + 80);
    if (!*(v5 + 84))
    {
      *(a1 + 76) = a2;
      fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::Reset(v5);
      result = *(a1 + 80);
      *(result + 80) |= 4u;
      return result;
    }

    *(v5 + 80) &= ~4u;
    *(a1 + 72) = 0;
  }

  v6 = a2 + 1;

  return fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>::GetMutableState(a1, v6);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>>>::GC(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
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

      MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>>::GetMutableState(a1, v23);
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
      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>>>::GC(a1, a2, 1, a4);
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

void sub_1B5A48B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>::GetMutableState(uint64_t a1, int a2)
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

uint64_t fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::Reset(uint64_t a1)
{
  result = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Zero();
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

void *std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::reserve(void *result, unint64_t a2)
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

void sub_1B5A48E1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void sub_1B5A48ED0(_Unwind_Exception *exception_object)
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

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::NumArcs(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::Expand(a1, a2);
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

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::Expand(uint64_t a1, int a2)
{
  v4 = *(a1 + 160);
  if (v4 == a2)
  {

    return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::SetArcs(a1, a2);
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
    fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>::operator()(&v66, &v59);
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>>>::GetMutableState(*(a1 + 120), a2);
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::push_back[abi:ne200100]((MutableState + 56), &v59);
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
      fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>::operator()(&v52, &v59);
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
        v35 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>>>::GetMutableState(*(a1 + 120), a2);
        std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::push_back[abi:ne200100]((v35 + 56), &v59);
      }

      v21 = &v61;
      goto LABEL_93;
    }

    if (v24 != 2)
    {
      return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::SetArcs(a1, a2);
    }

    v25 = *(a1 + 160);
    v27 = v25 != -1 && v25 <= a2;
    *&v28 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v27));
    v52 = 0;
    v53 = v28 | 0xFFFFFFFF00000000;
    fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>::operator()(&v52, &v59);
    if (v59)
    {
      v29 = v60;
    }

    else
    {
      v36 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Zero();
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
    v48 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>>>::GetMutableState(*(a1 + 120), a2);
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::push_back[abi:ne200100]((v48 + 56), &v52);
    std::__list_imp<char *>::clear(&v54);
    std::__list_imp<char *>::clear(v50);
LABEL_92:
    v21 = &v61;
    goto LABEL_93;
  }

  fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::Final(a1, a2, &v59);
  v14 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Zero();
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
    return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::SetArcs(a1, a2);
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

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::SetArcs(a1, a2);
}

void sub_1B5A494D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__list_imp<char *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::SetArcs(uint64_t a1, int a2)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>>>::GetMutableState(*(a1 + 120), a2);
  fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>>>::SetArcs(*(a1 + 120), MutableState);
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

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>>>::SetArcs(uint64_t a1, uint64_t a2)
{
  fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetArcs(a2);
  if (*(a1 + 104) == 1 && (*(a2 + 80) & 4) != 0)
  {
    v4 = *(a2 + 64) - *(a2 + 56) + *(a1 + 112);
    *(a1 + 112) = v4;
    if (v4 > *(a1 + 96))
    {

      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>>>::GC(a1, a2, 0, 0.666);
    }
  }
}

uint64_t std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::__emplace_back_slow_path<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2> const&>(a1, a2);
  }

  else
  {
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::__construct_one_at_end[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2> const&>(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

void *std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::__construct_one_at_end[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2> const&>(uint64_t a1, uint64_t a2)
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

uint64_t std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::__emplace_back_slow_path<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2> const&>(uint64_t *a1, uint64_t a2)
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
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>*>(a1, *a1, v8, v9);
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

void sub_1B5A49888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::NumInputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::Expand(a1, a2);
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

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::Expand(a1, a2);
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

unint64_t fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>(a1, a2, a3, 0);
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

    return fst::ComputeProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>(a1, a2, a3, 1);
  }
}

void sub_1B5A49AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
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
      fst::DfsVisit<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>(v7, &v86);
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
              v54 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Zero();
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
                v64 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::One();
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
          v24 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::One();
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
            v36 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Zero();
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

void sub_1B5A4A530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
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

void sub_1B5A4ADCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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
  fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::InitVisit(uint64_t a1, uint64_t a2)
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

uint64_t fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>(uint64_t a1)
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

void sub_1B5A4B138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>();
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::FinishState(uint64_t a1, int a2, int a3)
{
  (*(**(a1 + 32) + 32))(&v33);
  v6 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Zero();
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

void fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D3FBD8;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D3FBD8;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D3FC18;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B5A4B584(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D3FC18;
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

void *std::deque<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>> *,std::allocator<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>> *>>::push_back(void *result, void *a2)
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
    result = std::deque<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>> *,std::allocator<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>> *>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>> *,std::allocator<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>> *>>::__add_back_capacity(void *a1)
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

void sub_1B5A4B890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ArcBuffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::SetFromFst<fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
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

void sub_1B5A4BBDC(_Unwind_Exception *exception_object)
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

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::ImplToFst(void *result, uint64_t a2, int a3)
{
  *result = &unk_1F2D3FB28;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

void sub_1B5A4BF24(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>::CopyStates(a1, a2);
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
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>::GetMutableState(a1, 0);
    }

    *(a1 + 80) = MutableState;
  }

  return a1;
}

void fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>::CopyStates(void *a1, uint64_t a2)
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

uint64_t fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::CacheState(uint64_t a1, uint64_t a2)
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
  std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2> const*>,std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2> const*>>(a1 + 56, v5, v6, 0x6DB6DB6DB6DB6DB7 * ((v6 - v5) >> 3));
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2> const*>,std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2> const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5A4C270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2> const*,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2> const*,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void sub_1B5A4C320(_Unwind_Exception *exception_object)
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

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::StateIterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = &unk_1F2D3FC58;
  *(a1 + 8) = v3;
  v4 = *(v3 + 136);
  *(a1 + 32) = 0;
  (*(*v4 + 128))(v4, a1 + 16);
  *(a1 + 40) = 0;
  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;
  fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::CheckSuperfinal(a1);
  return a1;
}

void sub_1B5A4C3E0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::StateIterator(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::CheckSuperfinal(uint64_t result)
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
      fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>::operator()(&v4, &v7);
      if (v7)
      {
        *(v2 + 44) = 1;
      }

      return std::__list_imp<char *>::clear(v8);
    }
  }

  return result;
}

void *fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D3FC58;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D3FC58;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::Next(uint64_t a1)
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

        return fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::CheckSuperfinal(a1);
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

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::Reset(uint64_t a1)
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

  return fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::CheckSuperfinal(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::InitArcIterator(uint64_t a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::InitArcIterator(a1, a2, a3);
}

void *fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::DefaultDeterminizeFilter<fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(void *a1, uint64_t a2, void *a3)
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

void fst::DeterminizeFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::DeterminizeFst<fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D3FCC0;
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

void sub_1B5A4CA04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::~ImplToFst(v18);
  _Unwind_Resume(a1);
}

_DWORD *fst::ImplToFst<fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::SetImpl(uint64_t a1, uint64_t a2, char a3)
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

void *fst::ImplToFst<fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D3FDA0;
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

void fst::DeterminizeFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::~DeterminizeFst(void *a1)
{
  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

void sub_1B5A4D028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::~DeterminizeFstImplBase(v18);
  _Unwind_Resume(a1);
}

uint64_t fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::~DeterminizeFstImplBase(void *a1)
{
  *a1 = &unk_1F2D3FED8;
  v2 = a1[17];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::~CacheBaseImpl(a1);
}

void fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(void *a1)
{
  fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>::Expand(void *a1, int a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>::GetLabelMap(a1, a2, &v8);
  v4 = v8;
  if (v8 != v9)
  {
    do
    {
      fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>::AddArc(a1, a2, (v4 + 5));
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

  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::SetArcs(a1, a2);
  std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>>>::destroy(&v8, v9[0]);
}

uint64_t fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>::ComputeStart(uint64_t a1)
{
  v1 = (*(**(a1 + 136) + 24))(*(a1 + 136));
  if (v1 != -1)
  {
    v2 = v1;
    v3 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::One();
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

void *fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>::ComputeFinal@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(*(*(a1 + 184) + 88) + 8 * a2);
  v6 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Zero();
  *a3 = *v6;
  result = std::list<int>::list((a3 + 8), (v6 + 2));
  *(a3 + 32) = v6[8];
  for (i = *v5; i; i = *i)
  {
    (*(**(a1 + 136) + 32))(&v24);
    fst::Times<int,(fst::StringType)2>(i + 4, &v24, &v34);
    v9 = *(i + 12);
    v10 = NAN;
    if (v9 != -INFINITY)
    {
      v10 = NAN;
      if (v26 != -INFINITY)
      {
        v10 = INFINITY;
        v11 = v26 == INFINITY || v9 == INFINITY;
        v12 = v9 + v26;
        if (!v11)
        {
          v10 = v12;
        }
      }
    }

    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::GallicWeight(&v27, &v34, v10);
    std::__list_imp<char *>::clear(v35);
    fst::Plus<int,(fst::StringType)2>(a3, &v27, &v34);
    v13 = *(a3 + 32);
    v14 = v29;
    if (v13 != INFINITY)
    {
      if (v29 == INFINITY)
      {
        v14 = *(a3 + 32);
      }

      else if (v13 <= v29)
      {
        v16 = expf(-(v29 - v13));
        v14 = v13 - logf(v16 + 1.0);
      }

      else
      {
        v15 = expf(-(v13 - v29));
        v14 = v14 - logf(v15 + 1.0);
      }
    }

    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::GallicWeight(&v30, &v34, v14);
    std::__list_imp<char *>::clear(v35);
    *a3 = v30;
    if (&v30 != a3)
    {
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a3 + 8), v32, &v31);
    }

    *(a3 + 32) = v33;
    std::__list_imp<char *>::clear(&v31);
    std::__list_imp<char *>::clear(v28);
    std::__list_imp<char *>::clear(v25);
    v21 = *a3;
    std::list<int>::list(v22, a3 + 8);
    v23 = *(a3 + 32);
    v30 = v21;
    std::list<int>::list(&v31, v22);
    v17 = v23;
    v33 = v23;
    *a3 = v30;
    if (&v30 != a3)
    {
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a3 + 8), v32, &v31);
      v17 = v33;
    }

    *(a3 + 32) = v17;
    std::__list_imp<char *>::clear(&v31);
    result = std::__list_imp<char *>::clear(v22);
    if (*a3)
    {
      if (*(a3 + 24))
      {
        v18 = 0;
      }

      else
      {
        v18 = *a3 == -2;
      }

      if (!v18)
      {
        v19 = *(a3 + 32);
        if (v19 < -INFINITY || v19 > -INFINITY)
        {
          continue;
        }
      }
    }

    else
    {
      v20 = *(a3 + 32);
      if (v20 < -INFINITY || v20 > -INFINITY)
      {
        continue;
      }
    }

    *(a1 + 8) |= 4uLL;
  }

  return result;
}

void sub_1B5A4D938(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v4 + 8));
  std::__list_imp<char *>::clear((v3 + 8));
  std::__list_imp<char *>::clear((v2 + 8));
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

void *fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::CompactHashBiTable(void *a1, size_t a2)
{
  a1[1] = a1;
  a1[2] = a1;
  std::unordered_set<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::unordered_set((a1 + 3), a2, a1 + 1, a1 + 2);
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  if (a2)
  {
    std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(a1 + 10, a2);
  }

  return a1;
}

void sub_1B5A4DA14(_Unwind_Exception *a1)
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

uint64_t std::unordered_set<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::unordered_set(uint64_t a1, size_t a2, void *a3, void *a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *a3;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = *a4;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__rehash<true>(a1, a2);
  return a1;
}

uint64_t fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(void *a1)
{
  *a1 = &unk_1F2D3FE50;
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

  return fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::~DeterminizeFstImplBase(a1);
}

void sub_1B5A4DCD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::~DeterminizeFstImplBase(v18);
  _Unwind_Resume(a1);
}

void sub_1B5A4DE68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::~CacheBaseImpl(v15);
  _Unwind_Resume(a1);
}

void fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>::GetLabelMap(void *a1, int a2, void *a3)
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

        fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::GallicWeight(&v20, &v29, v11);
        std::__list_imp<char *>::clear(v30);
        v23[0] = v9;
        v23[2] = v20;
        std::list<int>::list(v24, v21);
        v25 = v22;
        std::__list_imp<char *>::clear(v21);
        fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::FilterArc(a1[22], v8, (v5 + 1), v23, a3);
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
      fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>::NormArc(a1, (v16 + 5));
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

void sub_1B5A4E15C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _DWORD *a24)
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

void *fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>::AddArc(uint64_t a1, int a2, uint64_t a3)
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
  State = fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>::FindState(a1, *(a3 + 48));
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>>>::GetMutableState(*(a1 + 120), a2);
  std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::push_back[abi:ne200100]((MutableState + 56), v8);
  return std::__list_imp<char *>::clear(v9);
}

void fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::FilterArc(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  if (*(std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a5, a2) + 10) == -1)
  {
    fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>::DeterminizeArc(&v6, a2);
  }

  std::__forward_list_base<fst::DeterminizeElement<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::__create_node[abi:ne200100]<fst::DeterminizeElement<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>> const&>();
}

void fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>::NormArc(uint64_t a1, uint64_t a2)
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
      fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>::operator()(a1 + 168, a2 + 8, (v7 + 2), &v21);
      *v6 = v21;
      if (v6 != &v21)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a2 + 16), v23, &v22);
      }

      *(a2 + 40) = v24;
      std::__list_imp<char *>::clear(&v22);
      if (v5 == v7 || *(v7 + 2) != *(v5 + 2))
      {
        v11 = *v7;
        v5 = v7;
      }

      else
      {
        v8 = (v5 + 2);
        fst::Plus<int,(fst::StringType)2>((v5 + 2), v7 + 4, &v25);
        v9 = *(v5 + 12);
        v10 = *(v7 + 12);
        if (v9 != INFINITY)
        {
          if (v10 == INFINITY)
          {
            v10 = *(v5 + 12);
          }

          else if (v9 <= v10)
          {
            v13 = expf(-(v10 - v9));
            v10 = v9 - logf(v13 + 1.0);
          }

          else
          {
            v12 = expf(-(v9 - v10));
            v10 = v10 - logf(v12 + 1.0);
          }
        }

        fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::GallicWeight(&v21, &v25, v10);
        std::__list_imp<char *>::clear(v26);
        *v8 = v21;
        if (v8 != &v21)
        {
          std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v5 + 3, v23, &v22);
        }

        *(v5 + 12) = v24;
        std::__list_imp<char *>::clear(&v22);
        if (*(v5 + 4) == -2 && !v5[5] || (v14 = *(v5 + 12), v14 >= -INFINITY) && v14 <= -INFINITY)
        {
          *(a1 + 8) |= 4uLL;
        }

        v11 = *v7;
        v15 = *v5;
        v16 = (*v5 + 24);
        *v5 = **v5;
        std::__list_imp<char *>::clear(v16);
        operator delete(v15);
      }

      v7 = v11;
    }

    while (v11);
    for (i = *v4; i; i = *i)
    {
      v18 = (i + 2);
      fst::DivideLeft<int,(fst::StringType)2>(i + 4, (a2 + 8), &v25);
      v19 = *(i + 12);
      v20 = NAN;
      if (v19 != -INFINITY)
      {
        if ((*(a2 + 40) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v20 = INFINITY;
          if (v19 != INFINITY)
          {
            v20 = v19 - *(a2 + 40);
          }
        }

        else
        {
          v20 = NAN;
        }
      }

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::GallicWeight(&v21, &v25, v20);
      std::__list_imp<char *>::clear(v26);
      *v18 = v21;
      if (v18 != &v21)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(i + 3, v23, &v22);
      }

      *(i + 12) = v24;
      std::__list_imp<char *>::clear(&v22);
      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Quantize(i + 4, &v21, *(a1 + 144));
      *(i + 4) = v21;
      if (v18 != &v21)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(i + 3, v23, &v22);
      }

      *(i + 12) = v24;
      std::__list_imp<char *>::clear(&v22);
    }
  }
}

uint64_t *std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>();
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

void fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>::DeterminizeArc(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Zero();
  *(a1 + 8) = *v3;
  std::list<int>::list((a1 + 16), (v3 + 2));
  *(a1 + 40) = v3[8];
  operator new();
}

void *fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>::operator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  fst::LabelCommonDivisor<int,(fst::StringType)2>::operator()(a2, a3, &v10);
  v8 = fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>::operator()(a1 + 1, (a2 + 32), (a3 + 32));
  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::GallicWeight(a4, &v10, v8);
  return std::__list_imp<char *>::clear(v11);
}

void *fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Quantize@<X0>(float *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  fst::ProductWeight<fst::StringWeight<int,(fst::StringType)2>,fst::LogWeightTpl<float>>::Quantize(a1, &v5, a3);
  *a2 = v5;
  std::list<int>::list((a2 + 8), v6);
  *(a2 + 32) = v7;
  return std::__list_imp<char *>::clear(v6);
}

uint64_t fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>::FindState(uint64_t a1, uint64_t **a2)
{
  State = fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>::FindState(*(a1 + 184), a2);
  v5 = State;
  if (*(a1 + 152))
  {
    v6 = *(a1 + 160);
    if (0xCCCCCCCCCCCCCCCDLL * ((v6[1] - *v6) >> 3) <= State)
    {
      fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>::ComputeDistance(a1, a2, &v10);
      v7 = v6[1];
      if (v7 >= v6[2])
      {
        v8 = std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::__emplace_back_slow_path<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>(v6, &v10);
      }

      else
      {
        *v7 = v10;
        std::list<int>::list((v7 + 8), v11);
        *(v7 + 32) = v12;
        v8 = v7 + 40;
        v6[1] = v7 + 40;
      }

      v6[1] = v8;
      std::__list_imp<char *>::clear(v11);
    }
  }

  return v5;
}

void sub_1B5A4EB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__list_imp<char *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>::FindState(void *a1, void **a2)
{
  v6 = a2;
  v2 = (a1[12] - a1[11]) >> 3;
  Id = fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::FindId(a1 + 1, &v6, 1);
  if (Id != v2)
  {
    v4 = v6;
    if (v6)
    {
      std::__forward_list_base<fst::DeterminizeElement<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::clear(v6);
      MEMORY[0x1B8C85350](v4, 0x1020C405F07FB98);
    }
  }

  return Id;
}

void *fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>>::ComputeDistance@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Zero();
  *a3 = *v6;
  result = std::list<int>::list((a3 + 8), (v6 + 2));
  *(a3 + 32) = v6[8];
  for (i = *a2; i; i = *i)
  {
    v9 = *(i + 2);
    v10 = **(a1 + 152);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(*(a1 + 152) + 8) - v10) >> 3) <= v9)
    {
      v11 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Zero();
    }

    else
    {
      v11 = v10 + 40 * v9;
    }

    v26 = *v11;
    std::list<int>::list(v27, v11 + 8);
    v28 = *(v11 + 32);
    fst::Times<int,(fst::StringType)2>(i + 4, &v26, &v29);
    v12 = *(i + 12);
    v13 = NAN;
    if (v12 != -INFINITY)
    {
      v13 = NAN;
      if (v28 != -INFINITY)
      {
        v13 = INFINITY;
        v14 = v28 == INFINITY || v12 == INFINITY;
        v15 = v12 + v28;
        if (!v14)
        {
          v13 = v15;
        }
      }
    }

    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::GallicWeight(&v20, &v29, v13);
    std::__list_imp<char *>::clear(v30);
    fst::Plus<int,(fst::StringType)2>(a3, &v20, &v29);
    v16 = *(a3 + 32);
    v17 = v22;
    if (v16 != INFINITY)
    {
      if (v22 == INFINITY)
      {
        v17 = *(a3 + 32);
      }

      else if (v16 <= v22)
      {
        v19 = expf(-(v22 - v16));
        v17 = v16 - logf(v19 + 1.0);
      }

      else
      {
        v18 = expf(-(v16 - v22));
        v17 = v17 - logf(v18 + 1.0);
      }
    }

    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::GallicWeight(&v23, &v29, v17);
    std::__list_imp<char *>::clear(v30);
    *a3 = v23;
    if (&v23 != a3)
    {
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a3 + 8), v24[1], v24);
    }

    *(a3 + 32) = v25;
    std::__list_imp<char *>::clear(v24);
    std::__list_imp<char *>::clear(v21);
    result = std::__list_imp<char *>::clear(v27);
  }

  return result;
}

void sub_1B5A4EE28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<char *>::clear((v4 + 8));
  std::__list_imp<char *>::clear(va);
  std::__list_imp<char *>::clear((v3 + 8));
  std::__list_imp<char *>::clear((v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::FindId(void *a1, void *a2, int a3)
{
  a1[13] = a2;
  v6 = std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::find<int>(a1 + 3, &fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::kCurrentKey);
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
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 3, &v20);
  return v20;
}

uint64_t std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::__emplace_back_slow_path<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>(uint64_t *a1, _DWORD *a2)
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

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>>(a1, v6);
  }

  v7 = 40 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  std::list<int>::list((v7 + 8), (a2 + 2));
  *(v7 + 32) = a2[8];
  *&v16 = v16 + 40;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::~__split_buffer(&v14);
  return v13;
}

void sub_1B5A4F0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void sub_1B5A4F17C(_Unwind_Exception *exception_object)
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

uint64_t fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::Start(uint64_t a1)
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

void *fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::Final@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasFinal(a1, a2) & 1) == 0)
  {
    (*(*a1 + 64))(&v10, a1, a2);
    v7 = v10;
    std::list<int>::list(v8, v11);
    v9 = v12;
    fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::SetFinal(a1, a2, &v7);
    std::__list_imp<char *>::clear(v8);
    std::__list_imp<char *>::clear(v11);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Final(a1, a2, a3);
}

void sub_1B5A4F334(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::NumArcs(void *a1, uint64_t a2)
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

uint64_t fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::NumInputEpsilons(void *a1, uint64_t a2)
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

uint64_t fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::NumOutputEpsilons(void *a1, uint64_t a2)
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

void *fst::DeterminizeFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::DeterminizeFst(void *a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D3FCC0;
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
    fst::ImplToFst<fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::SetImpl(a1, v4, 0);
  }

  return a1;
}

uint64_t fst::CacheStateIterator<fst::DeterminizeFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::Done(uint64_t a1)
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
    fst::ArcIterator<fst::DeterminizeFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::ArcIterator(&v19, *(a1 + 8), v6);
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

uint64_t *fst::ArcIterator<fst::DeterminizeFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::ArcIterator(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 84);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    (*(**(a2 + 8) + 48))(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::InitArcIterator(uint64_t a1, uint64_t a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::InitArcIterator(a1, a2, a3);
}

void fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::~FactorWeightFst(void *a1)
{
  fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

void sub_1B5A4FE18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::~__hash_table(v22);
  std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>::__destroy_vector::operator()[abi:ne200100](&__p);
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::~CacheBaseImpl(v18);
  _Unwind_Resume(a1);
}

void fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::~FactorWeightFstImpl(uint64_t a1)
{
  fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::~FactorWeightFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::~FactorWeightFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D400C0;
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

  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::~__hash_table(a1 + 192);
  v5 = (a1 + 168);
  std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>::__destroy_vector::operator()[abi:ne200100](&v5);
  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::~CacheBaseImpl(a1);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Start(uint64_t a1)
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
      v4 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::One();
      v6 = *v4;
      std::list<int>::list(v7, (v4 + 2));
      v8 = v4[8];
      v9[0] = v3;
      v9[2] = v6;
      std::list<int>::list(v10, v7);
      v11 = v8;
      State = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::FindState(a1, v9);
      std::__list_imp<char *>::clear(v10);
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

void sub_1B5A50174(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v1 + 16));
  std::__list_imp<char *>::clear((v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::FindState(uint64_t a1, int *a2)
{
  if ((*(a1 + 148) & 2) != 0)
  {
    goto LABEL_21;
  }

  v4 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::One();
  v5 = a2[2];
  v6 = v5 ? *(a2 + 4) + 1 : 0;
  v7 = *v4 ? *(v4 + 24) + 1 : 0;
  if (v6 != v7)
  {
    goto LABEL_21;
  }

  v8 = (a2 + 6);
  v9 = (v4 + 16);
  for (i = 1; ; i = 0)
  {
    v11 = *v8;
    v12 = *v9;
    if (i)
    {
      if (!v5)
      {
        break;
      }

      if (v5 != *v4)
      {
        goto LABEL_21;
      }
    }

    if (v11 == a2 + 4)
    {
      break;
    }

    if (*(v11 + 16) != *(v12 + 16))
    {
      goto LABEL_21;
    }

    v8 = (v11 + 8);
    v9 = (v12 + 8);
  }

  v24[0] = a2[10];
  v28 = *(v4 + 32);
  v13 = *a2;
  if (*v24 != v28 || v13 == -1)
  {
LABEL_21:
    v15 = std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::find<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>((a1 + 192), a2);
    if (v15)
    {
      return *(v15 + 16);
    }

    else
    {
      v16 = -1431655765 * ((*(a1 + 176) - *(a1 + 168)) >> 4);
      std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Element>>::push_back[abi:ne200100]((a1 + 168), a2);
      v17 = a2[2];
      v24[0] = *a2;
      v24[2] = v17;
      std::list<int>::list(v25, (a2 + 4));
      v26 = a2[10];
      v27 = v16;
      std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::__emplace_unique_key_args<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::pair<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element const,int>>((a1 + 192), v24);
      std::__list_imp<char *>::clear(v25);
    }
  }

  else
  {
    v19 = v13;
    v20 = *(a1 + 232);
    if (v13 >= ((*(a1 + 240) - v20) >> 2))
    {
      do
      {
        std::vector<int>::push_back[abi:ne200100]((a1 + 232), &fst::kNoStateId);
        v20 = *(a1 + 232);
        v13 = *a2;
        v19 = *a2;
      }

      while (v19 >= (*(a1 + 240) - v20) >> 2);
    }

    if (*(v20 + 4 * v19) == -1)
    {
      v21 = *(a1 + 168);
      v22 = *(a1 + 176);
      v23 = (a1 + 168);
      *(v20 + 4 * v19) = -1431655765 * ((v22 - v21) >> 4);
      std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Element>>::push_back[abi:ne200100](v23, a2);
      v13 = *a2;
      v20 = v23[8];
    }

    return *(v20 + 4 * v13);
  }

  return v16;
}

uint64_t std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Element>>::push_back[abi:ne200100](uint64_t *a1, _DWORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Element>>::__emplace_back_slow_path<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Element const&>(a1, a2);
  }

  else
  {
    std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Element>>::__construct_one_at_end[abi:ne200100]<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Element const&>(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

void *std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Element>>::__construct_one_at_end[abi:ne200100]<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Element const&>(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 8) = a2[2];
  result = std::list<int>::list((v4 + 16), (a2 + 4));
  *(v4 + 40) = a2[10];
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Element>>::__emplace_back_slow_path<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Element const&>(uint64_t *a1, _DWORD *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>(a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  *(v7 + 8) = a2[2];
  std::list<int>::list((v7 + 16), (a2 + 4));
  *(v7 + 40) = a2[10];
  *&v16 = v16 + 48;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Element>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Element*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element> &>::~__split_buffer(&v14);
  return v13;
}

void sub_1B5A50570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Element>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Element*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      v9 = (a4 + v7);
      *v9 = *(v6 + v7);
      v9[2] = *(v6 + v7 + 8);
      result = std::list<int>::list((a4 + v7 + 16), v6 + v7 + 16);
      v9[10] = *(v6 + v7 + 40);
      v7 += 48;
    }

    while (v8 + 48 != a3);
    while (v6 != a3)
    {
      result = std::__list_imp<char *>::clear((v6 + 16));
      v6 += 48;
    }
  }

  return result;
}

void sub_1B5A5061C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 32);
    do
    {
      std::__list_imp<char *>::clear(v5);
      v5 -= 6;
      v4 += 48;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

void *fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasFinal(a1, a2) & 1) == 0)
  {
    v6 = (*(a1 + 168) + 48 * a2);
    if (*v6 == -1)
    {
      v26 = v6[2];
      std::list<int>::list(v27, (v6 + 4));
      v28 = *(v6 + 10);
    }

    else
    {
      (*(**(a1 + 136) + 32))(&v22);
      fst::Times<int,(fst::StringType)2>(v6 + 2, &v22, &v29);
      v7 = *(v6 + 10);
      v8 = NAN;
      if (v7 != -INFINITY)
      {
        v8 = NAN;
        if (v24 != -INFINITY)
        {
          v8 = INFINITY;
          v9 = v24 == INFINITY || v7 == INFINITY;
          v10 = v7 + v24;
          if (!v9)
          {
            v8 = v10;
          }
        }
      }

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::GallicWeight(&v26, &v29, v8);
      std::__list_imp<char *>::clear(v30);
      std::__list_imp<char *>::clear(v23);
    }

    LODWORD(v22) = v26;
    std::list<int>::list(v23, v27);
    v24 = v28;
    if (v26)
    {
      v11 = (v27[2] + 1) >= 2;
    }

    else
    {
      v11 = 0;
    }

    v12 = !v11;
    v25 = v12;
    if ((*(a1 + 148) & 1) == 0 || v12)
    {
      v19 = v26;
      v14 = v20;
      std::list<int>::list(v20, v27);
      v21 = v28;
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::SetFinal(a1, a2, &v19);
    }

    else
    {
      v13 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Zero();
      v16 = *v13;
      v14 = v17;
      std::list<int>::list(v17, (v13 + 2));
      v18 = v13[8];
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::SetFinal(a1, a2, &v16);
    }

    std::__list_imp<char *>::clear(v14);
    std::__list_imp<char *>::clear(v23);
    std::__list_imp<char *>::clear(v27);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Final(a1, a2, a3);
}

void sub_1B5A50874(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v1);
  std::__list_imp<char *>::clear((v3 + 8));
  std::__list_imp<char *>::clear((v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::NumArcs(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Expand(a1, a2);
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

void *fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Expand(uint64_t a1, int a2)
{
  v3 = *(a1 + 168) + 48 * a2;
  v80 = *v3;
  v81 = *(v3 + 8);
  std::list<int>::list(v82, v3 + 16);
  v83 = *(v3 + 40);
  if (v80 == -1)
  {
    goto LABEL_33;
  }

  v4 = *(a1 + 136);
  v79 = 0;
  (*(*v4 + 136))(v4);
  while (1)
  {
    if (!v76)
    {
      if (v79 >= v77[1])
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    if ((*(*v76 + 24))(v76))
    {
      break;
    }

    if (v76)
    {
      v5 = (*(*v76 + 32))(v76);
      goto LABEL_9;
    }

LABEL_8:
    v5 = v77[0] + 56 * v79;
LABEL_9:
    fst::Times<int,(fst::StringType)2>(&v81, v5 + 8, &v57);
    v6 = NAN;
    if (v83 != -INFINITY)
    {
      v7 = *(v5 + 40);
      v6 = NAN;
      if (v7 != -INFINITY)
      {
        v6 = INFINITY;
        if (v7 != INFINITY && v83 != INFINITY)
        {
          v6 = v83 + v7;
        }
      }
    }

    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::GallicWeight(&v73, &v57, v6);
    std::__list_imp<char *>::clear(&v58);
    v69 = *&v73;
    std::list<int>::list(v70, v74);
    v71 = v75;
    v10 = *&v73 == 0.0 || (v74[2] + 1) < 2;
    v72 = v10;
    if (*(a1 + 148) & 2) == 0 || (v10)
    {
      v15 = *(v5 + 48);
      v16 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::One();
      v66 = *v16;
      std::list<int>::list(v67, (v16 + 2));
      v68 = v16[8];
      LODWORD(v57) = v15;
      LODWORD(v58) = v66;
      std::list<int>::list(v59, v67);
      v61 = v68;
      LODWORD(v16) = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::FindState(a1, &v57);
      std::__list_imp<char *>::clear(v59);
      std::__list_imp<char *>::clear(v67);
      v17 = *v5;
      v63 = v73;
      std::list<int>::list(v64, v74);
      v65 = v75;
      v57 = v17;
      LODWORD(v58) = v63;
      std::list<int>::list(v59, v64);
      v61 = v65;
      LODWORD(v62[0]) = v16;
      MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>>>::GetMutableState(*(a1 + 120), a2);
      std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::push_back[abi:ne200100]((MutableState + 56), &v57);
      std::__list_imp<char *>::clear(v59);
      std::__list_imp<char *>::clear(v64);
    }

    else
    {
      fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Value(&v69, &v57);
      v11 = *(v5 + 48);
      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Quantize(&v61, &v54, *(a1 + 144));
      LODWORD(v49) = v11;
      LODWORD(v50) = v54;
      std::list<int>::list(v51, v55);
      v52 = v56;
      State = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::FindState(a1, &v49);
      std::__list_imp<char *>::clear(v51);
      std::__list_imp<char *>::clear(v55);
      v13 = *v5;
      v46 = v57;
      std::list<int>::list(v47, &v58);
      v48 = v60;
      v49 = v13;
      LODWORD(v50) = v46;
      std::list<int>::list(v51, v47);
      v52 = v48;
      v53 = State;
      v14 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>>>::GetMutableState(*(a1 + 120), a2);
      std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::push_back[abi:ne200100]((v14 + 56), &v49);
      std::__list_imp<char *>::clear(v51);
      std::__list_imp<char *>::clear(v47);
      std::__list_imp<char *>::clear(v62);
      std::__list_imp<char *>::clear(&v58);
      v72 = 1;
    }

    std::__list_imp<char *>::clear(v70);
    std::__list_imp<char *>::clear(v74);
    if (v76)
    {
      (*(*v76 + 40))(v76);
    }

    else
    {
      ++v79;
    }
  }

  if (v76)
  {
    (*(*v76 + 8))(v76);
    goto LABEL_33;
  }

LABEL_31:
  if (v78)
  {
    --*v78;
  }

LABEL_33:
  if (*(a1 + 148))
  {
    if (v80 == -1)
    {
      goto LABEL_65;
    }

    (*(**(a1 + 136) + 32))(&v57);
    v19 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Zero();
    v20 = v57 ? v59[1] + 1 : 0;
    v21 = *v19 ? *(v19 + 24) + 1 : 0;
    if (v20 == v21)
    {
      v22 = v59[0];
      v23 = (v19 + 16);
      if (v57)
      {
        v24 = v57 == *v19;
      }

      else
      {
        v24 = 0;
      }

      v25 = !v24;
      v26 = 1;
      v27 = v25 ^ 1;
      while (1)
      {
        v28 = *v23;
        if ((v26 & 1) != 0 && !v27)
        {
          break;
        }

        if (v22 == &v58)
        {
          goto LABEL_77;
        }

        if (*(v22 + 16) != *(v28 + 16))
        {
          goto LABEL_55;
        }

        v26 = 0;
        v22 = *(v22 + 8);
        v23 = (v28 + 8);
      }

      if (v57)
      {
        goto LABEL_55;
      }

LABEL_77:
      *&v49 = v60;
      v69 = *(v19 + 32);
      v37 = v60;
      v38 = v69;
      std::__list_imp<char *>::clear(&v58);
      if (v37 == v38)
      {
        goto LABEL_76;
      }
    }

    else
    {
LABEL_55:
      std::__list_imp<char *>::clear(&v58);
    }

    if (v80 == -1)
    {
LABEL_65:
      LODWORD(v76) = v81;
      std::list<int>::list(v77, v82);
      *&v79 = v83;
    }

    else
    {
      (*(**(a1 + 136) + 32))(&v57);
      fst::Times<int,(fst::StringType)2>(&v81, &v57, &v49);
      v29 = NAN;
      if (v83 != -INFINITY)
      {
        v29 = NAN;
        if (v60 != -INFINITY)
        {
          v29 = INFINITY;
          if (v60 != INFINITY && v83 != INFINITY)
          {
            v29 = v83 + v60;
          }
        }
      }

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::GallicWeight(&v76, &v49, v29);
      std::__list_imp<char *>::clear(&v50);
      std::__list_imp<char *>::clear(&v58);
    }

    v31 = *(a1 + 152);
    v69 = *&v76;
    std::list<int>::list(v70, v77);
    v71 = v79;
    if (v76)
    {
      v32 = v78 + 1 >= 2;
    }

    else
    {
      v32 = 0;
    }

    v33 = !v32;
    v72 = v33;
    if (v32)
    {
      fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Value(&v69, &v57);
      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Quantize(&v61, &v43, *(a1 + 144));
      LODWORD(v49) = -1;
      LODWORD(v50) = v43;
      std::list<int>::list(v51, v44);
      v52 = v45;
      v34 = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::FindState(a1, &v49);
      std::__list_imp<char *>::clear(v51);
      std::__list_imp<char *>::clear(v44);
      v40 = v57;
      std::list<int>::list(v41, &v58);
      v42 = v60;
      v49 = v31;
      LODWORD(v50) = v40;
      std::list<int>::list(v51, v41);
      v52 = v42;
      v53 = v34;
      v35 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>>>::GetMutableState(*(a1 + 120), a2);
      std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::push_back[abi:ne200100]((v35 + 56), &v49);
      std::__list_imp<char *>::clear(v51);
      std::__list_imp<char *>::clear(v41);
      std::__list_imp<char *>::clear(v62);
      std::__list_imp<char *>::clear(&v58);
      v72 = 1;
    }

    std::__list_imp<char *>::clear(v70);
    std::__list_imp<char *>::clear(v77);
  }

LABEL_76:
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::SetArcs(a1, a2);
  return std::__list_imp<char *>::clear(v82);
}

void sub_1B5A51114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  std::__list_imp<char *>::clear((v39 + 8));
  std::__list_imp<char *>::clear(&a39);
  std::__list_imp<char *>::clear((v40 - 136));
  _Unwind_Resume(a1);
}

void *fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Value@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = *a1;
  std::list<int>::list(v38, (a1 + 2));
  if (*a1)
  {
    v4 = (*(a1 + 3) + 1) >= 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = !v4;
  v39 = v5;
  fst::StringFactor<int,(fst::StringType)2>::Value(&v37, &v24);
  v32 = v24;
  v33[0] = v33;
  v33[1] = v33;
  v34 = 0;
  v6 = v27;
  if (v27)
  {
    v8 = v25;
    v7 = v26;
    v9 = *(v25 + 8);
    v10 = *v26;
    *(v10 + 8) = v9;
    *v9 = v10;
    v11 = v33[0];
    *(v33[0] + 8) = v7;
    *v7 = v11;
    v33[0] = v8;
    *(v8 + 8) = v33;
    v34 = v6;
    v27 = 0;
  }

  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::GallicWeight(&v35, &v32, *(a1 + 8));
  std::__list_imp<char *>::clear(v33);
  std::__list_imp<char *>::clear(&v29);
  std::__list_imp<char *>::clear(&v25);
  fst::StringFactor<int,(fst::StringType)2>::Value(&v37, &v24);
  v19 = v28;
  v20[0] = v20;
  v20[1] = v20;
  v21 = 0;
  v12 = v31;
  if (v31)
  {
    v14 = v29;
    v13 = v30;
    v15 = *(v29 + 8);
    v16 = *v30;
    *(v16 + 8) = v15;
    *v15 = v16;
    v17 = v20[0];
    *(v20[0] + 8) = v13;
    *v13 = v17;
    v20[0] = v14;
    *(v14 + 8) = v20;
    v21 = v12;
    v31 = 0;
  }

  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::GallicWeight(&v22, &v19, 0.0);
  std::__list_imp<char *>::clear(v20);
  std::__list_imp<char *>::clear(&v29);
  std::__list_imp<char *>::clear(&v25);
  std::pair<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::pair[abi:ne200100]<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>&,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>&,0>(a2, &v35, &v22);
  std::__list_imp<char *>::clear(v23);
  std::__list_imp<char *>::clear(v36);
  return std::__list_imp<char *>::clear(v38);
}

void sub_1B5A514CC(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v1 + 8));
  std::__list_imp<char *>::clear((v3 - 120));
  std::__list_imp<char *>::clear((v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t std::pair<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::pair[abi:ne200100]<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>&,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>&,0>(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  *a1 = *a2;
  std::list<int>::list((a1 + 8), (a2 + 2));
  *(a1 + 32) = a2[8];
  *(a1 + 40) = *a3;
  std::list<int>::list((a1 + 48), (a3 + 2));
  *(a1 + 72) = a3[8];
  return a1;
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::NumInputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Expand(a1, a2);
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

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Expand(a1, a2);
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

void *fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::ImplToFst(void *result, uint64_t a2, int a3)
{
  *result = &unk_1F2D40110;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

void sub_1B5A51884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::~__hash_table(v16 + 24);
  __p = v16;
  std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>::__destroy_vector::operator()[abi:ne200100](&__p);
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::~CacheBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::CacheStateIterator<fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>>::Done(uint64_t a1)
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
    fst::ArcIterator<fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>>::ArcIterator(&v19, *(a1 + 8), v6);
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

uint64_t *fst::ArcIterator<fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>>::ArcIterator(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 84);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Expand(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::InitArcIterator(uint64_t a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::InitArcIterator(a1, a2, a3);
}

void fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::~ArcMapFst(void *a1)
{
  fst::ImplToFst<fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::Init(uint64_t a1)
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

void sub_1B5A520E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::~ArcMapFstImpl(uint64_t a1)
{
  fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::~ArcMapFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0) || *(*(a1 + 144) + 4) == 1))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::~ArcMapFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D40350;
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

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D403A0;
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

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::Start(uint64_t a1)
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

float fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::Final(uint64_t a1, int a2)
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
    __p = 0;
    v27 = v23;
    std::list<int>::list(v28, v24);
    v29 = v25;
    v30 = -1;
    v8 = fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>::operator()(v7, &__p);
    v10 = v9;
    std::__list_imp<char *>::clear(v28);
    std::__list_imp<char *>::clear(v24);
    if (v8)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      }

      v11 = fst::LogMessage::LogMessage(&v22, &__p);
      v12 = fst::cerr(v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ArcMapFst: non-zero arc labels for superfinal arc", 49);
      fst::LogMessage::~LogMessage(&v22);
      if (SHIBYTE(v28[0]) < 0)
      {
        operator delete(__p);
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
    __p = 0;
    v27 = v19;
    std::list<int>::list(v28, v20);
    v29 = v21;
    v30 = -1;
    v14 = fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>::operator()(v13, &__p);
    v10 = v15;
    std::__list_imp<char *>::clear(v28);
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

void sub_1B5A526A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  fst::LogMessage::~LogMessage(&a17);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>::operator()(int *a1, unsigned int *a2)
{
  if (a2[12] != -1)
  {
    goto LABEL_18;
  }

  v4 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::Zero();
  v5 = a2[2];
  v6 = v5 ? *(a2 + 4) + 1 : 0;
  v7 = *v4 ? *(v4 + 24) + 1 : 0;
  if (v6 != v7)
  {
    goto LABEL_18;
  }

  v8 = (a2 + 6);
  v9 = (v4 + 16);
  for (i = 1; ; i = 0)
  {
    v11 = *v8;
    v12 = *v9;
    if (i)
    {
      if (!v5)
      {
        break;
      }

      if (v5 != *v4)
      {
        goto LABEL_18;
      }
    }

    if (v11 == a2 + 4)
    {
      break;
    }

    if (*(v11 + 16) != *(v12 + 16))
    {
      goto LABEL_18;
    }

    v8 = (v11 + 8);
    v9 = (v12 + 8);
  }

  LODWORD(__p[0]) = a2[10];
  v29[0] = *(v4 + 32);
  if (*__p == v29[0])
  {
    v13 = 0;
    v14 = *a2;
  }

  else
  {
LABEL_18:
    v28 = -1;
    if (!fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>::Extract<(fst::GallicType)1>(a2 + 2, &v27, &v28) || (v14 = *a2, *a2 != a2[1]))
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      v15 = fst::LogMessage::LogMessage(&v26, __p);
      v16 = fst::cerr(v15);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "FromGallicMapper: unrepresentable weight: ", 42);
      fst::CompositeWeightWriter::CompositeWeightWriter(v29, v17);
      if (*FLAGS_fst_weight_parentheses)
      {
        v30 = *FLAGS_fst_weight_parentheses;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v29, &v30, 1);
      }

      fst::CompositeWeightWriter::WriteElement<fst::StringWeight<int,(fst::StringType)1>>(v29, a2 + 2);
      fst::CompositeWeightWriter::WriteElement<fst::LogWeightTpl<float>>(v29, a2 + 10);
      if (*FLAGS_fst_weight_parentheses)
      {
        v30 = *(FLAGS_fst_weight_parentheses + 1);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v29, &v30, 1);
      }

      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " for arc with ilabel = ", 23);
      v19 = MEMORY[0x1B8C84C00](v18, *a2);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", olabel = ", 11);
      v21 = MEMORY[0x1B8C84C00](v20, a2[1]);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", nextstate = ", 14);
      MEMORY[0x1B8C84C00](v22, a2[12]);
      fst::LogMessage::~LogMessage(&v26);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      *(a1 + 4) = 1;
      v14 = *a2;
    }

    if (!v14 && v28 && a2[12] == -1)
    {
      v14 = *a1;
    }

    v13 = v28 << 32;
  }

  return v13 | v14;
}

void sub_1B5A529AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::NumArcs(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::Expand(a1, a2);
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

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::Expand(uint64_t a1, int a2)
{
  v4 = *(a1 + 160);
  if (v4 == a2)
  {

    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
  }

  v6 = *(a1 + 136);
  v8 = v4 != -1 && v4 <= a2;
  v44 = 0;
  (*(*v6 + 136))(v6, (a2 - v8), &v40);
  while (1)
  {
    if (!v40)
    {
      if (v44 >= v42)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if ((*(*v40 + 24))(v40))
    {
      break;
    }

    if (v40)
    {
      v9 = (*(*v40 + 32))(v40);
      goto LABEL_18;
    }

LABEL_17:
    v9 = v41 + 56 * v44;
LABEL_18:
    v34 = *v9;
    v35 = *(v9 + 8);
    std::list<int>::list(v37, v9 + 16);
    v38 = *(v9 + 40);
    v10 = *(v9 + 48);
    v11 = *(a1 + 160);
    if (v11 != -1 && v11 <= v10)
    {
      ++v10;
    }

    if (v10 >= *(a1 + 164))
    {
      *(a1 + 164) = v10 + 1;
    }

    v39 = v10;
    *&v33 = fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>::operator()(*(a1 + 144), &v34);
    *(&v33 + 1) = v13;
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](MutableState + 24, &v33);
    std::__list_imp<char *>::clear(v37);
    if (v40)
    {
      (*(*v40 + 40))(v40);
    }

    else
    {
      ++v44;
    }
  }

  if (v40)
  {
    (*(*v40 + 8))(v40);
    goto LABEL_32;
  }

LABEL_30:
  if (v43)
  {
    --*v43;
  }

LABEL_32:
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasFinal(a1, a2) & 1) == 0 || (LODWORD(v34) = fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::Final(a1, a2), LODWORD(v40) = 2139095040, *&v34 == INFINITY))
  {
    v15 = *(a1 + 156);
    if (v15 == 2)
    {
      v22 = *(a1 + 144);
      (*(**(a1 + 136) + 32))(&v27);
      v34 = 0;
      v35 = *&v27;
      std::list<int>::list(v37, v28);
      v38 = v29;
      v39 = -1;
      v23 = fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>::operator()(v22, &v34);
      v25 = v24;
      std::__list_imp<char *>::clear(v37);
      std::__list_imp<char *>::clear(v28);
      if (HIDWORD(v23) || v23 || (*&v34 = v25, LODWORD(v40) = 2139095040, v25 != INFINITY))
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
      v34 = 0;
      v35 = *&v30;
      std::list<int>::list(v37, v31);
      v38 = v32;
      v39 = -1;
      v17 = fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>::operator()(v16, &v34);
      v40 = v17;
      v41 = v18;
      std::__list_imp<char *>::clear(v37);
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

        HIDWORD(v41) = v19;
        v20 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2) + 24;
        v21 = &v40;
LABEL_44:
        std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](v20, v21);
      }
    }
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B5A52EA0(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 16));
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::NumInputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::Expand(a1, a2);
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

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::Expand(a1, a2);
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

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::ImplToFst(void *result, uint64_t a2, int a3)
{
  *result = &unk_1F2D403A0;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::StateIterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = &unk_1F2D40450;
  *(a1 + 8) = v3;
  v4 = *(v3 + 136);
  *(a1 + 32) = 0;
  (*(*v4 + 128))(v4, a1 + 16);
  *(a1 + 40) = 0;
  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;
  fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::CheckSuperfinal(a1);
  return a1;
}

void sub_1B5A531E0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::StateIterator(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::CheckSuperfinal(uint64_t result)
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
      v4 = fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>::operator()(v3, &v8);
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

void sub_1B5A53314(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 16));
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

void *fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D40450;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D40450;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::Done(uint64_t a1)
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

uint64_t fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::Next(uint64_t a1)
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

        return fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::CheckSuperfinal(a1);
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

uint64_t fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::Reset(uint64_t a1)
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

  return fst::StateIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::CheckSuperfinal(a1);
}

uint64_t fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::InitArcIterator(uint64_t a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitArcIterator(a1, a2, a3);
}

void *fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D40110;
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

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D3FB28;
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

uint64_t fst::DeterminizeFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::~DeterminizeFstImpl(void *a1)
{
  *a1 = &unk_1F2D3F8C8;
  v2 = a1[20];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return fst::DeterminizeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::~DeterminizeFstImplBase(a1);
}

uint64_t *fst::ArcIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>>::ArcIterator(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 52);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)2>>::Expand(*(a2 + 8), a3);
  }

  return a1;
}

void sub_1B5A53A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v15 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::~DeterminizeFstImplBase(v14);
  _Unwind_Resume(a1);
}

void sub_1B5A53B98(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x20C4093837F09);
  fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::~ImplToFst((v2 - 48));
  _Unwind_Resume(a1);
}

void fst::DeterminizeFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::~DeterminizeFstImpl(void *a1)
{
  fst::DeterminizeFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::~DeterminizeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::DeterminizeFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0) || (*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0)))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::DeterminizeFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::Expand(uint64_t a1, int a2)
{
  fst::ArcIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::ArcIterator(&v9, *(a1 + 160), a2);
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

void fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>::~ArcMapFst(void *a1)
{
  fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>::Write(uint64_t a1)
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

void sub_1B5A54204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5A54300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>::Init(uint64_t a1)
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

void sub_1B5A545F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>::~ArcMapFstImpl(uint64_t a1)
{
  fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>::~ArcMapFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0) || (fst::ProjectProperties(0, 1) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D406D0;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D40698;
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
  *a1 = &unk_1F2D406D0;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D40698;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

void sub_1B5A54818(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D406D0;
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

void fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::~CacheBaseImpl(void *a1)
{
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::~CacheBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>::~FstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void *fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>>::VectorCacheStore(void *a1, _BYTE *a2)
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

void sub_1B5A549E4(_Unwind_Exception *a1)
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

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::~CacheBaseImpl(void *a1)
{
  *a1 = &unk_1F2D40698;
  v2 = a1[15];
  if (v2)
  {
    v3 = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>>::~VectorCacheStore(v2);
    MEMORY[0x1B8C85350](v3, 0x10A0C407A9BBF1FLL);
  }

  v4 = a1[9];
  if (v4)
  {
    operator delete(v4);
  }

  return fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>::~FstImpl(a1);
}

void *fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>>::~VectorCacheStore(void *a1)
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

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>::~ArcMapFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D40608;
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

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::~CacheBaseImpl(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>::Start(uint64_t a1)
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

void *fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
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
        fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>::operator()(&v46, &v51);
        if (v51)
        {
          v24 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)4>::Zero();
          v30 = *v24;
          v22 = v31;
          std::list<int>::list(v31, (v24 + 2));
          v32 = v24[8];
          v23 = v33;
          std::list<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::list(v33, (v24 + 10));
          fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::SetFinal(a1, a2, &v30);
        }

        else
        {
          v34 = v52;
          v22 = v35;
          std::list<int>::list(v35, v53);
          v36 = v54;
          v23 = v37;
          std::list<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::list(v37, v55);
          fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::SetFinal(a1, a2, &v34);
        }

        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v23);
        std::__list_imp<char *>::clear(v22);
        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v55);
        v18 = v53;
        goto LABEL_35;
      }

      v9 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)4>::One();
      v38 = *v9;
      v10 = &v38;
      std::list<int>::list(v39, (v9 + 2));
      v40 = v9[8];
      std::list<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::list(v41, (v9 + 10));
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::SetFinal(a1, a2, &v38);
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
        fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>::operator()(&v46, &v51);
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
        std::list<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::list(v45, v55);
        fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::SetFinal(a1, a2, &v42);
        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v45);
        std::__list_imp<char *>::clear(v43);
        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v55);
        v18 = v53;
        goto LABEL_35;
      }

      if (*(a1 + 160) == a2)
      {
        v7 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)4>::One();
      }

      else
      {
        v7 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)4>::Zero();
      }

      v17 = v7;
      v26 = *v7;
      v10 = &v26;
      std::list<int>::list(v27, (v7 + 2));
      v28 = v17[8];
      std::list<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::list(v29, (v17 + 10));
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::SetFinal(a1, a2, &v26);
    }

    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v10 + 5);
    v18 = v10 + 2;
LABEL_35:
    std::__list_imp<char *>::clear(v18);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::Final(a1, a2, a3);
}

void sub_1B5A54FF0(_Unwind_Exception *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v2);
  std::__list_imp<char *>::clear(v1);
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v3 - 96));
  std::__list_imp<char *>::clear((v3 - 128));
  _Unwind_Resume(a1);
}

void *fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>::operator()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 12) == -1)
  {
    v28 = *(a1 + 8);
    v27[16] = 2139095040;
    if (v28 == INFINITY)
    {
      v11 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)4>::Zero();
      v21 = *v11;
      v6 = v22;
      std::list<int>::list(v22, (v11 + 2));
      v23 = v11[8];
      std::list<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::list(v24, (v11 + 10));
      fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>::GallicArc(a2, 0, 0, &v21, -1);
      std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v24);
      return std::__list_imp<char *>::clear(v6);
    }

    v7 = fst::StringWeight<int,(fst::StringType)2>::One();
    v25 = *v7;
    v6 = v26;
    std::list<int>::list(v26, (v7 + 2));
    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)4>::GallicWeight(v27, &v25, *(a1 + 8));
    v8 = v27;
    fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>::GallicArc(a2, 0, 0, v27, -1);
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
    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)4>::GallicWeight(v20, &v18, *(a1 + 8));
    v10 = *(a1 + 12);
    v8 = v20;
    fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>::GallicArc(a2, v5, v5, v20, v10);
LABEL_7:
    std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v8 + 5);
    std::__list_imp<char *>::clear(v8 + 1);
    return std::__list_imp<char *>::clear(v6);
  }

  fst::StringWeight<int,(fst::StringType)2>::StringWeight(&v13, v4);
  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)4>::GallicWeight(&v15, &v13, *(a1 + 8));
  fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>::GallicArc(a2, v5, v5, &v15, *(a1 + 12));
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v17);
  std::__list_imp<char *>::clear(v16);
  v6 = &v14;
  return std::__list_imp<char *>::clear(v6);
}

void sub_1B5A55288(_Unwind_Exception *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear((v2 + 40));
  std::__list_imp<char *>::clear(v1);
  _Unwind_Resume(a1);
}

void *fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>>>>::GetMutableState(*(a1 + 120), a2);
  v6 = *a3;
  std::list<int>::list(v7, (a3 + 2));
  v8 = a3[8];
  std::list<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::list(v9, (a3 + 10));
  *MutableState = v6;
  if (MutableState == &v6)
  {
    *(MutableState + 32) = v8;
  }

  else
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((MutableState + 8), v7[1], v7);
    *(MutableState + 32) = v8;
    std::list<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>,void *>,std::__list_const_iterator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>,void *>>((MutableState + 40), v9[1], v9);
  }

  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v9);
  result = std::__list_imp<char *>::clear(v7);
  *(MutableState + 104) |= 9u;
  return result;
}

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)4>::GallicWeight(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  std::list<int>::list((a1 + 8), (a2 + 2));
  *(a1 + 32) = a2[8];
  std::list<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::list((a1 + 40), (a2 + 10));
  return a1;
}

{
  *a1 = *a2;
  std::list<int>::list((a1 + 8), (a2 + 2));
  *(a1 + 32) = a2[8];
  std::list<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::list((a1 + 40), (a2 + 10));
  return a1;
}

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)4>::One()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)4>::One(void)::one;
}

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)4>::Zero()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)4>::Zero(void)::zero;
}

void *fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
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
      return fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::Final(v8, a3);
    }

    v4 = (v6 + 8 * v5);
  }

  v8 = *v4;
  return fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::Final(v8, a3);
}

uint64_t fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>::GallicArc(uint64_t a1, int a2, int a3, _DWORD *a4, int a5)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = *a4;
  std::list<int>::list((a1 + 16), (a4 + 2));
  *(a1 + 40) = a4[8];
  std::list<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::list((a1 + 48), (a4 + 10));
  *(a1 + 72) = a5;
  return a1;
}

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)4>::GallicWeight(uint64_t a1, int *a2, float a3)
{
  v6 = *a2;
  std::list<int>::list(v7, (a2 + 2));
  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::GallicWeight(&v8, &v6, a3);
  fst::UnionWeight<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::LogWeightTpl<float>>>::UnionWeight(a1, &v8);
  std::__list_imp<char *>::clear(v9);
  std::__list_imp<char *>::clear(v7);
  return a1;
}

void sub_1B5A556FC(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::UnionWeight<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::LogWeightTpl<float>>>::UnionWeight(uint64_t a1, int *a2)
{
  *a1 = *a2;
  v4 = a2 + 2;
  std::list<int>::list((a1 + 8), (a2 + 2));
  *(a1 + 32) = a2[8];
  *(a1 + 40) = a1 + 40;
  *(a1 + 48) = a1 + 40;
  *(a1 + 56) = 0;
  v5 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::NoWeight();
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
      std::__list_imp<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::__create_node[abi:ne200100]<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2> const&>();
    }
  }

  return a1;
}

void sub_1B5A55848(_Unwind_Exception *a1)
{
  std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v2);
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::NoWeight()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>::NoWeight(void)::no_weight;
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)2>,fst::LogWeightTpl<float>>::NoWeight()
{
  {
    operator new();
  }

  return fst::ProductWeight<fst::StringWeight<int,(fst::StringType)2>,fst::LogWeightTpl<float>>::NoWeight(void)::no_weight;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)2>,fst::LogWeightTpl<float>>::NoWeight()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::StringWeight<int,(fst::StringType)2>,fst::LogWeightTpl<float>>::NoWeight(void)::no_weight;
}

void sub_1B5A55AD0(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  MEMORY[0x1B8C85350](v1, 0x1020C4067685F46);
  _Unwind_Resume(a1);
}

uint64_t fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>>>::GetMutableState(a1, a2);
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
        fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>>>>::GC(a1, MutableState, 0, 0.666);
      }
    }
  }

  return v4;
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>>>::GetMutableState(uint64_t a1, int a2)
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
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>>::GetMutableState(a1, 0);
      *(a1 + 80) = MutableState;
      *(MutableState + 104) |= 4u;
      std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>::reserve((MutableState + 80), 0x80uLL);
      return *(a1 + 80);
    }

    v5 = *(a1 + 80);
    if (!*(v5 + 108))
    {
      *(a1 + 76) = a2;
      fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::Reset(v5);
      result = *(a1 + 80);
      *(result + 104) |= 4u;
      return result;
    }

    *(v5 + 104) &= ~4u;
    *(a1 + 72) = 0;
  }

  v6 = a2 + 1;

  return fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>>::GetMutableState(a1, v6);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>>>>::GC(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
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

      MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>>>::GetMutableState(a1, v23);
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
      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>>>>::GC(a1, a2, 1, a4);
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

void sub_1B5A560E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>>::GetMutableState(uint64_t a1, int a2)
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

void *fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::Reset(uint64_t a1)
{
  v2 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)4>::Zero();
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
    std::list<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>,void *>,std::__list_const_iterator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>,void *>>((a1 + 40), *(v3 + 48), v3 + 40);
  }

  v6 = *(a1 + 80);
  v5 = (a1 + 80);
  v4 = v6;
  v5[3] = 0;
  *(v5 - 2) = 0;
  *(v5 - 1) = 0;

  return std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::__base_destruct_at_end[abi:ne200100](v5, v4);
}

uint64_t fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::CacheState(uint64_t a1)
{
  v2 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)4>::Zero();
  *a1 = *v2;
  std::list<int>::list((a1 + 8), (v2 + 2));
  *(a1 + 32) = v2[8];
  std::list<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::list((a1 + 40), (v2 + 10));
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 64) = 0u;
  return a1;
}

void *std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>::reserve(void *result, unint64_t a2)
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

void sub_1B5A563F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      std::allocator_traits<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::construct[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4> const&,0>(a1, a4, v7);
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

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void *std::allocator_traits<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::construct[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4> const&,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *(a2 + 8) = *(a3 + 8);
  std::list<int>::list((a2 + 16), a3 + 16);
  *(a2 + 40) = *(a3 + 40);
  result = std::list<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::list((a2 + 48), a3 + 48);
  *(a2 + 72) = *(a3 + 72);
  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t fst::UnionWeight<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::LogWeightTpl<float>>>::operator=(uint64_t a1, uint64_t a2)
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
    std::list<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>,void *>,std::__list_const_iterator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>,void *>>((a1 + 40), *(a2 + 48), a2 + 40);
  }

  return a1;
}

void *std::list<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>,void *>,std::__list_const_iterator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>,void *>>(void *a1, uint64_t a2, uint64_t a3)
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

    return std::list<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>,void *>,std::__list_const_iterator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>,void *>>(a1, a1, v4, a3);
  }

  else
  {

    return std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::erase(a1, v6, a1);
  }
}

uint64_t std::list<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>,void *>,std::__list_const_iterator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>,void *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    std::__list_imp<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::__create_node[abi:ne200100]<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2> const&>();
  }

  return a2;
}

void sub_1B5A56790(void *a1)
{
  __cxa_begin_catch(a1);
  std::list<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,void *>,std::__list_const_iterator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,void *>>(v1);
  __cxa_rethrow();
}

void *std::list<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::list(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    std::__list_imp<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::__create_node[abi:ne200100]<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2> const&>();
  }

  return result;
}

{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (a2)
  {
    std::__list_imp<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::__create_node[abi:ne200100]<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2> const&>();
  }

  return result;
}

uint64_t fst::UnionWeight<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::LogWeightTpl<float>>>::One()
{
  {
    operator new();
  }

  return fst::UnionWeight<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::LogWeightTpl<float>>>::One(void)::one;
}

void sub_1B5A56910(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  MEMORY[0x1B8C85350](v1, 0x1020C404C081FCELL);
  _Unwind_Resume(a1);
}

uint64_t fst::UnionWeight<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::LogWeightTpl<float>>>::Zero()
{
  {
    operator new();
  }

  return fst::UnionWeight<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::LogWeightTpl<float>>>::Zero(void)::zero;
}

void sub_1B5A56A78(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  MEMORY[0x1B8C85350](v1, 0x1020C404C081FCELL);
  _Unwind_Resume(a1);
}

void *fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::Final@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  std::list<int>::list((a2 + 8), (a1 + 2));
  *(a2 + 32) = a1[8];
  return std::list<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::list((a2 + 40), (a1 + 10));
}

unint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>::NumArcs(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>::Expand(a1, a2);
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

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>::Expand(uint64_t a1, int a2)
{
  v4 = *(a1 + 160);
  if (v4 == a2)
  {

    return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::SetArcs(a1, a2);
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
    fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>::operator()(&v44, &v38);
    fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::PushArc(a1, a2, &v38);
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
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)4>>>::HasFinal(a1, a2) & 1) == 0 || (fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>::Final(a1, a2, &v38), v13 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)4>::Zero(), v14 = fst::operator==<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>,fst::GallicUnionWeightOptions<int,fst::TropicalWeightTpl<float>>>(&v38, v13), std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(&v41), std::__list_imp<char *>::clear(&v39), v14))
  {
    v15 = *(a1 + 156);
    if (v15 == 1)
    {
      v23 = *(a1 + 160);
      v25 = v23 != -1 && v23 <= a2;
      *&v26 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v25));
      v32 = 0;
      v33 = v26 | 0xFFFFFFFF00000000;
      fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>::operator()(&v32, &v38);
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
        fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::PushArc(a1, a2, &v38);
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
      fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>::operator()(&v32, &v38);
      v20 = v38;
      v21 = HIDWORD(v38);
      if (v38)
      {
LABEL_45:
        v28 = v39;
        std::list<int>::list(v29, v40);
        v30 = v41;
        std::list<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)2>>::list(v31, v42);
        fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>::GallicArc(&v32, v20, v21, &v28, *(a1 + 160));
        fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::PushArc(a1, a2, &v32);
        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v37);
        std::__list_imp<char *>::clear(&v34);
        std::__list_imp<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)2>>::clear(v31);
        std::__list_imp<char *>::clear(v29);
      }

      else
      {
        v22 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)4>::Zero();
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

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)4>>>::SetArcs(a1, a2);
}