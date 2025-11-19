uint64_t quasar::NBestToken<0ul>::NBestToken(uint64_t a1, int *a2)
{
  v4 = *a2;
  *a2 = -1;
  *a1 = v4;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v5 = a2 + 4;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 16, *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 2);
  *(a2 + 1) = 0;
  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v5, 0, 0, 0);
  v6 = *(a2 + 5);
  *(a2 + 5) = 0;
  *(a1 + 40) = v6;
  v7 = *(a2 + 6);
  *(a2 + 6) = 0;
  *(a1 + 48) = v7;
  v8 = *(a2 + 14);
  *(a1 + 72) = *(a2 + 18);
  *(a1 + 56) = v8;
  return a1;
}

void sub_1B543546C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::NBestToken<0ul>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::NBestToken<0ul>>,quasar::NBestToken<0ul>*>(uint64_t a1, int *a2, int *a3, uint64_t a4)
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
      quasar::NBestToken<0ul>::NBestToken(a4, v6);
      v6 += 22;
      a4 = v12 + 88;
      v12 += 88;
    }

    while (v6 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 2);
      if (v7)
      {
        *(v5 + 3) = v7;
        operator delete(v7);
      }

      v5 += 22;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::NBestToken<0ul>>,quasar::NBestToken<0ul>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::NBestToken<0ul>>,quasar::NBestToken<0ul>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::NBestToken<0ul>>,quasar::NBestToken<0ul>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::NBestToken<0ul>>,quasar::NBestToken<0ul>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 72);
    if (v3)
    {
      *(v1 - 64) = v3;
      operator delete(v3);
    }

    v1 -= 88;
  }
}

uint64_t std::__split_buffer<quasar::NBestToken<0ul>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::NBestToken<0ul>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::NBestToken<0ul>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 88;
    v5 = *(v2 - 72);
    if (v5)
    {
      *(v2 - 64) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 88;
    }
  }
}

uint64_t std::__function::__value_func<BOOL ()(fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const*)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void **std::__split_buffer<std::vector<quasar::NBestToken<1ul>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<quasar::NBestToken<1ul>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<quasar::NBestToken<1ul>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<quasar::NBestToken<1ul>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void *quasar::NBestToken<1ul>::NBestToken(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  quasar::NBestToken<1ul>::clear(a1, 0, 0);
  return a1;
}

void sub_1B543581C(_Unwind_Exception *exception_object)
{
  v4 = v2;
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 72) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

void quasar::NBestToken<1ul>::clear(uint64_t a1, char a2, int a3)
{
  *a1 = -1;
  if ((a2 & 1) == 0)
  {
    *(a1 + 8) = 0;
  }

  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 16), 0, 0, 0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (a3)
  {

    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 64), 0, 0, 0);
  }

  else
  {
    v6 = *(a1 + 64);
    v5 = (a1 + 64);
    v8 = 0;
    v9 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v6, v5[1], (v5[1] - v6) >> 2);
    *(v5 - 1) = 0;
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v5, 0, 0, 0);
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }
  }
}

void sub_1B5435928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<quasar::CalculateJoinedNBest<1ul>::operator()(fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const&,std::array<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const*,1ul> const&,unsigned long,std::vector<std::vector<quasar::NBestToken<1ul>>> *,int,std::set<int> const*,BOOL)::{lambda(fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const*)#1},std::allocator<quasar::CalculateJoinedNBest<1ul>::operator()(fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const&,std::array<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const*,1ul> const&,unsigned long,std::vector<std::vector<quasar::NBestToken<1ul>>> *,int,std::set<int> const*,BOOL)::{lambda(fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const*)#1}>,BOOL ()(fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D12B98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<quasar::CalculateJoinedNBest<1ul>::operator()(fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const&,std::array<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const*,1ul> const&,unsigned long,std::vector<std::vector<quasar::NBestToken<1ul>>> *,int,std::set<int> const*,BOOL)::{lambda(fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const*)#1},std::allocator<quasar::CalculateJoinedNBest<1ul>::operator()(fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const&,std::array<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const*,1ul> const&,unsigned long,std::vector<std::vector<quasar::NBestToken<1ul>>> *,int,std::set<int> const*,BOOL)::{lambda(fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const*)#1}>,BOOL ()(fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t quasar::CalculateJoinedNBest<1ul>::operator()(fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const&,std::array<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const*,1ul> const&,unsigned long,std::vector<std::vector<quasar::NBestToken<1ul>>> *,int,std::set<int> const*,BOOL)::{lambda(fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const*)#1}::operator()(uint64_t a1, float32x2_t *a2, float32x2_t *a3)
{
  v43[0] = a3 == 0;
  v4 = *a1;
  v5 = **(a1 + 8);
  v44 = v5;
  v45 = *(a1 + 24);
  v46 = *(a1 + 40);
  v47 = *(a1 + 16);
  v48 = v4;
  v49 = *(a1 + 48);
  if (a3)
  {
    v7 = a3->i32[1];
    if (!v7)
    {
LABEL_7:
      fst::Times<fst::LatticeWeightTpl<float>,int>(v4 + 1, a3 + 1, __p);
      v8 = *a1;
      v9 = *a1;
      v9[1] = __p[0];
      if (&v9[1] != __p)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v8[2], __p[1], v27, (v27 - __p[1]) >> 2);
      }

      if (__p[1])
      {
        *&v27 = __p[1];
        operator delete(__p[1]);
      }

      v10 = *(a1 + 32);
      if (!v10)
      {
        goto LABEL_19;
      }

      v13 = *(v10 + 8);
      v11 = v10 + 8;
      v12 = v13;
      if (!v13)
      {
        goto LABEL_19;
      }

      v14 = a3->i32[1];
      v15 = v11;
      do
      {
        if (*(v12 + 28) >= v14)
        {
          v15 = v12;
        }

        v12 = *(v12 + 8 * (*(v12 + 28) < v14));
      }

      while (v12);
      if (v15 != v11 && v14 >= *(v15 + 28))
      {
        v16 = 0;
      }

      else
      {
LABEL_19:
        v16 = (*&a3[3] - *&a3[2]) >> 2;
      }

      **(a1 + 8) += v16;
      if (quasar::gLogLevel < 6)
      {
        return 1;
      }

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
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Primary lattice moving to state ", 32);
      v18 = MEMORY[0x1B8C84C00](v17, a3[5].u32[0]);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " with label ", 12);
      v20 = MEMORY[0x1B8C84C00](v19, a3->u32[1]);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ".", 1);
      goto LABEL_30;
    }

    if (v4->i32[0] == -1)
    {
LABEL_6:
      v4->i32[0] = v7;
      v4[5] = v5;
      goto LABEL_7;
    }

    if (quasar::CalculateJoinedNBest<1ul>::operator()(fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const&,std::array<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const*,1ul> const&,unsigned long,std::vector<std::vector<quasar::NBestToken<1ul>>> *,int,std::set<int> const*,BOOL)::{lambda(fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const*)#1}::operator() const(fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const*)::{lambda(void)#1}::operator()(v43))
    {
      v7 = a3->i32[1];
      v4 = *a1;
      v5 = **(a1 + 8);
      goto LABEL_6;
    }

    if (quasar::gLogLevel >= 2)
    {
      goto LABEL_35;
    }
  }

  else
  {
    fst::Times<fst::LatticeWeightTpl<float>,int>(v4 + 1, a2, __p);
    v21 = *a1;
    v22 = *a1;
    v22[1] = __p[0];
    if (&v22[1] != __p)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v21[2], __p[1], v27, (v27 - __p[1]) >> 2);
    }

    if (__p[1])
    {
      *&v27 = __p[1];
      operator delete(__p[1]);
    }

    if (**a1 == -1 || quasar::CalculateJoinedNBest<1ul>::operator()(fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const&,std::array<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const*,1ul> const&,unsigned long,std::vector<std::vector<quasar::NBestToken<1ul>>> *,int,std::set<int> const*,BOOL)::{lambda(fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const*)#1}::operator() const(fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const*)::{lambda(void)#1}::operator()(v43))
    {
      if (quasar::gLogLevel < 6)
      {
        return 1;
      }

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
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Primary lattice moving to final state.", 38);
LABEL_30:
      quasar::QuasarTraceMessage::~QuasarTraceMessage(__p);
      return 1;
    }

    if (quasar::gLogLevel >= 2)
    {
LABEL_35:
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
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unable to process ", 18);
      v25 = quasar::operator<<<1ul>(v24, *a1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "; skipping hypothesis.", 22);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(__p);
    }
  }

  return 0;
}

BOOL quasar::CalculateJoinedNBest<1ul>::operator()(fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const&,std::array<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const*,1ul> const&,unsigned long,std::vector<std::vector<quasar::NBestToken<1ul>>> *,int,std::set<int> const*,BOOL)::{lambda(fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const*)#1}::operator() const(fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const*)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 48) = *(a1 + 8);
  v3 = **(a1 + 24);
  v4 = fst::SortedMatcher<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::Find(v3, *v2);
  if (v4)
  {
    if (*(v3 + 104) == 1)
    {
      v5 = (v3 + 56);
    }

    else
    {
      v5 = (**(v3 + 24) + 48 * *(*(v3 + 24) + 16));
    }

    if (*a1 == 1)
    {
      if (quasar::gLogLevel >= 6)
      {
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        *v36 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v36);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Secondary FST ", 14);
        v11 = MEMORY[0x1B8C84C30](v10, 0);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " moving to final state.", 23);
        quasar::QuasarTraceMessage::~QuasarTraceMessage(v36);
      }

      v12 = *(*(*(*(v3 + 8) + 8) + 64) + 8 * v5[5].i32[0]);
      v36[0] = *v12;
      v37 = 0uLL;
      v36[1] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v36[1], *(v12 + 8), *(v12 + 16), (*(v12 + 16) - *(v12 + 8)) >> 2);
      v30.i32[0] = HIDWORD(v36[0]);
      v33.i32[0] = v36[0];
      v54 = 2139095040;
      v53 = 2139095040;
      v13 = *(a1 + 32);
      fst::Times<fst::LatticeWeightTpl<float>,int>(v5 + 1, v36, &v30);
      fst::Times<fst::LatticeWeightTpl<float>,int>(v13 + 7, &v30, &v33);
      v14 = *(a1 + 32);
      v14[7] = v33;
      if (&v14[7] != &v33)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v14[8], __p, v35, (v35 - __p) >> 2);
      }

      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      if (v36[1])
      {
        *&v37 = v36[1];
        operator delete(v36[1]);
      }
    }

    else
    {
      if (quasar::gLogLevel >= 6)
      {
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        *v36 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v36);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Secondary FST ", 14);
        v16 = MEMORY[0x1B8C84C30](v15, 0);
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " moving to state ", 17);
        v18 = MEMORY[0x1B8C84C00](v17, v5[5].u32[0]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ".", 1);
        quasar::QuasarTraceMessage::~QuasarTraceMessage(v36);
      }

      fst::Times<fst::LatticeWeightTpl<float>,int>((*(a1 + 32) + 56), v5 + 1, v36);
      v19 = *(a1 + 32);
      *(v19 + 56) = v36[0];
      if ((v19 + 56) != v36)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v19 + 64), v36[1], v37, (v37 - v36[1]) >> 2);
      }

      if (v36[1])
      {
        *&v37 = v36[1];
        operator delete(v36[1]);
      }

      fst::SortedMatcher<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::SetState(v3, v5[5].i32[0]);
    }

    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    if (v20->i32[0] == *(a1 + 16))
    {
      v22 = v21[1];
      if (*v21 != v22)
      {
        *(v22 - 40) = v20[6];
        if (*a1 == 1)
        {
          fst::Times<fst::LatticeWeightTpl<float>,int>((v22 - 32), v20 + 7, v36);
          v23 = *(*(a1 + 40) + 8);
          *(v23 - 32) = v36[0];
          if ((v23 - 32) != v36)
          {
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v23 - 24), v36[1], v37, (v37 - v36[1]) >> 2);
          }

          if (v36[1])
          {
            *&v37 = v36[1];
            operator delete(v36[1]);
          }

          v20 = *(a1 + 32);
        }
      }

      v24 = v20;
      v25 = *(a1 + 20);
      v26 = 1;
    }

    else
    {
      v27 = v21[1];
      if (v27 >= v21[2])
      {
        v28 = std::vector<quasar::NBestToken<1ul>>::__emplace_back_slow_path<quasar::NBestToken<1ul>>(*(a1 + 40), v20);
      }

      else
      {
        quasar::NBestToken<1ul>::NBestToken(v21[1], v20);
        v28 = v27 + 88;
        v21[1] = v27 + 88;
      }

      v21[1] = v28;
      v24 = *(a1 + 32);
      v25 = 0;
      v26 = 0;
    }

    quasar::NBestToken<1ul>::clear(v24, v25, v26);
  }

  else if (quasar::gLogLevel >= 2)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    *v36 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v36);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Unable to find arc with label ", 30);
    v7 = MEMORY[0x1B8C84C00](v6, **(a1 + 32));
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " in secondary FST ", 18);
    v9 = MEMORY[0x1B8C84C30](v8, 0);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ".", 1);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(v36);
  }

  return v4;
}

void sub_1B54362C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *quasar::operator<<<1ul>(void *a1, unsigned int *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "NBestToken(", 11);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "labelId=", 8);
  v6 = MEMORY[0x1B8C84C00](v5, *a2);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", ", 2);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "weight=", 7);
  v9 = fst::operator<<<fst::LatticeWeightTpl<float>,int>(v8, (a2 + 2));
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "startFrame=", 11);
  v12 = MEMORY[0x1B8C84C30](v11, *(a2 + 5));
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", ", 2);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "endFrame=", 9);
  v15 = MEMORY[0x1B8C84C30](v14, *(a2 + 6));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "weights=[", 9);
  v16 = fst::operator<<<fst::LatticeWeightTpl<float>,int>(a1, (a2 + 14));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "])", 2);
  return a1;
}

uint64_t std::vector<quasar::NBestToken<1ul>>::__emplace_back_slow_path<quasar::NBestToken<1ul>>(uint64_t a1, int *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::NBestToken<1ul>>>(a1, v6);
  }

  v13 = 0;
  v14 = 88 * v2;
  quasar::NBestToken<1ul>::NBestToken(88 * v2, a2);
  v15 = (88 * v2 + 88);
  v7 = *(a1 + 8);
  v8 = 88 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::NBestToken<1ul>>,quasar::NBestToken<1ul>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::NBestToken<1ul>>::~__split_buffer(&v13);
  return v12;
}

void sub_1B5436598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::NBestToken<1ul>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t quasar::NBestToken<1ul>::NBestToken(uint64_t a1, int *a2)
{
  v4 = *a2;
  *a2 = -1;
  *a1 = v4;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v5 = a2 + 4;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 16, *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 2);
  *(a2 + 1) = 0;
  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v5, 0, 0, 0);
  v6 = *(a2 + 5);
  *(a2 + 5) = 0;
  *(a1 + 40) = v6;
  v7 = *(a2 + 6);
  *(a2 + 6) = 0;
  v8 = *(a2 + 7);
  *(a1 + 64) = 0;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 64, *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 2);
  return a1;
}

void sub_1B5436670(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::NBestToken<1ul>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::NBestToken<1ul>>,quasar::NBestToken<1ul>*>(uint64_t a1, int *a2, int *a3, uint64_t a4)
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
      quasar::NBestToken<1ul>::NBestToken(a4, v7);
      v7 += 22;
      a4 = v12 + 88;
      v12 += 88;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator<quasar::NBestToken<1ul>>::destroy[abi:ne200100](a1, v5);
      v5 += 22;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::NBestToken<1ul>>,quasar::NBestToken<1ul>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::NBestToken<1ul>>,quasar::NBestToken<1ul>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::NBestToken<1ul>>,quasar::NBestToken<1ul>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::NBestToken<1ul>>,quasar::NBestToken<1ul>*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 11;
      std::allocator<quasar::NBestToken<1ul>>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<quasar::NBestToken<1ul>>::~__split_buffer(void **a1)
{
  std::__split_buffer<quasar::NBestToken<1ul>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::NBestToken<1ul>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 88;
    std::allocator<quasar::NBestToken<1ul>>::destroy[abi:ne200100](v4, (i - 88));
  }
}

uint64_t std::vector<std::pair<int,kaldi::WordHypLattice::Node *>>::__init_with_size[abi:ne200100]<std::pair<int,kaldi::WordHypLattice::Node *> const*,std::pair<int,kaldi::WordHypLattice::Node *> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<int,kaldi::WordHypLattice::Node *>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5436914(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<int,kaldi::WordHypLattice::Node *>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<boost::property_tree::json_parser::detail::standard_callbacks<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::layer>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::vector<std::string>::iterator std::vector<std::string>::erase(std::vector<std::string> *this, std::vector<std::string>::const_iterator __first, std::vector<std::string>::const_iterator __last)
{
  if (__last.__i_ != __first.__i_)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v10, __last.__i_, this->__end_, __first.__i_);
    v6 = v5;
    end = this->__end_;
    if (end != v5)
    {
      do
      {
        v8 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
        --end;
        if (v8 < 0)
        {
          operator delete(end->__r_.__value_.__l.__data_);
        }
      }

      while (end != v6);
    }

    this->__end_ = v6;
  }

  return __first.__i_;
}

void **std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::string *>,std::__wrap_iter<std::string *>,std::__equal_to &>(const void **a1, const void **a2, uint64_t a3)
{
  result = a2;
  if (a1 != a2)
  {
    while (1)
    {
      v7 = a1 + 3;
      if (a1 + 3 == a2)
      {
        break;
      }

      v8 = std::equal_to<std::string>::operator()[abi:ne200100](a3, a1, a1 + 3);
      a1 = v7;
      if (v8)
      {
        v9 = v7 - 3;
        goto LABEL_6;
      }
    }

    v9 = a2;
LABEL_6:
    result = a2;
    if (v9 != a2)
    {
      v10 = v9 + 6;
      if (v9 + 6 == a2)
      {
        v11 = v9;
      }

      else
      {
        do
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](a3, v9, v10))
          {
            v11 = v9;
          }

          else
          {
            v11 = (v9 + 3);
            if (*(v9 + 47) < 0)
            {
              operator delete(*v11);
            }

            v12 = *v10;
            v9[5] = v10[2];
            *v11 = v12;
            *(v10 + 23) = 0;
            *v10 = 0;
            v9 += 3;
          }

          v10 += 3;
        }

        while (v10 != a2);
      }

      return v11 + 3;
    }
  }

  return result;
}

void std::__shared_ptr_emplace<quasar::RecogAudioBuffer>::__shared_ptr_emplace[abi:ne200100]<int &,std::allocator<quasar::RecogAudioBuffer>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFF8E0;
  std::allocator<quasar::RecogAudioBuffer>::construct[abi:ne200100]<quasar::RecogAudioBuffer,int &>();
}

void sub_1B5436C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::GenericPhraseBook::GenericPhraseBook(uint64_t a1, char a2, uint64_t a3)
{
  *a1 = &unk_1F2D12C18;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v4 = *(a3 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a3 + 8);
  }

  if (v4)
  {
    quasar::RegularExpressionReplacer::read();
  }

  return a1;
}

void sub_1B5436D00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void quasar::GenericPhraseBook::lookup(void (***a1)(uint64_t *__return_ptr)@<X0>, int a2@<W2>, void *a3@<X8>)
{
  (**a1)(&v7);
  v6 = v8;
  if (!a2 || v7 == v8)
  {
    *a3 = v7;
    a3[1] = v6;
    a3[2] = v9;
    v8 = 0;
    v9 = 0;
    v7 = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    quasar::GenericPhraseBook::filterPhraseBookEntries(a1, &v7);
  }

  v10 = &v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v10);
}

void sub_1B5436DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void quasar::GenericPhraseBook::filterPhraseBookEntries(uint64_t a1, uint64_t *a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  memset(v7, 0, sizeof(v7));
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  v2 = *a2;
  if (a2[1] != *a2)
  {
    v4[0] = "source";
    v4[1] = 6;
    quasar::GenericPhraseBook::getMetaForKey(a1, v4, v2);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>>>::destroy(&v5, v6[0]);
  v3[0] = v7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v3);
  std::__tree<int>::destroy(&v8, v9[0]);
}

void sub_1B543744C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  if (*(v48 - 225) < 0)
  {
    operator delete(*(v48 - 248));
  }

  if (*(v48 - 201) < 0)
  {
    operator delete(*(v48 - 224));
  }

  if (*(v48 - 177) < 0)
  {
    operator delete(*(v48 - 200));
  }

  std::__tree<std::__value_type<std::string,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>>>::destroy(v48 - 160, *(v48 - 152));
  *(v48 - 160) = v48 - 136;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v48 - 160));
  std::__tree<int>::destroy(v48 - 112, *(v48 - 104));
  _Unwind_Resume(a1);
}

double quasar::GenericPhraseBook::normalizeKey@<D0>(void *__src@<X1>, size_t __len@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(a4 + 23) = __len;
  if (__len)
  {
    memmove(a4, __src, __len);
  }

  *(a4 + __len) = 0;
  if ((*(a3 + 8) & 1) == 0)
  {
    quasar::utf8::convertToLowerCase(__src, __len, &__str);
    if ((v35 & 1) == 0)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
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
      v17 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v17);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "Unable to convert key: '", 24);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, __src, __len);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "' to the lower case: ", 21);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, p_str, size);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v17);
    }

    std::string::operator=(a4, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  v11 = (a3 + 16);
  if (v9 != v10)
  {
    quasar::RegularExpressionReplacer::apply(v11, a4, &v17);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    result = *&v17;
    *a4 = v17;
    *(a4 + 16) = v18;
  }

  return result;
}

void sub_1B5437704(_Unwind_Exception *exception_object)
{
  if (*(v2 - 73) < 0)
  {
    operator delete(*(v2 - 96));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double quasar::GenericPhraseBook::parseSynsetName(int a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2[1];
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    v10 = *a2;
    do
    {
      if (v10[v8] == 46)
      {
        ++v9;
      }

      ++v8;
    }

    while (v5 != v8);
    if (v9 == 2)
    {
      if (v5 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v5 < 0x17)
        {
          BYTE7(v23) = a2[1];
          memmove(&v22, v10, v5);
          *(&v22 + v5) = 0;
          if (*(a3 + 23) < 0)
          {
            operator delete(*a3);
          }

          *a3 = v22;
          *(a3 + 16) = v23;

          JUMPOUT(0x1B8C84820);
        }

        operator new();
      }

      goto LABEL_41;
    }

    if (v9 == 3)
    {
      v11 = std::string_view::find_last_of[abi:ne200100](a2, ".", 0xFFFFFFFFFFFFFFFFLL);
      if (a2[1] >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = a2[1];
      }

      if (v12 <= 0x7FFFFFFFFFFFFFF7)
      {
        v13 = v11;
        v14 = *a2;
        if (v12 >= 0x17)
        {
          operator new();
        }

        BYTE7(v23) = v12;
        if (v12)
        {
          memmove(&v22, v14, v12);
        }

        *(&v22 + v12) = 0;
        if (*(a3 + 23) < 0)
        {
          operator delete(*a3);
        }

        *a3 = v22;
        *(a3 + 16) = v23;
        v18 = v13 + 1;
        v19 = a2[1];
        v20 = v19 - (v13 + 1);
        if (v19 < v13 + 1)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        if (v20 <= 0x7FFFFFFFFFFFFFF7)
        {
          v21 = *a2;
          if (v20 >= 0x17)
          {
            operator new();
          }

          BYTE7(v23) = v19 - (v13 + 1);
          if (v19 != v18)
          {
            memmove(&v22, (v21 + v18), v20);
          }

          *(&v22 + v20) = 0;
          if (*(a4 + 23) < 0)
          {
            operator delete(*a4);
          }

          result = *&v22;
          *a4 = v22;
          *(a4 + 16) = v23;
          return result;
        }
      }

LABEL_41:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (quasar::gLogLevel >= 2)
  {
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
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v22);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "found invalid synset name '", 27);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, *a2, a2[1]);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "' in phrasebook", 15);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(&v22);
  }

  return result;
}

unint64_t std::string_view::find_last_of[abi:ne200100](uint64_t *a1, char *__s, unint64_t a3)
{
  v6 = *a1;
  v7 = strlen(__s);
  if (v7)
  {
    v8 = v7;
    if (a1[1] > a3)
    {
      v9 = a3 + 1;
    }

    else
    {
      v9 = a1[1];
    }

    while (v9)
    {
      if (memchr(__s, *(v6 - 1 + v9--), v8))
      {
        return v9;
      }
    }
  }

  return -1;
}

void quasar::GenericPhraseBook::getMetaForKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  quasar::PTree::PTree(v10);
  if (*(a3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(a3 + 24), *(a3 + 32));
  }

  else
  {
    v9 = *(a3 + 24);
  }

  quasar::json2Ptree(&v9);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5 < 0x7FFFFFFFFFFFFFF8)
  {
    v6 = *a2;
    if (v5 < 0x17)
    {
      v8 = v5;
      if (v5)
      {
        memmove(&__dst, v6, v5);
      }

      *(&__dst + v5) = 0;
      quasar::PTree::getStringOptional(v10, &__dst);
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

unint64_t std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>@<X0>(char *__s@<X1>, unint64_t result@<X0>, void *a3@<X8>)
{
  if (*(result + 24) == 1)
  {
    *a3 = *result;
    a3[2] = *(result + 16);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = 0;
  }

  else
  {
    result = strlen(__s);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    *(a3 + 23) = result;
    if (result)
    {
      result = memcpy(a3, __s, result);
    }

    *(a3 + v5) = 0;
  }

  return result;
}

uint64_t std::vector<std::pair<std::pair<std::string,std::string>,std::string>>::push_back[abi:ne200100](uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v10 = 0x8E38E38E38E38E39 * ((v4 - *result) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0x38E38E38E38E38ELL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0x8E38E38E38E38E39 * ((v5 - *result) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x1C71C71C71C71C7)
    {
      v13 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v13 = v11;
    }

    v22[4] = result;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::ItnOverride>>(result, v13);
    }

    v14 = 72 * v10;
    v15 = *a2;
    *(v14 + 16) = *(a2 + 2);
    *v14 = v15;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v16 = *(a2 + 24);
    *(v14 + 40) = *(a2 + 5);
    *(v14 + 24) = v16;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v17 = a2[3];
    *(v14 + 64) = *(a2 + 8);
    *(v14 + 48) = v17;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    v9 = 72 * v10 + 72;
    v18 = *(result + 8) - *result;
    v19 = v14 - v18;
    memcpy((v14 - v18), *result, v18);
    v20 = *v3;
    *v3 = v19;
    v3[1] = v9;
    v21 = v3[2];
    v3[2] = 0;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    result = std::__split_buffer<std::pair<std::pair<std::string,std::string>,std::string>>::~__split_buffer(v22);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v7;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = a2[3];
    *(v4 + 64) = *(a2 + 8);
    *(v4 + 48) = v8;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    v9 = v4 + 72;
  }

  v3[1] = v9;
  return result;
}

std::string *std::pair<std::pair<std::string,std::string>,std::string>::pair[abi:ne200100]<std::pair<std::string,std::string> const&,std::string&,0>(std::string *a1, __int128 *a2, __int128 *a3)
{
  std::pair<std::string,std::string>::pair[abi:ne200100](a1, a2);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    a1[2].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&a1[2].__r_.__value_.__l.__data_ = v5;
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t std::__tree<std::string_view>::__count_unique<std::string_view>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = 1;
    do
    {
      if ((std::less<std::string_view>::operator()[abi:ne200100](a1, a2, (v2 + 4)) & 1) == 0)
      {
        if (!std::less<std::string_view>::operator()[abi:ne200100](a1, (v2 + 4), a2))
        {
          return v5;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t std::less<std::string_view>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a3;
  v6 = *(a3 + 8);
  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(a3 + 8);
  }

  v8 = memcmp(v3, v5, v7);
  if (v4 < v6)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  if (v4 == v6)
  {
    v9 = 0;
  }

  if (v8)
  {
    v9 = v8;
  }

  return v9 >> 31;
}

uint64_t std::__tree<std::string_view>::__emplace_unique_key_args<std::string_view,std::string_view const&>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::string_view>::__find_equal<std::string_view>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::string_view>::__find_equal<std::string_view>(uint64_t a1, void *a2, uint64_t a3)
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
        if (!std::less<std::string_view>::operator()[abi:ne200100](a1, a3, (v4 + 4)))
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

      if (!std::less<std::string_view>::operator()[abi:ne200100](a1, (v8 + 4), a3))
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

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::pair<std::pair<std::string,std::string>,std::string>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__split_buffer<std::pair<std::pair<std::string,std::string>,std::string>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }

    if (*(i - 25) < 0)
    {
      operator delete(*(i - 48));
    }

    if (*(i - 49) < 0)
    {
      operator delete(*(i - 72));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char *quasar::PronTypeToString(unsigned int a1)
{
  if (a1 >= 8)
  {
    memset(v2, 0, sizeof(v2));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "PronTypeToString unexpected type");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v2);
  }

  return off_1E7C1AAD8[a1];
}

uint64_t quasar::StringToPronType(void *a1)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v2 = *(a1 + 23);
    if (v2 <= 8)
    {
      if (v2 != 3)
      {
        if (v2 != 4)
        {
          if (v2 == 8)
          {
            v3 = *a1;
            goto LABEL_27;
          }

          goto LABEL_58;
        }

        if (*a1 != 1701736270)
        {
          goto LABEL_58;
        }

        return 0;
      }

      if (*a1 != 12871 || *(a1 + 2) != 80)
      {
        goto LABEL_58;
      }

      return 1;
    }

    if (v2 != 9)
    {
      if (v2 != 10)
      {
        v9 = a1;
        if (v2 != 14)
        {
          goto LABEL_58;
        }

        goto LABEL_54;
      }

      if (*a1 != 0x68744F5F50573247 || *(a1 + 4) != 29285)
      {
        goto LABEL_58;
      }

      return 3;
    }

    if (*a1 != 0x5732505F50573247 || *(a1 + 8) != 80)
    {
      goto LABEL_58;
    }

    return 2;
  }

  if (a1[1] == 4 && **a1 == 1701736270)
  {
    return 0;
  }

  if (a1[1] == 3 && **a1 == 12871 && *(*a1 + 2) == 80)
  {
    return 1;
  }

  if (a1[1] == 9 && **a1 == 0x5732505F50573247 && *(*a1 + 8) == 80)
  {
    return 2;
  }

  if (a1[1] == 10 && **a1 == 0x68744F5F50573247 && *(*a1 + 8) == 29285)
  {
    return 3;
  }

  v7 = a1[1];
  if (v7 == 14)
  {
    v9 = *a1;
LABEL_54:
    v13 = *v9;
    v14 = *(v9 + 6);
    if (v13 == 0x7478455F50573247 && v14 == 0x5057325061727478)
    {
      return 5;
    }

    goto LABEL_58;
  }

  if (v7 == 8)
  {
    v3 = **a1;
LABEL_27:
    if (v3 == 0x4D50535F50573247)
    {
      return 4;
    }
  }

LABEL_58:
  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "G2EMB"))
  {
    return 6;
  }

  if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "G2EMB_INT8"))
  {
    memset(v16, 0, sizeof(v16));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v16, "StringToPronType unexpected string");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v16);
  }

  return 7;
}

BOOL quasar::isPronTypePhoneme(int a1)
{
  if (!a1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "type != PronType::kNone");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return a1 == 1;
}

BOOL quasar::isPronTypeWordpiece(int a1)
{
  if (!a1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "type != PronType::kNone");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  v2 = !quasar::isPronTypePhoneme(a1);
  return (a1 & 0xFFFFFFFE) != 6 && v2;
}

const char *quasar::PronTypeToSeparator(int a1)
{
  if (quasar::isPronTypePhoneme(a1))
  {
    return ".";
  }

  if (quasar::isPronTypeWordpiece(a1))
  {
    return " ";
  }

  if ((a1 & 0xFFFFFFFE) != 6)
  {
    memset(v3, 0, sizeof(v3));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "PronTypeToSeparator unexpected type");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v3);
  }

  return "";
}

uint64_t quasar::pronTypeMatchesPronRequest(int a1, int a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      return (a1 & 0xFFFFFFFE) == 6;
    }

    if (a2 == 3)
    {
      return 1;
    }

    goto LABEL_15;
  }

  if (a2)
  {
    if (a2 == 1)
    {

      return quasar::isPronTypeWordpiece(a1);
    }

LABEL_15:
    memset(v3, 0, sizeof(v3));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "Unexpected PronRequest");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v3);
  }

  return quasar::isPronTypePhoneme(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
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
    v12 = (a2 - v9) >> 2;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      result = (*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 1) + 8), *(*a3 + 8 + 16 * v9->u32[0] + 8));
      if ((result & 0x80000000) != 0)
      {
        v56 = v9->i32[0];
        v9->i32[0] = *(a2 - 1);
        goto LABEL_78;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *>(v9, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *,unsigned int *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *(a3 + 16);
    v15 = *a3 + 8;
    if (v12 >= 0x81)
    {
      v16 = v14(*(v15 + 16 * v8[v13] + 8), *(v15 + 16 * *v8 + 8));
      v17 = (*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 1) + 8), *(*a3 + 8 + 16 * v8[v13] + 8));
      if (v16 < 0)
      {
        v24 = *v8;
        if (v17 < 0)
        {
          *v8 = *(a2 - 1);
          *(a2 - 1) = v24;
        }

        else
        {
          *v8 = v8[v13];
          v8[v13] = v24;
          if (((*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 1) + 8), *(*a3 + 8 + 16 * v24 + 8)) & 0x80000000) != 0)
          {
            v25 = v8[v13];
            v8[v13] = *(a2 - 1);
            *(a2 - 1) = v25;
          }
        }
      }

      else if (v17 < 0)
      {
        v18 = v8[v13];
        v8[v13] = *(a2 - 1);
        *(a2 - 1) = v18;
        if (((*(a3 + 16))(*(*a3 + 8 + 16 * v8[v13] + 8), *(*a3 + 8 + 16 * *v8 + 8)) & 0x80000000) != 0)
        {
          v19 = *v8;
          *v8 = v8[v13];
          v8[v13] = v19;
        }
      }

      v28 = v13 - 1;
      v29 = (*(a3 + 16))(*(*a3 + 8 + 16 * v8[v13 - 1] + 8), *(*a3 + 8 + 16 * v8[1] + 8));
      v30 = (*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 2) + 8), *(*a3 + 8 + 16 * v8[v13 - 1] + 8));
      if (v29 < 0)
      {
        v33 = v8[1];
        if (v30 < 0)
        {
          v8[1] = *(a2 - 2);
          *(a2 - 2) = v33;
        }

        else
        {
          v8[1] = v8[v28];
          v8[v28] = v33;
          if (((*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 2) + 8), *(*a3 + 8 + 16 * v33 + 8)) & 0x80000000) != 0)
          {
            v34 = v8[v28];
            v8[v28] = *(a2 - 2);
            *(a2 - 2) = v34;
          }
        }
      }

      else if (v30 < 0)
      {
        v31 = v8[v28];
        v8[v28] = *(a2 - 2);
        *(a2 - 2) = v31;
        if (((*(a3 + 16))(*(*a3 + 8 + 16 * v8[v28] + 8), *(*a3 + 8 + 16 * v8[1] + 8)) & 0x80000000) != 0)
        {
          v32 = v8[1];
          v8[1] = v8[v28];
          v8[v28] = v32;
        }
      }

      v35 = v13 + 1;
      v36 = (*(a3 + 16))(*(*a3 + 8 + 16 * v8[v13 + 1] + 8), *(*a3 + 8 + 16 * v8[2] + 8));
      v37 = (*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 3) + 8), *(*a3 + 8 + 16 * v8[v13 + 1] + 8));
      if (v36 < 0)
      {
        v40 = v8[2];
        if (v37 < 0)
        {
          v8[2] = *(a2 - 3);
          *(a2 - 3) = v40;
        }

        else
        {
          v8[2] = v8[v35];
          v8[v35] = v40;
          if (((*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 3) + 8), *(*a3 + 8 + 16 * v40 + 8)) & 0x80000000) != 0)
          {
            v41 = v8[v35];
            v8[v35] = *(a2 - 3);
            *(a2 - 3) = v41;
          }
        }
      }

      else if (v37 < 0)
      {
        v38 = v8[v35];
        v8[v35] = *(a2 - 3);
        *(a2 - 3) = v38;
        if (((*(a3 + 16))(*(*a3 + 8 + 16 * v8[v35] + 8), *(*a3 + 8 + 16 * v8[2] + 8)) & 0x80000000) != 0)
        {
          v39 = v8[2];
          v8[2] = v8[v35];
          v8[v35] = v39;
        }
      }

      v42 = (*(a3 + 16))(*(*a3 + 8 + 16 * v8[v13] + 8), *(*a3 + 8 + 16 * v8[v28] + 8));
      v43 = (*(a3 + 16))(*(*a3 + 8 + 16 * v8[v35] + 8), *(*a3 + 8 + 16 * v8[v13] + 8));
      if (v42 < 0)
      {
        v48 = v8[v28];
        if (v43 < 0)
        {
          v8[v28] = v8[v35];
          v8[v35] = v48;
          v44 = v8[v13];
        }

        else
        {
          v8[v28] = v8[v13];
          v8[v13] = v48;
          v49 = (*(a3 + 16))(*(*a3 + 8 + 16 * v8[v35] + 8), *(*a3 + 8 + 16 * v48 + 8));
          v44 = v8[v13];
          if (v49 < 0)
          {
            v47 = v8[v35];
            v8[v13] = v47;
            v8[v35] = v44;
LABEL_57:
            v44 = v47;
          }
        }
      }

      else
      {
        v44 = v8[v13];
        if (v43 < 0)
        {
          v45 = v8[v35];
          v8[v13] = v45;
          v8[v35] = v44;
          v46 = (*(a3 + 16))(*(*a3 + 8 + 16 * v45 + 8), *(*a3 + 8 + 16 * v8[v28] + 8));
          v44 = v8[v13];
          if (v46 < 0)
          {
            v47 = v8[v28];
            v8[v28] = v44;
            v8[v13] = v47;
            goto LABEL_57;
          }
        }
      }

      v50 = *v8;
      *v8 = v44;
      v8[v13] = v50;
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v20 = v14(*(v15 + 16 * *v8 + 8), *(v15 + 16 * v8[v13] + 8));
    v21 = (*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 1) + 8), *(*a3 + 8 + 16 * *v8 + 8));
    if (v20 < 0)
    {
      v26 = v8[v13];
      if (v21 < 0)
      {
        v8[v13] = *(a2 - 1);
        *(a2 - 1) = v26;
LABEL_39:
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v8[v13] = *v8;
      *v8 = v26;
      if (((*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 1) + 8), *(*a3 + 8 + 16 * v26 + 8)) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      v27 = *v8;
      *v8 = *(a2 - 1);
      *(a2 - 1) = v27;
      if (a5)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      v22 = *v8;
      *v8 = *(a2 - 1);
      *(a2 - 1) = v22;
      if (((*(a3 + 16))(*(*a3 + 8 + 16 * *v8 + 8), *(*a3 + 8 + 16 * v8[v13] + 8)) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      v23 = v8[v13];
      v8[v13] = *v8;
      *v8 = v23;
      if (a5)
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    if (((*(a3 + 16))(*(*a3 + 8 + 16 * *(v8 - 1) + 8), *(*a3 + 8 + 16 * *v8 + 8)) & 0x80000000) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,LHashIter<char const*,unsigned int> &>(v8, a2, a3);
      v9 = result;
      goto LABEL_66;
    }

LABEL_61:
    v51 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,LHashIter<char const*,unsigned int> &>(v8, a2, a3);
    if ((v52 & 1) == 0)
    {
      goto LABEL_64;
    }

    v53 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *>(v8, v51, a3);
    v9 = (v51 + 1);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *>(v51 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v51;
      if (v53)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v53)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *,false>(v8, v51, a3, -v11, a5 & 1);
      v9 = (v51 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *,0>(v9, v9 + 1, &v9[1], a2 - 1, a3);
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *,0>(v9, v9 + 1, &v9[1], &v9[1] + 1, a2 - 1, a3);
    }

    goto LABEL_11;
  }

  v54 = (*(a3 + 16))(*(*a3 + 8 + 16 * v9->u32[1] + 8), *(*a3 + 8 + 16 * v9->u32[0] + 8));
  result = (*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 1) + 8), *(*a3 + 8 + 16 * v9->u32[1] + 8));
  if (v54 < 0)
  {
    v57 = v9->u32[0];
    if ((result & 0x80000000) != 0)
    {
      v9->i32[0] = *(a2 - 1);
      *(a2 - 1) = v57;
      return result;
    }

    v9->i32[0] = v9->i32[1];
    v9->i32[1] = v57;
    result = (*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 1) + 8), *(*a3 + 8 + 16 * v57 + 8));
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v56 = v9->u32[1];
    v9->i32[1] = *(a2 - 1);
LABEL_78:
    *(a2 - 1) = v56;
    return result;
  }

  if ((result & 0x80000000) != 0)
  {
    v55 = v9->u32[1];
    v9->i32[1] = *(a2 - 1);
    *(a2 - 1) = v55;
    result = (*(a3 + 16))(*(*a3 + 8 + 16 * v9->u32[1] + 8), *(*a3 + 8 + 16 * v9->u32[0] + 8));
    if ((result & 0x80000000) != 0)
    {
      *v9 = vrev64_s32(*v9);
    }
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *,0>(int *a1, int *a2, int *a3, int *a4, uint64_t a5)
{
  v10 = (*(a5 + 16))(*(*a5 + 8 + 16 * *a2 + 8), *(*a5 + 8 + 16 * *a1 + 8));
  v11 = (*(a5 + 16))(*(*a5 + 8 + 16 * *a3 + 8), *(*a5 + 8 + 16 * *a2 + 8));
  if (v10 < 0)
  {
    v14 = *a1;
    if (v11 < 0)
    {
      *a1 = *a3;
      *a3 = v14;
    }

    else
    {
      *a1 = *a2;
      *a2 = v14;
      if (((*(a5 + 16))(*(*a5 + 8 + 16 * *a3 + 8), *(*a5 + 8 + 16 * v14 + 8)) & 0x80000000) != 0)
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11 < 0)
  {
    v12 = *a2;
    *a2 = *a3;
    *a3 = v12;
    if (((*(a5 + 16))(*(*a5 + 8 + 16 * *a2 + 8), *(*a5 + 8 + 16 * *a1 + 8)) & 0x80000000) != 0)
    {
      v13 = *a1;
      *a1 = *a2;
      *a2 = v13;
    }
  }

  result = (*(a5 + 16))(*(*a5 + 8 + 16 * *a4 + 8), *(*a5 + 8 + 16 * *a3 + 8));
  if ((result & 0x80000000) != 0)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*(a5 + 16))(*(*a5 + 8 + 16 * *a3 + 8), *(*a5 + 8 + 16 * *a2 + 8));
    if ((result & 0x80000000) != 0)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*(a5 + 16))(*(*a5 + 8 + 16 * *a2 + 8), *(*a5 + 8 + 16 * *a1 + 8));
      if ((result & 0x80000000) != 0)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *,0>(int *a1, int *a2, int *a3, int *a4, int *a5, uint64_t a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *,0>(a1, a2, a3, a4, a6);
  result = (*(a6 + 16))(*(*a6 + 8 + 16 * *a5 + 8), *(*a6 + 8 + 16 * *a4 + 8));
  if ((result & 0x80000000) != 0)
  {
    v13 = *a4;
    *a4 = *a5;
    *a5 = v13;
    result = (*(a6 + 16))(*(*a6 + 8 + 16 * *a4 + 8), *(*a6 + 8 + 16 * *a3 + 8));
    if ((result & 0x80000000) != 0)
    {
      v14 = *a3;
      *a3 = *a4;
      *a4 = v14;
      result = (*(a6 + 16))(*(*a6 + 8 + 16 * *a3 + 8), *(*a6 + 8 + 16 * *a2 + 8));
      if ((result & 0x80000000) != 0)
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
        result = (*(a6 + 16))(*(*a6 + 8 + 16 * *a2 + 8), *(*a6 + 8 + 16 * *a1 + 8));
        if ((result & 0x80000000) != 0)
        {
          v16 = *a1;
          *a1 = *a2;
          *a2 = v16;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *>(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 4);
    if ((result + 4) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        result = (*(a3 + 16))(*(*a3 + 8 + 16 * v9 + 8), *(*a3 + 8 + 16 * v10 + 8));
        if ((result & 0x80000000) != 0)
        {
          v11 = *v8;
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 4) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*(a3 + 16))(*(*a3 + 8 + 16 * v11 + 8), *(*a3 + 8 + 16 * *(v4 + v12 - 4) + 8));
            v12 -= 4;
            if ((result & 0x80000000) == 0)
            {
              v13 = (v4 + v12 + 4);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v11;
        }

        v5 = v8 + 1;
        v7 += 4;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *>(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 4); v4 + 1 != a2; i = v4 + 1)
    {
      v8 = *v4;
      v7 = v4[1];
      v4 = i;
      result = (*(a3 + 16))(*(*a3 + 8 + 16 * v7 + 8), *(*a3 + 8 + 16 * v8 + 8));
      if ((result & 0x80000000) != 0)
      {
        v9 = *v4;
        v10 = v4;
        do
        {
          v11 = v10;
          v12 = *--v10;
          *v11 = v12;
          result = (*(a3 + 16))(*(*a3 + 8 + 16 * v9 + 8), *(*a3 + 8 + 16 * *(v11 - 2) + 8));
        }

        while ((result & 0x80000000) != 0);
        *v10 = v9;
      }
    }
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,LHashIter<char const*,unsigned int> &>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a1;
  if (((*(a3 + 16))(*(*a3 + 8 + 16 * v6 + 8), *(*a3 + 8 + 16 * *(a2 - 1) + 8)) & 0x80000000) != 0)
  {
    v8 = a1;
    do
    {
      v9 = v8[1];
      ++v8;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 16 * v6 + 8), *(*a3 + 8 + 16 * v9 + 8)) & 0x80000000) == 0);
  }

  else
  {
    v7 = a1 + 1;
    do
    {
      v8 = v7;
      if (v7 >= v4)
      {
        break;
      }

      ++v7;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 16 * v6 + 8), *(*a3 + 8 + 16 * *v8 + 8)) & 0x80000000) == 0);
  }

  if (v8 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 16 * v6 + 8), *(*a3 + 8 + 16 * v10 + 8)) & 0x80000000) != 0);
  }

  while (v8 < v4)
  {
    v11 = *v8;
    *v8 = *v4;
    *v4 = v11;
    do
    {
      v12 = v8[1];
      ++v8;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 16 * v6 + 8), *(*a3 + 8 + 16 * v12 + 8)) & 0x80000000) == 0);
    do
    {
      v13 = *--v4;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 16 * v6 + 8), *(*a3 + 8 + 16 * v13 + 8)) & 0x80000000) != 0);
  }

  if (v8 - 1 != a1)
  {
    *a1 = *(v8 - 1);
  }

  *(v8 - 1) = v6;
  return v8;
}

int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,LHashIter<char const*,unsigned int> &>(int *a1, int *a2, uint64_t a3)
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = (*(a3 + 16))(*(*a3 + 8 + 16 * a1[++v6] + 8), *(*a3 + 8 + 16 * v7 + 8));
  }

  while (v8 < 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 16 * v12 + 8), *(*a3 + 8 + 16 * v7 + 8)) & 0x80000000) == 0);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 16 * v11 + 8), *(*a3 + 8 + 16 * v7 + 8)) & 0x80000000) == 0);
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = v13[1];
        ++v13;
      }

      while (((*(a3 + 16))(*(*a3 + 8 + 16 * v16 + 8), *(*a3 + 8 + 16 * v7 + 8)) & 0x80000000) != 0);
      do
      {
        v17 = *--v14;
      }

      while (((*(a3 + 16))(*(*a3 + 8 + 16 * v17 + 8), *(*a3 + 8 + 16 * v7 + 8)) & 0x80000000) == 0);
    }

    while (v13 < v14);
    v10 = v13 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v8 = (*(a3 + 16))(*(*a3 + 8 + 16 * a1[1] + 8), *(*a3 + 8 + 16 * *a1 + 8));
        v9 = (*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 1) + 8), *(*a3 + 8 + 16 * a1[1] + 8));
        if ((v8 & 0x80000000) == 0)
        {
          if (v9 < 0)
          {
            v10 = a1[1];
            a1[1] = *(a2 - 1);
            *(a2 - 1) = v10;
            if (((*(a3 + 16))(*(*a3 + 8 + 16 * a1[1] + 8), *(*a3 + 8 + 16 * *a1 + 8)) & 0x80000000) != 0)
            {
              *a1 = vrev64_s32(*a1);
            }
          }

          return 1;
        }

        v17 = *a1;
        if (v9 < 0)
        {
          *a1 = *(a2 - 1);
          *(a2 - 1) = v17;
          return 1;
        }

        *a1 = a1[1];
        a1[1] = v17;
        if (((*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 1) + 8), *(*a3 + 8 + 16 * v17 + 8)) & 0x80000000) != 0)
        {
          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      if (((*(a3 + 16))(*(*a3 + 8 + 16 * *(a2 - 1) + 8), *(*a3 + 8 + 16 * *a1 + 8)) & 0x80000000) != 0)
      {
        v7 = *a1;
        *a1 = *(a2 - 1);
LABEL_6:
        *(a2 - 1) = v7;
        return 1;
      }

      return 1;
    }
  }

  v11 = (*(a3 + 16))(*(*a3 + 8 + 16 * a1[1] + 8), *(*a3 + 8 + 16 * *a1 + 8));
  v12 = a1 + 2;
  v13 = (*(a3 + 16))(*(*a3 + 8 + 16 * a1[2] + 8), *(*a3 + 8 + 16 * a1[1] + 8));
  if (v11 < 0)
  {
    v18 = *a1;
    if (v13 < 0)
    {
      *a1 = a1[2];
      a1[2] = v18;
    }

    else
    {
      v19 = a1[2];
      *a1 = a1[1];
      a1[1] = v18;
      if (((*(a3 + 16))(*(*a3 + 8 + 16 * v19 + 8), *(*a3 + 8 + 16 * v18 + 8)) & 0x80000000) != 0)
      {
        *(a1 + 1) = vrev64_s32(*(a1 + 1));
      }
    }
  }

  else if (v13 < 0)
  {
    v15 = a1[1];
    v14 = a1[2];
    v16 = *a1;
    a1[1] = v14;
    a1[2] = v15;
    if (((*(a3 + 16))(*(*a3 + 8 + 16 * v14 + 8), *(*a3 + 8 + 16 * v16 + 8)) & 0x80000000) != 0)
    {
      *a1 = vrev64_s32(*a1);
    }
  }

  v20 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v21 = 0;
  v22 = 0;
  while (1)
  {
    if (((*(a3 + 16))(*(*a3 + 8 + 16 * *v20 + 8), *(*a3 + 8 + 16 * *v12 + 8)) & 0x80000000) != 0)
    {
      v23 = *v20;
      v24 = v21;
      while (1)
      {
        *(a1 + v24 + 12) = *(a1 + v24 + 8);
        if (v24 == -8)
        {
          break;
        }

        v25 = (*(a3 + 16))(*(*a3 + 8 + 16 * v23 + 8), *(*a3 + 8 + 16 * *(a1 + v24 + 4) + 8));
        v24 -= 4;
        if ((v25 & 0x80000000) == 0)
        {
          v26 = (a1 + v24 + 12);
          goto LABEL_36;
        }
      }

      v26 = a1;
LABEL_36:
      *v26 = v23;
      if (++v22 == 8)
      {
        return v20 + 1 == a2;
      }
    }

    v12 = v20;
    v21 += 4;
    if (++v20 == a2)
    {
      return 1;
    }
  }
}

unsigned int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *,unsigned int *>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *>(a1, a4, v8, v11--);
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
        if (((*(a4 + 16))(*(*a4 + 8 + 16 * *v12 + 8), *(*a4 + 8 + 16 * *a1 + 8)) & 0x80000000) != 0)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        v16 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *>(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *>(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 2)
    {
      v10 = (a4 - result) >> 1;
      v11 = v10 + 1;
      v12 = (result + 4 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*(a2 + 16))(*(*a2 + 8 + 16 * *v12 + 8), *(*a2 + 8 + 16 * v12[1] + 8)) < 0)
      {
        ++v12;
        v11 = v13;
      }

      result = (*(a2 + 16))(*(*a2 + 8 + 16 * *v12 + 8), *(*a2 + 8 + 16 * *v5 + 8));
      if ((result & 0x80000000) == 0)
      {
        v14 = *v5;
        do
        {
          v15 = v12;
          *v5 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 4 * v16);
          if (2 * v11 + 2 < a3 && (*(a2 + 16))(*(*a2 + 8 + 16 * *v12 + 8), *(*a2 + 8 + 16 * v12[1] + 8)) < 0)
          {
            ++v12;
            v16 = 2 * v11 + 2;
          }

          result = (*(a2 + 16))(*(*a2 + 8 + 16 * *v12 + 8), *(*a2 + 8 + 16 * v14 + 8));
          v5 = v15;
          v11 = v16;
        }

        while ((result & 0x80000000) == 0);
        *v15 = v14;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *>(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = v8[2];
      v12 = v8 + 2;
      if ((*(a2 + 16))(*(*a2 + 8 + 16 * *(v12 - 1) + 8), *(*a2 + 8 + 16 * v13 + 8)) >= 0)
      {
        v6 = v10;
      }

      else
      {
        v9 = v12;
        v6 = v11;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<char const*,unsigned int> &,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 4 * (v4 >> 1));
    v9 = (a2 - 4);
    result = (*(a3 + 16))(*(*a3 + 8 + 16 * *v8 + 8), *(*a3 + 8 + 16 * *(a2 - 4) + 8));
    if ((result & 0x80000000) != 0)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 4 * v7);
        result = (*(a3 + 16))(*(*a3 + 8 + 16 * *v8 + 8), *(*a3 + 8 + 16 * v10 + 8));
        v9 = v11;
      }

      while ((result & 0x80000000) != 0);
      *v11 = v10;
    }
  }

  return result;
}

void sub_1B543A6A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v19 = v18;
  MEMORY[0x1B8C85350](v19, 0x20C40960023A9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B543B094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char a11, uint64_t a12, uint64_t a13, char *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  __p = &a11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void **std::unique_ptr<quasar::Munger>::reset[abi:ne200100](void ***a1, void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    quasar::Munger::~Munger(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

uint64_t quasar::ExhaustiveEnumerator::ExhaustiveEnumerator(uint64_t a1, __int128 *a2, quasar::PTree *a3)
{
  v5 = quasar::NameEnumerator::NameEnumerator(a1, a2);
  *v5 = &unk_1F2D12C40;
  v5[4] = 0x138800000007;
  v5[5] = 0;
  v5[6] = 0;
  v5[7] = 0;
  v6 = quasar::PTree::begin(a3);
  v7 = quasar::PTree::end(a3);
  if (v6 != v7)
  {
    while (*(v6 + 23) < 0)
    {
      if (*(v6 + 8) == 19)
      {
        v12 = **v6 == 0x6C2D657361726870 && *(*v6 + 8) == 0x696C2D6874676E65;
        if (v12 && *(*v6 + 11) == 0x74696D696C2D6874)
        {
          goto LABEL_47;
        }
      }

      if (*(v6 + 8) == 20)
      {
        v14 = **v6 == 0x2D6D756E2D78616DLL && *(*v6 + 8) == 0x746172656D756E65;
        if (v14 && *(*v6 + 16) == 1936617321)
        {
          goto LABEL_48;
        }
      }

      if (*(v6 + 8) == 13)
      {
        v9 = *v6;
LABEL_33:
        v16 = *v9;
        v17 = *(v9 + 5);
        if (v16 == 0x757165732D676174 && v17 == 0x7365636E65757165)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "tag-sequences");
          quasar::PTree::getChild(a3, __p);
        }
      }

LABEL_49:
      v6 += 88;
      if (v6 == v7)
      {
        return a1;
      }
    }

    v8 = *(v6 + 23);
    v9 = v6;
    if (v8 == 13)
    {
      goto LABEL_33;
    }

    if (v8 != 19)
    {
      if (v8 != 20)
      {
        goto LABEL_49;
      }

      v10 = *v6 == 0x2D6D756E2D78616DLL && *(v6 + 8) == 0x746172656D756E65;
      if (!v10 || *(v6 + 16) != 1936617321)
      {
        goto LABEL_49;
      }

LABEL_48:
      String = quasar::PTree::getString((v6 + 24));
      *(a1 + 36) = std::stoi(String, 0, 10);
      goto LABEL_49;
    }

    if (*v6 != 0x6C2D657361726870 || *(v6 + 8) != 0x696C2D6874676E65 || *(v6 + 11) != 0x74696D696C2D6874)
    {
      goto LABEL_49;
    }

LABEL_47:
    v21 = quasar::PTree::getString((v6 + 24));
    *(a1 + 32) = std::stoi(v21, 0, 10);
    goto LABEL_49;
  }

  return a1;
}

void sub_1B543B540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  quasar::NameEnumerator::~NameEnumerator(v21);
  _Unwind_Resume(a1);
}

void *quasar::NameEnumerator::NameEnumerator(void *a1, __int128 *a2)
{
  *a1 = &unk_1F2D13520;
  v3 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

void **std::vector<std::pair<int,std::vector<std::string>>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = (v4 - *result) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *result;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,std::vector<std::string>>>>(result, v10);
    }

    v11 = 32 * v7;
    *v11 = *a2;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 8) = 0;
    *(v11 + 8) = *(a2 + 8);
    *(v11 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v6 = 32 * v7 + 32;
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
    result = std::__split_buffer<std::pair<int,std::vector<std::string>>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 2) = 0;
    *(v4 + 3) = 0;
    *(v4 + 1) = 0;
    *(v4 + 8) = *(a2 + 8);
    *(v4 + 3) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v6 = (v4 + 32);
  }

  v3[1] = v6;
  return result;
}

void quasar::ExhaustiveEnumerator::addExhaustiveEnumerations(uint64_t a1, __int128 **a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4 && *(a3 + 16) <= *(a1 + 36))
  {
    if (0xCCCCCCCCCCCCCCCDLL * (v4 - v3) <= *(a1 + 32))
    {
      v11 = 0u;
      v12 = 0u;
      v10 = 0u;
      memset(&v13, 0, sizeof(v13));
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v13, 1uLL);
    }

    v10 = 0uLL;
    *&v11 = 0;
    std::to_string(&v13, *(v3 + 12));
    std::vector<std::string>::push_back[abi:ne200100](&v10, &v13);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    v8 = *a2;
    v7 = a2[1];
    while (v8 != v7)
    {
      std::vector<std::string>::push_back[abi:ne200100](&v10, v8);
      std::__tree<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>::__emplace_unique_key_args<std::vector<std::string>,std::vector<std::string> const&>(a3, &v10);
      v9 = (*(&v10 + 1) - 24);
      if (*(*(&v10 + 1) - 1) < 0)
      {
        operator delete(*v9);
      }

      *(&v10 + 1) = v9;
      v8 += 5;
    }

    v13.__r_.__value_.__r.__words[0] = &v10;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
  }
}

void sub_1B543BB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  __p = &a18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void quasar::ExhaustiveEnumerator::addEnumerations(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*(a1 + 40) == *(a1 + 48))
  {
    v7 = *(*a1 + 40);

    v7();
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    quasar::NameEnumerator::addSpecEnumerations(a1, (a1 + 40), a2, 1, &v9);
    v5 = v9;
    for (i = v10; v5 != i; v5 += 3)
    {
      memset(v8, 0, sizeof(v8));
      std::vector<quasar::LmeDataFactoryBase::Word>::__init_with_size[abi:ne200100]<quasar::LmeDataFactoryBase::Word*,quasar::LmeDataFactoryBase::Word*>(v8, *v5, v5[1], 0xCCCCCCCCCCCCCCCDLL * ((v5[1] - *v5) >> 4));
      (*(*a1 + 40))(a1, v8, a3);
      v12 = v8;
      std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&v12);
    }

    v8[0] = &v9;
    std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__destroy_vector::operator()[abi:ne200100](v8);
  }
}

void sub_1B543BD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void quasar::ExhaustiveEnumerator::~ExhaustiveEnumerator(void **this)
{
  *this = &unk_1F2D12C40;
  v2 = this + 5;
  std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  quasar::NameEnumerator::~NameEnumerator(this);
}

{
  *this = &unk_1F2D12C40;
  v2 = this + 5;
  std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  quasar::NameEnumerator::~NameEnumerator(this);
  MEMORY[0x1B8C85350]();
}

uint64_t std::__tree<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>::__emplace_unique_key_args<std::vector<std::string>,std::vector<std::string> const&>(uint64_t a1, void *a2)
{
  result = *std::__tree<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>::__find_equal<std::vector<std::string>>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::vector<std::string>>::__construct_node<std::vector<std::string> const&>();
  }

  return result;
}

void *std::__tree<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>::__find_equal<std::vector<std::string>>(uint64_t a1, void *a2, void *a3)
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
        if (!quasar::NameEnumerator::EnumComparator::operator()(a1, a3, v4 + 4))
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

      if (!quasar::NameEnumerator::EnumComparator::operator()(a1, v8 + 4, a3))
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

uint64_t quasar::NameEnumerator::EnumComparator::operator()(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = *a2 + 24;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(&v13, v5, v4, 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3));
  v6 = a3[1];
  v7 = *a3 + 24;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(&v10, v7, v6, 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3));
  v8 = std::__lexicographical_compare[abi:ne200100]<std::string const*,std::string const*,std::string const*,std::string const*,std::__identity,std::__identity,std::__less<void,void>>(v13, v14, v10, v11);
  v16 = &v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v16);
  v10 = &v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
  return v8;
}

void sub_1B543C034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  *(v12 - 24) = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v12 - 24));
  a9 = &a12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,std::vector<std::string>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::pair<int,std::vector<std::string>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::pair<int,std::vector<std::string>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<int,std::vector<std::string>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    v4 = (i - 24);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  }
}

uint64_t std::deque<std::vector<int>>::~deque[abi:ne200100](void *a1)
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
    v7 = *v6;
    v8 = *v6 + 24 * (v5 % 0xAA);
    v9 = v2[(a1[5] + v5) / 0xAA] + 24 * ((a1[5] + v5) % 0xAA);
    if (v8 != v9)
    {
      do
      {
        v10 = *v8;
        if (*v8)
        {
          *(v8 + 8) = v10;
          operator delete(v10);
          v7 = *v6;
        }

        v8 += 24;
        if (v8 - v7 == 4080)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 85;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 170;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::~__split_buffer(a1);
}

uint64_t TCollation::setCollation(TCollation *this)
{
  v3 = this + 16;
  v2 = *(this + 2);
  *(this + 4) = *(v3 + 1);
  if (v2)
  {
    MEMORY[0x1B8C85310](v2, 0x1000C8052888210);
  }

  *(this + 2) = 0;
  *this = 0;
  result = *(this + 1);
  if (result)
  {
    result = MEMORY[0x1B8C85310](result, 0x1000C8052888210);
  }

  *(this + 1) = 0;
  return result;
}

void TCollation::TCollation(TCollation *this)
{
  *(this + 5) = 0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  TCollation::setCollation(this);
}

void TCollation::setCollation(TCollation *this, TInputStream *a2)
{
  TCollation::setCollation(this);
  if (TInputStream::verifyHeader(a2, "Collation", &pCollationVersion, 1))
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "");
    TException::TException(v24, &v21);
    v24[0].__vftable = &unk_1F2D00400;
    if (v25 >= 0)
    {
      v7 = &v24[1];
    }

    else
    {
      v7 = v24[1].__vftable;
    }

    conditionalAssert(v7, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/collation.cpp", 176);
    TException::~TException(v24);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v24, "");
    TException::TException(exception, v24);
    *exception = &unk_1F2D00400;
  }

  TFileObjectParser::TFileObjectParser(v24, a2);
  v4 = v24[0].__vftable;
  v21 = dword_1B5AFFF10;
  v22 = xmmword_1B5AE5400;
  v23 = -1;
  if (TFileObject::verify(v24[0].__vftable, &v21, 1, 1))
  {
    std::string::basic_string[abi:ne200100]<0>(v15, "");
    TException::TException(&v18, v15);
    v18.__vftable = &unk_1F2D00428;
    if (v20 >= 0)
    {
      v9 = &v19;
    }

    else
    {
      v9 = v19;
    }

    conditionalAssert(v9, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/collation.cpp", 186);
    TException::~TException(&v18);
    if (v16 < 0)
    {
      operator delete(v15[0].__vftable);
    }

    v10 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v18, "");
    TException::TException(v10, &v18);
    *v10 = &unk_1F2D00428;
  }

  Attribute = TFileObject::getAttribute(v4, dword_1B5AFFF10);
  v6 = Attribute;
  if (Attribute)
  {
    v18.__vftable = &unk_1B5AFFF08;
    v19 = xmmword_1B5AFFEF0;
    v20 = -1;
    if (!TFileObject::verify(Attribute, &v18, 1, 1))
    {
      TCollation::initSerializedTable(this, v6);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "");
    TException::TException(v15, __p);
    v15[0].__vftable = &unk_1F2D00428;
    if (v17 >= 0)
    {
      v11 = &v15[1];
    }

    else
    {
      v11 = v15[1].__vftable;
    }

    conditionalAssert(v11, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/collation.cpp", 194);
    TException::~TException(v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v12 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v15, "");
    TException::TException(v12, v15);
    *v12 = &unk_1F2D00428;
  }

  TFileObjectParser::~TFileObjectParser(v24);
}

void sub_1B543C860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::exception a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v36 & 1) == 0)
    {
LABEL_6:
      TFileObjectParser::~TFileObjectParser((v37 - 112));
      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v35);
  goto LABEL_6;
}

void TCollation::~TCollation(TCollation *this)
{
  TCollation::setCollation(this);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

void TCollation::initSerializedTable(TCollation *this, const TFileObject *a2)
{
  v21 = v23;
  v22 = xmmword_1B5AE2110;
  v23[1024] = 1;
  for (i = *(a2 + 3); i; i = *(i + 16))
  {
    v18 = &unk_1B5AFFF08;
    v19 = vdupq_n_s64(1uLL);
    v20 = -1;
    if (TFileObject::verify(i, &v18, 1, 1))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "");
      TException::TException(v16, __p);
      v16[0].__vftable = &unk_1F2D00428;
      if (v17 >= 0)
      {
        v10 = &v16[1];
      }

      else
      {
        v10 = v16[1].__vftable;
      }

      conditionalAssert(v10, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/collation.cpp", 108);
      TException::~TException(v16);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v16, "");
      TException::TException(exception, v16);
      *exception = &unk_1F2D00428;
    }

    if (*this >= 0xFFFFuLL)
    {
      tknPrintf("Error: Invalid collation table. Should have %llu classes of characters/strings max.\n", 0xFFFFLL);
      std::string::basic_string[abi:ne200100]<0>(__p, "");
      TException::TException(v16, __p);
      v16[0].__vftable = &unk_1F2D00428;
      if (v17 >= 0)
      {
        v12 = &v16[1];
      }

      else
      {
        v12 = v16[1].__vftable;
      }

      conditionalAssert(v12, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/collation.cpp", 114);
      TException::~TException(v16);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      v13 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v16, "");
      TException::TException(v13, v16);
      *v13 = &unk_1F2D00428;
    }

    for (j = *(i + 24); j; j = *(j + 2))
    {
      if (TFileObject::verify(j, 0, 0))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        TException::TException(v16, __p);
        v16[0].__vftable = &unk_1F2D00428;
        if (v17 >= 0)
        {
          v8 = &v16[1];
        }

        else
        {
          v8 = v16[1].__vftable;
        }

        conditionalAssert(v8, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/collation.cpp", 121);
        TException::~TException(v16);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }

        v9 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v16, "");
        TException::TException(v9, v16);
        *v9 = &unk_1F2D00428;
      }

      v5 = 0;
      v6 = *(j + 3);
        ;
      }

      TBuffer<wchar_t>::insert(&v21, *(&v22 + 1), v6, v5 - 1);
      LODWORD(v16[0].__vftable) = 0;
      TBuffer<wchar_t>::insert(&v21, *(&v22 + 1), v16, 1uLL);
    }

    LODWORD(v16[0].__vftable) = 0;
    TBuffer<wchar_t>::insert(&v21, *(&v22 + 1), v16, 1uLL);
    ++*this;
  }

  operator new[]();
}

void sub_1B543CEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      if (LOBYTE(STACK[0x478]) == 1 && a24 != v26 && a24 != 0)
      {
        MEMORY[0x1B8C85310]();
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

uint64_t TCollation::collateCharSlow(uint64_t a1, unsigned int *a2, unint64_t *a3)
{
  *a3 = 1;
  result = *a2;
  v5 = *(a1 + 16);
  if (WORD1(result))
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    result = *(v5 + 4 * result);
  }

  v9 = a1 + 24;
  v7 = *(a1 + 24);
  v8 = *(v9 + 8);
  v10 = v8 - v7;
  if (v8 != v7)
  {
    v11 = 0;
    v12 = v10 >> 4;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v13 = 1;
    do
    {
      v14 = (v7 + 16 * v11);
      v15 = **v14;
      if (v15)
      {
        v16 = (*v14 + 4);
        v17 = a2;
        do
        {
          v18 = *v17;
          if (!*v17)
          {
            break;
          }

          if (v15 != v18)
          {
            if (v15 > v18)
            {
              return result;
            }

            goto LABEL_20;
          }

          ++v17;
          v19 = *v16++;
          v15 = v19;
        }

        while (v19);
      }

      else
      {
        v17 = a2;
      }

      v20 = (v17 - a2) >> 2;
      if (v20 > v13)
      {
        *a3 = v20;
        result = v14[2];
        v13 = v20;
      }

LABEL_20:
      ++v11;
    }

    while (v11 != v12);
  }

  return result;
}

uint64_t TCollation::collprefixcmp(void *a1, int *a2, uint64_t a3)
{
  v6 = 0;
  while (1)
  {
    v8 = *a2++;
    v7 = v8;
    if (!v8)
    {
      break;
    }

    v16 = 1;
    v9 = (a3 + 4 * v6);
    v10 = *v9;
    v11 = a1[3] == a1[4] || v10 == 0;
    if (v11 || !v9[1])
    {
      v13 = a1[2];
      if (HIWORD(v10))
      {
        v14 = 1;
      }

      else
      {
        v14 = v13 == 0;
      }

      if (!v14)
      {
        v10 = *(v13 + 4 * v10);
      }

      v12 = 1;
    }

    else
    {
      v10 = TCollation::collateCharSlow(a1, v9, &v16);
      v12 = v16;
    }

    v6 += v12;
    result = v7 - v10;
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t TCollation::collate(void *a1, unsigned int *a2, uint64_t a3)
{
  result = *a2;
  if (result)
  {
    v7 = 0;
    do
    {
      v11 = 0;
      if (a1[3] == a1[4] || (v8 = &a2[v7], !v8[1]))
      {
        if (!WORD1(result))
        {
          v10 = a1[2];
          if (v10)
          {
            LODWORD(result) = *(v10 + 4 * result);
          }
        }

        v9 = 1;
      }

      else
      {
        LODWORD(result) = TCollation::collateCharSlow(a1, v8, &v11);
        v9 = v11;
      }

      v12 = result;
      TBuffer<wchar_t>::insert(a3, *(a3 + 16), &v12, 1uLL);
      v7 += v9;
      result = a2[v7];
    }

    while (result);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<wchar_t const*,wchar_t>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*,false>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 2;
  v86 = a2 - 1;
  v87 = a2 - 6;
  v88 = a2 - 4;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        result = (*a3)(a2 - 2, v10);
        if (result)
        {
          v81 = *v10;
          *v10 = *(a2 - 2);
          *(a2 - 2) = v81;
          LODWORD(v81) = *(v10 + 8);
          *(v10 + 8) = *(a2 - 2);
          *(a2 - 2) = v81;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v74 = (*a3)((v10 + 16), v10);
      result = (*a3)(a2 - 2, (v10 + 16));
      if (v74)
      {
        v76 = (v10 + 8);
        v75 = *v10;
        if (result)
        {
          *v10 = *(a2 - 2);
        }

        else
        {
          *v10 = *(v10 + 16);
          *(v10 + 16) = v75;
          v76 = (v10 + 24);
          v84 = *(v10 + 8);
          *(v10 + 8) = *(v10 + 24);
          *(v10 + 24) = v84;
          result = (*a3)(a2 - 2, (v10 + 16));
          if (!result)
          {
            return result;
          }

          v75 = *(v10 + 16);
          *(v10 + 16) = *(a2 - 2);
        }

        *(a2 - 2) = v75;
      }

      else
      {
        if (!result)
        {
          return result;
        }

        v82 = *(v10 + 16);
        *(v10 + 16) = *(a2 - 2);
        *(a2 - 2) = v82;
        LODWORD(v82) = *(v10 + 24);
        v86 = (v10 + 24);
        *(v10 + 24) = *(a2 - 2);
        *(a2 - 2) = v82;
        result = (*a3)((v10 + 16), v10);
        if (!result)
        {
          return result;
        }

        v83 = *v10;
        *v10 = *(v10 + 16);
        *(v10 + 16) = v83;
        v76 = (v10 + 8);
      }

      v85 = *v76;
      *v76 = *v86;
      *v86 = v85;
      return result;
    }

    if (v13 == 4)
    {
      break;
    }

    if (v13 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*,0>(v10, (v10 + 16), (v10 + 32), (v10 + 48), a3);
      result = (*a3)(a2 - 2, (v10 + 48));
      if (result)
      {
        v77 = *(v10 + 48);
        *(v10 + 48) = *(a2 - 2);
        *(a2 - 2) = v77;
        LODWORD(v77) = *(v10 + 56);
        *(v10 + 56) = *(a2 - 2);
        *(a2 - 2) = v77;
        result = (*a3)((v10 + 48), (v10 + 32));
        if (result)
        {
          v78 = *(v10 + 32);
          *(v10 + 32) = *(v10 + 48);
          *(v10 + 48) = v78;
          LODWORD(v78) = *(v10 + 40);
          *(v10 + 40) = *(v10 + 56);
          *(v10 + 56) = v78;
          result = (*a3)((v10 + 32), (v10 + 16));
          if (result)
          {
            v79 = *(v10 + 16);
            *(v10 + 16) = *(v10 + 32);
            *(v10 + 32) = v79;
            LODWORD(v79) = *(v10 + 24);
            *(v10 + 24) = *(v10 + 40);
            *(v10 + 40) = v79;
            result = (*a3)((v10 + 16), v10);
            if (result)
            {
              v80 = *v10;
              *v10 = *(v10 + 16);
              *(v10 + 16) = v80;
              LODWORD(v80) = *(v10 + 8);
              *(v10 + 8) = *(v10 + 24);
              *(v10 + 24) = v80;
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

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(v10, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(v10, a2, a3);
      }
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*,std::pair<wchar_t const*,wchar_t>*>(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = v10 + 16 * (v13 >> 1);
    v15 = *a3;
    if (v13 >= 0x81)
    {
      v16 = v15((v10 + 16 * (v13 >> 1)), v10);
      v17 = (*a3)(a2 - 2, v14);
      if (v16)
      {
        v19 = (v8 + 8);
        v18 = *v8;
        if (v17)
        {
          *v8 = *v9;
          goto LABEL_28;
        }

        *v8 = *v14;
        *v14 = v18;
        v19 = (v14 + 8);
        v30 = *(v8 + 8);
        *(v8 + 8) = *(v14 + 8);
        *(v14 + 8) = v30;
        if ((*a3)(a2 - 2, v14))
        {
          v18 = *v14;
          *v14 = *v9;
LABEL_28:
          *v9 = v18;
          v25 = a2 - 1;
LABEL_29:
          v31 = *v19;
          *v19 = *v25;
          *v25 = v31;
        }
      }

      else if (v17)
      {
        v24 = *v14;
        *v14 = *(a2 - 2);
        *(a2 - 2) = v24;
        v25 = (v14 + 8);
        LODWORD(v24) = *(v14 + 8);
        *(v14 + 8) = *(a2 - 2);
        *(a2 - 2) = v24;
        if ((*a3)(v14, v8))
        {
          v26 = *v8;
          *v8 = *v14;
          v19 = (v8 + 8);
          *v14 = v26;
          goto LABEL_29;
        }
      }

      v32 = (v14 - 16);
      v33 = (*a3)((v14 - 16), (v8 + 16));
      v34 = (*a3)(v88, (v14 - 16));
      if (v33)
      {
        v35 = *(v8 + 16);
        v36 = (v8 + 24);
        if (v34)
        {
          *(v8 + 16) = *v88;
          *v88 = v35;
          goto LABEL_41;
        }

        *(v8 + 16) = *v32;
        *v32 = v35;
        v41 = *v36;
        *v36 = *(v14 - 8);
        *(v14 - 8) = v41;
        if ((*a3)(v88, (v14 - 16)))
        {
          v42 = *v32;
          *v32 = *v88;
          *v88 = v42;
          v36 = (v14 - 8);
LABEL_41:
          v38 = a2 - 3;
LABEL_42:
          v43 = *v36;
          *v36 = *v38;
          *v38 = v43;
        }
      }

      else if (v34)
      {
        v37 = *v32;
        *v32 = *(a2 - 4);
        *(a2 - 4) = v37;
        v38 = (v14 - 8);
        LODWORD(v37) = *(v14 - 8);
        *(v14 - 8) = *(a2 - 6);
        *(a2 - 6) = v37;
        if ((*a3)((v14 - 16), (v8 + 16)))
        {
          v39 = *(v8 + 16);
          *(v8 + 16) = *v32;
          *v32 = v39;
          v36 = (v8 + 24);
          goto LABEL_42;
        }
      }

      v44 = (v14 + 16);
      v45 = (*a3)((v14 + 16), (v8 + 32));
      v46 = (*a3)(v87, (v14 + 16));
      if (v45)
      {
        v47 = *(v8 + 32);
        v48 = (v8 + 40);
        if (v46)
        {
          *(v8 + 32) = *v87;
          *v87 = v47;
          goto LABEL_51;
        }

        *(v8 + 32) = *v44;
        *v44 = v47;
        v52 = *v48;
        *v48 = *(v14 + 24);
        *(v14 + 24) = v52;
        if ((*a3)(v87, (v14 + 16)))
        {
          v53 = *v44;
          *v44 = *v87;
          *v87 = v53;
          v48 = (v14 + 24);
LABEL_51:
          v50 = a2 - 5;
LABEL_52:
          v54 = *v48;
          *v48 = *v50;
          *v50 = v54;
        }
      }

      else if (v46)
      {
        v49 = *v44;
        *v44 = *(a2 - 6);
        *(a2 - 6) = v49;
        v50 = (v14 + 24);
        LODWORD(v49) = *(v14 + 24);
        *(v14 + 24) = *(a2 - 10);
        *(a2 - 10) = v49;
        if ((*a3)((v14 + 16), (v8 + 32)))
        {
          v51 = *(v8 + 32);
          *(v8 + 32) = *v44;
          *v44 = v51;
          v48 = (v8 + 40);
          goto LABEL_52;
        }
      }

      v55 = (*a3)(v14, (v14 - 16));
      v56 = (*a3)((v14 + 16), v14);
      if (v55)
      {
        v57 = *v32;
        if (v56)
        {
          *v32 = *v44;
          *v44 = v57;
          v58 = (v14 + 24);
          v59 = *v14;
          v60 = (v14 - 8);
          goto LABEL_61;
        }

        *v32 = *v14;
        *v14 = v57;
        v65 = *(v14 - 8);
        *(v14 - 8) = *(v14 + 8);
        *(v14 + 8) = v65;
        v66 = (*a3)((v14 + 16), v14);
        v59 = *v14;
        if (v66)
        {
          v67 = *v44;
          *v14 = *v44;
          *v44 = v59;
          v58 = (v14 + 24);
          v59 = v67;
          v60 = (v14 + 8);
LABEL_61:
          v62 = v58;
LABEL_62:
          v68 = *v60;
          *v60 = *v62;
          *v62 = v68;
        }
      }

      else
      {
        v59 = *v14;
        if (v56)
        {
          *v14 = *v44;
          *v44 = v59;
          v62 = (v14 + 8);
          v61 = *(v14 + 8);
          *(v14 + 8) = *(v14 + 24);
          *(v14 + 24) = v61;
          v63 = (*a3)(v14, (v14 - 16));
          v59 = *v14;
          if (v63)
          {
            v64 = *v32;
            *v32 = v59;
            v60 = (v14 - 8);
            *v14 = v64;
            v59 = v64;
            goto LABEL_62;
          }
        }
      }

      v69 = *v8;
      *v8 = v59;
      v23 = (v8 + 8);
      *v14 = v69;
      v29 = (v14 + 8);
LABEL_64:
      v70 = *v23;
      *v23 = *v29;
      *v29 = v70;
      goto LABEL_65;
    }

    v20 = v15(v10, (v10 + 16 * (v13 >> 1)));
    v21 = (*a3)(a2 - 2, v10);
    if (v20)
    {
      v23 = (v14 + 8);
      v22 = *v14;
      if (v21)
      {
        *v14 = *v9;
LABEL_38:
        *v9 = v22;
        v29 = a2 - 1;
        goto LABEL_64;
      }

      *v14 = *v10;
      *v10 = v22;
      v23 = (v10 + 8);
      v40 = *(v14 + 8);
      *(v14 + 8) = *(v10 + 8);
      *(v10 + 8) = v40;
      if ((*a3)(a2 - 2, v10))
      {
        v22 = *v10;
        *v10 = *v9;
        goto LABEL_38;
      }
    }

    else if (v21)
    {
      v27 = *v10;
      *v10 = *(a2 - 2);
      *(a2 - 2) = v27;
      LODWORD(v27) = *(v10 + 8);
      *(v10 + 8) = *(a2 - 2);
      *(a2 - 2) = v27;
      if ((*a3)(v10, v14))
      {
        v28 = *v14;
        *v14 = *v10;
        *v10 = v28;
        v23 = (v14 + 8);
        v29 = (v10 + 8);
        goto LABEL_64;
      }
    }

LABEL_65:
    if ((a5 & 1) == 0 && ((*a3)((v8 - 16), v8) & 1) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<wchar_t const*,wchar_t> *,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&)>(v8, a2, a3);
      v10 = result;
      goto LABEL_72;
    }

    v71 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<wchar_t const*,wchar_t> *,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&)>(v8, a2, a3);
    if ((v72 & 1) == 0)
    {
      goto LABEL_70;
    }

    v73 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(v8, v71, a3);
    v10 = (v71 + 2);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>((v71 + 2), a2, a3);
    if (result)
    {
      a4 = -v12;
      a2 = v71;
      if (v73)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v73)
    {
LABEL_70:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*,false>(v8, v71, a3, -v12, a5 & 1);
      v10 = (v71 + 2);
LABEL_72:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*,0>(v10, (v10 + 16), (v10 + 32), a2 - 2, a3);
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (**a5)(uint64_t *, uint64_t *))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    v13 = (a1 + 1);
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      v15 = (a3 + 1);
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v12;
    v13 = (a2 + 1);
    v17 = *(a1 + 2);
    *(a1 + 2) = *(a2 + 2);
    *(a2 + 2) = v17;
    if ((*a5)(a3, a2))
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v14 = *a2;
    *a2 = *a3;
    *a3 = v14;
    v15 = (a2 + 1);
    LODWORD(v14) = *(a2 + 2);
    *(a2 + 2) = *(a3 + 2);
    *(a3 + 2) = v14;
    if ((*a5)(a2, a1))
    {
      v16 = *a1;
      *a1 = *a2;
      v13 = (a1 + 1);
      *a2 = v16;
LABEL_10:
      v18 = *v13;
      *v13 = *v15;
      *v15 = v18;
    }
  }

  result = (*a5)(a4, a3);
  if (result)
  {
    v20 = *a3;
    *a3 = *a4;
    *a4 = v20;
    LODWORD(v20) = *(a3 + 2);
    *(a3 + 2) = *(a4 + 2);
    *(a4 + 2) = v20;
    result = (*a5)(a3, a2);
    if (result)
    {
      v21 = *a2;
      *a2 = *a3;
      *a3 = v21;
      LODWORD(v21) = *(a2 + 2);
      *(a2 + 2) = *(a3 + 2);
      *(a3 + 2) = v21;
      result = (*a5)(a2, a1);
      if (result)
      {
        v22 = *a1;
        *a1 = *a2;
        *a2 = v22;
        LODWORD(v22) = *(a1 + 2);
        *(a1 + 2) = *(a2 + 2);
        *(a2 + 2) = v22;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void))
{
  if (result != a2)
  {
    v16 = v3;
    v17 = v4;
    v6 = result;
    v7 = (result + 16);
    if ((result + 16) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v15 = *v10;
          v12 = v9;
          while (1)
          {
            v13 = v6 + v12;
            *(v13 + 16) = *(v6 + v12);
            *(v13 + 24) = *(v6 + v12 + 8);
            if (!v12)
            {
              break;
            }

            v12 -= 16;
            result = (*a3)(&v15, v12 + v6);
            if ((result & 1) == 0)
            {
              v14 = v6 + v12 + 16;
              goto LABEL_10;
            }
          }

          v14 = v6;
LABEL_10:
          *v14 = v15;
          *(v14 + 8) = DWORD2(v15);
        }

        v7 = v10 + 1;
        v9 += 16;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void))
{
  if (result != a2)
  {
    v13 = v3;
    v14 = v4;
    v6 = result;
    v7 = (result + 16);
    if ((result + 16) != a2)
    {
      v9 = result - 16;
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v12 = *v6;
          v11 = v9;
          do
          {
            *(v11 + 32) = *(v11 + 16);
            *(v11 + 40) = *(v11 + 24);
            result = (*a3)(&v12, v11);
            v11 -= 16;
          }

          while ((result & 1) != 0);
          *(v11 + 32) = v12;
          *(v11 + 40) = DWORD2(v12);
        }

        v7 = v6 + 1;
        v9 += 16;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<wchar_t const*,wchar_t> *,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&)>(uint64_t *a1, unint64_t a2, uint64_t (**a3)(__int128 *, uint64_t *))
{
  v4 = a2;
  v11 = *a1;
  if ((*a3)(&v11, (a2 - 16)))
  {
    v6 = a1;
    do
    {
      v6 += 2;
    }

    while (((*a3)(&v11, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 2;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v11, v7);
      v7 = v6 + 2;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 16;
    }

    while (((*a3)(&v11, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    *v6 = *v4;
    *v4 = v9;
    LODWORD(v9) = *(v6 + 2);
    *(v6 + 2) = *(v4 + 8);
    *(v4 + 8) = v9;
    do
    {
      v6 += 2;
    }

    while (!(*a3)(&v11, v6));
    do
    {
      v4 -= 16;
    }

    while (((*a3)(&v11, v4) & 1) != 0);
  }

  if (v6 - 2 != a1)
  {
    *a1 = *(v6 - 2);
    *(a1 + 2) = *(v6 - 2);
  }

  *(v6 - 2) = v11;
  *(v6 - 2) = DWORD2(v11);
  return v6;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<wchar_t const*,wchar_t> *,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&)>(uint64_t *a1, unint64_t a2, uint64_t (**a3)(uint64_t *, __int128 *))
{
  v6 = 0;
  v12 = *a1;
  do
  {
    v6 += 2;
  }

  while (((*a3)(&a1[v6], &v12) & 1) != 0);
  v7 = &a1[v6];
  if (v6 == 2)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 16;
    }

    while (((*a3)(a2, &v12) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 16;
    }

    while (!(*a3)(a2, &v12));
  }

  v8 = &a1[v6];
  if (v7 < a2)
  {
    v9 = a2;
    do
    {
      v10 = *v8;
      *v8 = *v9;
      *v9 = v10;
      LODWORD(v10) = *(v8 + 2);
      *(v8 + 2) = *(v9 + 8);
      *(v9 + 8) = v10;
      do
      {
        ++v8;
      }

      while (((*a3)(v8, &v12) & 1) != 0);
      do
      {
        v9 -= 16;
      }

      while (!(*a3)(v9, &v12));
    }

    while (v8 < v9);
  }

  result = (v8 - 1);
  if (v8 - 1 != a1)
  {
    *a1 = *(v8 - 2);
    *(a1 + 2) = *(v8 - 2);
  }

  *(v8 - 2) = v12;
  *(v8 - 2) = DWORD2(v12);
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(uint64_t a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v12 = (*a3)((a1 + 16), a1);
      v13 = (*a3)(a2 - 2, (a1 + 16));
      if (v12)
      {
        v15 = (a1 + 8);
        v14 = *a1;
        if (v13)
        {
          *a1 = *(a2 - 2);
        }

        else
        {
          *a1 = *(a1 + 16);
          *(a1 + 16) = v14;
          v15 = (a1 + 24);
          v27 = *(a1 + 8);
          *(a1 + 8) = *(a1 + 24);
          *(a1 + 24) = v27;
          if (!(*a3)(a2 - 2, (a1 + 16)))
          {
            return 1;
          }

          v14 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 2);
        }

        *(a2 - 2) = v14;
        v22 = a2 - 1;
      }

      else
      {
        if (!v13)
        {
          return 1;
        }

        v21 = *(a1 + 16);
        *(a1 + 16) = *(a2 - 2);
        *(a2 - 2) = v21;
        v22 = (a1 + 24);
        LODWORD(v21) = *(a1 + 24);
        *(a1 + 24) = *(a2 - 2);
        *(a2 - 2) = v21;
        if (!(*a3)((a1 + 16), a1))
        {
          return 1;
        }

        v23 = *a1;
        *a1 = *(a1 + 16);
        *(a1 + 16) = v23;
        v15 = (a1 + 8);
      }

      v28 = *v15;
      *v15 = *v22;
      *v22 = v28;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a3);
        if ((*a3)(a2 - 2, (a1 + 48)))
        {
          v8 = *(a1 + 48);
          *(a1 + 48) = *(a2 - 2);
          *(a2 - 2) = v8;
          LODWORD(v8) = *(a1 + 56);
          *(a1 + 56) = *(a2 - 2);
          *(a2 - 2) = v8;
          if ((*a3)((a1 + 48), (a1 + 32)))
          {
            v9 = *(a1 + 32);
            *(a1 + 32) = *(a1 + 48);
            *(a1 + 48) = v9;
            LODWORD(v9) = *(a1 + 40);
            *(a1 + 40) = *(a1 + 56);
            *(a1 + 56) = v9;
            if ((*a3)((a1 + 32), (a1 + 16)))
            {
              v10 = *(a1 + 16);
              *(a1 + 16) = *(a1 + 32);
              *(a1 + 32) = v10;
              LODWORD(v10) = *(a1 + 24);
              *(a1 + 24) = *(a1 + 40);
              *(a1 + 40) = v10;
              if ((*a3)((a1 + 16), a1))
              {
                v11 = *a1;
                *a1 = *(a1 + 16);
                *(a1 + 16) = v11;
                LODWORD(v11) = *(a1 + 8);
                *(a1 + 8) = *(a1 + 24);
                *(a1 + 24) = v11;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*,0>(a1, (a1 + 16), (a1 + 32), a2 - 2, a3);
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(a2 - 2, a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v7;
      LODWORD(v7) = *(a1 + 8);
      *(a1 + 8) = *(a2 - 2);
      *(a2 - 2) = v7;
    }

    return 1;
  }

LABEL_17:
  v16 = (a1 + 32);
  v17 = (*a3)((a1 + 16), a1);
  v18 = (*a3)((a1 + 32), (a1 + 16));
  if (v17)
  {
    v20 = (a1 + 8);
    v19 = *a1;
    if (v18)
    {
      *a1 = *(a1 + 32);
    }

    else
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v19;
      v20 = (a1 + 24);
      v29 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 24) = v29;
      if (!(*a3)((a1 + 32), (a1 + 16)))
      {
        goto LABEL_35;
      }

      v19 = *(a1 + 16);
      *(a1 + 16) = *(a1 + 32);
    }

    *(a1 + 32) = v19;
    v25 = (a1 + 40);
    goto LABEL_34;
  }

  if (v18)
  {
    v24 = *(a1 + 16);
    *(a1 + 16) = *(a1 + 32);
    *(a1 + 32) = v24;
    v25 = (a1 + 24);
    LODWORD(v24) = *(a1 + 24);
    *(a1 + 24) = *(a1 + 40);
    *(a1 + 40) = v24;
    if ((*a3)((a1 + 16), a1))
    {
      v26 = *a1;
      *a1 = *(a1 + 16);
      *(a1 + 16) = v26;
      v20 = (a1 + 8);
LABEL_34:
      v30 = *v20;
      *v20 = *v25;
      *v25 = v30;
    }
  }

LABEL_35:
  v31 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v32 = 0;
  v33 = 0;
  while (1)
  {
    if ((*a3)(v31, v16))
    {
      v38 = *v31;
      v34 = v32;
      while (1)
      {
        v35 = a1 + v34;
        *(v35 + 48) = *(a1 + v34 + 32);
        *(v35 + 56) = *(a1 + v34 + 40);
        if (v34 == -32)
        {
          break;
        }

        v34 -= 16;
        if (((*a3)(&v38, (v35 + 16)) & 1) == 0)
        {
          v36 = a1 + v34 + 48;
          goto LABEL_43;
        }
      }

      v36 = a1;
LABEL_43:
      *v36 = v38;
      *(v36 + 8) = DWORD2(v38);
      if (++v33 == 8)
      {
        return v31 + 2 == a2;
      }
    }

    v16 = v31;
    v32 += 16;
    v31 += 2;
    if (v31 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*,std::pair<wchar_t const*,wchar_t>*>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int (**a4)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(a1, a4, v8, v11--);
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
        if ((*a4)(v12, a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          LODWORD(v13) = *(v12 + 8);
          *(v12 + 8) = *(a1 + 8);
          *(a1 + 8) = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(a1, a4, v8, a1);
        }

        v12 += 16;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 16;
      do
      {
        v15 = *a1;
        v16 = *(a1 + 8);
        v17 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(a1, a4, v8);
        if (v14 == v17)
        {
          *v17 = v15;
          *(v17 + 8) = v16;
        }

        else
        {
          *v17 = *v14;
          *(v17 + 8) = *(v14 + 8);
          *v14 = v15;
          *(v14 + 8) = v16;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(a1, v17 + 16, a4, (v17 + 16 - a1) >> 4);
        }

        v14 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(uint64_t result, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3, __int128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v20 = v4;
    v21 = v5;
    v7 = a4;
    v8 = result;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - result) >> 4)
    {
      v12 = (a4 - result) >> 3;
      v13 = v12 + 1;
      v14 = result + 16 * (v12 + 1);
      v15 = v12 + 2;
      if (v12 + 2 < a3 && (*a2)(v14, v14 + 16))
      {
        v14 += 16;
        v13 = v15;
      }

      result = (*a2)(v14, v7);
      if ((result & 1) == 0)
      {
        v19 = *v7;
        do
        {
          v16 = v14;
          *v7 = *v14;
          *(v7 + 2) = *(v14 + 8);
          if (v9 < v13)
          {
            break;
          }

          v17 = (2 * v13) | 1;
          v14 = v8 + 16 * v17;
          v18 = 2 * v13 + 2;
          if (v18 < a3)
          {
            if ((*a2)(v8 + 16 * v17, v14 + 16))
            {
              v14 += 16;
              v17 = v18;
            }
          }

          result = (*a2)(v14, &v19);
          v7 = v16;
          v13 = v17;
        }

        while (!result);
        *v16 = v19;
        *(v16 + 8) = DWORD2(v19);
      }
    }
  }

  return result;
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 16 * v6;
    v9 = v8 + 16;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 32;
      if ((*a2)(v8 + 16, v8 + 32))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    *a1 = *v9;
    *(a1 + 8) = *(v9 + 8);
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v14 = v4;
    v15 = v5;
    v8 = result;
    v9 = v6 >> 1;
    v10 = result + 16 * (v6 >> 1);
    v11 = (a2 - 16);
    result = (*a3)(v10, a2 - 16);
    if (result)
    {
      v13 = *v11;
      do
      {
        v12 = v10;
        *v11 = *v10;
        *(v11 + 2) = *(v10 + 8);
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = v8 + 16 * v9;
        result = (*a3)(v10, &v13);
        v11 = v12;
      }

      while ((result & 1) != 0);
      *v12 = v13;
      *(v12 + 8) = DWORD2(v13);
    }
  }

  return result;
}

void *quasar::removeTimestampGaps(void *result, _BYTE *a2)
{
  *a2 = 0;
  v2 = 0x6DB6DB6DB6DB6DB7 * ((result[1] - *result) >> 5);
  if (v2 >= 2)
  {
    v3 = v2 - 1;
    v4 = (*result + 252);
    do
    {
      if (*(v4 - 55) < *v4)
      {
        *(v4 - 55) = *v4;
        *a2 = 1;
      }

      v4 += 56;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t quasar::timestampsNeedAdjustments(uint64_t *a1)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v14, *a1, a1[1], 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5));
  LOBYTE(v17) = 0;
  v13 = 0;
  quasar::Align::MakeMonotonic(&v14, &v17, &v13);
  v2 = v14;
  v1 = v15;
  v3 = 0x6DB6DB6DB6DB6DB7 * ((v15 - v14) >> 5);
  if (v3 < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = v3 - 1;
    v6 = (v14 + 252);
    do
    {
      if (*(v6 - 55) < *v6)
      {
        *(v6 - 55) = *v6;
        v4 = 1;
      }

      v6 += 56;
      --v5;
    }

    while (v5);
  }

  if (v2 == v1)
  {
    v10 = 0;
  }

  else
  {
    v7 = v2 + 224;
    do
    {
      v8 = *(v7 - 196);
      v9 = v8 == *(v7 - 188) || v8 == *(v7 - 192);
      v10 = v9;
      if (v9)
      {
        break;
      }

      v9 = v7 == v1;
      v7 += 224;
    }

    while (!v9);
  }

  if (v17)
  {
    v11 = 1;
  }

  else
  {
    v11 = v13 | v4 | v10;
  }

  v17 = &v14;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v17);
  return v11 & 1;
}

void sub_1B543ED38(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100]((v2 - 24));
  _Unwind_Resume(a1);
}

void quasar::adjustTimestamps(quasar::Token **a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v3 = (a2 + 24);
  if ((a2 + 24) != a1)
  {
    std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v3, *a1, a1[1], 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5));
  }

  *v60 = 0;
  quasar::Align::MakeMonotonic(v3, &v60[1], v60);
  if (v60[0] == 1 && quasar::gLogLevel >= 2)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v43);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "Adjusted timestamps to make them monotonic", 42);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(&v43);
  }

  v42 = 0;
  quasar::removeTimestampGaps(v3, &v42);
  if (v42 == 1 && quasar::gLogLevel >= 2)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v43);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "Adjusted timestamps to remove gaps", 34);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(&v43);
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v6 != v5)
  {
    v7 = *(a2 + 24);
    while (1)
    {
      v8 = v7[7];
      if (v8 == v7[9] || v8 == v7[8])
      {
        break;
      }

      v7 += 56;
      if (v7 == v5)
      {
        return;
      }
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(a2 + 8);
    do
    {
      v14 = *(a2 + 16);
      v41 = &v6[v11];
      if (v13 >= v14)
      {
        v16 = *a2;
        v17 = v13 - *a2;
        v18 = v17 >> 3;
        v19 = (v17 >> 3) + 1;
        if (v19 >> 61)
        {
          goto LABEL_60;
        }

        if ((v14 - v16) >> 2 > v19)
        {
          v19 = (v14 - v16) >> 2;
        }

        if (v14 - v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a2, v19);
        }

        v20 = (8 * v18);
        v14 = 0;
        *v20 = v10;
        v20[1] = v41[7];
        v15 = (8 * v18 + 8);
        memcpy(0, v16, v17);
        v21 = *a2;
        *a2 = 0;
        *(a2 + 8) = v15;
        *(a2 + 16) = 0;
        if (v21)
        {
          operator delete(v21);
          v14 = *(a2 + 16);
        }
      }

      else
      {
        *v13 = v10;
        v13[1] = v6[v11 + 7];
        v15 = v13 + 2;
      }

      *(a2 + 8) = v15;
      v22 = &v6[v11];
      if (v15 >= v14)
      {
        v24 = *a2;
        v25 = v15 - *a2;
        v26 = v25 >> 3;
        v27 = (v25 >> 3) + 1;
        if (v27 >> 61)
        {
          goto LABEL_60;
        }

        if ((v14 - v24) >> 2 > v27)
        {
          v27 = (v14 - v24) >> 2;
        }

        if (v14 - v24 >= 0x7FFFFFFFFFFFFFF8)
        {
          v27 = 0x1FFFFFFFFFFFFFFFLL;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a2, v27);
        }

        v28 = (8 * v26);
        v14 = 0;
        *v28 = v10 + 1000;
        v28[1] = v22[9];
        v23 = (8 * v26 + 8);
        memcpy(0, v24, v25);
        v29 = *a2;
        *a2 = 0;
        *(a2 + 8) = v23;
        *(a2 + 16) = 0;
        if (v29)
        {
          operator delete(v29);
          v14 = *(a2 + 16);
        }
      }

      else
      {
        *v15 = v10 + 1000;
        v15[1] = v22[9];
        v23 = v15 + 2;
      }

      ++v12;
      *(a2 + 8) = v23;
      v30 = &v6[v11];
      if (v23 >= v14)
      {
        v32 = *a2;
        v33 = v23 - *a2;
        v34 = v33 >> 3;
        v35 = (v33 >> 3) + 1;
        if (v35 >> 61)
        {
LABEL_60:
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        if ((v14 - v32) >> 2 > v35)
        {
          v35 = (v14 - v32) >> 2;
        }

        if (v14 - v32 >= 0x7FFFFFFFFFFFFFF8)
        {
          v35 = 0x1FFFFFFFFFFFFFFFLL;
        }

        if (v35)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a2, v35);
        }

        v36 = (8 * v34);
        v31 = v10 + 1000;
        *v36 = v10 + 1000;
        v36[1] = v30[8];
        v13 = (8 * v34 + 8);
        v37 = &v36[-2 * (v33 >> 3)];
        memcpy(v37, v32, v33);
        v38 = *a2;
        *a2 = v37;
        *(a2 + 8) = v13;
        *(a2 + 16) = 0;
        if (v38)
        {
          operator delete(v38);
        }
      }

      else
      {
        v31 = 1000 * v12;
        *v23 = v10 + 1000;
        v23[1] = v30[8];
        v13 = v23 + 2;
      }

      *(a2 + 8) = v13;
      v41[7] = v10;
      v22[9] = v31;
      v30[8] = v31;
      v6 = *(a2 + 24);
      v11 += 56;
      v10 += 1000;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v6) >> 5) > v12);
    v39 = 126 - 2 * __clz((v13 - *a2) >> 3);
    if (v13 == *a2)
    {
      v40 = 0;
    }

    else
    {
      v40 = v39;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(*a2, v13, &v43, v40, 1);
    if (quasar::gLogLevel >= 5)
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v43);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "Adjusted timestamps to prevent zero-duration tokens", 51);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v43);
    }
  }
}

void sub_1B543F25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::QuasarDebugMessage::~QuasarDebugMessage(va);
  quasar::AdjustTimestampsOutput::~AdjustTimestampsOutput(v3);
  _Unwind_Resume(a1);
}

void quasar::AdjustTimestampsOutput::~AdjustTimestampsOutput(quasar::AdjustTimestampsOutput *this)
{
  v3 = (this + 24);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void *quasar::unadjustTimestamps@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(a3, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
  v5 = a1[1];
  v6 = *a1;
  if (*a1 != v5)
  {
    v7 = *a3;
    v8 = a3[1];
    if (*a3 != v8)
    {
      v9 = (v5 - v6) >> 3;
      do
      {
        v10 = v7[7];
        v11 = v6;
        v12 = v9;
        do
        {
          v13 = v12 >> 1;
          v14 = &v11[2 * (v12 >> 1)];
          if (*v14 < v10 || *v14 <= v10 && (v14[1] & 0x80000000) != 0)
          {
            v11 = v14 + 2;
            v13 = v12 + ~v13;
          }

          v12 = v13;
        }

        while (v13);
        v7[7] = v11[1];
        v15 = v7[9];
        v16 = v6;
        v17 = v9;
        do
        {
          v18 = v17 >> 1;
          v19 = &v16[2 * (v17 >> 1)];
          if (*v19 < v15 || *v19 <= v15 && (v19[1] & 0x80000000) != 0)
          {
            v16 = v19 + 2;
            v18 = v17 + ~v18;
          }

          v17 = v18;
        }

        while (v18);
        v7[9] = v16[1];
        v20 = v7[8];
        v21 = v6;
        v22 = v9;
        do
        {
          v23 = v22 >> 1;
          v24 = &v21[2 * (v22 >> 1)];
          if (*v24 < v20 || *v24 <= v20 && (v24[1] & 0x80000000) != 0)
          {
            v21 = v24 + 2;
            v23 = v22 + ~v23;
          }

          v22 = v23;
        }

        while (v23);
        v7[8] = v21[1];
        v7 += 56;
      }

      while (v7 != v8);
    }

    if (quasar::gLogLevel > 4)
    {
      memset(v28, 0, sizeof(v28));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v28);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Unadjusted timestamps", 21);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v28);
    }
  }

  LOBYTE(v28[0]) = 0;
  v27 = 0;
  quasar::Align::MakeMonotonic(a3, v28, &v27);
  return quasar::removeTimestampGaps(a3, &v26);
}

void sub_1B543F514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::QuasarDebugMessage::~QuasarDebugMessage(va);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void quasar::dump(quasar *this, const quasar::FormatWordsAndSplitInput *a2)
{
  if (quasar::gLogLevel >= 5)
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
    v32 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v26);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "FWASI: preItnWords: numToks: ", 29);
    v4 = MEMORY[0x1B8C84C30](v3, 0x6DB6DB6DB6DB6DB7 * ((*(this + 5) - *(this + 4)) >> 5));
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " data: ", 7);
    quasar::tokensWithFields(this + 4);
    if ((v25 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v25 & 0x80u) == 0)
    {
      v7 = v25;
    }

    else
    {
      v7 = v24;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, p_p, v7);
    if (v25 < 0)
    {
      operator delete(__p);
    }

    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v26);
    if (quasar::gLogLevel >= 5)
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
      v32 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v26);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "FWASI: preItnLeftContext: numToks: ", 35);
      v9 = MEMORY[0x1B8C84C30](v8, 0xAAAAAAAAAAAAAAABLL * ((*(this + 8) - *(this + 7)) >> 3));
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " data: ", 7);
      if (quasar::corrective_reranking::isVoiceEditingSensitiveLogEnabled(v10))
      {
        v21 = " ";
        v22 = 1;
        quasar::join<std::vector<std::string>>(this + 7, &v21);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "REDACTED");
      }

      if ((v25 & 0x80u) == 0)
      {
        v11 = &__p;
      }

      else
      {
        v11 = __p;
      }

      if ((v25 & 0x80u) == 0)
      {
        v12 = v25;
      }

      else
      {
        v12 = v24;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, v12);
      if (v25 < 0)
      {
        operator delete(__p);
      }

      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v26);
      if (quasar::gLogLevel >= 5)
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
        v32 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v26);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "FWASI: preItnRightContext: numToks: ", 36);
        v14 = *(this + 10);
        v15 = *(this + 11);
        v16 = (this + 80);
        v17 = MEMORY[0x1B8C84C30](v13, 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 3));
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " data: ", 7);
        if (quasar::corrective_reranking::isVoiceEditingSensitiveLogEnabled(v18))
        {
          v21 = " ";
          v22 = 1;
          quasar::join<std::vector<std::string>>(v16, &v21);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "REDACTED");
        }

        if ((v25 & 0x80u) == 0)
        {
          v19 = &__p;
        }

        else
        {
          v19 = __p;
        }

        if ((v25 & 0x80u) == 0)
        {
          v20 = v25;
        }

        else
        {
          v20 = v24;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
        if (v25 < 0)
        {
          operator delete(__p);
        }

        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v26);
      }
    }
  }
}

void sub_1B543F854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::locale a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a18);
  _Unwind_Resume(a1);
}

uint64_t quasar::tokensWithFields(uint64_t *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
  v2 = *a1;
  if (a1[1] != *a1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      if (v4)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, " ", 1);
      }

      v5 = *(v2 + v3 + 23);
      if (v5 >= 0)
      {
        v6 = v2 + v3;
      }

      else
      {
        v6 = *(v2 + v3);
      }

      if (v5 >= 0)
      {
        v7 = *(v2 + v3 + 23);
      }

      else
      {
        v7 = *(v2 + v3 + 8);
      }

      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, v6, v7);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "[", 1);
      v10 = MEMORY[0x1B8C84C10](v9, *(v2 + v3 + 28));
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " ", 1);
      v12 = MEMORY[0x1B8C84C10](v11, *(v2 + v3 + 36));
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " ", 1);
      v14 = MEMORY[0x1B8C84C10](v13, *(v2 + v3 + 32));
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " ", 1);
      v16 = MEMORY[0x1B8C84BD0](v15, *(v2 + v3 + 45));
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " ", 1);
      v18 = MEMORY[0x1B8C84BD0](v17, *(v2 + v3 + 44));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "]", 1);
      ++v4;
      v2 = *a1;
      v3 += 224;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5) > v4);
  }

  std::stringbuf::str();
  v20 = *MEMORY[0x1E69E54E8];
  *(&v20 + *(v20 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v21 = MEMORY[0x1E69E5548] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v22);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v24);
}

void quasar::dump(quasar *this, const quasar::FormatWordsAndSplitOutput *a2)
{
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
    v29 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v29);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "FWASO: isSuccess: ", 18);
    if (*(this + 24) == 1 && *(this + 56) == 1)
    {
      v4 = *(this + 88);
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1B8C84BD0](v3, v4 & 1);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v29);
  }

  if (*(this + 24) == 1)
  {
    if (quasar::gLogLevel < 5)
    {
      goto LABEL_21;
    }

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
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "FWASO: postItnLeftContext: numToks: ", 36);
    v6 = MEMORY[0x1B8C84C30](v5, 0x6DB6DB6DB6DB6DB7 * ((*(this + 1) - *this) >> 5));
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " data: ", 7);
    memset(v25, 0, sizeof(v25));
    std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v25, *this, *(this + 1), 0x6DB6DB6DB6DB6DB7 * ((*(this + 1) - *this) >> 5));
    quasar::sensitiveTokensWithFields(v25);
    if ((v28 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v28 & 0x80u) == 0)
    {
      v9 = v28;
    }

    else
    {
      v9 = v27;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, p_p, v9);
    if (v28 < 0)
    {
      operator delete(__p);
    }

    v46 = v25;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v46);
  }

  else
  {
    if (quasar::gLogLevel < 5)
    {
      goto LABEL_21;
    }

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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "FWASO: postItnLeftContext: null", 31);
  }

  quasar::QuasarDebugMessage::~QuasarDebugMessage(&v29);
LABEL_21:
  if (*(this + 56) == 1)
  {
    if (quasar::gLogLevel < 5)
    {
      goto LABEL_39;
    }

    v10 = *(this + 24);
    v11 = *(this + 88);
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
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "FWASO: postItnWords: numToks: ", 30);
    v13 = MEMORY[0x1B8C84C30](v12, 0x6DB6DB6DB6DB6DB7 * ((*(this + 5) - *(this + 4)) >> 5));
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " data: ", 7);
    v15 = v10 & v11;
    if (v15)
    {
      quasar::tokensWithFields(this + 4);
    }

    else
    {
      memset(v24, 0, sizeof(v24));
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v24, *(this + 4), *(this + 5), 0x6DB6DB6DB6DB6DB7 * ((*(this + 5) - *(this + 4)) >> 5));
      quasar::sensitiveTokensWithFields(v24);
    }

    if ((v28 & 0x80u) == 0)
    {
      v16 = &__p;
    }

    else
    {
      v16 = __p;
    }

    if ((v28 & 0x80u) == 0)
    {
      v17 = v28;
    }

    else
    {
      v17 = v27;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
    if (v28 < 0)
    {
      operator delete(__p);
    }

    if ((v15 & 1) == 0)
    {
      v46 = v24;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v46);
    }
  }

  else
  {
    if (quasar::gLogLevel < 5)
    {
      goto LABEL_39;
    }

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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "FWASO: postItnWords: null", 25);
  }

  quasar::QuasarDebugMessage::~QuasarDebugMessage(&v29);
LABEL_39:
  if (*(this + 88) == 1)
  {
    if (quasar::gLogLevel < 5)
    {
      return;
    }

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
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "FWASO: postItnRightContext: numToks: ", 37);
    v19 = MEMORY[0x1B8C84C30](v18, 0x6DB6DB6DB6DB6DB7 * ((*(this + 9) - *(this + 8)) >> 5));
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " data: ", 7);
    memset(v23, 0, sizeof(v23));
    std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v23, *(this + 8), *(this + 9), 0x6DB6DB6DB6DB6DB7 * ((*(this + 9) - *(this + 8)) >> 5));
    quasar::sensitiveTokensWithFields(v23);
    if ((v28 & 0x80u) == 0)
    {
      v21 = &__p;
    }

    else
    {
      v21 = __p;
    }

    if ((v28 & 0x80u) == 0)
    {
      v22 = v28;
    }

    else
    {
      v22 = v27;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v21, v22);
    if (v28 < 0)
    {
      operator delete(__p);
    }

    v46 = v23;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v46);
  }

  else
  {
    if (quasar::gLogLevel < 5)
    {
      return;
    }

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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "FWASO: postItnRightContext: null", 32);
  }

  quasar::QuasarDebugMessage::~QuasarDebugMessage(&v29);
}

void sub_1B5440038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::locale a24)
{
  *(v24 - 72) = &a12;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100]((v24 - 72));
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a24);
  _Unwind_Resume(a1);
}

uint64_t quasar::sensitiveTokensWithFields(quasar::corrective_reranking *a1)
{
  if ((quasar::corrective_reranking::isVoiceEditingSensitiveLogEnabled(a1) & 1) == 0)
  {
    v2 = *a1;
    v3 = *(a1 + 1);
    if (*a1 != v3)
    {
      do
      {
        MEMORY[0x1B8C84820](v2, "REDACTED");
        v2 += 224;
      }

      while (v2 != v3);
    }
  }

  return quasar::tokensWithFields(a1);
}

void quasar::getCharToTokenAlignment(uint64_t *a1@<X0>, void *a2@<X8>)
{
  quasar::getCharRange(a1, 1, &v9);
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v3 = v9;
  v4 = v10;
  if (v10 != v9)
  {
    v5 = 0;
    do
    {
      v6 = v3[2 * v5 + 1];
      v8 = v3[2 * v5];
      if (v8 <= v6)
      {
        do
        {
          v11 = &v8;
          *(std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a2, &v8) + 8) = v5;
          v7 = v8++;
        }

        while (v7 < v6);
        v3 = v9;
        v4 = v10;
      }

      ++v5;
    }

    while (v5 < (v4 - v3) >> 3);
  }

  if (v3)
  {
    v10 = v3;
    operator delete(v3);
  }
}

void sub_1B5440244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  std::__tree<int>::destroy(v11, *(v11 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL quasar::isValidPreItnTokenToPostItnCharAlignment(void *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  v5 = a3[1] - *a3;
  if (v5)
  {
    v6 = 0;
    LODWORD(v7) = 0;
    v8 = 0;
    v9 = v5 >> 4;
    v10 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5);
    v13 = *(a4 + 8);
    v11 = a4 + 8;
    v12 = v13;
    if (v9 <= 1)
    {
      v9 = 1;
    }

LABEL_4:
    v14 = (v4 + 16 * v6);
    v15 = *v14;
    if ((*v14 & 0x80000000) == 0)
    {
      v16 = v14[1];
      v17 = v15 <= v16 && v10 > v16;
      if (v17 && (!v6 || *(v4 - 12 + 16 * v6) <= v15))
      {
        v18 = v16 + 1;
        while (v15 >= v7)
        {
          if (v15 == v7)
          {
            LODWORD(v7) = v7 + 1;
          }

          if (v18 == ++v15)
          {
            v20 = v14[2];
            v19 = v14[3];
            if (v20 <= v19)
            {
              while (v12)
              {
                v21 = v11;
                v22 = v12;
                do
                {
                  if (*(v22 + 28) >= v20)
                  {
                    v21 = v22;
                  }

                  v22 = *(v22 + 8 * (*(v22 + 28) < v20));
                }

                while (v22);
                if (v21 == v11 || v20 < *(v21 + 28))
                {
                  break;
                }

                if (*(v21 + 32) == v8)
                {
                  ++v8;
                }

                if (v20++ == v19)
                {
                  goto LABEL_18;
                }
              }

              return 0;
            }

LABEL_18:
            if (++v6 != v9)
            {
              goto LABEL_4;
            }

            v7 = v7;
            v25 = v8;
            goto LABEL_33;
          }
        }
      }
    }
  }

  else
  {
    v25 = 0;
    v7 = 0;
    v10 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5);
LABEL_33:
    if (v10 == v7)
    {
      return 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5) == v25;
    }
  }

  return 0;
}

uint64_t quasar::removeCommandTokensFromAlignment@<X0>(quasar *a1@<X0>, int **a2@<X1>, uint64_t a3@<X8>)
{
  memset(v28, 0, sizeof(v28));
  v29 = 1065353216;
  for (i = quasar::getCommandEndTokensMap(a1) + 16; ; std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v28, (i + 40)))
  {
    i = *i;
    if (!i)
    {
      break;
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v28, (i + 16));
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    do
    {
      LODWORD(v10) = *v7;
      v9 = v7[1];
      v11 = *(v7 + 1);
      v12 = *a1;
      if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 1) - *a1) >> 5) <= *v7)
      {
        if ((v9 & 0x80000000) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v10 = v10;
        v13 = 224 * v10;
        do
        {
          if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v28, (v12 + v13)))
          {
            break;
          }

          ++v10;
          v12 = *a1;
          v13 += 224;
        }

        while (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 1) - *a1) >> 5) > v10);
        if ((v9 & 0x80000000) == 0)
        {
LABEL_12:
          v14 = 224 * v9;
          while (1)
          {
            if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 1) - *a1) >> 5) <= v9)
            {
              std::vector<int>::__throw_out_of_range[abi:ne200100]();
            }

            if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v28, (*a1 + v14)))
            {
              break;
            }

            v14 -= 224;
            if (v9-- <= 0)
            {
              v9 = 0xFFFFFFFFLL;
              goto LABEL_18;
            }
          }

          v9 = v9;
          if ((v10 & 0x80000000) != 0)
          {
            goto LABEL_36;
          }

LABEL_21:
          if (v10 <= v9 && 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 1) - *a1) >> 5) > v9)
          {
            v16 = *(a3 + 8);
            v17 = *(a3 + 16);
            if (v16 >= v17)
            {
              v19 = (v16 - *a3) >> 4;
              v20 = v19 + 1;
              if ((v19 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v21 = v17 - *a3;
              if (v21 >> 3 > v20)
              {
                v20 = v21 >> 3;
              }

              if (v21 >= 0x7FFFFFFFFFFFFFF0)
              {
                v22 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v22 = v20;
              }

              if (v22)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a3, v22);
              }

              v23 = 16 * v19;
              *v23 = v10;
              *(v23 + 4) = v9;
              *(v23 + 8) = v11;
              v18 = 16 * v19 + 16;
              v24 = *(a3 + 8) - *a3;
              v25 = v23 - v24;
              memcpy((v23 - v24), *a3, v24);
              v26 = *a3;
              *a3 = v25;
              *(a3 + 8) = v18;
              *(a3 + 16) = 0;
              if (v26)
              {
                operator delete(v26);
              }
            }

            else
            {
              *v16 = v10;
              *(v16 + 4) = v9;
              v18 = v16 + 16;
              *(v16 + 8) = v11;
            }

            *(a3 + 8) = v18;
          }

          goto LABEL_36;
        }
      }

LABEL_18:
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_36:
      v7 += 4;
    }

    while (v7 != v8);
  }

  return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v28);
}

void quasar::formatWordsAndSplit(quasar *this@<X0>, const quasar::FormatWordsAndSplitInput *a2@<X1>, _BYTE *a3@<X8>)
{
  quasar::dump(this, a2);
  if (quasar::timestampsNeedAdjustments(this + 4))
  {
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    __p = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    memset(v133, 0, sizeof(v133));
    v132 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v132);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v132, "formatWordsAndSplit: Timestamps need to be adjusted before calling this function");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v132);
  }

  *a3 = 0;
  a3[32] = 0;
  a3[24] = 0;
  a3[56] = 0;
  a3[64] = 0;
  v112 = (a3 + 64);
  a3[88] = 0;
  memset(&v131, 0, sizeof(v131));
  v6 = *(this + 4);
  v5 = *(this + 5);
  if (v6 == v5)
  {
    v130 = 0;
    v7 = 0;
  }

  else
  {
    v130 = *(v6 + 10);
    v7 = *(v5 - 46);
  }

  v129 = v7;
  v128 = 0;
  v9 = *(this + 7);
  v8 = *(this + 8);
  if (v9 == v8)
  {
    v10 = 0;
    data = 0;
  }

  else
  {
    v10 = 0;
    data = 0;
    do
    {
      LODWORD(v132) = data + 1000;
      LODWORD(v148) = data + 1000;
      LOBYTE(v127.__r_.__value_.__l.__data_) = 1;
      if (v10 >= v131.__r_.__value_.__r.__words[2])
      {
        v10 = std::vector<quasar::Token>::__emplace_back_slow_path<std::string const&,int &,int,int,float &,BOOL>(&v131, v9, &v128, &v132, &v148, &v130, &v127);
      }

      else
      {
        std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,std::string const&,int &,int,int,float &,BOOL>(&v131, v10, v9, &v128, &v132, &v148, &v130, &v127);
        v10 = (v10 + 224);
      }

      v131.__r_.__value_.__l.__size_ = v10;
      data = v10[-8].__r_.__value_.__l.__data_;
      v128 = data;
      v9 += 24;
    }

    while (v9 != v8);
    v6 = *(this + 4);
    v5 = *(this + 5);
  }

  if (v6 != v5)
  {
    v12 = vdup_n_s32(data);
    do
    {
      quasar::Token::Token(&v132, v6);
      HIDWORD(v133[2]) += data;
      *(&v133[1] + 4) = vadd_s32(*(&v133[1] + 4), v12);
      size = v131.__r_.__value_.__l.__size_;
      if (v131.__r_.__value_.__l.__size_ >= v131.__r_.__value_.__r.__words[2])
      {
        v14 = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token&>(&v131, &v132);
      }

      else
      {
        quasar::Token::Token(v131.__r_.__value_.__l.__size_, &v132);
        v14 = size + 224;
      }

      v131.__r_.__value_.__l.__size_ = v14;
      v128 = *(v14 - 192);
      if (SBYTE7(v143) < 0)
      {
        operator delete(__p);
      }

      if (SBYTE7(v141) < 0)
      {
        operator delete(v140);
      }

      v148 = &v138 + 8;
      std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v148);
      if (SBYTE7(v138) < 0)
      {
        operator delete(v137);
      }

      v148 = &v135 + 8;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v148);
      if (SBYTE7(v135) < 0)
      {
        operator delete(v134);
      }

      if (SHIBYTE(v133[0]) < 0)
      {
        operator delete(v132);
      }

      v6 = (v6 + 224);
    }

    while (v6 != v5);
    v10 = v131.__r_.__value_.__l.__size_;
  }

  if (v131.__r_.__value_.__l.__data_ != v10)
  {
    v10[-8].__r_.__value_.__s.__data_[12] = 1;
  }

  v16 = *(this + 10);
  v15 = *(this + 11);
  if (v16 != v15)
  {
    v17 = v128;
    do
    {
      LODWORD(v132) = v17 + 1000;
      LODWORD(v148) = v17 + 1000;
      LOBYTE(v127.__r_.__value_.__l.__data_) = 1;
      if (v10 >= v131.__r_.__value_.__r.__words[2])
      {
        v10 = std::vector<quasar::Token>::__emplace_back_slow_path<std::string const&,int &,int,int,float &,BOOL>(&v131, v16, &v128, &v132, &v148, &v129, &v127);
      }

      else
      {
        std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,std::string const&,int &,int,int,float &,BOOL>(&v131, v10, v16, &v128, &v132, &v148, &v129, &v127);
        v10 = (v10 + 224);
      }

      v131.__r_.__value_.__l.__size_ = v10;
      v17 = v10[-8].__r_.__value_.__l.__data_;
      v128 = v17;
      v16 += 24;
    }

    while (v16 != v15);
  }

  v18 = *(this + 3);
  if (!v18)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v18 + 48))(&v127);
  if (v131.__r_.__value_.__r.__words[0] == v131.__r_.__value_.__l.__size_)
  {
    v132 = 0uLL;
    v133[0] = 0;
    std::optional<std::vector<quasar::Token>>::operator=[abi:ne200100]<std::vector<quasar::Token>,void>(a3, &v132);
    v148 = &v132;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v148);
    v132 = 0uLL;
    v133[0] = 0;
    std::optional<std::vector<quasar::Token>>::operator=[abi:ne200100]<std::vector<quasar::Token>,void>((a3 + 32), &v132);
    v148 = &v132;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v148);
    v132 = 0uLL;
    v133[0] = 0;
    std::optional<std::vector<quasar::Token>>::operator=[abi:ne200100]<std::vector<quasar::Token>,void>(v112, &v132);
    v148 = &v132;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v148);
  }

  else
  {
    v124 = 0;
    v125 = 0;
    quasar::getPreItnTokenToPostItnCharAlignment(&v131, &v127, &v124, v126);
    if (v125)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v125);
    }

    quasar::getCharToTokenAlignment(&v127, v123);
    if (quasar::isValidPreItnTokenToPostItnCharAlignment(&v131, &v127, v126, v123))
    {
      v109 = a3;
      quasar::removeCommandTokensFromAlignment(&v131, v126, &v132);
      if (v126[0])
      {
        v126[1] = v126[0];
        operator delete(v126[0]);
      }

      v108 = (a3 + 32);
      *v126 = v132;
      v126[2] = v133[0];
      v19 = *(&v132 + 1);
      v20 = v132;
      if (v132 == *(&v132 + 1))
      {
        v24 = 0xFFFFFFFFLL;
        v114 = -1;
        v115 = -1227133513 * ((v127.__r_.__value_.__l.__size_ - v127.__r_.__value_.__r.__words[0]) >> 5);
        v23 = v115;
        v22 = v115;
        LODWORD(v21) = -1;
      }

      else
      {
        LODWORD(v21) = -1;
        v22 = -1227133513 * ((v127.__r_.__value_.__l.__size_ - v127.__r_.__value_.__r.__words[0]) >> 5);
        v114 = -1;
        v115 = v22;
        v23 = v22;
        v24 = 0xFFFFFFFFLL;
        do
        {
          v25 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 8) - *(this + 7)) >> 3);
          if (v25 > v20[1])
          {
            v26 = *std::map<int,int>::at(v123, v20 + 2);
            v27 = std::map<int,int>::at(v123, v20 + 3);
            if (v26 < v22)
            {
              v22 = v26;
            }

            if (v21 <= *v27)
            {
              LODWORD(v21) = *v27;
            }

            v25 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 8) - *(this + 7)) >> 3);
          }

          v28 = *v20;
          v30 = *(this + 4);
          v29 = *(this + 5);
          if (v25 <= v28 && v25 + 0x6DB6DB6DB6DB6DB7 * ((v29 - v30) >> 5) > v20[1])
          {
            v31 = *std::map<int,int>::at(v123, v20 + 2);
            v32 = std::map<int,int>::at(v123, v20 + 3);
            v33 = v114;
            if (v31 >= v115)
            {
              v34 = v115;
            }

            else
            {
              v34 = v31;
            }

            if (v114 <= *v32)
            {
              v33 = *v32;
            }

            v114 = v33;
            v115 = v34;
            v28 = *v20;
            v30 = *(this + 4);
            v29 = *(this + 5);
            v25 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 8) - *(this + 7)) >> 3);
          }

          if (v25 + 0x6DB6DB6DB6DB6DB7 * ((v29 - v30) >> 5) <= v28)
          {
            v35 = *std::map<int,int>::at(v123, v20 + 2);
            v36 = std::map<int,int>::at(v123, v20 + 3);
            if (v35 >= v23)
            {
              v23 = v23;
            }

            else
            {
              v23 = v35;
            }

            if (v24 <= *v36)
            {
              v24 = *v36;
            }

            else
            {
              v24 = v24;
            }
          }

          v20 += 4;
        }

        while (v20 != v19);
      }

      if (v22 > v21)
      {
        v37 = 0xFFFFFFFFLL;
      }

      else
      {
        v37 = v22;
      }

      if (v22 > v21)
      {
        v21 = 0xFFFFFFFFLL;
      }

      else
      {
        v21 = v21;
      }

      v38 = v23;
      v39 = v24;
      if (v38 > v24)
      {
        v38 = -1227133513 * ((v127.__r_.__value_.__l.__size_ - v127.__r_.__value_.__r.__words[0]) >> 5);
        v39 = v38;
      }

      v40 = v37 < 1;
      if (v37 <= v21)
      {
        v41 = v37;
        while ((v114 < v41 || v115 > v114 || v115 > v41) && (v39 < v41 || v38 > v39 || v38 > v41))
        {
          if (v21 + 1 == ++v41)
          {
            goto LABEL_93;
          }
        }

        v40 = 0;
      }

LABEL_93:
      v42 = v21 + 1;
      v43 = v115 <= v21 + 1;
      if (v115 > v114)
      {
        v43 = 0;
      }

      if (v114 <= v21)
      {
        v43 = 0;
      }

      v46 = v38 <= v42 && v38 <= v39 && v39 > v21;
      v47 = (v43 ^ v46) & v40;
      if (v115 <= v114)
      {
        v47 = (v115 <= v38) & v47;
      }

      v111 = v47;
      v113 = v39 + 1;
      v48 = 0x6DB6DB6DB6DB6DB7 * ((v127.__r_.__value_.__l.__size_ - v127.__r_.__value_.__r.__words[0]) >> 5) <= (v39 + 1);
      if (v38 <= v39)
      {
        v49 = v38;
        while ((v21 < v49 || v37 > v21 || v37 > v49) && (v115 > v114 || v115 > v49 || v114 < v49))
        {
          if (v113 == ++v49)
          {
            goto LABEL_119;
          }
        }

        v48 = 0;
      }

LABEL_119:
      v50 = v115 <= v114;
      v51 = v38 - 1;
      v54 = v37 <= v21 && v37 < v38 && v21 >= v51;
      if (v115 >= v38 || v114 < v51)
      {
        v50 = 0;
      }

      v56 = (v54 ^ v50) & v48;
      if (v115 <= v114)
      {
        v56 = (v21 <= v114) & v56;
      }

      v110 = v56;
      if (quasar::gLogLevel >= 5)
      {
        v106 = v21 + 1;
        v107 = v37;
        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        __p = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        memset(v133, 0, sizeof(v133));
        v132 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v132);
        v104 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v132, "formatWordsAndSplit: postItnJoined: ", 36);
        memset(v122, 0, sizeof(v122));
        std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v122, v127.__r_.__value_.__l.__data_, v127.__r_.__value_.__l.__size_, 0x6DB6DB6DB6DB6DB7 * ((v127.__r_.__value_.__l.__size_ - v127.__r_.__value_.__r.__words[0]) >> 5));
        quasar::sensitiveTokensWithFields(v122);
        if (SHIBYTE(v150[0].__locale_) >= 0)
        {
          v57 = &v148;
        }

        else
        {
          v57 = v148;
        }

        if (SHIBYTE(v150[0].__locale_) >= 0)
        {
          locale_high = HIBYTE(v150[0].__locale_);
        }

        else
        {
          locale_high = v149;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, v57, locale_high);
        if (SHIBYTE(v150[0].__locale_) < 0)
        {
          operator delete(v148);
        }

        v120[0] = v122;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v120);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v132);
        v42 = v21 + 1;
        v37 = v107;
        if (quasar::gLogLevel >= 5)
        {
          v146 = 0u;
          v147 = 0u;
          v144 = 0u;
          v145 = 0u;
          __p = 0u;
          v143 = 0u;
          v140 = 0u;
          v141 = 0u;
          v138 = 0u;
          v139 = 0u;
          v136 = 0u;
          v137 = 0u;
          v134 = 0u;
          v135 = 0u;
          memset(v133, 0, sizeof(v133));
          v132 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v132);
          v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v132, "formatWordsAndSplit:", 20);
          v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, " postItnLeftContextRange ", 25);
          std::ostringstream::basic_ostringstream[abi:ne200100](&v148);
          v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v148, "(", 1);
          v62 = MEMORY[0x1B8C84C00](v61, v107);
          v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, " ", 1);
          v64 = MEMORY[0x1B8C84C00](v63, v21);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, ")", 1);
          std::stringbuf::str();
          v148 = *MEMORY[0x1E69E54E8];
          v105 = v148;
          v103 = *(MEMORY[0x1E69E54E8] + 24);
          *(&v148 + *(v148 - 3)) = v103;
          v149 = MEMORY[0x1E69E5548] + 16;
          if (v152 < 0)
          {
            operator delete(v151);
          }

          v149 = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(v150);
          std::ostream::~ostream();
          MEMORY[0x1B8C85200](v153);
          if ((v121 & 0x80u) == 0)
          {
            v65 = v120;
          }

          else
          {
            v65 = v120[0];
          }

          if ((v121 & 0x80u) == 0)
          {
            v66 = v121;
          }

          else
          {
            v66 = v120[1];
          }

          v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, v65, v66);
          v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, " postItnWordsRange ", 19);
          std::ostringstream::basic_ostringstream[abi:ne200100](&v148);
          v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v148, "(", 1);
          v70 = MEMORY[0x1B8C84C00](v69, v115);
          v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, " ", 1);
          v72 = MEMORY[0x1B8C84C00](v71, v114);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, ")", 1);
          std::stringbuf::str();
          v148 = v105;
          *(&v148 + *(v105 - 3)) = v103;
          v149 = MEMORY[0x1E69E5548] + 16;
          if (v152 < 0)
          {
            operator delete(v151);
          }

          v149 = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(v150);
          std::ostream::~ostream();
          MEMORY[0x1B8C85200](v153);
          if ((v119 & 0x80u) == 0)
          {
            v73 = v118;
          }

          else
          {
            v73 = v118[0];
          }

          if ((v119 & 0x80u) == 0)
          {
            v74 = v119;
          }

          else
          {
            v74 = v118[1];
          }

          v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, v73, v74);
          v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, " postItnRightContextRange ", 26);
          std::ostringstream::basic_ostringstream[abi:ne200100](&v148);
          v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v148, "(", 1);
          v78 = MEMORY[0x1B8C84C00](v77, v38);
          v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, " ", 1);
          v80 = MEMORY[0x1B8C84C00](v79, v39);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, ")", 1);
          std::stringbuf::str();
          v148 = v105;
          *(&v148 + *(v105 - 3)) = v103;
          v149 = MEMORY[0x1E69E5548] + 16;
          if (v152 < 0)
          {
            operator delete(v151);
          }

          v149 = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(v150);
          std::ostream::~ostream();
          MEMORY[0x1B8C85200](v153);
          if ((v117 & 0x80u) == 0)
          {
            v81 = v116;
          }

          else
          {
            v81 = v116[0];
          }

          if ((v117 & 0x80u) == 0)
          {
            v82 = v117;
          }

          else
          {
            v82 = v116[1];
          }

          v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, v81, v82);
          v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, " hasCleanLeftContextSplit ", 26);
          v85 = MEMORY[0x1B8C84BD0](v84, v111);
          v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, " hasCleanRightContextSplit ", 27);
          MEMORY[0x1B8C84BD0](v86, v110);
          if (v117 < 0)
          {
            operator delete(v116[0]);
          }

          if (v119 < 0)
          {
            operator delete(v118[0]);
          }

          if (v121 < 0)
          {
            operator delete(v120[0]);
          }

          quasar::QuasarDebugMessage::~QuasarDebugMessage(&v132);
          v42 = v106;
          v37 = v107;
        }
      }

      if (v111)
      {
        quasar::pySlice<std::vector<quasar::Token>>(&v127, v37, v42, &v132);
        std::optional<std::vector<quasar::Token>>::operator=[abi:ne200100]<std::vector<quasar::Token>,void>(v109, &v132);
        v148 = &v132;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v148);
        v87 = *v109;
        v88 = *(v109 + 8);
        while (v87 != v88)
        {
          *(v87 + 32) = 0;
          *(v87 + 28) = 0;
          v87 += 224;
        }
      }

      if (v110)
      {
        quasar::pySlice<std::vector<quasar::Token>>(&v127, v38, v113, &v132);
        std::optional<std::vector<quasar::Token>>::operator=[abi:ne200100]<std::vector<quasar::Token>,void>(v112, &v132);
        v148 = &v132;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v148);
        v89 = *(v109 + 64);
        v90 = *(v109 + 72);
        while (v89 != v90)
        {
          *(v89 + 32) = 0;
          *(v89 + 28) = 0;
          v89 += 224;
        }

        if (v111)
        {
          quasar::pySlice<std::vector<quasar::Token>>(&v127, v115, v114 + 1, &v132);
          std::optional<std::vector<quasar::Token>>::operator=[abi:ne200100]<std::vector<quasar::Token>,void>(v108, &v132);
          v148 = &v132;
          std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v148);
          v91 = *(this + 4);
          v92 = *(this + 5);
          if (v91 == v92)
          {
            v93 = 0;
            v94 = 0;
          }

          else
          {
            v93 = *(v91 + 28);
            v94 = *(v92 - 192);
          }

          v95 = *(v109 + 32);
          v96 = *(v109 + 40);
          if (v95 != v96)
          {
            v97 = vdup_n_s32(data);
            v98 = vdup_n_s32(v93);
            v99 = vdup_n_s32(v94);
            do
            {
              v100 = *(v95 + 36) - data;
              if (v100 <= v93)
              {
                v100 = v93;
              }

              if (v94 < v100)
              {
                v100 = v94;
              }

              *(v95 + 36) = v100;
              *(v95 + 28) = vmin_s32(v99, vmax_s32(vsub_s32(*(v95 + 28), v97), v98));
              v95 += 224;
            }

            while (v95 != v96);
          }
        }
      }

      if (*(v109 + 56) == 1)
      {
        if (*(v109 + 24) != 1)
        {
          goto LABEL_203;
        }

        v101 = *(v109 + 8);
        if (*v109 == v101)
        {
          goto LABEL_203;
        }

        do
        {
          if (!quasar::Token::isAutoPunctuation((v101 - 224)))
          {
            break;
          }

          std::vector<quasar::Token>::emplace<quasar::Token&>(v108, *(v109 + 32), (*(v109 + 8) - 224));
          quasar::Token::~Token((*(v109 + 8) - 224));
          *(v109 + 8) = v101;
        }

        while (*v109 != v101);
        if (*(v109 + 56))
        {
LABEL_203:
          if (*(v109 + 88) == 1)
          {
            v102 = *(v109 + 40);
            if (*(v109 + 32) != v102 && *(v109 + 64) != *(v109 + 72))
            {
              *(v102 - 180) = 0;
            }
          }
        }
      }

      quasar::dump(v109, v37);
    }

    else if (quasar::gLogLevel >= 2)
    {
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      __p = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      memset(v133, 0, sizeof(v133));
      v132 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v132);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v132, "formatWordsAndSplit: Alignment is invalid", 41);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(&v132);
    }

    std::__tree<int>::destroy(v123, v123[1]);
    if (v126[0])
    {
      v126[1] = v126[0];
      operator delete(v126[0]);
    }
  }

  *&v132 = &v127;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v132);
  *&v132 = &v131;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v132);
}

void sub_1B5441824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34)
{
  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  JUMPOUT(0x1B54418A4);
}

void sub_1B5441854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t *a47)
{
  quasar::Token::~Token(&a47);
  a47 = &a44;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a47);
  quasar::FormatWordsAndSplitOutput::~FormatWordsAndSplitOutput(v47);
  _Unwind_Resume(a1);
}

void sub_1B5441884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, quasar::FormatWordsAndSplitOutput *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, char *a47)
{
  std::__tree<int>::destroy(&a30, a31);
  if (__p)
  {
    a36 = __p;
    operator delete(__p);
  }

  a47 = &a39;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a47);
  a47 = &a44;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a47);
  quasar::FormatWordsAndSplitOutput::~FormatWordsAndSplitOutput(a13);
  _Unwind_Resume(a1);
}

uint64_t std::optional<std::vector<quasar::Token>>::operator=[abi:ne200100]<std::vector<quasar::Token>,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    std::vector<quasar::Token>::__vdeallocate(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t *quasar::pySlice<std::vector<quasar::Token>>@<X0>(uint64_t *result@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = result[1];
  if (*result == v5)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  else
  {
    v6 = -1227133513 * ((v5 - *result) >> 5);
    v7 = ((v6 & (a2 >> 31)) + a2) & ~(((v6 & (a2 >> 31)) + a2) >> 31);
    v8 = ((v6 & (a3 >> 31)) + a3) & ~(((v6 & (a3 >> 31)) + a3) >> 31);
    if (v8 >= v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    if (v9 > v7)
    {
      v10 = result;
      std::vector<quasar::Token>::reserve(a4, v9 - v7);
      v11 = (v7 << 8) - 32 * v7;
      do
      {
        v12 = *v10;
        if (0x6DB6DB6DB6DB6DB7 * ((v10[1] - *v10) >> 5) <= v7)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        v13 = *(a4 + 8);
        if (v13 >= *(a4 + 16))
        {
          result = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token const&>(a4, (v12 + v11));
        }

        else
        {
          quasar::Token::Token(*(a4 + 8), (v12 + v11));
          result = (v13 + 224);
        }

        *(a4 + 8) = result;
        ++v7;
        v11 += 224;
      }

      while (v9 != v7);
    }
  }

  return result;
}

void sub_1B5441A84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::vector<quasar::Token>::emplace<quasar::Token&>(uint64_t a1, void **a2, quasar::Token *a3)
{
  v3 = a2;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v6 >= v5)
  {
    v7 = *a1;
    v8 = 0x6DB6DB6DB6DB6DB7 * ((v6 - *a1) >> 5) + 1;
    if (v8 > 0x124924924924924)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = a2 - v7;
    v10 = 0x6DB6DB6DB6DB6DB7 * ((v5 - v7) >> 5);
    v11 = 2 * v10;
    if (2 * v10 <= v8)
    {
      v11 = 0x6DB6DB6DB6DB6DB7 * ((v6 - *a1) >> 5) + 1;
    }

    if (v10 >= 0x92492492492492)
    {
      v12 = 0x124924924924924;
    }

    else
    {
      v12 = v11;
    }

    v16 = a1;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Token>>(a1, v12);
    }

    v14.__r_.__value_.__r.__words[0] = 0;
    v14.__r_.__value_.__l.__size_ = 32 * (v9 >> 5);
    v14.__r_.__value_.__r.__words[2] = v14.__r_.__value_.__l.__size_;
    v15 = 0;
    std::__split_buffer<quasar::Token>::emplace_back<quasar::Token&>(&v14, a3);
    v3 = std::vector<quasar::Token>::__swap_out_circular_buffer(a1, &v14, v3);
    std::__split_buffer<quasar::Token>::~__split_buffer(&v14);
  }

  else if (a2 == v6)
  {
    quasar::Token::Token(*(a1 + 8), a3);
    *(a1 + 8) = v6 + 28;
  }

  else
  {
    v27 = a1;
    quasar::Token::Token(&v14, a3);
    std::vector<quasar::Token>::__move_range(a1, v3, *(a1 + 8), (v3 + 28));
    quasar::Token::operator=(v3, &v14);
    if (v26 < 0)
    {
      operator delete(__p);
    }

    if (v24 < 0)
    {
      operator delete(v23);
    }

    v28 = &v22;
    std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v28);
    if (v21 < 0)
    {
      operator delete(v20);
    }

    v28 = &v19;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v28);
    if (v18 < 0)
    {
      operator delete(v17);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  return v3;
}

void quasar::FormatWordsAndSplitOutput::~FormatWordsAndSplitOutput(quasar::FormatWordsAndSplitOutput *this)
{
  if (*(this + 88) == 1)
  {
    v2 = (this + 64);
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v2);
  }

  if (*(this + 56) == 1)
  {
    v2 = (this + 32);
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v2);
  }

  if (*(this + 24) == 1)
  {
    v2 = this;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v2);
  }
}

void quasar::dump(quasar *this, const quasar::FormatWordsHelperInput *a2)
{
  if (quasar::gLogLevel >= 5)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v40);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "FWHI: preItnWords: ", 19);
    quasar::tokensWithFields(this + 4);
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v40);
    if (quasar::gLogLevel >= 5)
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v40);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "FWHI: preItnLeftContext: numToks: ", 34);
      v7 = MEMORY[0x1B8C84C30](v6, 0xAAAAAAAAAAAAAAABLL * ((*(this + 8) - *(this + 7)) >> 3));
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " data: ", 7);
      if (quasar::corrective_reranking::isVoiceEditingSensitiveLogEnabled(v8))
      {
        v37 = " ";
        v38 = 1;
        quasar::join<std::vector<std::string>>(this + 7, &v37);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "REDACTED");
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &__p;
      }

      else
      {
        v9 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v10 = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v40);
      if (quasar::gLogLevel >= 5)
      {
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v40);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "FWHI: preItnRightContext: numToks: ", 35);
        v12 = MEMORY[0x1B8C84C30](v11, 0xAAAAAAAAAAAAAAABLL * ((*(this + 11) - *(this + 10)) >> 3));
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " data: ", 7);
        if (quasar::corrective_reranking::isVoiceEditingSensitiveLogEnabled(v13))
        {
          v37 = " ";
          v38 = 1;
          quasar::join<std::vector<std::string>>(this + 10, &v37);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "REDACTED");
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = &__p;
        }

        else
        {
          v14 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v15 = __p.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v40);
        if (quasar::gLogLevel >= 5)
        {
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v40 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v40);
          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "FWHI: postItnLeftContext: nonEmpty: ", 36);
          v17 = *(this + 127);
          if ((v17 & 0x80u) != 0)
          {
            v17 = *(this + 14);
          }

          v18 = MEMORY[0x1B8C84BD0](v16, v17 != 0);
          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " data: ", 7);
          if (quasar::corrective_reranking::isVoiceEditingSensitiveLogEnabled(v19))
          {
            if (*(this + 127) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *(this + 13), *(this + 14));
            }

            else
            {
              __p = *(this + 104);
            }
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "REDACTED");
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = &__p;
          }

          else
          {
            v20 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v21 = __p.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          quasar::QuasarDebugMessage::~QuasarDebugMessage(&v40);
          if (quasar::gLogLevel >= 5)
          {
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v40 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v40);
            v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "FWHI: postItnRightContext: nonEmpty: ", 37);
            v23 = MEMORY[0x1B8C84BD0](v22, *(this + 10) != *(this + 11));
            v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " data: ", 7);
            if (quasar::corrective_reranking::isVoiceEditingSensitiveLogEnabled(v24))
            {
              if (*(this + 151) < 0)
              {
                std::string::__init_copy_ctor_external(&__p, *(this + 16), *(this + 17));
              }

              else
              {
                __p = *(this + 128);
              }
            }

            else
            {
              std::string::basic_string[abi:ne200100]<0>(&__p, "REDACTED");
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = &__p;
            }

            else
            {
              v25 = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v26 = __p.__r_.__value_.__l.__size_;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v25, v26);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            quasar::QuasarDebugMessage::~QuasarDebugMessage(&v40);
            if (quasar::gLogLevel >= 5)
            {
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              v41 = 0u;
              v42 = 0u;
              v40 = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v40);
              v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "FWHI: stripLeadingAppendedAutoPunctuation: ", 43);
              v28 = MEMORY[0x1B8C84BD0](v27, *(this + 152));
              v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " shouldHideTrailingAutoPunctuation: ", 36);
              v30 = MEMORY[0x1B8C84BD0](v29, *(this + 153));
              v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " separateTrailingAutoPunctuation: ", 34);
              v32 = MEMORY[0x1B8C84BD0](v31, *(this + 154));
              v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " isTrailingPunctuationHidden: ", 30);
              v34 = *(this + 20);
              if (v34)
              {
                std::to_string(&__p, *v34);
              }

              else
              {
                std::string::basic_string[abi:ne200100]<0>(&__p, "null");
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v35 = &__p;
              }

              else
              {
                v35 = __p.__r_.__value_.__r.__words[0];
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v36 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v36 = __p.__r_.__value_.__l.__size_;
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v35, v36);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              quasar::QuasarDebugMessage::~QuasarDebugMessage(&v40);
            }
          }
        }
      }
    }
  }
}

void sub_1B5442310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::locale a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a18);
  _Unwind_Resume(a1);
}

void quasar::dump(quasar *this, const quasar::FormatWordsHelperOutput *a2)
{
  if (quasar::gLogLevel >= 5)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v12);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "FWHO: postItnWords: ", 20);
    quasar::tokensWithFields(this);
    if ((v11 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v11 & 0x80u) == 0)
    {
      v5 = v11;
    }

    else
    {
      v5 = v10;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, p_p, v5);
    if (v11 < 0)
    {
      operator delete(__p);
    }

    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v12);
    if (quasar::gLogLevel >= 5)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v12 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v12);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "FWHO: postItnWordsSuffix: ", 26);
      quasar::tokensWithFields(this + 3);
      if ((v11 & 0x80u) == 0)
      {
        v7 = &__p;
      }

      else
      {
        v7 = __p;
      }

      if ((v11 & 0x80u) == 0)
      {
        v8 = v11;
      }

      else
      {
        v8 = v10;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
      if (v11 < 0)
      {
        operator delete(__p);
      }

      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v12);
    }
  }
}

void sub_1B5442500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a16);
  _Unwind_Resume(a1);
}

BOOL quasar::isPreItnEosPunctuation(std::string *__str)
{
  v2 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  v3 = v2 < 0;
  if (v2 >= 0)
  {
    v4 = __str;
  }

  else
  {
    v4 = __str->__r_.__value_.__r.__words[0];
  }

  if (v3)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  else
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  v6 = v4 + size;
  if (size)
  {
    v7 = v4;
    v8 = (v4 + size);
    do
    {
      v9 = v7;
      v10 = v7;
      while (1)
      {
        v11 = *v10++;
        if (v11 == 92)
        {
          break;
        }

        v9 = v10;
        if (v10 == v6)
        {
          v9 = v8;
          goto LABEL_16;
        }
      }

      v7 = (&v9->__r_.__value_.__l.__data_ + 1);
      v8 = v9;
    }

    while (v10 != v6);
  }

  else
  {
    v9 = v4;
  }

LABEL_16:
  v12 = v9 - v4;
  if (v9 == v6)
  {
    v13 = -1;
  }

  else
  {
    v13 = v12;
  }

  std::string::basic_string(&v22, __str, 0, v13, v20);
  std::string::basic_string[abi:ne200100]<0>(v20, "exclamation-mark");
  if (quasar::endsWith(&v22, v20))
  {
    v14 = 1;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v18, "period");
    if (quasar::endsWith(&v22, v18))
    {
      v14 = 1;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "question-mark");
      v14 = quasar::endsWith(&v22, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_1B54426A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
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

  if (*(v26 - 17) < 0)
  {
    operator delete(*(v26 - 40));
  }

  _Unwind_Resume(exception_object);
}

void quasar::popLeadingAppendedAutoPunctuation(uint64_t *a1)
{
  v1 = *a1;
  for (i = a1[1]; *a1 != i; v1 = *a1)
  {
    if (*(v1 + 172) != 1)
    {
      break;
    }

    if (v1 + 224 == i)
    {
      v6 = i;
      i = v1;
    }

    else
    {
      do
      {
        v4 = v1 + 224;
        quasar::Token::operator=(v1, (v1 + 224));
        v5 = v1 + 448;
        v1 += 224;
      }

      while (v5 != i);
      v6 = a1[1];
      i = v4;
    }

    while (v6 != i)
    {
      quasar::Token::~Token((v6 - 224));
    }

    a1[1] = i;
  }
}

void quasar::popTrailingAppendedAutoPunctuation(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v3 != v2)
  {
    do
    {
      if (*(v2 - 52) != 1)
      {
        break;
      }

      quasar::Token::~Token((v2 - 224));
      a1[1] = v2;
    }

    while (v2 != *a1);
  }
}

void quasar::separateTrailingAppendedAutoPunctuation(void *a1, uint64_t a2)
{
  v5 = *a2;
    ;
  }

  *(a2 + 8) = v5;
  v6 = a1[1];
  if (*a1 != v6)
  {
    while (1)
    {
      v5 = *(a2 + 8);
      if (*(v6 - 52) != 1)
      {
        break;
      }

      v7 = (v6 - 224);
      if (v5 >= *(a2 + 16))
      {
        v8 = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token&>(a2, v7);
      }

      else
      {
        quasar::Token::Token(*(a2 + 8), v7);
        v8 = v5 + 224;
        *(a2 + 8) = v5 + 224;
      }

      *(a2 + 8) = v8;
      quasar::Token::~Token((a1[1] - 224));
      a1[1] = v6;
      if (*a1 == v6)
      {
        v5 = *(a2 + 8);
        break;
      }
    }
  }

  v9 = *a2;

  std::__reverse_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<quasar::Token *>>(v9, v5);
}

void quasar::formatWordsHelper(uint64_t a1@<X0>, const quasar::FormatWordsHelperInput *a2@<X1>, uint64_t a3@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  if (quasar::gLogLevel >= 5)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    __p = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    memset(v42, 0, sizeof(v42));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v42);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "formatWordsHelper: Starting", 27);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v42);
  }

  quasar::dump(a1, a2);
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  quasar::adjustTimestamps((a1 + 32), v39);
  if ((a1 + 32) != &v40)
  {
    std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(a1 + 32, v40, v41, 0x6DB6DB6DB6DB6DB7 * ((v41 - v40) >> 5));
  }

  if (*(a1 + 153) == 1)
  {
    v5 = *(a1 + 160);
    if (v5)
    {
      *v5 = 0;
    }
  }

  v6 = *(a1 + 64);
  if (*(a1 + 56) != v6)
  {
    isPreItnEosPunctuation = quasar::isPreItnEosPunctuation((v6 - 24));
    goto LABEL_19;
  }

  if (*(a1 + 80) == *(a1 + 88))
  {
    if ((*(a1 + 127) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 112))
      {
        goto LABEL_15;
      }
    }

    else if (!*(a1 + 127))
    {
LABEL_15:
      v7 = *(a1 + 151);
      if (v7 < 0)
      {
        v7 = *(a1 + 136);
      }

      if (!v7)
      {
        goto LABEL_92;
      }
    }
  }

  isPreItnEosPunctuation = 1;
LABEL_19:
  v60 = 0u;
  memset(v59, 0, sizeof(v59));
  memset(&v58[3], 0, 32);
  LOBYTE(v32[0]) = 0;
  v33 = 0;
  LOBYTE(v34) = 0;
  v36 = 0;
  LOBYTE(v37[0]) = 0;
  v38 = 0;
  std::function<std::vector<quasar::Token> ()(std::vector<quasar::Token> const&)>::operator=(v58, a1);
  if (v58 != a1)
  {
    std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v58[4], *(a1 + 32), *(a1 + 40), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 40) - *(a1 + 32)) >> 5));
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v59, *(a1 + 56), *(a1 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 64) - *(a1 + 56)) >> 3));
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v59[24], *(a1 + 80), *(a1 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 88) - *(a1 + 80)) >> 3));
  }

  if (quasar::gLogLevel >= 5)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    __p = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    memset(v42, 0, sizeof(v42));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v42);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "formatWordsHelper: formatWordsAndSplit attempt 1", 48);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v42);
  }

  quasar::formatWordsAndSplit(v58, v8, v42);
  std::__optional_storage_base<std::vector<quasar::Token>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<quasar::Token>,false>>(v32, v42);
  std::__optional_storage_base<std::vector<quasar::Token>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<quasar::Token>,false>>(&v34, &v43);
  std::__optional_storage_base<std::vector<quasar::Token>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<quasar::Token>,false>>(v37, &v45);
  if (BYTE8(v46) == 1)
  {
    __str.__r_.__value_.__r.__words[0] = &v45;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__str);
  }

  if (BYTE8(v44) == 1)
  {
    __str.__r_.__value_.__r.__words[0] = &v43;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__str);
  }

  if (v42[24] == 1)
  {
    __str.__r_.__value_.__r.__words[0] = v42;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__str);
  }

  if (v33 != 1)
  {
    memset(v42, 0, 24);
    if (!isPreItnEosPunctuation)
    {
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v42, *(a1 + 176), *(a1 + 184), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 184) - *(a1 + 176)) >> 3));
    }

    std::vector<std::string>::__vdeallocate(v59);
    *v59 = *v42;
    *&v59[8] = *&v42[8];
    memset(v42, 0, 24);
    __str.__r_.__value_.__r.__words[0] = v42;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
    if (v38)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v10 = v38;
  if (v36 != 1)
  {
    if (v38)
    {
      goto LABEL_42;
    }

LABEL_39:
    v10 = 0;
    goto LABEL_40;
  }

  if ((v38 & 1) == 0)
  {
LABEL_40:
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>(&v59[24], 0, 0, 0);
  }

  if (v10)
  {
    goto LABEL_71;
  }

LABEL_42:
  if (quasar::gLogLevel >= 5)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    __p = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    memset(v42, 0, sizeof(v42));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v42);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "formatWordsHelper: formatWordsAndSplit attempt 2", 48);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v42);
  }

  quasar::formatWordsAndSplit(v58, v9, v42);
  std::__optional_storage_base<std::vector<quasar::Token>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<quasar::Token>,false>>(v32, v42);
  std::__optional_storage_base<std::vector<quasar::Token>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<quasar::Token>,false>>(&v34, &v43);
  std::__optional_storage_base<std::vector<quasar::Token>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<quasar::Token>,false>>(v37, &v45);
  if (BYTE8(v46) == 1)
  {
    __str.__r_.__value_.__r.__words[0] = &v45;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__str);
  }

  if (BYTE8(v44) == 1)
  {
    __str.__r_.__value_.__r.__words[0] = &v43;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__str);
  }

  if (v42[24] == 1)
  {
    __str.__r_.__value_.__r.__words[0] = v42;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__str);
  }

  if (v33 == 1)
  {
    v12 = v38;
    if (v36 == 1)
    {
      if (v38)
      {
LABEL_59:
        if (v12)
        {
          goto LABEL_71;
        }

        goto LABEL_60;
      }

LABEL_58:
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>(&v59[24], 0, 0, 0);
      goto LABEL_59;
    }

    if ((v38 & 1) == 0)
    {
LABEL_57:
      v12 = 0;
      goto LABEL_58;
    }
  }

  else
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>(v59, 0, 0, 0);
    if ((v38 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

LABEL_60:
  if (quasar::gLogLevel >= 5)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    __p = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    memset(v42, 0, sizeof(v42));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v42);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "formatWordsHelper: formatWordsAndSplit attempt 3", 48);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v42);
  }

  quasar::formatWordsAndSplit(v58, v11, v42);
  std::__optional_storage_base<std::vector<quasar::Token>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<quasar::Token>,false>>(v32, v42);
  std::__optional_storage_base<std::vector<quasar::Token>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<quasar::Token>,false>>(&v34, &v43);
  std::__optional_storage_base<std::vector<quasar::Token>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<quasar::Token>,false>>(v37, &v45);
  if (BYTE8(v46) == 1)
  {
    __str.__r_.__value_.__r.__words[0] = &v45;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__str);
  }

  if (BYTE8(v44) == 1)
  {
    __str.__r_.__value_.__r.__words[0] = &v43;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__str);
  }

  if (v42[24] == 1)
  {
    __str.__r_.__value_.__r.__words[0] = v42;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__str);
  }

  if (v33)
  {
    v13 = v38;
    if (v36 == 1 && (v38 & 1) != 0)
    {
LABEL_71:
      if ((v36 & 1) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v42);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "fwasOutput.postItnWords", 23);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v42);
      }

      if (&v34 != a3)
      {
        std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(a3, v34, v35, 0x6DB6DB6DB6DB6DB7 * ((v35 - v34) >> 5));
      }

      v15 = *v59;
      v14 = *&v59[8];
      if (*v59 != *&v59[8])
      {
        v16 = *&v59[8] - *v59;
        v17 = *(a1 + 56);
        if (*&v59[8] - *v59 != *(a1 + 64) - v17)
        {
          goto LABEL_80;
        }

        do
        {
          v18 = std::equal_to<std::string>::operator()[abi:ne200100](v42, v15, v17);
          if (!v18)
          {
            break;
          }

          v15 += 3;
          v17 += 3;
        }

        while (v15 != v14);
        if (!v18)
        {
          v15 = *v59;
          v14 = *&v59[8];
          v16 = *&v59[8] - *v59;
LABEL_80:
          v19 = *(a1 + 176);
          if (v16 == *(a1 + 184) - v19)
          {
            while (v15 != v14)
            {
              if (!std::equal_to<std::string>::operator()[abi:ne200100](v42, v15, v19))
              {
                goto LABEL_97;
              }

              v15 += 3;
              v19 += 3;
            }

            quasar::popLeadingAppendedAutoPunctuation(a3);
          }
        }
      }

LABEL_97:
      v22 = *a3;
      v21 = *(a3 + 8);
      if (*a3 != v21 && *(a1 + 32) != *(a1 + 40) && !isPreItnEosPunctuation && *v59 == *&v59[8])
      {
        if (quasar::gLogLevel >= 5)
        {
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          __p = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v43 = 0u;
          memset(v42, 0, sizeof(v42));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v42);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "formatWordsHelper: Checking first letter casing", 47);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(v42);
        }

        quasar::utf::toU32String();
      }

      if (v22 != v21 && v37[0] != v37[1] && *(v21 - 52) == 1)
      {
        if (quasar::gLogLevel >= 5)
        {
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          __p = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v43 = 0u;
          memset(v42, 0, sizeof(v42));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v42);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "formatWordsHelper: Checking trailing AutoPunctuation", 52);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(v42);
        }

        quasar::trimUnicode();
      }

      if (v22 != v21 && v32[0] != v32[1])
      {
        quasar::Token::Token(v42, v22);
        for (i = *(a1 + 216); i; i = *i)
        {
          if (quasar::startsWith(v42, i + 16))
          {
            v24 = *a3;
            LOBYTE(__str.__r_.__value_.__l.__data_) = 0;
            LOBYTE(v30.__r_.__value_.__l.__data_) = 0;
            std::vector<quasar::Token>::emplace<char const(&)[2],unsigned int const&,unsigned int const&,unsigned int const&,float const&,BOOL,BOOL>(a3, v24, " ", &v42[28], &v42[28], &v42[28], &v43.n128_f32[2], &__str, &v30);
          }
        }

        if (SBYTE7(v53) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v51) < 0)
        {
          operator delete(v50);
        }

        __str.__r_.__value_.__r.__words[0] = &v48 + 8;
        std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&__str);
        if (SBYTE7(v48) < 0)
        {
          operator delete(v47);
        }

        __str.__r_.__value_.__r.__words[0] = &v45.n128_u64[1];
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
        if (v45.n128_i8[7] < 0)
        {
          operator delete(v44);
        }

        if ((v42[23] & 0x80000000) != 0)
        {
          operator delete(*v42);
        }
      }

      if (v38 == 1)
      {
        *v42 = v37;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v42);
      }

      if (v36 == 1)
      {
        *v42 = &v34;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v42);
      }

      if (v33 == 1)
      {
        *v42 = v32;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v42);
      }

      *v42 = &v59[24];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v42);
      *v42 = v59;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v42);
      *v42 = &v58[4];
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v42);
      std::__function::__value_func<std::vector<quasar::Token> ()(std::vector<quasar::Token> const&)>::~__value_func[abi:ne200100](v58);
      goto LABEL_132;
    }
  }

  else
  {
    v13 = v38;
  }

  if (v13)
  {
    *v42 = v37;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v42);
  }

  if (v36 == 1)
  {
    *v42 = &v34;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v42);
  }

  if (v33 == 1)
  {
    *v42 = v32;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v42);
  }

  *v42 = &v59[24];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v42);
  *v42 = v59;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v42);
  *v42 = &v58[4];
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v42);
  std::__function::__value_func<std::vector<quasar::Token> ()(std::vector<quasar::Token> const&)>::~__value_func[abi:ne200100](v58);
LABEL_92:
  if (quasar::gLogLevel >= 5)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    __p = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    memset(v42, 0, sizeof(v42));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v42);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "formatWordsHelper: formatter - simple case", 42);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v42);
  }

  v20 = *(a1 + 24);
  if (!v20)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v20 + 48))(v42);
  std::vector<quasar::Token>::__vdeallocate(a3);
  *a3 = *v42;
  *(a3 + 16) = *&v42[16];
  memset(v42, 0, 24);
  v58[0] = v42;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v58);
LABEL_132:
  if (*(a1 + 152) == 1)
  {
    quasar::popLeadingAppendedAutoPunctuation(a3);
  }

  v25 = *(a3 + 8);
  if (*a3 != v25 && *(v25 - 52) == 1 && *(a1 + 153) == 1)
  {
    quasar::popTrailingAppendedAutoPunctuation(a3);
    v26 = *(a1 + 160);
    if (v26)
    {
      *v26 = 1;
    }
  }

  v27 = *(a3 + 8);
  if (*a3 != v27 && *(v27 - 52) == 1 && *(a1 + 154) == 1)
  {
    quasar::separateTrailingAppendedAutoPunctuation(a3, a3 + 24);
  }

  quasar::unadjustTimestamps(v39, a3, v42);
  std::vector<quasar::Token>::__vdeallocate(a3);
  *a3 = *v42;
  *(a3 + 16) = *&v42[16];
  memset(v42, 0, 24);
  v58[0] = v42;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v58);
  quasar::unadjustTimestamps(v39, (a3 + 24), v42);
  std::vector<quasar::Token>::__vdeallocate((a3 + 24));
  *(a3 + 24) = *v42;
  *(a3 + 40) = *&v42[16];
  memset(v42, 0, 24);
  v58[0] = v42;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v58);
  quasar::dump(a3, v28);
  *v42 = &v40;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v42);
  if (v39[0])
  {
    v39[1] = v39[0];
    operator delete(v39[0]);
  }
}

void *std::function<std::vector<quasar::Token> ()(std::vector<quasar::Token> const&)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<std::vector<quasar::Token> ()(std::vector<quasar::Token> const&)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<std::vector<quasar::Token> ()(std::vector<quasar::Token> const&)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<std::vector<quasar::Token> ()(std::vector<quasar::Token> const&)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void **std::vector<quasar::Token>::emplace<char const(&)[2],unsigned int const&,unsigned int const&,unsigned int const&,float const&,BOOL,BOOL>(void *a1, std::string *a2, char *__s, _DWORD *a4, _DWORD *a5, _DWORD *a6, float *a7, _BYTE *a8, _BYTE *a9)
{
  p_data = &a2->__r_.__value_.__l.__data_;
  v12 = a1[1];
  v11 = a1[2];
  if (v12 >= v11)
  {
    v13 = *a1;
    v14 = 0x6DB6DB6DB6DB6DB7 * ((v12 - *a1) >> 5) + 1;
    if (v14 > 0x124924924924924)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v15 = a2 - v13;
    v16 = 0x6DB6DB6DB6DB6DB7 * ((v11 - v13) >> 5);
    v17 = 2 * v16;
    if (2 * v16 <= v14)
    {
      v17 = 0x6DB6DB6DB6DB6DB7 * ((v12 - *a1) >> 5) + 1;
    }

    if (v16 >= 0x92492492492492)
    {
      v18 = 0x124924924924924;
    }

    else
    {
      v18 = v17;
    }

    v22 = a1;
    if (v18)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Token>>(a1, v18);
    }

    v20.__r_.__value_.__r.__words[0] = 0;
    v20.__r_.__value_.__l.__size_ = 32 * (v15 >> 5);
    v20.__r_.__value_.__r.__words[2] = v20.__r_.__value_.__l.__size_;
    v21 = 0;
    std::__split_buffer<quasar::Token>::emplace_back<char const(&)[2],unsigned int const&,unsigned int const&,unsigned int const&,float const&,BOOL,BOOL>(&v20, __s, a4, a5, a6, a7, a8, a9);
    p_data = std::vector<quasar::Token>::__swap_out_circular_buffer(a1, &v20, p_data);
    std::__split_buffer<quasar::Token>::~__split_buffer(&v20);
  }

  else if (a2 == v12)
  {
    std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,char const(&)[2],unsigned int const&,unsigned int const&,unsigned int const&,float const&,BOOL,BOOL>(a1, v12, __s, a4, a5, a6, a7, a8, a9);
    a1[1] = v12 + 224;
  }

  else
  {
    v33 = a1;
    std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,char const(&)[2],unsigned int const&,unsigned int const&,unsigned int const&,float const&,BOOL,BOOL>(a1, &v20, __s, a4, a5, a6, a7, a8, a9);
    std::vector<quasar::Token>::__move_range(a1, p_data, a1[1], (p_data + 28));
    quasar::Token::operator=(p_data, &v20);
    if (v32 < 0)
    {
      operator delete(__p);
    }

    if (v30 < 0)
    {
      operator delete(v29);
    }

    v34[0] = &v28;
    std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v34);
    if (v27 < 0)
    {
      operator delete(v26);
    }

    v34[0] = &v25;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v34);
    if (v24 < 0)
    {
      operator delete(v23);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  return p_data;
}

uint64_t *std::map<int,int>::at(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 7);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 4;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

__n128 std::__optional_storage_base<std::vector<quasar::Token>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<quasar::Token>,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      std::vector<quasar::Token>::__vdeallocate(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void quasar::FormatWordsAndSplitInput::~FormatWordsAndSplitInput(quasar::FormatWordsAndSplitInput *this)
{
  v2 = (this + 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 56);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 32);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__function::__value_func<std::vector<quasar::Token> ()(std::vector<quasar::Token> const&)>::~__value_func[abi:ne200100](this);
}

void quasar::FormatWordsHelperOutput::~FormatWordsHelperOutput(void **this)
{
  v2 = this + 3;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t std::vector<quasar::Token>::__emplace_back_slow_path<std::string const&,int &,int,int,float &,BOOL>(uint64_t a1, uint64_t a2, int *a3, int *a4, int *a5, float *a6, std::string::value_type *a7)
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
  std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,std::string const&,int &,int,int,float &,BOOL>(a1, (224 * v7), a2, a3, a4, a5, a6, a7);
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

void sub_1B54440F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,std::string const&,int &,int,int,float &,BOOL>(uint64_t a1, std::string *a2, uint64_t a3, int *a4, int *a5, int *a6, float *a7, std::string::value_type *a8)
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