void std::vector<fst::symbol_outT<int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::symbol_outT<int>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<fst::symbol_outT<int>>,fst::symbol_outT<int>*,fst::symbol_outT<int>*,fst::symbol_outT<int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *v4 = *v6;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 16) = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4 + 16, *(v6 + 16), *(v6 + 24), (*(v6 + 24) - *(v6 + 16)) >> 2);
      *(v4 + 40) = *(v6 + 40);
      v6 += 48;
      v4 = v11 + 48;
      v11 += 48;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::symbol_outT<int>>,fst::symbol_outT<int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<fst::symbol_outT<int> *,fst::symbol_outT<int> *,fst::symbol_outT<int> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    v7 = a2 + 24;
    do
    {
      v8 = v7 - 24;
      *a4 = *(v7 - 24);
      if (a4 != v7 - 24)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a4 + 16), *(v7 - 8), *v7, (*v7 - *(v7 - 8)) >> 2);
      }

      *(a4 + 40) = *(v7 + 16);
      a4 += 48;
      v7 += 48;
    }

    while (v8 + 48 != a3);
    return a3;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,BOOL>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::vector<fst::symbol_outT<int>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t std::vector<std::vector<fst::symbol_outT<int>>>::__construct_one_at_end[abi:ne200100]<std::vector<fst::symbol_outT<int>> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<fst::symbol_outT<int>>::__init_with_size[abi:ne200100]<fst::symbol_outT<int>*,fst::symbol_outT<int>*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<fst::symbol_outT<int>>>::__emplace_back_slow_path<std::vector<fst::symbol_outT<int>> const&>(uint64_t a1, uint64_t *a2)
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
  std::vector<fst::symbol_outT<int>>::__init_with_size[abi:ne200100]<fst::symbol_outT<int>*,fst::symbol_outT<int>*>(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
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
  std::__split_buffer<std::vector<fst::symbol_outT<int>>>::~__split_buffer(&v14);
  return v8;
}

void sub_1B5275970(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<fst::symbol_outT<int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<fst::symbol_outT<int>>::__init_with_size[abi:ne200100]<fst::symbol_outT<int>*,fst::symbol_outT<int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::symbol_outT<int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B52759EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::__split_buffer<std::vector<fst::symbol_outT<int>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<fst::symbol_outT<int>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<fst::symbol_outT<int>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

uint64_t std::vector<fst::LatticeWeightTpl<float>>::__emplace_back_slow_path<fst::LatticeWeightTpl<float> const&>(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v7);
  }

  __p = 0;
  v11 = (8 * v2);
  *v11 = *a2;
  v12 = 8 * v2 + 8;
  v13 = 0;
  std::vector<fst::LatticeWeightTpl<float>>::__swap_out_circular_buffer(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_1B5275B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::TokenInfo>::__emplace_back_slow_path<quasar::TokenInfo>(uint64_t a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0xE38E38E38E38E3)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 5) >= 0x71C71C71C71C71)
  {
    v6 = 0xE38E38E38E38E3;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TokenInfo>>(a1, v6);
  }

  v13 = 0;
  v14 = 288 * v2;
  std::allocator_traits<std::allocator<quasar::TokenInfo>>::construct[abi:ne200100]<quasar::TokenInfo,quasar::TokenInfo,0>(a1, 288 * v2, a2);
  v15 = 288 * v2 + 288;
  v7 = *(a1 + 8);
  v8 = 288 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TokenInfo>,quasar::TokenInfo*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::TokenInfo>::~__split_buffer(&v13);
  return v12;
}

void sub_1B5275CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::TokenInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<quasar::TokenInfo>>::construct[abi:ne200100]<quasar::TokenInfo,quasar::TokenInfo,0>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v3;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v4 = *(a3 + 24);
  *(a2 + 39) = *(a3 + 39);
  *(a2 + 24) = v4;
  v5 = a3[3];
  *(a2 + 64) = *(a3 + 8);
  *(a2 + 48) = v5;
  *(a3 + 7) = 0;
  *(a3 + 8) = 0;
  *(a3 + 6) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = *(a3 + 72);
  *(a2 + 88) = *(a3 + 11);
  *(a3 + 9) = 0;
  *(a3 + 10) = 0;
  *(a3 + 11) = 0;
  v6 = a3[6];
  *(a2 + 112) = *(a3 + 14);
  *(a2 + 96) = v6;
  *(a3 + 13) = 0;
  *(a3 + 14) = 0;
  *(a3 + 12) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 120) = *(a3 + 120);
  *(a2 + 136) = *(a3 + 17);
  *(a3 + 15) = 0;
  *(a3 + 16) = 0;
  *(a3 + 17) = 0;
  v7 = a3[9];
  *(a2 + 160) = *(a3 + 20);
  *(a2 + 144) = v7;
  *(a3 + 19) = 0;
  *(a3 + 20) = 0;
  *(a3 + 18) = 0;
  v8 = *(a3 + 42);
  *(a2 + 172) = *(a3 + 86);
  *(a2 + 168) = v8;
  v9 = a3[11];
  *(a2 + 192) = *(a3 + 24);
  *(a2 + 176) = v9;
  *(a3 + 23) = 0;
  *(a3 + 24) = 0;
  *(a3 + 22) = 0;
  v10 = *(a3 + 200);
  *(a2 + 216) = *(a3 + 54);
  *(a2 + 200) = v10;
  v11 = *(a3 + 28);
  *(a2 + 232) = *(a3 + 58);
  *(a2 + 224) = v11;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a2 + 240) = 0;
  *(a2 + 240) = a3[15];
  *(a2 + 256) = *(a3 + 32);
  *(a3 + 30) = 0;
  *(a3 + 31) = 0;
  *(a3 + 32) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a2 + 264) = *(a3 + 33);
  result = a3[17];
  *(a2 + 272) = result;
  *(a3 + 33) = 0;
  *(a3 + 34) = 0;
  *(a3 + 35) = 0;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TokenInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xE38E38E38E38E4)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TokenInfo>,quasar::TokenInfo*>(uint64_t a1, quasar::Token *a2, __int128 *a3, uint64_t a4)
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
      std::allocator_traits<std::allocator<quasar::TokenInfo>>::construct[abi:ne200100]<quasar::TokenInfo,quasar::TokenInfo,0>(a1, a4, v7);
      v7 += 18;
      a4 = v12 + 288;
      v12 += 288;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<quasar::TokenInfo>>::destroy[abi:ne200100]<quasar::TokenInfo,0>(a1, v5);
      v5 = (v5 + 288);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TokenInfo>,quasar::TokenInfo*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TokenInfo>,quasar::TokenInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TokenInfo>,quasar::TokenInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TokenInfo>,quasar::TokenInfo*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 = (v3 - 288);
      std::allocator_traits<std::allocator<quasar::TokenInfo>>::destroy[abi:ne200100]<quasar::TokenInfo,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<quasar::TokenInfo>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::TokenInfo>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::TokenInfo>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 288;
    std::allocator_traits<std::allocator<quasar::TokenInfo>>::destroy[abi:ne200100]<quasar::TokenInfo,0>(v5, (v4 - 288));
  }
}

uint64_t std::vector<quasar::ChoiceInfo>::__emplace_back_slow_path<quasar::ChoiceInfo>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::ChoiceInfo>>(a1, v7);
  }

  v8 = (32 * v2);
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  *v8 = *a2;
  v8[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8[3] = *(a2 + 24);
  *&v17 = 32 * v2 + 32;
  v9 = *(a1 + 8);
  v10 = (32 * v2 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::ChoiceInfo>,quasar::ChoiceInfo*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<quasar::ChoiceInfo>::~__split_buffer(&v15);
  return v14;
}

void sub_1B5276184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::ChoiceInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::ChoiceInfo>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::ChoiceInfo>,quasar::ChoiceInfo*>(uint64_t a1, void **a2, void **a3, void *a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = v6[2];
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4[3] = v6[3];
      v6 += 4;
      a4 += 4;
    }

    while (v6 != a3);
    v11 = a4;
    v9 = 1;
    while (v5 != a3)
    {
      v12 = v5;
      std::vector<quasar::TokenInfo>::__destroy_vector::operator()[abi:ne200100](&v12);
      v5 += 4;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::ChoiceInfo>,quasar::ChoiceInfo*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::ChoiceInfo>,quasar::ChoiceInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::ChoiceInfo>,quasar::ChoiceInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::ChoiceInfo>,quasar::ChoiceInfo*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 4;
    v3 = v1;
    std::vector<quasar::TokenInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void **std::__split_buffer<quasar::ChoiceInfo>::~__split_buffer(void **a1)
{
  std::__split_buffer<quasar::ChoiceInfo>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::ChoiceInfo>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 32);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<quasar::TokenInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<kaldi::TimestampsAndConfidence>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<kaldi::TimestampsAndConfidence>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<kaldi::TimestampsAndConfidence>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<kaldi::TimestampsAndConfidence>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<kaldi::TimestampsAndConfidence>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<kaldi::TimestampsAndConfidence>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::vector<kaldi::TimestampsAndConfidence>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<kaldi::TimestampsAndConfidence>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<kaldi::TimestampsAndConfidence>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

void std::vector<std::vector<quasar::NBestToken<1ul>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<quasar::NBestToken<1ul>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<quasar::NBestToken<1ul>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 11;
        std::allocator<quasar::NBestToken<1ul>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<quasar::NBestToken<1ul>>::destroy[abi:ne200100](uint64_t a1, void *a2)
{
  v3 = a2[8];
  if (v3)
  {
    a2[9] = v3;
    operator delete(v3);
  }

  v4 = a2[2];
  if (v4)
  {
    a2[3] = v4;

    operator delete(v4);
  }
}

void *std::vector<quasar::Token>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 < 0x124924924924925)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Token>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B52768B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void quasar::ProcessHypotheses<1ul,0l,-1l>(quasar::DecoderPassData const&,std::shared_ptr<quasar::DecoderChainOutput> const&,std::vector<quasar::CalculateJoinedNBest<1ul>::HypothesisVector,std::allocator<quasar::CalculateJoinedNBest<1ul>::HypothesisVector>> const&,std::vector<std::vector<quasar::Token>> *,std::vector<double> *,kaldi::LatticeScoreCache *)::{lambda(quasar::NBestToken<1ul> const&)#1}::operator()(_BYTE *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  quasar::Token::Token(v85);
  v84 = -1;
  *v87 = *a2;
  quasar::SymbolTableList::lookup(*(**(a1 + 1) + 488), *v87, v85, &v84);
  quasar::calculateLmeInfo((**(a1 + 1) + 600), a1[16], v84, v85);
  v6 = (a1 + 20);
  v7 = vld1_dup_f32(v6);
  *&v87[4] = vmul_s32(v7, vmovn_s64(*(a2 + 10)));
  v8 = *a1;
  if (*(*a1 + 32) && *(v8 + 80) && (*(v8 + 836) & 1) == 0)
  {
    v9 = *(a2 + 2);
    v10 = *(a2 + 3) - v9;
    v11 = v10 >> 2;
    if (v10)
    {
      v12 = 0;
      v82 = a2;
      do
      {
        v13 = *(v9 + 4 * v12);
        v14 = kaldi::TransitionModel::TransitionIdToPhone(*(*a1 + 80), v13);
        v15 = v14;
        v16 = *(a1 + 4);
        v17 = v12 + *(a2 + 5);
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        if (v18 >= v19)
        {
          v21 = *v16;
          v22 = v18 - *v16;
          v23 = v22 >> 4;
          v24 = (v22 >> 4) + 1;
          if (v24 >> 60)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v25 = v19 - v21;
          if (v25 >> 3 > v24)
          {
            v24 = v25 >> 3;
          }

          if (v25 >= 0x7FFFFFFFFFFFFFF0)
          {
            v24 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (v24)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(*(a1 + 4), v24);
          }

          v26 = 16 * v23;
          *v26 = v17;
          *(v26 + 8) = v13;
          *(v26 + 12) = v14;
          v20 = 16 * v23 + 16;
          v27 = (v26 - 16 * (v22 >> 4));
          memcpy(v27, v21, v22);
          v28 = *v16;
          *v16 = v27;
          *(v16 + 8) = v20;
          *(v16 + 16) = 0;
          if (v28)
          {
            operator delete(v28);
          }

          a2 = v82;
        }

        else
        {
          *v18 = v17;
          v20 = v18 + 16;
          *(v18 + 8) = v13;
          *(v18 + 12) = v14;
        }

        *(v16 + 8) = v20;
        v29 = *a1;
        if (*(*a1 + 216))
        {
          v30 = *(*(a1 + 4) + 8);
          if (!kaldi::SilencePhoneSet::isSilencePhone((v29 + 96), *(v30 - 4)) && kaldi::TransitionModel::IsFinal(*(v29 + 80), *(v30 - 8)) && (kaldi::WordBoundaryInfo::TypeOfPhone(*(*a1 + 216), v15) & 0xFFFFFFFE) == 2)
          {
            v31 = *(a1 + 5);
            v32 = (*(*(a1 + 4) + 8) - **(a1 + 4)) >> 4;
            v34 = *(v31 + 8);
            v33 = *(v31 + 16);
            if (v34 >= v33)
            {
              v36 = *v31;
              v37 = v34 - *v31;
              v38 = v37 >> 3;
              v39 = (v37 >> 3) + 1;
              if (v39 >> 61)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v40 = v33 - v36;
              if (v40 >> 2 > v39)
              {
                v39 = v40 >> 2;
              }

              v41 = v40 >= 0x7FFFFFFFFFFFFFF8;
              v42 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v41)
              {
                v42 = v39;
              }

              if (v42)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(*(a1 + 5), v42);
              }

              *(8 * v38) = v32;
              v35 = 8 * v38 + 8;
              memcpy(0, v36, v37);
              v43 = *v31;
              *v31 = 0;
              *(v31 + 8) = v35;
              *(v31 + 16) = 0;
              if (v43)
              {
                operator delete(v43);
              }

              a2 = v82;
            }

            else
            {
              *v34 = v32;
              v35 = (v34 + 1);
            }

            *(v31 + 8) = v35;
          }
        }

        isSilencePhone = kaldi::SilencePhoneSet::isSilencePhone((*a1 + 96), *(*(*(a1 + 4) + 8) - 4));
        if (!isSilencePhone)
        {
          v11 = v12;
        }

        if (a1[16])
        {
          v45 = *(*(*(*a1 + 80) + 96) + 4 * v13);
          v46 = **(a1 + 1);
          v47 = v46[126];
          v48 = v46[127];
          if (v47 >= v48)
          {
            v50 = v46[125];
            v51 = v47 - v50;
            v52 = (v47 - v50) >> 3;
            v53 = v52 + 1;
            if ((v52 + 1) >> 61)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v54 = v48 - v50;
            if (v54 >> 2 > v53)
            {
              v53 = v54 >> 2;
            }

            v41 = v54 >= 0x7FFFFFFFFFFFFFF8;
            v55 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v41)
            {
              v55 = v53;
            }

            if (v55)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,BOOL>>>((v46 + 125), v55);
            }

            v56 = 8 * v52;
            *v56 = v45;
            *(v56 + 4) = isSilencePhone;
            v49 = 8 * v52 + 8;
            memcpy(0, v50, v51);
            v57 = v46[125];
            v46[125] = 0;
            v46[126] = v49;
            v46[127] = 0;
            if (v57)
            {
              operator delete(v57);
            }

            a2 = v82;
          }

          else
          {
            *v47 = v45;
            *(v47 + 4) = isSilencePhone;
            v49 = v47 + 8;
          }

          v46[126] = v49;
        }

        ++v12;
        v9 = *(a2 + 2);
      }

      while (v12 < (*(a2 + 3) - v9) >> 2);
      v8 = *a1;
    }

    v58 = *(v8 + 216);
    if (!v58)
    {
      goto LABEL_61;
    }

    v61 = *(v58 + 40);
    v59 = v58 + 40;
    v60 = v61;
    if (!v61)
    {
      goto LABEL_61;
    }

    v62 = *a2;
    v63 = v59;
    do
    {
      if (*(v60 + 28) >= v62)
      {
        v63 = v60;
      }

      v60 = *(v60 + 8 * (*(v60 + 28) < v62));
    }

    while (v60);
    if (v63 != v59 && v62 >= *(v63 + 28))
    {
      if (v11 && quasar::gLogLevel >= 2)
      {
        memset(v83, 0, sizeof(v83));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v83);
        v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, "Non-silence phone detected at transition ", 41);
        v77 = MEMORY[0x1B8C84C30](v76, v11);
        v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, " ", 1);
        v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "(out of ", 8);
        v80 = MEMORY[0x1B8C84C30](v79, (*(a2 + 3) - *(a2 + 2)) >> 2);
        v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, ") for unpronouncable token; ", 28);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "whereas all silence phones were expected.", 41);
        quasar::QuasarWarnMessage::~QuasarWarnMessage(v83);
      }

      v64 = *(a1 + 5) * a2[10];
    }

    else
    {
LABEL_61:
      v64 = *(a1 + 5) + *(a1 + 5) * (a2[10] + v11);
    }

    *&v87[12] = v64;
  }

  if (a1[24] == 1)
  {
    v65 = a2 + 14;
    v66 = a2 + 15;
    v67 = round(expf(-*(a2 + 3)) * 1000.0);
  }

  else
  {
    v65 = a2 + 2;
    v66 = a2 + 3;
    v67 = 0.0;
  }

  v68 = *v66;
  DWORD1(v102) = *v65;
  DWORD2(v102) = v68;
  *&v87[16] = v67;
  *a3 = *v85;
  *(a3 + 16) = v86;
  v85[0] = 0;
  v85[1] = 0;
  v86 = 0;
  *(a3 + 24) = *v87;
  *(a3 + 39) = *&v87[15];
  v69 = *v88;
  v70 = v91;
  *(a3 + 64) = v89;
  *(a3 + 48) = v69;
  v88[0] = 0;
  v88[1] = 0;
  *(a3 + 72) = v90;
  *(a3 + 88) = v70;
  v89 = 0;
  v90 = 0uLL;
  v91 = 0;
  v71 = *__p;
  v72 = v95;
  *(a3 + 112) = v93;
  *(a3 + 96) = v71;
  __p[0] = 0;
  __p[1] = 0;
  *(a3 + 120) = v94;
  *(a3 + 136) = v72;
  v93 = 0;
  v94 = 0uLL;
  v95 = 0;
  v73 = v96;
  *(a3 + 160) = v97;
  *(a3 + 144) = v73;
  v96 = 0uLL;
  LODWORD(v70) = v98;
  *(a3 + 172) = v99;
  *(a3 + 168) = v70;
  v74 = v100;
  *(a3 + 192) = v101;
  *(a3 + 176) = v74;
  v97 = 0;
  v100 = 0uLL;
  v101 = 0;
  v75 = v102;
  *(a3 + 216) = v103;
  *(a3 + 200) = v75;
  *&v83[0] = &v94;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v83);
  if (SHIBYTE(v93) < 0)
  {
    operator delete(__p[0]);
  }

  *&v83[0] = &v90;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v83);
  if (SHIBYTE(v89) < 0)
  {
    operator delete(v88[0]);
  }

  if (SHIBYTE(v86) < 0)
  {
    operator delete(v85[0]);
  }
}

uint64_t quasar::ProcessHypotheses<1ul,0l,-1l>(quasar::DecoderPassData const&,std::shared_ptr<quasar::DecoderChainOutput> const&,std::vector<quasar::CalculateJoinedNBest<1ul>::HypothesisVector,std::allocator<quasar::CalculateJoinedNBest<1ul>::HypothesisVector>> const&,std::vector<std::vector<quasar::Token>> *,std::vector<double> *,kaldi::LatticeScoreCache *)::{lambda(unsigned long)#1}::operator()(uint64_t **a1, uint64_t a2)
{
  v23[17] = *MEMORY[0x1E69E9840];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  v4 = *a1[1];
  if (a2)
  {
    v5 = 16 * *(v4 + 8 * a2 - 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v4 + 8 * a2);
  if (v5 != 16 * v6)
  {
    v7 = **a1;
    v8 = v7 + 16 * v6;
    v9 = v5 + v7;
    do
    {
      v10 = a1[2];
      if (!kaldi::SilencePhoneSet::isSilencePhone((v10 + 12), *(v9 + 12)) && kaldi::TransitionModel::IsFinal(v10[10], *(v9 + 8)))
      {
        (*(*a1[2][21] + 88))(&__p);
        kaldi::quasar::Lexicon::BasifyPhone(&__p);
        v11 = &v18 + *(v18 - 24);
        if ((v11[32] & 5) == 0)
        {
          (*(**(v11 + 5) + 32))(v23);
          if (v23[16] >= 1)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, " ", 1);
          }
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

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v9 += 16;
    }

    while (v9 != v8);
  }

  std::stringbuf::str();
  v17[0] = *MEMORY[0x1E69E54D8];
  v14 = *(MEMORY[0x1E69E54D8] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v18 = v14;
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v22);
}

void quasar::ProcessHypotheses<1ul,-1l,0l>(quasar::DecoderPassData const&,std::shared_ptr<quasar::DecoderChainOutput> const&,std::vector<quasar::CalculateJoinedNBest<1ul>::HypothesisVector,std::allocator<quasar::CalculateJoinedNBest<1ul>::HypothesisVector>> const&,std::vector<std::vector<quasar::Token>> *,std::vector<double> *,kaldi::LatticeScoreCache *)::{lambda(quasar::NBestToken<1ul> const&)#1}::operator()(unsigned __int8 *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  quasar::Token::Token(v84);
  v83 = -1;
  *v86 = *a2;
  quasar::SymbolTableList::lookup(*(**(a1 + 1) + 488), *v86, v84, &v83);
  quasar::calculateLmeInfo((**(a1 + 1) + 600), a1[16], v83, v84);
  v6 = (a1 + 20);
  v7 = vld1_dup_f32(v6);
  *&v86[4] = vmul_s32(v7, vmovn_s64(*(a2 + 10)));
  v8 = *a1;
  if (*(*a1 + 32) && *(v8 + 80) && (*(v8 + 836) & 1) == 0)
  {
    v9 = *(a2 + 2);
    v10 = *(a2 + 3) - v9;
    v11 = v10 >> 2;
    if (v10)
    {
      v12 = 0;
      v13 = v10 >> 2;
      v81 = a2;
      do
      {
        v14 = *(v9 + 4 * v12);
        v15 = kaldi::TransitionModel::TransitionIdToPhone(*(*a1 + 80), v14);
        v16 = v15;
        v17 = *(a1 + 4);
        v18 = v12 + *(a2 + 5);
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        if (v19 >= v20)
        {
          v22 = *v17;
          v23 = v19 - *v17;
          v24 = v23 >> 4;
          v25 = (v23 >> 4) + 1;
          if (v25 >> 60)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v26 = v20 - v22;
          if (v26 >> 3 > v25)
          {
            v25 = v26 >> 3;
          }

          if (v26 >= 0x7FFFFFFFFFFFFFF0)
          {
            v25 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (v25)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(*(a1 + 4), v25);
          }

          v27 = 16 * v24;
          *v27 = v18;
          *(v27 + 8) = v14;
          *(v27 + 12) = v15;
          v21 = 16 * v24 + 16;
          v28 = (v27 - 16 * (v23 >> 4));
          memcpy(v28, v22, v23);
          v29 = *v17;
          *v17 = v28;
          *(v17 + 8) = v21;
          *(v17 + 16) = 0;
          if (v29)
          {
            operator delete(v29);
          }

          a2 = v81;
        }

        else
        {
          *v19 = v18;
          v21 = v19 + 16;
          *(v19 + 8) = v14;
          *(v19 + 12) = v15;
        }

        *(v17 + 8) = v21;
        v30 = *a1;
        if (*(*a1 + 216))
        {
          v31 = *(*(a1 + 4) + 8);
          if (!kaldi::SilencePhoneSet::isSilencePhone((v30 + 96), *(v31 - 4)) && kaldi::TransitionModel::IsFinal(*(v30 + 80), *(v31 - 8)) && (kaldi::WordBoundaryInfo::TypeOfPhone(*(*a1 + 216), v16) & 0xFFFFFFFE) == 2)
          {
            v32 = *(a1 + 5);
            v33 = (*(*(a1 + 4) + 8) - **(a1 + 4)) >> 4;
            v35 = *(v32 + 8);
            v34 = *(v32 + 16);
            if (v35 >= v34)
            {
              v37 = *v32;
              v38 = v35 - *v32;
              v39 = v38 >> 3;
              v40 = (v38 >> 3) + 1;
              if (v40 >> 61)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v41 = v34 - v37;
              if (v41 >> 2 > v40)
              {
                v40 = v41 >> 2;
              }

              v42 = v41 >= 0x7FFFFFFFFFFFFFF8;
              v43 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v42)
              {
                v43 = v40;
              }

              if (v43)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(*(a1 + 5), v43);
              }

              *(8 * v39) = v33;
              v36 = 8 * v39 + 8;
              memcpy(0, v37, v38);
              v44 = *v32;
              *v32 = 0;
              *(v32 + 8) = v36;
              *(v32 + 16) = 0;
              if (v44)
              {
                operator delete(v44);
              }

              a2 = v81;
            }

            else
            {
              *v35 = v33;
              v36 = (v35 + 1);
            }

            *(v32 + 8) = v36;
          }
        }

        isSilencePhone = kaldi::SilencePhoneSet::isSilencePhone((*a1 + 96), *(*(*(a1 + 4) + 8) - 4));
        if (!isSilencePhone)
        {
          v13 = v12;
        }

        if (a1[16])
        {
          v46 = *(*(*(*a1 + 80) + 96) + 4 * v14);
          v47 = **(a1 + 1);
          v48 = v47[126];
          v49 = v47[127];
          if (v48 >= v49)
          {
            v51 = v47[125];
            v52 = v48 - v51;
            v53 = (v48 - v51) >> 3;
            v54 = v53 + 1;
            if ((v53 + 1) >> 61)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v55 = v49 - v51;
            if (v55 >> 2 > v54)
            {
              v54 = v55 >> 2;
            }

            v42 = v55 >= 0x7FFFFFFFFFFFFFF8;
            v56 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v42)
            {
              v56 = v54;
            }

            if (v56)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,BOOL>>>((v47 + 125), v56);
            }

            v57 = 8 * v53;
            *v57 = v46;
            *(v57 + 4) = isSilencePhone;
            v50 = 8 * v53 + 8;
            memcpy(0, v51, v52);
            v58 = v47[125];
            v47[125] = 0;
            v47[126] = v50;
            v47[127] = 0;
            if (v58)
            {
              operator delete(v58);
            }

            a2 = v81;
          }

          else
          {
            *v48 = v46;
            *(v48 + 4) = isSilencePhone;
            v50 = v48 + 8;
          }

          v47[126] = v50;
        }

        ++v12;
        v9 = *(a2 + 2);
      }

      while (v12 < (*(a2 + 3) - v9) >> 2);
      v11 = v13;
      v8 = *a1;
    }

    v59 = *(v8 + 216);
    if (!v59)
    {
      goto LABEL_61;
    }

    v62 = *(v59 + 40);
    v60 = v59 + 40;
    v61 = v62;
    if (!v62)
    {
      goto LABEL_61;
    }

    v63 = *a2;
    v64 = v60;
    do
    {
      if (*(v61 + 28) >= v63)
      {
        v64 = v61;
      }

      v61 = *(v61 + 8 * (*(v61 + 28) < v63));
    }

    while (v61);
    if (v64 != v60 && v63 >= *(v64 + 28))
    {
      if (v11 && quasar::gLogLevel >= 2)
      {
        memset(v82, 0, sizeof(v82));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v82);
        v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, "Non-silence phone detected at transition ", 41);
        v76 = MEMORY[0x1B8C84C30](v75, v11);
        v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, " ", 1);
        v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, "(out of ", 8);
        v79 = MEMORY[0x1B8C84C30](v78, (*(a2 + 3) - *(a2 + 2)) >> 2);
        v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, ") for unpronouncable token; ", 28);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "whereas all silence phones were expected.", 41);
        quasar::QuasarWarnMessage::~QuasarWarnMessage(v82);
      }

      v65 = *(a1 + 5) * a2[10];
    }

    else
    {
LABEL_61:
      v65 = *(a1 + 5) + *(a1 + 5) * (a2[10] + v11);
    }

    *&v86[12] = v65;
  }

  v66 = a1[24];
  v67 = 2;
  if (a1[24])
  {
    v67 = 6;
  }

  *&v101[4] = *&a2[v67];
  *&v101[12] = vadd_f32(*(a2 + 14), *&v101[12]);
  v68 = 0.0;
  if (v66)
  {
    v68 = round(expf(-*(a2 + 3)) * 1000.0);
  }

  *&v86[16] = v68;
  *a3 = *v84;
  *(a3 + 16) = v85;
  v84[0] = 0;
  v84[1] = 0;
  v85 = 0;
  *(a3 + 24) = *v86;
  *(a3 + 39) = *&v86[15];
  v69 = v90;
  *(a3 + 64) = v88;
  *(a3 + 48) = *v87;
  v87[0] = 0;
  v87[1] = 0;
  *(a3 + 72) = v89;
  *(a3 + 88) = v69;
  v88 = 0;
  v89 = 0uLL;
  v90 = 0;
  v70 = *__p;
  v71 = v94;
  *(a3 + 112) = v92;
  *(a3 + 96) = v70;
  __p[0] = 0;
  __p[1] = 0;
  *(a3 + 120) = v93;
  *(a3 + 136) = v71;
  v92 = 0;
  v93 = 0uLL;
  v94 = 0;
  v72 = v95;
  *(a3 + 160) = v96;
  *(a3 + 144) = v72;
  v95 = 0uLL;
  LODWORD(v69) = v97;
  *(a3 + 172) = v98;
  *(a3 + 168) = v69;
  v73 = v99;
  *(a3 + 192) = v100;
  *(a3 + 176) = v73;
  v96 = 0;
  v99 = 0uLL;
  v100 = 0;
  v74 = *v101;
  *(a3 + 216) = *&v101[16];
  *(a3 + 200) = v74;
  *&v82[0] = &v93;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v82);
  if (SHIBYTE(v92) < 0)
  {
    operator delete(__p[0]);
  }

  *&v82[0] = &v89;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v82);
  if (SHIBYTE(v88) < 0)
  {
    operator delete(v87[0]);
  }

  if (SHIBYTE(v85) < 0)
  {
    operator delete(v84[0]);
  }
}

uint64_t quasar::ProcessHypotheses<1ul,-1l,0l>(quasar::DecoderPassData const&,std::shared_ptr<quasar::DecoderChainOutput> const&,std::vector<quasar::CalculateJoinedNBest<1ul>::HypothesisVector,std::allocator<quasar::CalculateJoinedNBest<1ul>::HypothesisVector>> const&,std::vector<std::vector<quasar::Token>> *,std::vector<double> *,kaldi::LatticeScoreCache *)::{lambda(unsigned long)#1}::operator()(uint64_t **a1, uint64_t a2)
{
  v23[17] = *MEMORY[0x1E69E9840];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  v4 = *a1[1];
  if (a2)
  {
    v5 = 16 * *(v4 + 8 * a2 - 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v4 + 8 * a2);
  if (v5 != 16 * v6)
  {
    v7 = **a1;
    v8 = v7 + 16 * v6;
    v9 = v5 + v7;
    do
    {
      v10 = a1[2];
      if (!kaldi::SilencePhoneSet::isSilencePhone((v10 + 12), *(v9 + 12)) && kaldi::TransitionModel::IsFinal(v10[10], *(v9 + 8)))
      {
        (*(*a1[2][21] + 88))(&__p);
        kaldi::quasar::Lexicon::BasifyPhone(&__p);
        v11 = &v18 + *(v18 - 24);
        if ((v11[32] & 5) == 0)
        {
          (*(**(v11 + 5) + 32))(v23);
          if (v23[16] >= 1)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, " ", 1);
          }
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

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v9 += 16;
    }

    while (v9 != v8);
  }

  std::stringbuf::str();
  v17[0] = *MEMORY[0x1E69E54D8];
  v14 = *(MEMORY[0x1E69E54D8] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v18 = v14;
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v22);
}

void std::vector<std::vector<quasar::NBestToken<0ul>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<quasar::NBestToken<0ul>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<quasar::NBestToken<0ul>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::NBestToken<0ul>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::NBestToken<0ul>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 88)
  {
    v4 = *(i - 72);
    if (v4)
    {
      *(i - 64) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void quasar::ProcessHypotheses<0ul,-1l,-1l>(quasar::DecoderPassData const&,std::shared_ptr<quasar::DecoderChainOutput> const&,std::vector<quasar::CalculateJoinedNBest<0ul>::HypothesisVector,std::allocator<quasar::CalculateJoinedNBest<0ul>::HypothesisVector>> const&,std::vector<std::vector<quasar::Token>> *,std::vector<double> *,kaldi::LatticeScoreCache *)::{lambda(quasar::NBestToken<0ul> const&)#1}::operator()(const float *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  quasar::Token::Token(v81);
  v80 = -1;
  *v83 = *a2;
  quasar::SymbolTableList::lookup(*(**(a1 + 1) + 488), *v83, v81, &v80);
  quasar::calculateLmeInfo((**(a1 + 1) + 600), *(a1 + 16), v80, v81);
  v6 = a1 + 5;
  v7 = vld1_dup_f32(v6);
  *&v83[4] = vmul_s32(v7, vmovn_s64(*(a2 + 10)));
  v8 = *a1;
  if (*(*a1 + 32) && *(v8 + 80) && (*(v8 + 836) & 1) == 0)
  {
    v9 = *(a2 + 2);
    v10 = *(a2 + 3) - v9;
    v11 = v10 >> 2;
    if (v10)
    {
      v12 = 0;
      v13 = v10 >> 2;
      v78 = a2;
      do
      {
        v14 = *(v9 + 4 * v12);
        v15 = kaldi::TransitionModel::TransitionIdToPhone(*(*a1 + 80), v14);
        v16 = v15;
        v17 = *(a1 + 4);
        v18 = v12 + *(a2 + 5);
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        if (v19 >= v20)
        {
          v22 = *v17;
          v23 = v19 - *v17;
          v24 = v23 >> 4;
          v25 = (v23 >> 4) + 1;
          if (v25 >> 60)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v26 = v20 - v22;
          if (v26 >> 3 > v25)
          {
            v25 = v26 >> 3;
          }

          if (v26 >= 0x7FFFFFFFFFFFFFF0)
          {
            v25 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (v25)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(*(a1 + 4), v25);
          }

          v27 = 16 * v24;
          *v27 = v18;
          *(v27 + 8) = v14;
          *(v27 + 12) = v15;
          v21 = 16 * v24 + 16;
          v28 = (v27 - 16 * (v23 >> 4));
          memcpy(v28, v22, v23);
          v29 = *v17;
          *v17 = v28;
          *(v17 + 8) = v21;
          *(v17 + 16) = 0;
          if (v29)
          {
            operator delete(v29);
          }

          a2 = v78;
        }

        else
        {
          *v19 = v18;
          v21 = v19 + 16;
          *(v19 + 8) = v14;
          *(v19 + 12) = v15;
        }

        *(v17 + 8) = v21;
        v30 = *a1;
        if (*(*a1 + 216))
        {
          v31 = *(*(a1 + 4) + 8);
          if (!kaldi::SilencePhoneSet::isSilencePhone((v30 + 96), *(v31 - 4)) && kaldi::TransitionModel::IsFinal(*(v30 + 80), *(v31 - 8)) && (kaldi::WordBoundaryInfo::TypeOfPhone(*(*a1 + 216), v16) & 0xFFFFFFFE) == 2)
          {
            v32 = *(a1 + 5);
            v33 = (*(*(a1 + 4) + 8) - **(a1 + 4)) >> 4;
            v35 = *(v32 + 8);
            v34 = *(v32 + 16);
            if (v35 >= v34)
            {
              v37 = *v32;
              v38 = v35 - *v32;
              v39 = v38 >> 3;
              v40 = (v38 >> 3) + 1;
              if (v40 >> 61)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v41 = v34 - v37;
              if (v41 >> 2 > v40)
              {
                v40 = v41 >> 2;
              }

              v42 = v41 >= 0x7FFFFFFFFFFFFFF8;
              v43 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v42)
              {
                v43 = v40;
              }

              if (v43)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(*(a1 + 5), v43);
              }

              *(8 * v39) = v33;
              v36 = 8 * v39 + 8;
              memcpy(0, v37, v38);
              v44 = *v32;
              *v32 = 0;
              *(v32 + 8) = v36;
              *(v32 + 16) = 0;
              if (v44)
              {
                operator delete(v44);
              }

              a2 = v78;
            }

            else
            {
              *v35 = v33;
              v36 = (v35 + 1);
            }

            *(v32 + 8) = v36;
          }
        }

        isSilencePhone = kaldi::SilencePhoneSet::isSilencePhone((*a1 + 96), *(*(*(a1 + 4) + 8) - 4));
        if (!isSilencePhone)
        {
          v13 = v12;
        }

        if (a1[4])
        {
          v46 = *(*(*(*a1 + 80) + 96) + 4 * v14);
          v47 = **(a1 + 1);
          v48 = v47[126];
          v49 = v47[127];
          if (v48 >= v49)
          {
            v51 = v47[125];
            v52 = v48 - v51;
            v53 = (v48 - v51) >> 3;
            v54 = v53 + 1;
            if ((v53 + 1) >> 61)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v55 = v49 - v51;
            if (v55 >> 2 > v54)
            {
              v54 = v55 >> 2;
            }

            v42 = v55 >= 0x7FFFFFFFFFFFFFF8;
            v56 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v42)
            {
              v56 = v54;
            }

            if (v56)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,BOOL>>>((v47 + 125), v56);
            }

            v57 = 8 * v53;
            *v57 = v46;
            *(v57 + 4) = isSilencePhone;
            v50 = 8 * v53 + 8;
            memcpy(0, v51, v52);
            v58 = v47[125];
            v47[125] = 0;
            v47[126] = v50;
            v47[127] = 0;
            if (v58)
            {
              operator delete(v58);
            }

            a2 = v78;
          }

          else
          {
            *v48 = v46;
            *(v48 + 4) = isSilencePhone;
            v50 = v48 + 8;
          }

          v47[126] = v50;
        }

        ++v12;
        v9 = *(a2 + 2);
      }

      while (v12 < (*(a2 + 3) - v9) >> 2);
      v11 = v13;
      v8 = *a1;
    }

    v59 = *(v8 + 216);
    if (!v59)
    {
      goto LABEL_61;
    }

    v62 = *(v59 + 40);
    v60 = v59 + 40;
    v61 = v62;
    if (!v62)
    {
      goto LABEL_61;
    }

    v63 = *a2;
    v64 = v60;
    do
    {
      if (*(v61 + 28) >= v63)
      {
        v64 = v61;
      }

      v61 = *(v61 + 8 * (*(v61 + 28) < v63));
    }

    while (v61);
    if (v64 != v60 && v63 >= *(v64 + 28))
    {
      if (v11 && quasar::gLogLevel >= 2)
      {
        memset(v79, 0, sizeof(v79));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v79);
        v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, "Non-silence phone detected at transition ", 41);
        v73 = MEMORY[0x1B8C84C30](v72, v11);
        v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, " ", 1);
        v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, "(out of ", 8);
        v76 = MEMORY[0x1B8C84C30](v75, (*(a2 + 3) - *(a2 + 2)) >> 2);
        v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, ") for unpronouncable token; ", 28);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, "whereas all silence phones were expected.", 41);
        quasar::QuasarWarnMessage::~QuasarWarnMessage(v79);
      }

      v65 = *(a1 + 5) * a2[10];
    }

    else
    {
LABEL_61:
      v65 = *(a1 + 5) + *(a1 + 5) * (a2[10] + v11);
    }

    *&v83[12] = v65;
  }

  *(&v98 + 4) = *(a2 + 1);
  *&v83[16] = 0;
  *a3 = *v81;
  *(a3 + 16) = v82;
  v81[0] = 0;
  v81[1] = 0;
  v82 = 0;
  *(a3 + 24) = *v83;
  *(a3 + 39) = *&v83[15];
  *(a3 + 48) = *v84;
  v66 = v87;
  *(a3 + 64) = v85;
  v84[0] = 0;
  v84[1] = 0;
  *(a3 + 72) = v86;
  *(a3 + 88) = v66;
  v85 = 0;
  v86 = 0uLL;
  v87 = 0;
  v67 = *__p;
  v68 = v91;
  *(a3 + 112) = v89;
  *(a3 + 96) = v67;
  __p[0] = 0;
  __p[1] = 0;
  *(a3 + 120) = v90;
  *(a3 + 136) = v68;
  v89 = 0;
  v90 = 0uLL;
  v91 = 0;
  v69 = v92;
  *(a3 + 160) = v93;
  *(a3 + 144) = v69;
  v92 = 0uLL;
  LODWORD(v66) = v94;
  *(a3 + 172) = v95;
  *(a3 + 168) = v66;
  v70 = v96;
  *(a3 + 192) = v97;
  *(a3 + 176) = v70;
  v93 = 0;
  v96 = 0uLL;
  v97 = 0;
  v71 = v98;
  *(a3 + 216) = v99;
  *(a3 + 200) = v71;
  *&v79[0] = &v90;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v79);
  if (SHIBYTE(v89) < 0)
  {
    operator delete(__p[0]);
  }

  *&v79[0] = &v86;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v79);
  if (SHIBYTE(v85) < 0)
  {
    operator delete(v84[0]);
  }

  if (SHIBYTE(v82) < 0)
  {
    operator delete(v81[0]);
  }
}

uint64_t quasar::ProcessHypotheses<0ul,-1l,-1l>(quasar::DecoderPassData const&,std::shared_ptr<quasar::DecoderChainOutput> const&,std::vector<quasar::CalculateJoinedNBest<0ul>::HypothesisVector,std::allocator<quasar::CalculateJoinedNBest<0ul>::HypothesisVector>> const&,std::vector<std::vector<quasar::Token>> *,std::vector<double> *,kaldi::LatticeScoreCache *)::{lambda(unsigned long)#1}::operator()(uint64_t **a1, uint64_t a2)
{
  v23[17] = *MEMORY[0x1E69E9840];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  v4 = *a1[1];
  if (a2)
  {
    v5 = 16 * *(v4 + 8 * a2 - 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v4 + 8 * a2);
  if (v5 != 16 * v6)
  {
    v7 = **a1;
    v8 = v7 + 16 * v6;
    v9 = v5 + v7;
    do
    {
      v10 = a1[2];
      if (!kaldi::SilencePhoneSet::isSilencePhone((v10 + 12), *(v9 + 12)) && kaldi::TransitionModel::IsFinal(v10[10], *(v9 + 8)))
      {
        (*(*a1[2][21] + 88))(&__p);
        kaldi::quasar::Lexicon::BasifyPhone(&__p);
        v11 = &v18 + *(v18 - 24);
        if ((v11[32] & 5) == 0)
        {
          (*(**(v11 + 5) + 32))(v23);
          if (v23[16] >= 1)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, " ", 1);
          }
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

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v9 += 16;
    }

    while (v9 != v8);
  }

  std::stringbuf::str();
  v17[0] = *MEMORY[0x1E69E54D8];
  v14 = *(MEMORY[0x1E69E54D8] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v18 = v14;
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v22);
}

std::string *std::__shared_ptr_emplace<quasar::Token>::__shared_ptr_emplace[abi:ne200100]<std::string &,float &,float &,float &,double,BOOL,BOOL,std::string &,std::string,std::allocator<quasar::Token>,0>(std::string *a1, uint64_t a2, float *a3, float *a4, float *a5, double *a6, std::string::value_type *a7, std::string::value_type *a8, __int128 *a9, __int128 *a10)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F2D094C8;
  std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,std::string &,float &,float &,float &,double,BOOL,BOOL,std::string &,std::string>(&v12, a1 + 1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return a1;
}

void std::__shared_ptr_emplace<quasar::Token>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D094C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,std::string &,float &,float &,float &,double,BOOL,BOOL,std::string &,std::string>(uint64_t a1, std::string *a2, uint64_t a3, float *a4, float *a5, float *a6, double *a7, std::string::value_type *a8, std::string::value_type *a9, __int128 *a10, __int128 *a11)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *a3, *(a3 + 8));
  }

  else
  {
    v27 = *a3;
  }

  v17 = *a4;
  v18 = *a5;
  v19 = *a6;
  v20 = *a7;
  v21 = *a8;
  v22 = *a9;
  memset(v26, 0, sizeof(v26));
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  v23 = v20;
  quasar::Token::Token(a2, &v27, v17, v18, v19, v21, v22, a10, v23, a11, v26, 0, __p, 0, 0, 0);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v26;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](__p);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void sub_1B5278C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
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

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<quasar::OnlineLatticeBiglmFasterDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineLatticeBiglmFasterDecoder>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09518;
  quasar::OnlineLatticeBiglmFasterDecoder::OnlineLatticeBiglmFasterDecoder((a1 + 3), a2);
}

void std::__shared_ptr_emplace<quasar::OnlineLatticeBiglmFasterDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09518;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineLatticeBiglmFasterDecoder::OnlineLatticeBiglmFasterDecoder(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = quasar::Decoder::Decoder(a1, a2);
  *v3 = &unk_1F2D144C0;
  kaldi::quasar::OnlineLatticeBiglmFasterDecoderConfig::OnlineLatticeBiglmFasterDecoderConfig((v3 + 58));
  *(a1 + 864) = 0;
  *(a1 + 848) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0;
  *(a1 + 1024) = 1065353216;
  *(a1 + 1032) = 0;
  *(a1 + 1088) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1080) = a1 + 1088;
  *(a1 + 1168) = 0;
  *(a1 + 1152) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1104) = 0u;
  _ZNSt3__115allocate_sharedB8ne200100IN3fst11SymbolTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B5279260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v15 + 2112);
  std::deque<int>::~deque[abi:ne200100](v16);
  quasar::UttDetectConfig::~UttDetectConfig((v15 + 1648));
  quasar::EndPointDecoderConfig::~EndPointDecoderConfig((v15 + 1504));
  std::unique_ptr<std::map<wchar_t,wchar_t>>::~unique_ptr[abi:ne200100]((v15 + 1488));
  if (*(v15 + 1487) < 0)
  {
    operator delete(*(v15 + 1464));
  }

  v20 = *(v15 + 1456);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (*(v15 + 1447) < 0)
  {
    operator delete(*(v15 + 1424));
  }

  if (*(v15 + 1423) < 0)
  {
    operator delete(*v18);
  }

  v21 = *(v15 + 1384);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (*(v15 + 1375) < 0)
  {
    operator delete(*(v15 + 1352));
  }

  if (*(v15 + 1351) < 0)
  {
    operator delete(*(v15 + 1328));
  }

  kaldi::SilencePhoneSet::~SilencePhoneSet((v15 + 1240));
  if (*(v15 + 1239) < 0)
  {
    operator delete(*(v15 + 1216));
  }

  if (*(v15 + 1215) < 0)
  {
    operator delete(*v17);
  }

  v22 = *(v15 + 1184);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (*(v15 + 1175) < 0)
  {
    operator delete(*(v15 + 1152));
  }

  v23 = (v15 + 1104);
  v24 = *(v15 + 1128);
  if (v24)
  {
    *(v15 + 1136) = v24;
    operator delete(v24);
  }

  v25 = *v23;
  if (*v23)
  {
    *(v15 + 1112) = v25;
    operator delete(v25);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(v15 + 1080, *(v15 + 1088));
  v26 = *(v15 + 1072);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v27 = *(v15 + 1056);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  kaldi::quasar::DynamicClassTagDict::~DynamicClassTagDict((v15 + 928));
  if (*(v15 + 927) < 0)
  {
    operator delete(*(v15 + 904));
  }

  if (*(v15 + 903) < 0)
  {
    operator delete(*(v15 + 880));
  }

  if (*(v15 + 871) < 0)
  {
    operator delete(*(v15 + 848));
  }

  if (*(v15 + 839) < 0)
  {
    operator delete(*(v15 + 816));
  }

  if (*(v15 + 815) < 0)
  {
    operator delete(*(v15 + 792));
  }

  if (*(v15 + 791) < 0)
  {
    operator delete(*(v15 + 768));
  }

  if (*(v15 + 767) < 0)
  {
    operator delete(*(v15 + 744));
  }

  if (*(v15 + 743) < 0)
  {
    operator delete(*(v15 + 720));
  }

  if (*(v15 + 719) < 0)
  {
    operator delete(*(v15 + 696));
  }

  if (*(v15 + 695) < 0)
  {
    operator delete(*(v15 + 672));
  }

  if (*(v15 + 671) < 0)
  {
    operator delete(*(v15 + 648));
  }

  if (*(v15 + 647) < 0)
  {
    operator delete(*(v15 + 624));
  }

  quasar::Decoder::~Decoder(v15);
  _Unwind_Resume(a1);
}

void quasar::EndPointDecoderConfig::~EndPointDecoderConfig(quasar::EndPointDecoderConfig *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = (this + 104);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void kaldi::quasar::DynamicClassTagDict::~DynamicClassTagDict(kaldi::quasar::DynamicClassTagDict *this)
{
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x1B8C85310](v2, 0x1000C8052888210);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 64);
  v3 = *(this + 5);
  if (v3)
  {
    *(this + 6) = v3;
    operator delete(v3);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this);
}

void std::__shared_ptr_emplace<quasar::OnlineLatticeBiglmLmeFasterDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineLatticeBiglmLmeFasterDecoder>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09568;
  quasar::OnlineLatticeBiglmLmeFasterDecoder::OnlineLatticeBiglmLmeFasterDecoder((a1 + 3), a2);
}

void std::__shared_ptr_emplace<quasar::OnlineLatticeBiglmLmeFasterDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09568;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void sub_1B5279828(_Unwind_Exception *a1)
{
  if (v1[2927] < 0)
  {
    operator delete(*v2);
  }

  quasar::OnlineLatticeBiglmFasterDecoder::~OnlineLatticeBiglmFasterDecoder(v1);
  _Unwind_Resume(a1);
}

void quasar::OnlineLatticeBiglmFasterDecoder::~OnlineLatticeBiglmFasterDecoder(quasar::OnlineLatticeBiglmFasterDecoder *this)
{
  *this = &unk_1F2D144C0;
  std::mutex::~mutex(this + 44);
  v2 = *(this + 350);
  *(this + 350) = 0;
  if (v2)
  {
    v3 = v2[4];
    if (v3)
    {
      v2[5] = v3;
      operator delete(v3);
    }

    v4 = v2[1];
    if (v4)
    {
      v2[2] = v4;
      operator delete(v4);
    }

    MEMORY[0x1B8C85350](v2, 0x1090C4010466C8BLL);
  }

  v5 = *(this + 349);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 347);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 341);
  if (v7)
  {
    *(this + 342) = v7;
    operator delete(v7);
  }

  v31 = (this + 2704);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v31);
  v8 = *(this + 333);
  if (v8)
  {
    *(this + 334) = v8;
    operator delete(v8);
  }

  v31 = (this + 2640);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v31);
  v9 = *(this + 324);
  if (v9)
  {
    *(this + 325) = v9;
    operator delete(v9);
  }

  v10 = *(this + 319);
  if (v10)
  {
    *(this + 320) = v10;
    operator delete(v10);
  }

  v11 = *(this + 316);
  if (v11)
  {
    *(this + 317) = v11;
    operator delete(v11);
  }

  v31 = (this + 2480);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v31);
  v12 = *(this + 308);
  *(this + 308) = 0;
  if (v12)
  {
    if (*(v12 + 47) < 0)
    {
      operator delete(*(v12 + 24));
    }

    v13 = *(v12 + 8);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    MEMORY[0x1B8C85350](v12, 0x1032C40FE2AB2A7);
  }

  v14 = *(this + 307);
  *(this + 307) = 0;
  if (v14)
  {
    (*(*v14 + 16))(v14);
  }

  v15 = *(this + 306);
  *(this + 306) = 0;
  if (v15)
  {
    (*(*v15 + 16))(v15);
  }

  quasar::OnlineLatticeBiglmFasterDecoder::DecoderCreationDependencies::~DecoderCreationDependencies((this + 2320));
  v31 = (this + 2280);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v31);
  v16 = *(this + 282);
  if (v16)
  {
    *(this + 283) = v16;
    operator delete(v16);
  }

  v31 = (this + 2232);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v31);
  if (*(this + 2223) < 0)
  {
    operator delete(*(this + 275));
  }

  v17 = *(this + 274);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 2112);
  std::deque<int>::~deque[abi:ne200100](this + 255);
  v18 = *(this + 243);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v31 = (this + 1912);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v31);
  if (*(this + 1895) < 0)
  {
    operator delete(*(this + 234));
  }

  if (*(this + 1871) < 0)
  {
    operator delete(*(this + 231));
  }

  if (*(this + 1847) < 0)
  {
    operator delete(*(this + 228));
  }

  v19 = *(this + 205);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v31 = (this + 1608);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v31);
  if (*(this + 1591) < 0)
  {
    operator delete(*(this + 196));
  }

  if (*(this + 1567) < 0)
  {
    operator delete(*(this + 193));
  }

  if (*(this + 1543) < 0)
  {
    operator delete(*(this + 190));
  }

  std::unique_ptr<std::map<wchar_t,wchar_t>>::~unique_ptr[abi:ne200100](this + 186);
  if (*(this + 1487) < 0)
  {
    operator delete(*(this + 183));
  }

  v20 = *(this + 182);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (*(this + 1447) < 0)
  {
    operator delete(*(this + 178));
  }

  if (*(this + 1423) < 0)
  {
    operator delete(*(this + 175));
  }

  v21 = *(this + 173);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (*(this + 1375) < 0)
  {
    operator delete(*(this + 169));
  }

  if (*(this + 1351) < 0)
  {
    operator delete(*(this + 166));
  }

  v22 = *(this + 161);
  if (v22)
  {
    *(this + 162) = v22;
    operator delete(v22);
  }

  v23 = *(this + 158);
  if (v23)
  {
    operator delete(v23);
  }

  if (*(this + 1239) < 0)
  {
    operator delete(*(this + 152));
  }

  if (*(this + 1215) < 0)
  {
    operator delete(*(this + 149));
  }

  v24 = *(this + 148);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (*(this + 1175) < 0)
  {
    operator delete(*(this + 144));
  }

  v25 = *(this + 141);
  if (v25)
  {
    *(this + 142) = v25;
    operator delete(v25);
  }

  v26 = *(this + 138);
  if (v26)
  {
    *(this + 139) = v26;
    operator delete(v26);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 1080, *(this + 136));
  v27 = *(this + 134);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = *(this + 132);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  v29 = *(this + 129);
  *(this + 129) = 0;
  if (v29)
  {
    MEMORY[0x1B8C85310](v29, 0x1000C8052888210);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 992);
  v30 = *(this + 121);
  if (v30)
  {
    *(this + 122) = v30;
    operator delete(v30);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 928);
  if (*(this + 927) < 0)
  {
    operator delete(*(this + 113));
  }

  if (*(this + 903) < 0)
  {
    operator delete(*(this + 110));
  }

  if (*(this + 871) < 0)
  {
    operator delete(*(this + 106));
  }

  if (*(this + 839) < 0)
  {
    operator delete(*(this + 102));
  }

  if (*(this + 815) < 0)
  {
    operator delete(*(this + 99));
  }

  if (*(this + 791) < 0)
  {
    operator delete(*(this + 96));
  }

  if (*(this + 767) < 0)
  {
    operator delete(*(this + 93));
  }

  if (*(this + 743) < 0)
  {
    operator delete(*(this + 90));
  }

  if (*(this + 719) < 0)
  {
    operator delete(*(this + 87));
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

  quasar::Decoder::~Decoder(this);
}

{
  quasar::OnlineLatticeBiglmFasterDecoder::~OnlineLatticeBiglmFasterDecoder(this);

  JUMPOUT(0x1B8C85350);
}

void _ZNSt3__120__shared_ptr_emplaceIN6quasar34OnlineLatticeBiglmLmeFasterDecoder23LmeCreationDependenciesENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D095B8;
  quasar::OnlineLatticeBiglmLmeFasterDecoder::LmeCreationDependencies::LmeCreationDependencies((a1 + 3));
}

void std::__shared_ptr_emplace<quasar::OnlineLatticeBiglmLmeFasterDecoder::LmeCreationDependencies>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D095B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::OnlineLatticeBiglmLmeFasterDecoder::LmeCreationDependencies>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v5 = (a1 + 88);
  std::vector<quasar::LmeInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  v5 = (a1 + 24);
  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void quasar::OnlineLatticeBiglmLmeFasterDecoder::LmeCreationDependencies::LmeCreationDependencies(quasar::OnlineLatticeBiglmLmeFasterDecoder::LmeCreationDependencies *this)
{
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  operator new();
}

void sub_1B5279F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 64);
  std::vector<quasar::LmeInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  v12 = *(v10 + 56);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(v10 + 24);
  if (v13)
  {
    *(v10 + 32) = v13;
    operator delete(v13);
  }

  a10 = v10;
  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void quasar::OnlineLatticeBiglmFasterDecoder::DecoderCreationDependencies::~DecoderCreationDependencies(quasar::OnlineLatticeBiglmFasterDecoder::DecoderCreationDependencies *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 11);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 9);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 7);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 1);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void *std::__shared_ptr_emplace<quasar::OnlineLatticeRescalingDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineLatticeRescalingDecoder>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09608;
  quasar::OnlineLatticeRescalingDecoder::OnlineLatticeRescalingDecoder((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineLatticeRescalingDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09608;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineLatticeWordAlignmentDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineLatticeWordAlignmentDecoder>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09658;
  quasar::OnlineLatticeWordAlignmentDecoder::OnlineLatticeWordAlignmentDecoder(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineLatticeWordAlignmentDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09658;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_emplace<quasar::OnlineLmRescoringDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineLmRescoringDecoder>,0>(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F2D096A8;
  quasar::Decoder::Decoder(a1 + 24, a2);
  *(a1 + 24) = &unk_1F2D0CB40;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0;
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineLmRescoringDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D096A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::OnlineLatticeRealignmentDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineLatticeRealignmentDecoder>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D096F8;
  quasar::OnlineLatticeRealignmentDecoder::OnlineLatticeRealignmentDecoder((a1 + 3), a2);
}

void std::__shared_ptr_emplace<quasar::OnlineLatticeRealignmentDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D096F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::ErrorBlamingDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::ErrorBlamingDecoder>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09748;
  quasar::ErrorBlamingDecoder::ErrorBlamingDecoder((a1 + 3), a2);
}

void std::__shared_ptr_emplace<quasar::ErrorBlamingDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09748;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void quasar::ErrorBlamingDecoder::ErrorBlamingDecoder(uint64_t a1, __int128 *a2)
{
  v3 = quasar::Decoder::Decoder(a1, a2);
  *v3 = &unk_1F2D3CD60;
  std::string::basic_string[abi:ne200100]<0>((v3 + 456), "error-blaming-report");
  std::string::basic_string[abi:ne200100]<0>((a1 + 480), "failure-reason");
  *(a1 + 888) = 0;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 520) = 0u;
  operator new();
}

void sub_1B527A9C0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 888);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(v1 + 879) < 0)
  {
    operator delete(*(v1 + 856));
  }

  if (*(v1 + 855) < 0)
  {
    operator delete(*(v1 + 832));
  }

  if (*(v1 + 831) < 0)
  {
    operator delete(*(v1 + 808));
  }

  if (*(v1 + 807) < 0)
  {
    operator delete(*(v1 + 784));
  }

  if (*(v1 + 783) < 0)
  {
    operator delete(*(v1 + 760));
  }

  if (*(v1 + 759) < 0)
  {
    operator delete(*(v1 + 736));
  }

  if (*(v1 + 735) < 0)
  {
    operator delete(*(v1 + 712));
  }

  if (*(v1 + 711) < 0)
  {
    operator delete(*(v1 + 688));
  }

  if (*(v1 + 687) < 0)
  {
    operator delete(*(v1 + 664));
  }

  if (*(v1 + 663) < 0)
  {
    operator delete(*(v1 + 640));
  }

  if (*(v1 + 639) < 0)
  {
    operator delete(*(v1 + 616));
  }

  if (*(v1 + 615) < 0)
  {
    operator delete(*(v1 + 592));
  }

  if (*(v1 + 591) < 0)
  {
    operator delete(*(v1 + 568));
  }

  if (*(v1 + 567) < 0)
  {
    operator delete(*(v1 + 544));
  }

  if (*(v1 + 543) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 503) < 0)
  {
    operator delete(*(v1 + 480));
  }

  if (*(v1 + 479) < 0)
  {
    operator delete(*(v1 + 456));
  }

  quasar::Decoder::~Decoder(v1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<quasar::OnlineLatticeConfidenceDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineLatticeConfidenceDecoder>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09798;
  quasar::OnlineLatticeConfidenceDecoder::OnlineLatticeConfidenceDecoder((a1 + 3), a2);
}

void std::__shared_ptr_emplace<quasar::OnlineLatticeConfidenceDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09798;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void sub_1B527ADD0(_Unwind_Exception *a1)
{
  if (*(v1 + 583) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 559) < 0)
  {
    operator delete(*v2);
  }

  v5 = *(v1 + 496);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(v1 + 464);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  quasar::Decoder::~Decoder(v1);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<quasar::LatticeFasterDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::LatticeFasterDecoder>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D097E8;
  quasar::LatticeFasterDecoder::LatticeFasterDecoder((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::LatticeFasterDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D097E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::LatticeFasterDecoder::LatticeFasterDecoder(uint64_t a1, __int128 *a2)
{
  v3 = quasar::Decoder::Decoder(a1, a2);
  *v3 = &unk_1F2D0EEE8;
  *(v3 + 456) = 0u;
  *(v3 + 472) = 0u;
  *(v3 + 488) = 0;
  quasar::OnlinePhoneDecoderConfig::OnlinePhoneDecoderConfig((v3 + 496));
  *(a1 + 600) = 0u;
  *(a1 + 592) = a1 + 600;
  *(a1 + 648) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  return a1;
}

void sub_1B527B018(_Unwind_Exception *a1)
{
  v4 = *(v1 + 488);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(v1 + 479) < 0)
  {
    operator delete(*v2);
  }

  quasar::Decoder::~Decoder(v1);
  _Unwind_Resume(a1);
}

double quasar::OnlinePhoneDecoderConfig::OnlinePhoneDecoderConfig(quasar::OnlinePhoneDecoderConfig *this)
{
  *this = 1098907648;
  *(this + 4) = 0xC87FFFFFFFLL;
  *(this + 12) = 0x4120000000000000;
  *(this + 5) = 25;
  *(this + 24) = 1;
  *(this + 28) = xmmword_1B5AE1360;
  *(this + 44) = 0x2FAF0803A800000;
  *(this + 26) = 257;
  *(this + 54) = 0;
  *(this + 56) = xmmword_1B5AEA8D0;
  *(this + 18) = 3;
  *(this + 76) = 0x3D4CCCCD3C23D70ALL;
  *&result = 50000000;
  *(this + 84) = 50000000;
  return result;
}

void *std::__shared_ptr_emplace<quasar::OnlineKeywordSpottingDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineKeywordSpottingDecoder>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09838;
  quasar::OnlineKeywordSpottingDecoder::OnlineKeywordSpottingDecoder(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineKeywordSpottingDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09838;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineSeevaDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineSeevaDecoder>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09888;
  quasar::OnlineSeevaDecoder::OnlineSeevaDecoder(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineSeevaDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09888;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineSeevaStepDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineSeevaStepDecoder>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D098D8;
  quasar::OnlineSeevaStepDecoder::OnlineSeevaStepDecoder(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineSeevaStepDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D098D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineSeevaStepBigLmDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineSeevaStepBigLmDecoder>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09928;
  quasar::OnlineSeevaStepBigLmDecoder::OnlineSeevaStepBigLmDecoder(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineSeevaStepBigLmDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09928;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::SeevaGreedyDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::SeevaGreedyDecoder>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09978;
  quasar::SeevaGreedyDecoder::SeevaGreedyDecoder((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::SeevaGreedyDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09978;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::SeevaBatchDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::SeevaBatchDecoder>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D099C8;
  quasar::SeevaBatchDecoder::SeevaBatchDecoder(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::SeevaBatchDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D099C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineLASBeamSearchDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineLASBeamSearchDecoder>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09A18;
  quasar::OnlineLASBeamSearchDecoder::OnlineLASBeamSearchDecoder(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineLASBeamSearchDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09A18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineLASSpeculativeBeamSearchDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineLASSpeculativeBeamSearchDecoder>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09A68;
  quasar::OnlineLASSpeculativeBeamSearchDecoder::OnlineLASSpeculativeBeamSearchDecoder(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineLASSpeculativeBeamSearchDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09A68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineLASLmRescoringBeamSearchDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineLASLmRescoringBeamSearchDecoder>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09AB8;
  quasar::OnlineLASLmRescoringBeamSearchDecoder::OnlineLASLmRescoringBeamSearchDecoder(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineLASLmRescoringBeamSearchDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09AB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineLASLmRescoringSpeculativeBeamSearchDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineLASLmRescoringSpeculativeBeamSearchDecoder>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09B08;
  quasar::OnlineLASLmRescoringSpeculativeBeamSearchDecoder::OnlineLASLmRescoringSpeculativeBeamSearchDecoder(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineLASLmRescoringSpeculativeBeamSearchDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09B08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineTransducerBeamSearchDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineTransducerBeamSearchDecoder>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09B58;
  quasar::OnlineTransducerBeamSearchDecoder::OnlineTransducerBeamSearchDecoder(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineTransducerBeamSearchDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09B58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineTransducerGraphSearchDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineTransducerGraphSearchDecoder>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09BA8;
  quasar::OnlineTransducerGraphSearchDecoder::OnlineTransducerGraphSearchDecoder(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineTransducerGraphSearchDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09BA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::SystemCombinationDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::SystemCombinationDecoder>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09BF8;
  quasar::SystemCombinationDecoder::SystemCombinationDecoder(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::SystemCombinationDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09BF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::shared_ptr<quasar::SystemCombinationDecoder>::__enable_weak_this[abi:ne200100]<quasar::SystemCombinationDecoder,quasar::SystemCombinationDecoder,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void std::__shared_ptr_emplace<quasar::ConfusionNetworkCombinerDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::ConfusionNetworkCombinerDecoder>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09C48;
  quasar::ConfusionNetworkCombinerDecoder::ConfusionNetworkCombinerDecoder((a1 + 3), a2);
}

void std::__shared_ptr_emplace<quasar::ConfusionNetworkCombinerDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09C48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void quasar::ConfusionNetworkCombinerDecoder::ConfusionNetworkCombinerDecoder(uint64_t a1, __int128 *a2)
{
  v2 = quasar::Decoder::Decoder(a1, a2);
  *v2 = &unk_1F2D3B768;
  quasar::ResultCombiner::ResultCombiner((v2 + 57));
}

void std::__shared_ptr_emplace<quasar::PhoneticMatchDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::PhoneticMatchDecoder>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09C98;
  quasar::PhoneticMatchDecoder::PhoneticMatchDecoder((a1 + 3), a2);
}

void std::__shared_ptr_emplace<quasar::PhoneticMatchDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09C98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void quasar::PhoneticMatchDecoder::PhoneticMatchDecoder(uint64_t a1, __int128 *a2)
{
  v2 = quasar::Decoder::Decoder(a1, a2);
  *v2 = &unk_1F2D0B5F8;
  *(v2 + 680) = 0;
  *(v2 + 696) = 0;
  *(v2 + 688) = 0;
  *(v2 + 712) = 0;
  *(v2 + 728) = 0;
  *(v2 + 720) = 0;
  *(v2 + 456) = 0u;
  *(v2 + 472) = 0u;
  *(v2 + 488) = 0u;
  *(v2 + 504) = 0u;
  *(v2 + 520) = 0u;
  *(v2 + 536) = 0u;
  *(v2 + 552) = 0u;
  *(v2 + 568) = 0u;
  *(v2 + 584) = 0u;
  *(v2 + 600) = 0u;
  *(v2 + 616) = 0u;
  *(v2 + 632) = 0u;
  *(v2 + 760) = 0u;
  *(v2 + 776) = 0u;
  *(v2 + 744) = 0u;
  *(v2 + 816) = 0u;
  *(v2 + 832) = 0u;
  *(v2 + 800) = 0u;
  operator new();
}

void sub_1B527C84C(_Unwind_Exception *a1)
{
  if (*(v1 + 847) < 0)
  {
    operator delete(*(v1 + 824));
  }

  if (*(v1 + 823) < 0)
  {
    operator delete(*v6);
  }

  if (*(v1 + 791) < 0)
  {
    operator delete(*(v1 + 768));
  }

  if (*(v1 + 767) < 0)
  {
    operator delete(*v5);
  }

  v8 = *v4;
  if (*v4)
  {
    *(v1 + 720) = v8;
    operator delete(v8);
  }

  if (*(v1 + 703) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 647) < 0)
  {
    operator delete(*(v1 + 624));
  }

  if (*(v1 + 623) < 0)
  {
    operator delete(*(v1 + 600));
  }

  if (*(v1 + 599) < 0)
  {
    operator delete(*(v1 + 576));
  }

  if (*(v1 + 575) < 0)
  {
    operator delete(*(v1 + 552));
  }

  if (*(v1 + 551) < 0)
  {
    operator delete(*(v1 + 528));
  }

  if (*(v1 + 527) < 0)
  {
    operator delete(*(v1 + 504));
  }

  if (*(v1 + 503) < 0)
  {
    operator delete(*(v1 + 480));
  }

  if (*(v1 + 479) < 0)
  {
    operator delete(*v2);
  }

  quasar::Decoder::~Decoder(v1);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<quasar::FingerprintDetector>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::FingerprintDetector>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09CE8;
  quasar::FingerprintDetector::FingerprintDetector(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::FingerprintDetector>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09CE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineAudioAnalyticsDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineAudioAnalyticsDecoder>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09D38;
  quasar::OnlineAudioAnalyticsDecoder::OnlineAudioAnalyticsDecoder((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineAudioAnalyticsDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09D38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::WatermarkDetector>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::WatermarkDetector>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09D88;
  quasar::WatermarkDetector::WatermarkDetector(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::WatermarkDetector>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09D88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::AudioAnalyticsDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::AudioAnalyticsDecoder>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09DD8;
  quasar::AudioAnalyticsDecoder::AudioAnalyticsDecoder((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::AudioAnalyticsDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09DD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::LatticeRnnMitigator>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::LatticeRnnMitigator>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09E28;
  quasar::LatticeRnnMitigator::LatticeRnnMitigator(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::LatticeRnnMitigator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09E28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::HwcnConfidence>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::HwcnConfidence>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09E78;
  quasar::HwcnConfidence::HwcnConfidence(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::HwcnConfidence>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09E78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::E2EAsrConfidence>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::E2EAsrConfidence>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09EC8;
  quasar::E2EAsrConfidence::E2EAsrConfidence((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::E2EAsrConfidence>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09EC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::E2EAsrConfidence::E2EAsrConfidence(uint64_t a1, __int128 *a2)
{
  v3 = quasar::Decoder::Decoder(a1, a2);
  *v3 = &unk_1F2D36440;
  std::string::basic_string[abi:ne200100]<0>((v3 + 456), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 480), "");
  *(a1 + 504) = -1;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 1065353216;
  return a1;
}

void sub_1B527D384(_Unwind_Exception *a1)
{
  if (*(v1 + 479) < 0)
  {
    operator delete(*(v1 + 456));
  }

  quasar::Decoder::~Decoder(v1);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<quasar::WatermarkDetector2>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::WatermarkDetector2>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09F18;
  quasar::WatermarkDetector2::WatermarkDetector2(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::WatermarkDetector2>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09F18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::LatticeLmeFtmDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::LatticeLmeFtmDecoder>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09F68;
  quasar::LatticeLmeFtmDecoder::LatticeLmeFtmDecoder((a1 + 3), a2);
}

void std::__shared_ptr_emplace<quasar::LatticeLmeFtmDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09F68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineAEDRescoringDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineAEDRescoringDecoder>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D09FB8;
  quasar::OnlineAEDRescoringDecoder::OnlineAEDRescoringDecoder(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineAEDRescoringDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D09FB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::ForceAlignDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::ForceAlignDecoder>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D0A008;
  quasar::ForceAlignDecoderBase::ForceAlignDecoderBase((a1 + 3), a2);
}

void std::__shared_ptr_emplace<quasar::ForceAlignDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D0A008;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void quasar::ForceAlignDecoderBase::ForceAlignDecoderBase(uint64_t a1, __int128 *a2)
{
  v2 = quasar::Decoder::Decoder(a1, a2);
  *v2 = &unk_1F2D30868;
  *(v2 + 456) = 0u;
  *(v2 + 472) = 0u;
  *(v2 + 488) = 0u;
  *(v2 + 504) = 0u;
  *(v2 + 520) = 0;
  *(v2 + 536) = 0u;
  *(v2 + 552) = 0u;
  *(v2 + 568) = 0;
  operator new();
}

void sub_1B527DAB0(_Unwind_Exception *a1)
{
  if (*(v1 + 759) < 0)
  {
    operator delete(*v5);
  }

  v7 = *(v1 + 720);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(v1 + 711) < 0)
  {
    operator delete(*(v1 + 688));
  }

  if (*(v1 + 687) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 631) < 0)
  {
    operator delete(*(v1 + 608));
  }

  v8 = *(v1 + 600);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(v1 + 584);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(v1 + 568);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (*(v1 + 559) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 527) < 0)
  {
    operator delete(*(v1 + 504));
  }

  if (*(v1 + 503) < 0)
  {
    operator delete(*(v1 + 480));
  }

  if (*(v1 + 479) < 0)
  {
    operator delete(*v2);
  }

  quasar::Decoder::~Decoder(v1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<quasar::RealignAmFusionDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::RealignAmFusionDecoder>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D0A058;
  quasar::RealignAmFusionDecoder::RealignAmFusionDecoder((a1 + 3), a2);
}

void std::__shared_ptr_emplace<quasar::RealignAmFusionDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D0A058;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void sub_1B527DDCC(_Unwind_Exception *a1)
{
  if (v1[935] < 0)
  {
    operator delete(*v4);
  }

  if (v1[911] < 0)
  {
    operator delete(*v3);
  }

  if (v1[887] < 0)
  {
    operator delete(*v2);
  }

  quasar::ForceAlignDecoderBase::~ForceAlignDecoderBase(v1);
  _Unwind_Resume(a1);
}

void quasar::ForceAlignDecoderBase::~ForceAlignDecoderBase(quasar::ForceAlignDecoderBase *this)
{
  *this = &unk_1F2D30868;
  v2 = *(this + 107);
  *(this + 107) = 0;
  if (v2)
  {
    v3 = v2[5];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = v2[3];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = v2[1];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    MEMORY[0x1B8C85350](v2, 0x20C40A759441BLL);
  }

  v6 = *(this + 104);
  if (v6)
  {
    *(this + 105) = v6;
    operator delete(v6);
  }

  v7 = *(this + 101);
  if (v7)
  {
    *(this + 102) = v7;
    operator delete(v7);
  }

  v8 = *(this + 98);
  if (v8)
  {
    operator delete(v8);
  }

  if (*(this + 759) < 0)
  {
    operator delete(*(this + 92));
  }

  v9 = *(this + 90);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (*(this + 711) < 0)
  {
    operator delete(*(this + 86));
  }

  if (*(this + 687) < 0)
  {
    operator delete(*(this + 83));
  }

  if (*(this + 631) < 0)
  {
    operator delete(*(this + 76));
  }

  v10 = *(this + 75);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(this + 73);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(this + 71);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (*(this + 559) < 0)
  {
    operator delete(*(this + 67));
  }

  if (*(this + 527) < 0)
  {
    operator delete(*(this + 63));
  }

  if (*(this + 503) < 0)
  {
    operator delete(*(this + 60));
  }

  if (*(this + 479) < 0)
  {
    operator delete(*(this + 57));
  }

  quasar::Decoder::~Decoder(this);
}

void *std::__shared_ptr_emplace<quasar::OnlinePrefixBeamSearchDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlinePrefixBeamSearchDecoder>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D0A0A8;
  quasar::OnlinePrefixBeamSearchDecoder::OnlinePrefixBeamSearchDecoder(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlinePrefixBeamSearchDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D0A0A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::AEDBeamSearchDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::AEDBeamSearchDecoder>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D0A0F8;
  quasar::AEDBeamSearchDecoder::AEDBeamSearchDecoder(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::AEDBeamSearchDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D0A0F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::RescoringDeliberationDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::RescoringDeliberationDecoder>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D0A148;
  quasar::RescoringDeliberationDecoder::RescoringDeliberationDecoder((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::RescoringDeliberationDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D0A148;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

double quasar::RescoringDeliberationDecoder::RescoringDeliberationDecoder(uint64_t a1, __int128 *a2)
{
  v2 = quasar::Decoder::Decoder(a1, a2);
  *v2 = &unk_1F2D0BCD8;
  result = 0.0;
  *(v2 + 456) = 0u;
  *(v2 + 472) = 0;
  *(v2 + 480) = xmmword_1B5AEA6A0;
  *(v2 + 496) = 0;
  *(v2 + 504) = 0;
  *(v2 + 512) = 0u;
  *(v2 + 528) = 0u;
  *(v2 + 544) = 1;
  *(v2 + 552) = 256;
  *(v2 + 560) = 0u;
  *(v2 + 576) = 0;
  *(v2 + 580) = -1;
  *(v2 + 584) = 0;
  return result;
}

void *std::__shared_ptr_emplace<quasar::OnlineEmbeddingRetranslationDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineEmbeddingRetranslationDecoder>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D0A198;
  quasar::OnlineEmbeddingRetranslationDecoder::OnlineEmbeddingRetranslationDecoder((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineEmbeddingRetranslationDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D0A198;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

kaldi::quasar::ErrorBlamer *kaldi::quasar::ErrorBlamer::ErrorBlamer(kaldi::quasar::ErrorBlamer *this, int a2, float a3, float a4, float a5, float a6, float a7, const kaldi::TransitionModel *a8)
{
  *this = &unk_1F2D0A1E8;
  *(this + 1) = &unk_1F2D09040;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 56) = 0u;
  v9 = (this + 56);
  *(this + 12) = 1065353216;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  v10 = this + 80;
  *(this + 26) = 0;
  *(this + 27) = a2;
  *(this + 28) = a3;
  *(this + 29) = a4;
  *(this + 30) = a5;
  *(this + 31) = a6;
  *(this + 32) = a7;
  *(this + 17) = a8;
  kaldi::quasar::ErrorProfile::ErrorProfile((this + 144), (this + 8), a8);
  LODWORD(__p[0]) = 4;
  std::vector<int>::push_back[abi:ne200100](v9, __p);
  std::string::basic_string[abi:ne200100]<0>(__p, "CONFIDENCE");
  std::vector<std::string>::push_back[abi:ne200100](v10, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__p[0]) = 4;
  std::vector<int>::push_back[abi:ne200100](v9, __p);
  std::string::basic_string[abi:ne200100]<0>(__p, "LENGTH");
  std::vector<std::string>::push_back[abi:ne200100](v10, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__p[0]) = 4;
  std::vector<int>::push_back[abi:ne200100](v9, __p);
  std::string::basic_string[abi:ne200100]<0>(__p, "FRAME_LENGTH");
  std::vector<std::string>::push_back[abi:ne200100](v10, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_1B527E728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  kaldi::quasar::ErrorProfile::~ErrorProfile((v15 + 144));
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  v19 = *v17;
  if (*v17)
  {
    *(v15 + 64) = v19;
    operator delete(v19);
  }

  kaldi::quasar::AttributeFactory::~AttributeFactory(v16);
  _Unwind_Resume(a1);
}

void kaldi::quasar::ErrorBlamer::~ErrorBlamer(kaldi::quasar::ErrorBlamer *this)
{
  *this = &unk_1F2D0A1E8;
  kaldi::quasar::ErrorProfile::~ErrorProfile((this + 144));
  v3 = (this + 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  kaldi::quasar::AttributeFactory::~AttributeFactory((this + 8));
}

{
  kaldi::quasar::ErrorBlamer::~ErrorBlamer(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::quasar::ErrorBlamer::Blame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Blaming ", 8);
    v9 = *(a2 + 23);
    if (v9 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (v9 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v15);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  kaldi::quasar::ErrorBlamer::GetErrorRegions(a1, a3, a4);
}

void sub_1B527E98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&a13);
  a13 = &a10;
  std::vector<kaldi::quasar::ErrorRegion>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void kaldi::quasar::ErrorBlamer::ComputeErrorRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v6 = *(a2 + 8);
  ++*(v6 + 56);
  v4 = *(a3 + 8);
  v5 = &unk_1F2CFC270;
  ++*(v4 + 56);
  v3 = &unk_1F2CFC270;
  kaldi::quasar::ErrorBlamer::GetTimeAlignedErrorRegions(a1, &v5, &v3);
}

void sub_1B527ECD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  quasar::Bitmap::~Bitmap(&a9);
  a9 = &a16;
  std::vector<kaldi::quasar::ErrorRegion>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void kaldi::quasar::ErrorBlamer::AddAttributes(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 != a2[1])
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = -1431655765 * ((*(a1 + 88) - *(a1 + 80)) >> 3);
    v29 = v8 - 1;
    v30 = v8 - 2;
    do
    {
      v36 = v6;
      v9 = *(v2 + v4 + 56);
      v35 = *(v2 + v4 + 88);
      v33 = *(v2 + v4 + 64);
      v34 = *(v2 + v4 + 80);
      v45 = &unk_1F2D09070;
      v46 = 0x3F80000000000000;
      v47 = 0;
      if (!kaldi::quasar::ErrorRegion::HasAttribute((v2 + v4), &v45))
      {
        RefTotalScore = kaldi::quasar::ErrorRegion::GetRefTotalScore((v2 + v4));
        if (RefTotalScore < kaldi::quasar::ErrorRegion::GetHypoTotalScore((v2 + v4)))
        {
          v40 = &unk_1F2D09070;
          v41 = 0x3F80000000000000;
          v42 = 1;
          kaldi::quasar::ErrorRegion::AddAttribute((v2 + v4), &v40);
          quasar::Bitmap::~Bitmap(&v40);
        }

        if (kaldi::quasar::ErrorRegion::IsHomophoneRegion((v2 + v4), *(a1 + 136)))
        {
          v40 = &unk_1F2D09070;
          v41 = 0x3F80000000000000;
          v42 = 2;
          kaldi::quasar::ErrorRegion::AddAttribute((v2 + v4), &v40);
          quasar::Bitmap::~Bitmap(&v40);
        }

        ScoreSum = kaldi::quasar::ErrorRegion::GetScoreSum(v2 + v4, 0, (*(v2 + v4 + 112) - *(v2 + v4 + 104)) >> 2, (v2 + v4 + 104));
        v12 = kaldi::quasar::ErrorRegion::GetScoreSum(v2 + v4, 0, (*(v2 + v4 + 136) - *(v2 + v4 + 128)) >> 2, (v2 + v4 + 128));
        v13 = kaldi::quasar::ErrorRegion::GetScoreSum(v2 + v4, 0, (*(v2 + v4 + 160) - *(v2 + v4 + 152)) >> 2, (v2 + v4 + 152));
        v14 = kaldi::quasar::ErrorRegion::GetScoreSum(v2 + v4, 0, (*(v2 + v4 + 184) - *(v2 + v4 + 176)) >> 2, (v2 + v4 + 176));
        v15 = kaldi::quasar::ErrorRegion::GetScoreSum(v2 + v4, 0, (*(v2 + v4 + 208) - *(v2 + v4 + 200)) >> 2, (v2 + v4 + 200));
        v16 = kaldi::quasar::ErrorRegion::GetScoreSum(v2 + v4, 0, (*(v2 + v4 + 232) - *(v2 + v4 + 224)) >> 2, (v2 + v4 + 224));
        v17 = (ScoreSum - v12) + 0.0;
        if (ScoreSum <= v12)
        {
          v17 = 0.0;
        }

        if (v13 > v14)
        {
          v17 = v17 + (v13 - v14);
        }

        v31 = v17 + (v15 - v16);
        if (v15 <= v16)
        {
          v18 = v17;
        }

        else
        {
          v18 = v17 + (v15 - v16);
        }

        if (ScoreSum > v12)
        {
          LODWORD(v41) = 0;
          v40 = &unk_1F2D09070;
          *(&v41 + 1) = (ScoreSum - v12) / v18;
          v42 = 5;
          kaldi::quasar::ErrorRegion::AddAttribute((v2 + v4), &v40);
          quasar::Bitmap::~Bitmap(&v40);
        }

        if (v13 > v14)
        {
          LODWORD(v41) = 0;
          v40 = &unk_1F2D09070;
          *(&v41 + 1) = (v13 - v14) / v18;
          v42 = 4;
          kaldi::quasar::ErrorRegion::AddAttribute((v2 + v4), &v40);
          quasar::Bitmap::~Bitmap(&v40);
        }

        if (v15 > v16)
        {
          LODWORD(v41) = 0;
          v40 = &unk_1F2D09070;
          *(&v41 + 1) = (v15 - v16) / v31;
          v42 = 3;
          kaldi::quasar::ErrorRegion::AddAttribute((v2 + v4), &v40);
          quasar::Bitmap::~Bitmap(&v40);
        }
      }

      kaldi::quasar::ErrorRegion::Analyze((v2 + v4), (a1 + 8), *(a1 + 136), *(a1 + 104));
      v7 += (v33 - v9) >> 2;
      v6 = v36 + ((v35 - v34) >> 2);
      quasar::Bitmap::~Bitmap(&v45);
      ++v5;
      v2 = *a2;
      v19 = a2[1];
      v4 += 328;
    }

    while (0x8F9C18F9C18F9C19 * ((v19 - *a2) >> 3) > v5);
    LODWORD(v46) = 1;
    HIDWORD(v46) = v29;
    v45 = &unk_1F2D09180;
    v47 = 0;
    v48 = v6;
    v49 = 0;
    v20 = *(v19 - 276);
    LODWORD(v41) = 1;
    HIDWORD(v41) = v30;
    v40 = &unk_1F2D09180;
    v42 = 0;
    v43 = v20;
    v44 = 0;
    if (v19 == v2)
    {
      v23 = v2;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      do
      {
        kaldi::quasar::ErrorRegion::AddAttribute((v2 + v21), &v45);
        kaldi::quasar::ErrorRegion::AddAttribute((*a2 + v21), &v40);
        ++v22;
        v2 = *a2;
        v23 = a2[1];
        v21 += 328;
      }

      while (0x8F9C18F9C18F9C19 * ((v23 - *a2) >> 3) > v22);
    }

    if (v7 > 2 * v6)
    {
      v37 = &unk_1F2D09070;
      v38 = 0x3F80000000000000;
      v39 = 7;
      if (v23 != v2)
      {
        v24 = 0;
        v25 = 0;
        do
        {
          kaldi::quasar::ErrorRegion::AddAttribute((v2 + v24), &v37);
          ++v25;
          v2 = *a2;
          v24 += 328;
        }

        while (0x8F9C18F9C18F9C19 * ((a2[1] - *a2) >> 3) > v25);
      }

      quasar::Bitmap::~Bitmap(&v37);
      v6 = v36 + ((v35 - v34) >> 2);
    }

    if (v6 > 2 * v7)
    {
      v37 = &unk_1F2D09070;
      v38 = 0x3F80000000000000;
      v39 = 6;
      v26 = *a2;
      if (a2[1] != *a2)
      {
        v27 = 0;
        v28 = 0;
        do
        {
          kaldi::quasar::ErrorRegion::AddAttribute((v26 + v27), &v37);
          ++v28;
          v26 = *a2;
          v27 += 328;
        }

        while (0x8F9C18F9C18F9C19 * ((a2[1] - *a2) >> 3) > v28);
      }

      quasar::Bitmap::~Bitmap(&v37);
    }

    kaldi::quasar::ErrorBlamer::AddWordContextAttributes(a1, a2);
    quasar::Bitmap::~Bitmap(&v40);
    quasar::Bitmap::~Bitmap(&v45);
  }
}

void sub_1B527F348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  quasar::Bitmap::~Bitmap(va);
  quasar::Bitmap::~Bitmap(va1);
  _Unwind_Resume(a1);
}

void kaldi::quasar::ErrorBlamer::AddInformationOnReferenceRecovery(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a2 + 88))(a2, 0);
  v6 = (*(*a3 + 88))(a3, 0);
  kaldi::quasar::ErrorBlamer::ReplaceEpsilonWithNoLabel(a1, v5);
  kaldi::quasar::ErrorBlamer::ReplaceEpsilonWithNoLabel(a1, v6);
  kaldi::quasar::ErrorBlamer::GetBestPath();
}

void kaldi::quasar::ErrorBlamer::AddAcousticOnlyDecoding(uint64_t a1, void *a2, uint64_t *a3)
{
  if ((*(*a2 + 24))(a2) != -1)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    LODWORD(v6) = (*(*a2 + 24))(a2);
    do
    {
      v7 = *(*(*(a2[1] + 64) + 8 * v6) + 24);
      if (*v7 && *v7 != *(a1 + 104))
      {
        std::vector<int>::push_back[abi:ne200100](&v25, v7);
        LODWORD(v19) = v7[3];
        std::vector<float>::push_back[abi:ne200100](&v22, &v19);
      }

      v6 = v7[4];
      (*(*a2 + 32))(&v19, a2, v6);
      v30 = *(&v19 + 1);
      LODWORD(__p) = v19;
      v29 = 0;
      v28 = 0.0;
    }

    while (*&v19 != 0.0 || v30 != v28);
    v8 = *a3;
    if (a3[1] != *a3)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = v8 + v9;
        v12 = *(v8 + v9 + 44);
        v13 = 4 * *(v8 + v9 + 52);
        v20 = 0;
        v21 = 0;
        v19 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(&v19, v25 + 4 * v12, v25 + v13, (v13 - 4 * v12) >> 2);
        v14 = *(v11 + 44);
        v15 = 4 * *(v11 + 52);
        v17 = 0;
        v18 = 0;
        __p = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(&__p, v22 + 4 * v14, v22 + v15, (v15 - 4 * v14) >> 2);
        kaldi::quasar::ErrorRegion::AddAcousticOnlyDecoding(v11, &v19, &__p);
        if (__p)
        {
          v17 = __p;
          operator delete(__p);
        }

        if (v19)
        {
          v20 = v19;
          operator delete(v19);
        }

        ++v10;
        v8 = *a3;
        v9 += 328;
      }

      while (0x8F9C18F9C18F9C19 * ((a3[1] - *a3) >> 3) > v10);
    }

    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }

    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }
  }
}

void sub_1B527FB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
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

void kaldi::quasar::ErrorBlamer::AddConfidenceScores(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v8 = *a3;
    v7 = a3[1];
    if (v7 == *a3)
    {
      v11 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = -1431655765 * ((*(a1 + 88) - *(a1 + 80)) >> 3) - 3;
      do
      {
        v13 = (v8 + 328 * v10);
        v14 = *(v13 + 10);
        if (*(v13 + 11) != v14)
        {
          v15 = 0;
          do
          {
            v16 = *(v14 + 4 * v15);
            if (v16 && v16 != *(a1 + 104))
            {
              if (v11 >= ((a2[1] - *a2) >> 2))
              {
                if (kaldi::g_kaldi_verbose_level >= -1)
                {
                  kaldi::KaldiWarnMessage::KaldiWarnMessage(&v23);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "Unexpected number of confidenceScores", 37);
                  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v23);
                }
              }

              else
              {
                v17 = *(*a2 + 4 * v11);
                v24 = 1;
                v25 = v12;
                v23 = &unk_1F2D09180;
                v26 = 0;
                v27 = v17;
                v28 = 0;
                kaldi::quasar::ErrorRegion::AddAttribute(v13, &v23, v15);
                v11 = (v11 + 1);
                quasar::Bitmap::~Bitmap(&v23);
              }
            }

            ++v15;
            v14 = *(v13 + 10);
          }

          while (v15 < (*(v13 + 11) - v14) >> 2);
          v8 = *a3;
          v7 = a3[1];
        }

        ++v10;
      }

      while (0x8F9C18F9C18F9C19 * ((v7 - v8) >> 3) > v10);
      v4 = *a2;
      v3 = a2[1];
    }

    if (v11 != (v3 - v4) >> 2 && kaldi::g_kaldi_verbose_level > -2)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v23);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "Unexpected number of confidenceScores got ", 42);
      v20 = MEMORY[0x1B8C84C00](v19, v11);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " words in lattice and got ", 26);
      v22 = MEMORY[0x1B8C84C30](v21, (a2[1] - *a2) >> 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " confidence scores", 18);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v23);
    }
  }
}

void sub_1B527FDDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::ErrorBlamer::AddSchematicAttributes(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    return;
  }

  v6 = a1[10];
  v7 = a1[11];
  if (v6 == v7)
  {
    if (kaldi::g_kaldi_verbose_level < -1)
    {
      return;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Schematics have to be registered first before usage, call RegisterSchematics first", 82);
LABEL_29:
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
    return;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) != 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3) - 3)
  {
    if (kaldi::g_kaldi_verbose_level < -1)
    {
      return;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Size of registered schematics is ", 33);
    v23 = MEMORY[0x1B8C84C30](v22, -3 - 0x5555555555555555 * ((a1[11] - a1[10]) >> 3));
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " does not match with supplied schematics for utterance, which are ", 66);
    MEMORY[0x1B8C84C30](v24, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    goto LABEL_29;
  }

  v10 = 0;
  v11 = 0;
  __p = 0;
  v28 = 0;
  v29 = 0;
  do
  {
    if (*(a1[7] + 4 * v11) != 3)
    {
      v25 = 0;
      kaldi::ConvertStringToReal(v3 + v10, &v25);
      operator new();
    }

    StringAttribute = kaldi::quasar::AttributeFactory::CreateStringAttribute((a1 + 1), v11, (v3 + v10));
    std::vector<TVertex *>::push_back[abi:ne200100](&__p, &StringAttribute);
    ++v11;
    v3 = *a2;
    v10 += 24;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v11);
  v13 = *a3;
  v12 = a3[1];
  v14 = __p;
  v15 = v28;
  if (v12 != *a3)
  {
    v16 = 0;
    do
    {
      if (v15 == v14)
      {
        v15 = v14;
      }

      else
      {
        v17 = 0;
        v18 = (v13 + 328 * v16);
        do
        {
          kaldi::quasar::ErrorRegion::AddAttribute(v18, v14[v17++]);
          v14 = __p;
          v15 = v28;
        }

        while (v17 < (v28 - __p) >> 3);
        v13 = *a3;
        v12 = a3[1];
      }

      ++v16;
    }

    while (0x8F9C18F9C18F9C19 * ((v12 - v13) >> 3) > v16);
  }

  if (v15 != v14)
  {
    v19 = 0;
    do
    {
      v20 = (*(*v14[v19] + 56))(v14[v19]);
      v14 = __p;
      if ((v20 & 1) == 0)
      {
        v21 = *(__p + v19);
        if (v21)
        {
          (*(*v21 + 72))(*(__p + v19));
          v14 = __p;
        }
      }

      ++v19;
    }

    while (v19 < v28 - v14);
  }

  if (v14)
  {
    v28 = v14;
    operator delete(v14);
  }
}

float kaldi::quasar::ErrorRegion::GetRefTotalScore(kaldi::quasar::ErrorRegion *this)
{
  ScoreSum = kaldi::quasar::ErrorRegion::GetScoreSum(this, 0, (*(this + 14) - *(this + 13)) >> 2, this + 13);
  v3 = ScoreSum + kaldi::quasar::ErrorRegion::GetScoreSum(this, 0, (*(this + 20) - *(this + 19)) >> 2, this + 19);
  return v3 + kaldi::quasar::ErrorRegion::GetScoreSum(this, 0, (*(this + 26) - *(this + 25)) >> 2, this + 25);
}

float kaldi::quasar::ErrorRegion::GetHypoTotalScore(kaldi::quasar::ErrorRegion *this)
{
  ScoreSum = kaldi::quasar::ErrorRegion::GetScoreSum(this, 0, (*(this + 17) - *(this + 16)) >> 2, this + 16);
  v3 = ScoreSum + kaldi::quasar::ErrorRegion::GetScoreSum(this, 0, (*(this + 23) - *(this + 22)) >> 2, this + 22);
  return v3 + kaldi::quasar::ErrorRegion::GetScoreSum(this, 0, (*(this + 29) - *(this + 28)) >> 2, this + 28);
}

void kaldi::quasar::ErrorBlamer::AddWordContextAttributes(_DWORD *a1, uint64_t *a2)
{
  __p = 0;
  v37 = 0;
  v38 = 0;
  LODWORD(v4) = a1[27];
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      std::vector<int>::push_back[abi:ne200100](&__p, a1 + 26);
      ++v5;
      LODWORD(v4) = a1[27];
    }

    while (v5 < v4);
  }

  v7 = *a2;
  v6 = a2[1];
  v8 = 0x8F9C18F9C18F9C19;
  if (v6 != *a2)
  {
    v9 = 0;
    do
    {
      v10 = v7 + 328 * v9;
      v11 = *(v10 + 80);
      v12 = *(v10 + 88);
      v13 = (v10 + 80);
      if (v12 != v11)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = *(v11 + v14);
          if (v16 && v16 != a1[26])
          {
            std::vector<int>::push_back[abi:ne200100](&__p, (v11 + v14));
            v11 = *v13;
            v12 = v13[1];
          }

          ++v15;
          v14 += 4;
        }

        while (v15 < (v12 - v11) >> 2);
        v7 = *a2;
        v6 = a2[1];
      }

      ++v9;
    }

    while (0x8F9C18F9C18F9C19 * ((v6 - v7) >> 3) > v9);
    LODWORD(v4) = a1[27];
  }

  if ((v4 & 0x80000000) == 0)
  {
    v17 = -1;
    do
    {
      std::vector<int>::push_back[abi:ne200100](&__p, a1 + 26);
      LODWORD(v4) = a1[27];
      ++v17;
    }

    while (v17 < v4);
    v7 = *a2;
    v6 = a2[1];
  }

  v35 = a2;
  if (v6 != v7)
  {
    v18 = 0;
    v19 = v4;
    do
    {
      v20 = (v7 + 328 * v18);
      v21 = *(v20 + 10);
      v22 = 0;
      v23 = *(v20 + 11) - v21;
      if (v23)
      {
        v24 = v23 >> 2;
        if (v24 <= 1)
        {
          v24 = 1;
        }

        do
        {
          v26 = *v21++;
          v25 = v26;
          if (v26 && v25 != a1[26])
          {
            ++v22;
          }

          --v24;
        }

        while (v24);
      }

      if (v4 >= 1)
      {
        v27 = v8;
        v28 = 0;
        v29 = 4 * v19;
        v30 = v29 + 4;
        v31 = v29 - 4;
        v32 = -1;
        do
        {
          ContextAttribute = kaldi::quasar::AttributeFactory::CreateContextAttribute((a1 + 2), *(__p + v31), v32, 3u, 1u);
          kaldi::quasar::ErrorRegion::AddAttribute(v20, ContextAttribute, 0);
          v34 = kaldi::quasar::AttributeFactory::CreateContextAttribute((a1 + 2), *(__p + v30), v28 + 1, 3u, 1u);
          kaldi::quasar::ErrorRegion::AddAttribute(v20, v34, 0);
          v4 = a1[27];
          v30 += 4;
          ++v28;
          --v32;
          v31 -= 4;
        }

        while (v28 < v4);
        v7 = *v35;
        v6 = v35[1];
        v8 = v27;
      }

      v19 += v22;
      ++v18;
    }

    while (((v6 - v7) >> 3) * v8 > v18);
  }

  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }
}

void sub_1B5280510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::ErrorBlamer::GetTimeAlignedErrorRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 116);
  v6 = *(a1 + 120);
  std::vector<std::vector<double>>::vector[abi:ne200100](v13, 2uLL);
  v12 = 0;
  std::vector<double>::resize(v13[0], 2uLL, &v12);
  v12 = 0;
  std::vector<double>::resize(v13[0] + 3, 2uLL, &v12);
  v8 = v13[0];
  **v13[0] = v6;
  v8[3][1] = v7;
  fst::ScaleLattice<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,double>(v13, a2);
  v12 = v13;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v10 = *(a1 + 116);
  v9 = *(a1 + 120);
  std::vector<std::vector<double>>::vector[abi:ne200100](v13, 2uLL);
  v12 = 0;
  std::vector<double>::resize(v13[0], 2uLL, &v12);
  v12 = 0;
  std::vector<double>::resize(v13[0] + 3, 2uLL, &v12);
  v11 = v13[0];
  **v13[0] = v9;
  v11[3][1] = v10;
  fst::ScaleLattice<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,double>(v13, a3);
  v12 = v13;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v12);
  kaldi::quasar::ErrorBlamer::GetBestPath();
}

void sub_1B5280CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  quasar::Bitmap::~Bitmap(&a10);
  kaldi::quasar::ErrorRegion::~ErrorRegion(&a55);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst((v55 - 144));
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst((v55 - 128));
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::quasar::ErrorRegion>::push_back[abi:ne200100](uint64_t a1, const kaldi::quasar::ErrorRegion *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<kaldi::quasar::ErrorRegion>::__emplace_back_slow_path<kaldi::quasar::ErrorRegion const&>(a1, a2);
  }

  else
  {
    kaldi::quasar::ErrorRegion::ErrorRegion(*(a1 + 8), a2);
    result = v3 + 328;
    *(a1 + 8) = v3 + 328;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t kaldi::quasar::ErrorBlamer::ComputeImpactOfErrorOnSucceedingErrorRegions(uint64_t a1, void *a2)
{
  v2 = *(a1 + 108);
  v3 = a2[10];
  v4 = (a2[11] - v3) >> 2;
  if (((v4 - 1) & 0x80000000) == 0)
  {
    v5 = a2[7];
    v6 = (a2[8] - v5) >> 2;
    if (((v6 - 1) & 0x80000000) == 0)
    {
      v7 = v6 - 2;
      v8 = v4 - 2;
      do
      {
        if (*(v3 + 4 * (v8 + 1)) != *(v5 + 4 * (v7 + 1)))
        {
          break;
        }

        --v2;
        v9 = v8-- | v7--;
      }

      while ((v9 & 0x80000000) == 0);
    }
  }

  return v2 & ~(v2 >> 31);
}

void fst::ScaleLattice<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,double>(double ***a1, uint64_t a2)
{
  std::vector<std::vector<double>>::vector[abi:ne200100](&v26, 2uLL);
  v22 = 0;
  std::vector<double>::resize(v26, 2uLL, &v22);
  v22 = 0;
  std::vector<double>::resize(v26 + 3, 2uLL, &v22);
  v4 = v26;
  v26[3][1] = 1.0;
  **v4 = 1.0;
  v6 = *a1;
  v5 = a1[1];
  if (v5 - *a1 == v27 - v4)
  {
    while (v6 != v5)
    {
      v8 = *v6;
      v7 = v6[1];
      v9 = *v4;
      if (v7 - *v6 != v4[1] - *v4)
      {
        goto LABEL_8;
      }

      while (v8 != v7)
      {
        if (*v8 != *v9)
        {
          goto LABEL_8;
        }

        ++v8;
        ++v9;
      }

      v6 += 3;
      v4 += 3;
    }

    v22 = &v26;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v22);
  }

  else
  {
LABEL_8:
    v22 = &v26;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v22);
    v10 = (*(*a2 + 160))(a2);
    if (v10 >= 1)
    {
      v11 = v10;
      v12 = 0;
      do
      {
        (*(*a2 + 296))(a2, v12, &v32);
        while (!(*(*v32 + 24))(v32))
        {
          v13 = (*(*v32 + 32))(v32);
          v26 = *v13;
          v27 = *(v13 + 8);
          v29 = 0;
          v30 = 0;
          v28 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v28, *(v13 + 16), *(v13 + 24), (*(v13 + 24) - *(v13 + 16)) >> 2);
          v31 = *(v13 + 40);
          v14 = INFINITY;
          v15 = INFINITY;
          if (*&v27 != INFINITY)
          {
            v14 = (**a1)[1] * *(&v27 + 1) + ***a1 * *&v27;
            v15 = (*a1)[3][1] * *(&v27 + 1) + *(*a1)[3] * *&v27;
          }

          v22 = __PAIR64__(LODWORD(v15), LODWORD(v14));
          v24 = 0;
          v25 = 0;
          __p = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v28, v29, (v29 - v28) >> 2);
          v27 = v22;
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v28, __p, v24, (v24 - __p) >> 2);
          if (__p)
          {
            v24 = __p;
            operator delete(__p);
          }

          (*(*v32 + 88))(v32, &v26);
          if (v28)
          {
            v29 = v28;
            operator delete(v28);
          }

          (*(*v32 + 40))(v32);
        }

        if (v32)
        {
          (*(*v32 + 8))(v32);
        }

        (*(*a2 + 32))(&v26, a2, v12);
        LODWORD(v32) = HIDWORD(v26);
        LODWORD(v22) = v26;
        v34 = 2139095040;
        v33 = INFINITY;
        if (*&v26 != INFINITY || *&v32 != v33 || v28 != v27)
        {
          v16 = INFINITY;
          v17 = INFINITY;
          if (*&v26 != INFINITY)
          {
            v16 = (**a1)[1] * *(&v26 + 1) + ***a1 * *&v26;
            v17 = (*a1)[3][1] * *(&v26 + 1) + *(*a1)[3] * *&v26;
          }

          *v18 = v16;
          *&v18[1] = v17;
          v20 = 0;
          v21 = 0;
          v19 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v19, v27, v28, (v28 - v27) >> 2);
          (*(*a2 + 184))(a2, v12, v18);
          if (v19)
          {
            v20 = v19;
            operator delete(v19);
          }
        }

        if (v27)
        {
          v28 = v27;
          operator delete(v27);
        }

        v12 = (v12 + 1);
      }

      while (v12 != v11);
    }
  }
}

void sub_1B5281314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char *a13, void *a14, uint64_t a15, uint64_t a16, char a17, void *__p, void *a19, uint64_t a20)
{
  a13 = &a17;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::ErrorBlamer::RemoveLanguageModelCost(uint64_t a1, uint64_t a2)
{
  std::vector<std::vector<double>>::vector[abi:ne200100](v10, 2uLL);
  v9[0] = 0;
  std::vector<double>::resize(v10[0], 2uLL, v9);
  v9[0] = 0;
  std::vector<double>::resize(v10[0] + 3, 2uLL, v9);
  v4 = v10[0];
  **v10[0] = 0;
  v4[3][1] = 1.0;
  v5 = (*(*a2 + 88))(a2, 0);
  fst::ScaleLattice<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,double>(v10, v5);
  kaldi::AddTransitionProbs(*(a1 + 136), v5, *(a1 + 124), *(a1 + 128));
  v6 = *(a1 + 120);
  std::vector<std::vector<double>>::vector[abi:ne200100](v9, 2uLL);
  v11 = 0;
  std::vector<double>::resize(v9[0], 2uLL, &v11);
  v11 = 0;
  std::vector<double>::resize(v9[0] + 3, 2uLL, &v11);
  v7 = v9[0];
  **v9[0] = v6;
  *(v7[3] + 1) = 0;
  fst::ScaleLattice<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,double>(v9, v5);
  v11 = v9;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v9[0] = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v9);
  return v5;
}

void sub_1B5281574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 40) = v13;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100]((v14 - 40));
  a10 = &a13;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void kaldi::quasar::ErrorBlamer::ReplaceEpsilonWithNoLabel(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 8) + 72) - *(*(a2 + 8) + 64);
  if ((v2 >> 3) >= 1)
  {
    v5 = 0;
    v6 = (v2 >> 3) & 0x7FFFFFFF;
    do
    {
      v18 = &unk_1F2CFC4E0;
      v21 = 0;
      fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::MutateCheck(a2);
      v7 = *(a2 + 8);
      v8 = *(*(v7 + 64) + 8 * v5);
      v19 = v8;
      v20 = v7 + 8;
      for (i = v21; ; i = ++v21)
      {
        v11 = v8 + 48;
        v10 = *(v8 + 48);
        if (i >= 0xAAAAAAAAAAAAAAABLL * ((*(v11 + 8) - v10) >> 4))
        {
          break;
        }

        v12 = v10 + 48 * i;
        v13[0] = *v12;
        v13[1] = *(v12 + 8);
        v15 = 0;
        v16 = 0;
        __p = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(v12 + 16), *(v12 + 24), (*(v12 + 24) - *(v12 + 16)) >> 2);
        v17 = *(v12 + 40);
        if (!HIDWORD(v13[0]) || HIDWORD(v13[0]) == *(a1 + 104))
        {
          HIDWORD(v13[0]) = -1;
        }

        fst::MutableArcIterator<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>::SetValue(&v18, v13);
        if (__p)
        {
          v15 = __p;
          operator delete(__p);
        }

        v8 = v19;
      }

      ++v5;
    }

    while (v5 != v6);
  }
}

void sub_1B5281730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5281CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  a11 = &a15;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a11);
  a11 = &a18;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a11);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B5281E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(va);
  _Unwind_Resume(a1);
}

void sub_1B5281FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(va);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(va1);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(va2);
  _Unwind_Resume(a1);
}

void kaldi::quasar::ErrorBlamer::RemoveWeightsFromLattice(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 8) + 72) - *(*(a2 + 8) + 64);
  if ((v2 >> 3) >= 1)
  {
    v4 = 0;
    v5 = (v2 >> 3) & 0x7FFFFFFF;
    do
    {
      v14 = &unk_1F2CFC800;
      v17 = 0;
      fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::MutateCheck(a2);
      v6 = *(a2 + 8);
      v7 = *(*(v6 + 64) + 8 * v4);
      v15 = v7;
      v16 = v6 + 8;
      for (i = v17; ; i = ++v17)
      {
        v10 = v7 + 24;
        v9 = *(v7 + 24);
        if (i >= 0xCCCCCCCCCCCCCCCDLL * ((*(v10 + 8) - v9) >> 2))
        {
          break;
        }

        v11 = v9 + 20 * i;
        v12[0] = *v11;
        v13 = *(v11 + 16);
        v12[1] = 0;
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::SetValue(&v14, v12);
        v7 = v15;
      }

      ++v4;
    }

    while (v4 != v5);
  }
}

void fst::ArcSort<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(uint64_t a1)
{
  v1[0] = a1;
  v1[1] = &v4;
  *__p = 0u;
  v3 = 0u;
  fst::StateMap<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ArcSortMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, v1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1B5282164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::Compose<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 4);
  if (v4 <= 1)
  {
    if (!v4)
    {
      fst::ComposeFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::CreateBase(result, a2);
    }

    if (v4 == 1)
    {
      fst::ComposeFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::CreateBase2<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>();
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        fst::ComposeFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::CreateBase2<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>();
      case 3:
        fst::ComposeFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::CreateBase2<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>();
      case 4:
        fst::ComposeFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::CreateBase2<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>();
    }
  }

  if (*a4 == 1)
  {
    fst::Connect<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a3);
  }

  return result;
}

void std::vector<double>::resize(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append(a1, a2 - v3, a3);
  }
}

void *std::vector<std::vector<double>>::vector[abi:ne200100](void *result, unint64_t a2)
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

void std::vector<double>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_1B5AE0060)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_1B5AE0060)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void std::vector<kaldi::quasar::ErrorRegion>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 41;
      v7 = v4 - 41;
      do
      {
        (**v7)(v7);
        v6 -= 41;
        v8 = v7 == v2;
        v7 -= 41;
      }

      while (!v8);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5282838(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<kaldi::quasar::ErrorRegion>::__emplace_back_slow_path<kaldi::quasar::ErrorRegion const&>(uint64_t a1, const kaldi::quasar::ErrorRegion *a2)
{
  v2 = 0x8F9C18F9C18F9C19 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xC7CE0C7CE0C7CELL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x1F3831F3831F3832 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1F3831F3831F3832 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8F9C18F9C18F9C19 * ((*(a1 + 16) - *a1) >> 3) >= 0x63E7063E7063E7)
  {
    v6 = 0xC7CE0C7CE0C7CELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::ErrorRegion>>(a1, v6);
  }

  v13 = 0;
  v14 = 328 * v2;
  kaldi::quasar::ErrorRegion::ErrorRegion((328 * v2), a2);
  v15 = 328 * v2 + 328;
  v7 = *(a1 + 8);
  v8 = 328 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::ErrorRegion>,kaldi::quasar::ErrorRegion*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<kaldi::quasar::ErrorRegion>::~__split_buffer(&v13);
  return v12;
}

void sub_1B5282988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::quasar::ErrorRegion>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::ErrorRegion>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xC7CE0C7CE0C7CFLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::ErrorRegion>,kaldi::quasar::ErrorRegion*>(int a1, kaldi::quasar::ErrorRegion *a2, kaldi::quasar::ErrorRegion *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = kaldi::quasar::ErrorRegion::ErrorRegion((a4 + v7), v8);
      v8 = (v8 + 328);
      v7 += 328;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      do
      {
        result = (**v6)(v6);
        v6 = (v6 + 328);
        v10 = (v10 + 328);
      }

      while (v6 != a3);
    }
  }

  return result;
}

void sub_1B5282AA0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::ErrorRegion>,kaldi::quasar::ErrorRegion*>(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<kaldi::quasar::ErrorRegion>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 328;
    (**(i - 328))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::vector<std::vector<std::pair<int,float>>>::vector[abi:ne200100](void *result, unint64_t a2)
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

uint64_t fst::StateMap<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ArcSortMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(uint64_t a1, uint64_t *a2)
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
        fst::ArcSortMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetState(a2, v7);
        (*(*a1 + 240))(a1, v7);
        for (i = a2[5]; ; a2[5] = i)
        {
          v9 = a2[2];
          if (i >= 0xCCCCCCCCCCCCCCCDLL * ((a2[3] - v9) >> 2))
          {
            break;
          }

          (*(*a1 + 208))(a1, v7, v9 + 20 * i);
          i = a2[5] + 1;
        }

        (*(**a2 + 32))(&v10);
        (*(*a1 + 184))(a1, v7, &v10);
        v7 = (v7 + 1);
      }

      while (v7 < (*(*a1 + 160))(a1));
    }

    return (*(*a1 + 192))(a1, v5 & 0x3FFF0FFF0007 | (((v5 >> 16) & 1) << 30) | 0x10000000, 0x3FFFFFFF0007);
  }

  return result;
}

void fst::ArcSortMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetState(uint64_t *a1, uint64_t a2)
{
  a1[5] = 0;
  v4 = a1 + 2;
  a1[3] = a1[2];
  v5 = (*(**a1 + 40))(*a1);
  std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::reserve(v4, v5);
  v6 = *a1;
  v14 = 0;
  (*(*v6 + 136))(v6, a2, v12);
  while (1)
  {
    if (!v12[0])
    {
      if (v14 >= v12[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v7 = v12[1] + 20 * v14;
      goto LABEL_8;
    }

    if ((*(*v12[0] + 24))(v12[0]))
    {
      break;
    }

    if (!v12[0])
    {
      goto LABEL_7;
    }

    v7 = (*(*v12[0] + 32))();
LABEL_8:
    std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::push_back[abi:ne200100](v4, v7);
    if (v12[0])
    {
      (*(*v12[0] + 40))(v12[0]);
    }

    else
    {
      ++v14;
    }
  }

  if (v12[0])
  {
    (*(*v12[0] + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (v13)
  {
    --*v13;
  }

LABEL_15:
  v8 = a1[2];
  v9 = a1[3];
  v10 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 2));
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,false>(v8, v9, v12, v11, 1);
}

void sub_1B528306C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::GetLinearSymbolSequence<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,int>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,false>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v9) >> 2);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v25 = *(a2 - 20);
        v26 = *v9;
        if (v25 < *v9)
        {
          v27 = *(v9 + 4);
          *v9 = v25;
          v28 = *(a2 - 12);
          *(v9 + 4) = *(a2 - 1);
          v29 = v9[1];
          v9[1] = v28;
          *(a2 - 20) = v26;
          *(a2 - 12) = v29;
          *(a2 - 1) = v27;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(v9, (v9 + 20), v9 + 5);
      v30 = *(a2 - 20);
      v31 = v9[5];
      if (v30 < v31)
      {
        v32 = *(v9 + 14);
        v9[5] = v30;
        v33 = *(a2 - 12);
        *(v9 + 14) = *(a2 - 1);
        v34 = v9[6];
        v9[6] = v33;
        *(a2 - 20) = v31;
        *(a2 - 12) = v34;
        *(a2 - 1) = v32;
        v35 = v9[5];
        v36 = *(v9 + 20);
        if (v35 < v36)
        {
          v37 = *(v9 + 9);
          *(v9 + 20) = v35;
          v38 = *(v9 + 12);
          v39 = *(v9 + 13);
          v40 = *(v9 + 14);
          *(v9 + 9) = v40;
          v9[5] = v36;
          v41 = *(v9 + 28);
          *(v9 + 7) = v38;
          *(v9 + 8) = v39;
          v9[6] = v41;
          *(v9 + 14) = v37;
          v42 = *v9;
          if (v35 < *v9)
          {
            v43 = *(v9 + 4);
            *v9 = v35;
            *(v9 + 4) = v40;
            *(v9 + 20) = v42;
            v44 = v9[1];
            *(v9 + 2) = v38;
            *(v9 + 3) = v39;
            *(v9 + 28) = v44;
            *(v9 + 9) = v43;
          }
        }
      }

      return;
    }

    if (v13 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(v9, v9 + 20, (v9 + 5), (v9 + 60), (a2 - 20));
      return;
    }

LABEL_10:
    if (v12 <= 479)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(v9, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(v9, a2, a2, a3);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = (v9 + 20 * (v13 >> 1));
    if (v12 < 0xA01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>((v9 + 20 * v14), v9, (a2 - 20));
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(v9, (v9 + 20 * v14), (a2 - 20));
      v16 = 5 * v14;
      v17 = (v9 + 20 * v14 - 20);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>((v9 + 20), v17, a2 - 5);
      v18 = (v9 + 4 * v16 + 20);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>((a1 + 40), v18, (a2 - 60));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(v17, v15, v18);
      v19 = *a1;
      v20 = *(a1 + 16);
      *a1 = *v15;
      *(a1 + 16) = *(v15 + 4);
      *v15 = v19;
      v21 = *(a1 + 8);
      *(a1 + 8) = v15[1];
      v15[1] = v21;
      *(v15 + 4) = v20;
      if (a5)
      {
        goto LABEL_17;
      }
    }

    if (*(a1 - 20) >= *a1)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::LatticeWeightTpl<float>,int> *,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &>(a1, a2);
      goto LABEL_22;
    }

LABEL_17:
    v22 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::LatticeWeightTpl<float>,int> *,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &>(a1, a2);
    if ((v23 & 1) == 0)
    {
      goto LABEL_20;
    }

    v24 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(a1, v22);
    v9 = (v22 + 20);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(v22 + 20, a2))
    {
      a4 = -v11;
      a2 = v22;
      if (v24)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v24)
    {
LABEL_20:
      std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,false>(a1, v22, a3, -v11, a5 & 1);
      v9 = (v22 + 20);
LABEL_22:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(v9, (v9 + 20), (a2 - 20));
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a1;
  v5 = *a3;
  if (*a2 < *a1)
  {
    v7 = *(a1 + 2);
    v6 = *(a1 + 3);
    v8 = *(a1 + 4);
    if (v5 >= v3)
    {
      *a1 = v3;
      a1[1] = a2[1];
      *(a1 + 4) = *(a2 + 4);
      *a2 = v4;
      *(a2 + 2) = v7;
      *(a2 + 3) = v6;
      *(a2 + 4) = v8;
      if (*a3 >= v4)
      {
        return 1;
      }

      *a2 = *a3;
      a2[1] = a3[1];
      *(a2 + 4) = *(a3 + 4);
    }

    else
    {
      *a1 = v5;
      a1[1] = a3[1];
      *(a1 + 4) = *(a3 + 4);
    }

    *a3 = v4;
    *(a3 + 2) = v7;
    *(a3 + 3) = v6;
    *(a3 + 4) = v8;
    return 1;
  }

  if (v5 < v3)
  {
    v9 = *(a2 + 4);
    *a2 = v5;
    v10 = a3[1];
    *(a2 + 4) = *(a3 + 4);
    v11 = a2[1];
    a2[1] = v10;
    *a3 = v3;
    a3[1] = v11;
    *(a3 + 4) = v9;
    v12 = *a1;
    if (*a2 < *a1)
    {
      v13 = *(a1 + 4);
      *a1 = *a2;
      v14 = a2[1];
      *(a1 + 4) = *(a2 + 4);
      v15 = a1[1];
      a1[1] = v14;
      *a2 = v12;
      a2[1] = v15;
      *(a2 + 4) = v13;
    }

    return 1;
  }

  return 0;
}

double std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, double *a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(a1, a2, a3);
  v11 = *a3;
  if (*a4 < *a3)
  {
    v12 = *(a3 + 16);
    *a3 = *a4;
    result = a4[1];
    *(a3 + 16) = *(a4 + 4);
    v13 = *(a3 + 8);
    *(a3 + 8) = result;
    *a4 = v11;
    *(a4 + 1) = v13;
    *(a4 + 4) = v12;
    v14 = *a2;
    if (*a3 < *a2)
    {
      v15 = *(a2 + 16);
      *a2 = *a3;
      result = *(a3 + 8);
      *(a2 + 16) = *(a3 + 16);
      v16 = *(a2 + 8);
      *(a2 + 8) = result;
      *a3 = v14;
      *(a3 + 8) = v16;
      *(a3 + 16) = v15;
      v17 = *a1;
      if (*a2 < *a1)
      {
        v18 = *(a1 + 16);
        *a1 = *a2;
        result = *(a2 + 8);
        *(a1 + 16) = *(a2 + 16);
        v19 = *(a1 + 8);
        *(a1 + 8) = result;
        *a2 = v17;
        *(a2 + 8) = v19;
        *(a2 + 16) = v18;
      }
    }
  }

  v20 = *a4;
  if (*a5 < *a4)
  {
    v21 = *(a4 + 4);
    *a4 = *a5;
    result = a5[1];
    *(a4 + 4) = *(a5 + 4);
    v22 = *(a4 + 1);
    a4[1] = result;
    *a5 = v20;
    *(a5 + 1) = v22;
    *(a5 + 4) = v21;
    v23 = *a3;
    if (*a4 < *a3)
    {
      v24 = *(a3 + 16);
      *a3 = *a4;
      result = a4[1];
      *(a3 + 16) = *(a4 + 4);
      v25 = *(a3 + 8);
      *(a3 + 8) = result;
      *a4 = v23;
      *(a4 + 1) = v25;
      *(a4 + 4) = v24;
      v26 = *a2;
      if (*a3 < *a2)
      {
        v27 = *(a2 + 16);
        *a2 = *a3;
        result = *(a3 + 8);
        *(a2 + 16) = *(a3 + 16);
        v28 = *(a2 + 8);
        *(a2 + 8) = result;
        *a3 = v26;
        *(a3 + 8) = v28;
        *(a3 + 16) = v27;
        v29 = *a1;
        if (*a2 < *a1)
        {
          v30 = *(a1 + 16);
          *a1 = *a2;
          result = *(a2 + 8);
          *(a1 + 16) = *(a2 + 16);
          v31 = *(a1 + 8);
          *(a1 + 8) = result;
          *a2 = v29;
          *(a2 + 8) = v31;
          *(a2 + 16) = v30;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 20;
    if (result + 20 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 20);
        v7 = *v4;
        if (v6 < *v4)
        {
          v8 = *(v4 + 28);
          v9 = *(v4 + 36);
          v10 = v3;
          while (1)
          {
            v11 = result + v10;
            *(v11 + 20) = v7;
            *(v11 + 28) = *(result + v10 + 8);
            *(v11 + 36) = *(result + v10 + 16);
            if (!v10)
            {
              break;
            }

            v7 = *(v11 - 20);
            v10 -= 20;
            if (v6 >= v7)
            {
              v12 = result + v10 + 20;
              goto LABEL_10;
            }
          }

          v12 = result;
LABEL_10:
          *v12 = v6;
          *(v12 + 8) = v8;
          *(v12 + 16) = v9;
        }

        v2 = v5 + 20;
        v3 += 20;
        v4 = v5;
      }

      while (v5 + 20 != a2);
    }
  }

  return result;
}

uint64_t *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = (result + 20);
    if ((result + 20) != a2)
    {
      v3 = result + 9;
      do
      {
        v4 = v2;
        v5 = *(result + 20);
        v6 = *result;
        if (v5 < *result)
        {
          v7 = *(result + 28);
          v8 = *(result + 9);
          v9 = v3;
          do
          {
            v10 = v9;
            *(v9 - 2) = v6;
            *(v9 - 1) = *(v9 - 7);
            v11 = *(v9 - 5);
            v9 -= 5;
            *v10 = v11;
            v6 = *(v10 - 7);
          }

          while (v5 < v6);
          *(v9 - 2) = v5;
          *(v9 - 1) = v7;
          *v9 = v8;
        }

        v2 = (v4 + 20);
        v3 += 5;
        result = v4;
      }

      while ((v4 + 20) != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::LatticeWeightTpl<float>,int> *,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 5))
  {
    v5 = (a1 + 20);
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      v5 = (v5 + 20);
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = *(v3 + 5);
      v3 = (v3 + 20);
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *(a2 - 5);
      a2 = (a2 - 20);
    }

    while (v2 < v6);
  }

  v7 = a1[1];
  v8 = *(a1 + 4);
  if (v3 < a2)
  {
    v9 = *v3;
    v10 = *a2;
    do
    {
      v11 = *(v3 + 4);
      *v3 = v10;
      v12 = a2[1];
      *(v3 + 4) = *(a2 + 4);
      v13 = v3[1];
      v3[1] = v12;
      *a2 = v9;
      a2[1] = v13;
      *(a2 + 4) = v11;
      do
      {
        v14 = *(v3 + 20);
        v3 = (v3 + 20);
        v9 = v14;
      }

      while (v2 >= v14);
      do
      {
        v15 = *(a2 - 20);
        a2 = (a2 - 20);
        v10 = v15;
      }

      while (v2 < v15);
    }

    while (v3 < a2);
  }

  if ((v3 - 20) != a1)
  {
    *a1 = *(v3 - 20);
    a1[1] = *(v3 - 12);
    *(a1 + 4) = *(v3 - 1);
  }

  *(v3 - 20) = v2;
  *(v3 - 12) = v7;
  *(v3 - 1) = v8;
  return v3;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::LatticeWeightTpl<float>,int> *,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &>(uint64_t *a1, void *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 4);
  do
  {
    v6 = *(a1 + v2 + 20);
    v2 += 20;
  }

  while (v6 < v3);
  v7 = a1 + v2;
  if (v2 == 20)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v9 = *(a2 - 5);
      a2 = (a2 - 20);
    }

    while (v9 >= v3);
  }

  else
  {
    do
    {
      v8 = *(a2 - 5);
      a2 = (a2 - 20);
    }

    while (v8 >= v3);
  }

  if (v7 >= a2)
  {
    v11 = a1 + v2;
  }

  else
  {
    v10 = *a2;
    v11 = a1 + v2;
    v12 = a2;
    do
    {
      v13 = *(v11 + 16);
      *v11 = v10;
      v14 = v12[1];
      *(v11 + 16) = *(v12 + 4);
      v15 = *(v11 + 8);
      *(v11 + 8) = v14;
      *v12 = v6;
      v12[1] = v15;
      *(v12 + 4) = v13;
      do
      {
        v16 = *(v11 + 20);
        v11 += 20;
        v6 = v16;
      }

      while (v16 < v3);
      do
      {
        v17 = *(v12 - 20);
        v12 = (v12 - 20);
        v10 = v17;
      }

      while (v17 >= v3);
    }

    while (v11 < v12);
  }

  if ((v11 - 20) != a1)
  {
    *a1 = *(v11 - 20);
    a1[1] = *(v11 - 12);
    *(a1 + 4) = *(v11 - 4);
  }

  *(v11 - 20) = v3;
  *(v11 - 12) = v4;
  *(v11 - 4) = v5;
  return v11 - 20;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(uint64_t a1, uint64_t a2)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 2);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(a1, (a1 + 20), (a2 - 20));
        break;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(a1, (a1 + 20), (a1 + 40));
        v21 = *(a2 - 20);
        v22 = *(a1 + 40);
        if (v21 < v22)
        {
          v23 = *(a1 + 56);
          *(a1 + 40) = v21;
          v24 = *(a2 - 12);
          *(a1 + 56) = *(a2 - 4);
          v25 = *(a1 + 48);
          *(a1 + 48) = v24;
          *(a2 - 20) = v22;
          *(a2 - 12) = v25;
          *(a2 - 4) = v23;
          v26 = *(a1 + 40);
          v27 = *(a1 + 20);
          if (v26 < v27)
          {
            v28 = *(a1 + 36);
            *(a1 + 20) = v26;
            v29 = *(a1 + 48);
            v30 = *(a1 + 52);
            v31 = *(a1 + 56);
            *(a1 + 36) = v31;
            *(a1 + 40) = v27;
            v32 = *(a1 + 28);
            *(a1 + 28) = v29;
            *(a1 + 32) = v30;
            *(a1 + 48) = v32;
            *(a1 + 56) = v28;
            v33 = *a1;
            if (v26 < *a1)
            {
              v34 = *(a1 + 16);
              *a1 = v26;
              *(a1 + 16) = v31;
              *(a1 + 20) = v33;
              v35 = *(a1 + 8);
              *(a1 + 8) = v29;
              *(a1 + 12) = v30;
              *(a1 + 28) = v35;
              *(a1 + 36) = v34;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(a1, a1 + 20, a1 + 40, (a1 + 60), (a2 - 20));
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 20);
    v6 = *a1;
    if (v5 < *a1)
    {
      v7 = *(a1 + 16);
      *a1 = v5;
      v8 = *(a2 - 12);
      *(a1 + 16) = *(a2 - 4);
      v9 = *(a1 + 8);
      *(a1 + 8) = v8;
      *(a2 - 20) = v6;
      *(a2 - 12) = v9;
      *(a2 - 4) = v7;
    }

    return 1;
  }

LABEL_11:
  v10 = (a1 + 40);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(a1, (a1 + 20), (a1 + 40));
  v11 = a1 + 60;
  if (a1 + 60 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *v11;
    v15 = *v10;
    if (*v11 < *v10)
    {
      v16 = *(v11 + 8);
      v17 = *(v11 + 16);
      v18 = v12;
      while (1)
      {
        v19 = a1 + v18;
        *(v19 + 60) = v15;
        *(v19 + 68) = *(a1 + v18 + 48);
        *(v19 + 76) = *(a1 + v18 + 56);
        if (v18 == -40)
        {
          break;
        }

        v15 = *(v19 + 20);
        v18 -= 20;
        if (v14 >= v15)
        {
          v20 = a1 + v18 + 60;
          goto LABEL_19;
        }
      }

      v20 = a1;
LABEL_19:
      *v20 = v14;
      *(v20 + 8) = v16;
      *(v20 + 16) = v17;
      if (++v13 == 8)
      {
        return v11 + 20 == a2;
      }
    }

    v10 = v11;
    v12 += 20;
    v11 += 20;
    if (v11 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 2);
    if (a2 - a1 >= 21)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 20 * v10);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(a1, a4, v9, v12);
        v12 = (v12 - 20);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        v14 = *v13;
        if (*v13 < *a1)
        {
          v15 = *(v13 + 4);
          *v13 = *a1;
          v16 = *(a1 + 8);
          *(v13 + 4) = *(a1 + 16);
          v17 = v13[1];
          v13[1] = v16;
          *a1 = v14;
          *(a1 + 8) = v17;
          *(a1 + 16) = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(a1, a4, v9, a1);
        }

        v13 = (v13 + 20);
      }

      while (v13 != a3);
    }

    if (v8 >= 21)
    {
      v18 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 2);
      v19 = a2 - 20;
      do
      {
        v20 = *a1;
        v22 = *(a1 + 8);
        v21 = *(a1 + 12);
        v23 = *(a1 + 16);
        v24 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(a1, a4, v18);
        if (v19 == v24)
        {
          *v24 = v20;
          *(v24 + 8) = v22;
          *(v24 + 12) = v21;
          *(v24 + 16) = v23;
        }

        else
        {
          *v24 = *v19;
          *(v24 + 8) = *(v19 + 8);
          *(v24 + 16) = *(v19 + 16);
          *v19 = v20;
          *(v19 + 8) = v22;
          *(v19 + 12) = v21;
          *(v19 + 16) = v23;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(a1, v24 + 20, a4, 0xCCCCCCCCCCCCCCCDLL * ((v24 + 20 - a1) >> 2));
        }

        v19 -= 20;
      }

      while (v18-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - result) >> 2)))
    {
      v5 = (0x999999999999999ALL * ((a4 - result) >> 2)) | 1;
      v6 = (result + 20 * v5);
      v7 = *v6;
      if ((0x999999999999999ALL * ((a4 - result) >> 2) + 2) < a3)
      {
        v8 = *(v6 + 20);
        v10 = __OFSUB__(v7, v8);
        v9 = v7 - v8 < 0;
        if (v7 < v8)
        {
          v7 = *(v6 + 20);
        }

        if (v9 != v10)
        {
          v6 = (v6 + 20);
          v5 = 0x999999999999999ALL * ((a4 - result) >> 2) + 2;
        }
      }

      v11 = *a4;
      if (v7 >= *a4)
      {
        v12 = a4[1];
        v13 = *(a4 + 4);
        do
        {
          v14 = a4;
          a4 = v6;
          *v14 = v7;
          v14[1] = v6[1];
          *(v14 + 4) = *(v6 + 4);
          if (v4 < v5)
          {
            break;
          }

          v15 = (2 * v5) | 1;
          v6 = (result + 20 * v15);
          v16 = 2 * v5 + 2;
          v7 = *v6;
          if (v16 < a3)
          {
            v17 = *(v6 + 20);
            v19 = __OFSUB__(v7, v17);
            v18 = v7 - v17 < 0;
            if (v7 < v17)
            {
              v7 = *(v6 + 20);
            }

            if (v18 != v19)
            {
              v6 = (v6 + 20);
              v15 = v16;
            }
          }

          v5 = v15;
        }

        while (v7 >= v11);
        *a4 = v11;
        a4[1] = v12;
        *(a4 + 4) = v13;
      }
    }
  }

  return result;
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1 + 20 * v3;
    v5 = v4 + 20;
    v6 = *(v4 + 20);
    v7 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v7;
    }

    else
    {
      v10 = *(v4 + 40);
      v8 = v4 + 40;
      v9 = v10;
      if (v6 >= v10)
      {
        v3 = v7;
      }

      else
      {
        v6 = v9;
        v5 = v8;
      }
    }

    *a1 = v6;
    *(a1 + 8) = *(v5 + 8);
    *(a1 + 16) = *(v5 + 16);
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 20 * v4);
    v6 = *v5;
    v7 = (a2 - 20);
    v8 = *(a2 - 20);
    if (*v5 < v8)
    {
      v9 = *(a2 - 12);
      v10 = *(a2 - 4);
      do
      {
        v11 = v7;
        v7 = v5;
        *v11 = v6;
        v11[1] = v5[1];
        *(v11 + 4) = *(v5 + 4);
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 20 * v4);
        v6 = *v5;
      }

      while (*v5 < v8);
      *v7 = v8;
      v7[1] = v9;
      *(v7 + 4) = v10;
    }
  }

  return result;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::ComposeFstImplBase(a1, a2, a3, a4) = &unk_1F2D0A218;
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
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(a1);
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

void sub_1B52843C8(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(***(a1 + 144) + 40))(**(a1 + 144), 0) & 4) != 0 || ((*(***(a1 + 152) + 40))(**(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Expand(void *a1, int a2)
{
  v4 = (*(a1[22] + 80) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(a1, v5, v6))
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

  return fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(v10, v11, v7, v12, v8, v13, v9, v14);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(***(a1 + 144) + 24))(**(a1 + 144), 0) == a3 && (*(***(a1 + 152) + 24))(**(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeStart(void **a1)
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

void *fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeFinal@<X0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = (*(***(a1 + 144) + 96))(&v10);
  v5 = *(&v10 + 1);
  v7 = v10;
  LODWORD(v14) = HIDWORD(v7);
  LODWORD(v6) = v7;
  LODWORD(v9) = v10;
  v13 = INFINITY;
  v12 = INFINITY;
  if (*&v10 != INFINITY || v14 != v12)
  {
    result = (*(***(a1 + 152) + 96))(&v9);
    v5 = *(&v9 + 1);
    v8 = v9;
    LODWORD(v13) = HIDWORD(v8);
    LODWORD(v6) = v8;
    v14 = *&v9;
    v12 = INFINITY;
    v11 = INFINITY;
    if (*&v9 != INFINITY || v13 != v11)
    {
      v6 = *&v9 + *&v10;
      v5 = *(&v9 + 1) + *(&v10 + 1);
    }
  }

  *a2 = v6;
  a2[1] = v5;
  return result;
}

void *fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::NullComposeFilter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = &unk_1F2D0A218;
  v2 = a1[17];
  if (v2)
  {
    v3 = fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~SequenceComposeFilter(v2);
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

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void sub_1B5284C64(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_1B5284EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8)
{
  (*(**a7 + 56))(*a7, a4);
  v19[0] = a8 - 1;
  v19[1] = a8 << 31 >> 31;
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, a2, a7, v19, a8);
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
      v14 = v16[1] + 20 * v18;
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
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, a2, a7, v14, a8);
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
    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetArcs(a1, a2);
  }

LABEL_13:
  if (v17)
  {
    --*v17;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B52850FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    fst::GetLinearSymbolSequence<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,int>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a9);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(uint64_t a1, int a2, void *a3, uint64_t a4, int a5)
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
        v12 = (*(**a3 + 80))();
        v13 = *v12;
        v23[0] = *v12;
        v23[1] = *(v12 + 8);
        v24 = *(v12 + 16);
        v14 = *a4;
        v21[0] = *a4;
        v21[1] = *(a4 + 8);
        v22 = *(a4 + 16);
        if (a5)
        {
          if (v14 > 0xFFFFFFFEFFFFFFFFLL)
          {
            goto LABEL_19;
          }

          v15 = v13 == 0xFFFFFFFFLL;
          v16 = v13 == 0xFFFFFFFFLL ? -1 : 0;
          v20 = v16;
          if (v15)
          {
            goto LABEL_19;
          }

          v17 = v21;
          v18 = v23;
        }

        else
        {
          if (v13 > 0xFFFFFFFEFFFFFFFFLL)
          {
            goto LABEL_19;
          }

          v19 = v14 == 0xFFFFFFFFLL ? -1 : 0;
          v20 = v19;
          if (v14 == 0xFFFFFFFFLL)
          {
            goto LABEL_19;
          }

          v17 = v23;
          v18 = v21;
        }

        fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(a1, a2, v17, v18, &v20);
LABEL_19:
        (*(**a3 + 88))();
        result = (*(**a3 + 72))();
      }

      while (!result);
    }
  }

  return result;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_1F2D0A290;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = -1;
  *(a1 + 28) = a4;
  fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Copy();
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Type(uint64_t a1, uint64_t a2)
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

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 92))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetState_(uint64_t result, int a2)
{
  if (*(result + 24) != a2)
  {
    v2 = result;
    *(result + 24) = a2;
    v3 = (*(*(*(result + 16) + 176) + 80) + 12 * a2);
    v4 = v3[1];
    (*(***(result + 32) + 56))(**(result + 32), *v3);
    result = (*(***(v2 + 40) + 56))(**(v2 + 40), v4);
    *(v2 + 68) = *(v2 + 24);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Find_(float32x2_t *a1, uint64_t a2)
{
  a1[6].i8[0] = a2 == 0;
  if (!a2)
  {
    return 1;
  }

  v2 = 4;
  if (a1[3].i32[1])
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  if (a1[3].i32[1])
  {
    v2 = 5;
  }

  return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, a2, *&a1[v2], *&a1[v3]);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Done_(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !(*(***(a1 + 32) + 72))(**(a1 + 32)))
  {
    return 0;
  }

  v2 = *(***(a1 + 40) + 72);

  return v2();
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Value_(uint64_t a1)
{
  v1 = 72;
  if (*(a1 + 48))
  {
    v1 = 52;
  }

  return a1 + v1;
}

float32x2_t *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Next_(float32x2_t *result)
{
  if (result[6].i8[0] == 1)
  {
    result[6].i8[0] = 0;
  }

  else
  {
    if (result[3].i32[1])
    {
      v2 = result[4];
      v1 = result[5];
    }

    else
    {
      v1 = result[4];
      v2 = result[5];
    }

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(result, v1, v2);
  }

  return result;
}

void *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = &unk_1F2D0A290;
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

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D0A290;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = -1;
  *(a1 + 28) = *(a2 + 28);
  fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Copy();
}

void sub_1B5285AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(float32x2_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = (*(**a3 + 64))();
  if (result)
  {
    v8 = a1[3].i32[1] == 0;
    v9 = (*(**a3 + 80))();
    (*(**a4 + 64))(*a4, *(v9 + 4 * v8));

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, a3, a4);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(float32x2_t *a1, uint64_t a2, void *a3)
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
          v6 = a1[3].i32[1] == 0;
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
      v10 = a1[3].u32[0];
      v11 = a1[3].i32[1];
      v12 = v11 == 0;
      if (v11)
      {
        v13 = v9;
      }

      else
      {
        v13 = v8;
      }

      v18[0] = *v13;
      v18[1] = v13[1];
      v19 = v13[2].i32[0];
      if (v12)
      {
        v14 = v9;
      }

      else
      {
        v14 = v8;
      }

      v16[0] = *v14;
      v16[1] = v14[1];
      v17 = v14[2].i32[0];
      if (fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(a1, v10, v18, v16))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(float32x2_t *a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  if (a3->i32[1] == -1 || a4->i32[0] == -1)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a4[2].i32[0];
  LODWORD(v9) = a3[2].i32[0];
  HIDWORD(v9) = v5;
  v10 = 0;
  v6 = a4->i32[1];
  a1[9].i32[0] = a3->i32[0];
  a1[9].i32[1] = v6;
  a1[10] = vadd_f32(a3[1], a4[1]);
  v7 = 1;
  a1[11].i32[0] = fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(*(*&v4 + 176), &v9, 1);
  return v7;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::ComposeFstImplBase(a1, a2, a3, a4) = &unk_1F2D0A328;
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
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(a1);
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

void sub_1B5286270(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(***(a1 + 144) + 40))(**(a1 + 144), 0) & 4) != 0 || ((*(***(a1 + 152) + 40))(**(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Expand(void *a1, int a2)
{
  v4 = (*(a1[22] + 80) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v17 = *(v4 + 8);
  fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetState(v7, v5, v6, &v17);
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(a1, v5, v6))
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

  return fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(v11, v12, v8, v13, v9, v14, v10, v15);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(***(a1 + 144) + 24))(**(a1 + 144), 0) == a3 && (*(***(a1 + 152) + 24))(**(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeStart(void **a1)
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

void *fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeFinal@<X0>(uint64_t a1@<X0>, int a2@<W1>, float32x2_t *a3@<X8>)
{
  v5 = *(*(a1 + 176) + 80) + 12 * a2;
  v6 = *v5;
  result = (*(***(a1 + 144) + 96))(&v13);
  v17 = v13.f32[1];
  v12.i32[0] = v13.i32[0];
  v16 = INFINITY;
  v15 = INFINITY;
  if (v13.f32[0] == INFINITY && v17 == v15)
  {
    *a3 = v13;
  }

  else
  {
    v8 = *(v5 + 4);
    result = (*(***(a1 + 152) + 96))(&v12);
    v10 = v12;
    LODWORD(v16) = HIDWORD(*&v10);
    v9.i32[0] = v10;
    v17 = v12.f32[0];
    v15 = INFINITY;
    v14 = INFINITY;
    if (v12.f32[0] == INFINITY && v16 == v14)
    {
      v9.i32[1] = v12.i32[1];
    }

    else
    {
      v11 = *(a1 + 136);
      LOBYTE(v17) = *(v5 + 8);
      result = fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetState(v11, v6, v8, &v17);
      v9 = vadd_f32(v13, v12);
    }

    *a3 = v9;
  }

  return result;
}

uint64_t fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::AltSequenceComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = &unk_1F2D0A328;
  v2 = a1[17];
  if (v2)
  {
    v3 = fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~SequenceComposeFilter(v2);
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

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void sub_1B5286B30(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_1B5286D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8)
{
  (*(**a7 + 56))(*a7, a4);
  LODWORD(v19) = a8 - 1;
  HIDWORD(v19) = a8 << 31 >> 31;
  v20 = 0;
  v21 = 0;
  v22 = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, a2, a7, &v19, a8);
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
      v14 = (v16[1] + 20 * v18);
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
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, a2, a7, v14, a8);
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
    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetArcs(a1, a2);
  }

LABEL_13:
  if (v17)
  {
    --*v17;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B5286F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    fst::GetLinearSymbolSequence<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,int>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a9);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(uint64_t a1, int a2, void *a3, uint64_t *a4, int a5)
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
        v12 = (*(**a3 + 80))();
        v13 = *v12;
        v31[0] = *v12;
        v31[1] = *(v12 + 8);
        v32 = *(v12 + 16);
        v14 = *a4;
        v29[0] = *a4;
        v29[1] = a4[1];
        v30 = *(a4 + 4);
        if (a5)
        {
          v15 = *(a1 + 136);
          if (v13 == -1)
          {
            if ((v15[33] & 1) == 0)
            {
              v16 = (v15[34] & 1) == 0;
              goto LABEL_16;
            }
          }

          else
          {
            if (HIDWORD(v14) == -1)
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

              v28 = v24;
              if (v23)
              {
                goto LABEL_24;
              }

              goto LABEL_17;
            }

            if (HIDWORD(v14))
            {
              v16 = 0;
LABEL_16:
              v28 = v16;
LABEL_17:
              v19 = v29;
              v20 = v31;
              goto LABEL_23;
            }
          }
        }

        else
        {
          v17 = *(a1 + 136);
          if (v14 == -1)
          {
            if ((v17[33] & 1) == 0)
            {
              v18 = (v17[34] & 1) == 0;
              goto LABEL_21;
            }
          }

          else
          {
            v21 = HIDWORD(v13);
            if (v21 == -1)
            {
              v25 = v17[32];
              v26 = v25 == 1;
              if (v25 == 1)
              {
                v27 = -1;
              }

              else
              {
                v27 = 0;
              }

              v28 = v27;
              if (v26)
              {
                goto LABEL_24;
              }

              goto LABEL_22;
            }

            if (v21)
            {
              v18 = 0;
LABEL_21:
              v28 = v18;
LABEL_22:
              v19 = v31;
              v20 = v29;
LABEL_23:
              fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(a1, a2, v19, v20, &v28);
            }
          }
        }

LABEL_24:
        (*(**a3 + 88))();
        result = (*(**a3 + 72))();
      }

      while (!result);
    }
  }

  return result;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_1F2D0A3A0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = -1;
  *(a1 + 28) = a4;
  fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Copy();
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Type(uint64_t a1, uint64_t a2)
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

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 92))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetState_(uint64_t result, int a2)
{
  if (*(result + 24) != a2)
  {
    v2 = result;
    *(result + 24) = a2;
    v3 = (*(*(*(result + 16) + 176) + 80) + 12 * a2);
    v4 = v3[1];
    (*(***(result + 32) + 56))(**(result + 32), *v3);
    result = (*(***(v2 + 40) + 56))(**(v2 + 40), v4);
    *(v2 + 68) = *(v2 + 24);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Find_(float32x2_t *a1, uint64_t a2)
{
  a1[6].i8[0] = a2 == 0;
  if (!a2)
  {
    return 1;
  }

  v2 = 4;
  if (a1[3].i32[1])
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  if (a1[3].i32[1])
  {
    v2 = 5;
  }

  return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, a2, *&a1[v2], *&a1[v3]);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Done_(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !(*(***(a1 + 32) + 72))(**(a1 + 32)))
  {
    return 0;
  }

  v2 = *(***(a1 + 40) + 72);

  return v2();
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Value_(uint64_t a1)
{
  v1 = 72;
  if (*(a1 + 48))
  {
    v1 = 52;
  }

  return a1 + v1;
}

float32x2_t *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Next_(float32x2_t *result)
{
  if (result[6].i8[0] == 1)
  {
    result[6].i8[0] = 0;
  }

  else
  {
    if (result[3].i32[1])
    {
      v2 = result[4];
      v1 = result[5];
    }

    else
    {
      v1 = result[4];
      v2 = result[5];
    }

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(result, v1, v2);
  }

  return result;
}

void *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = &unk_1F2D0A3A0;
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

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D0A3A0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = -1;
  *(a1 + 28) = *(a2 + 28);
  fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Copy();
}

void sub_1B52879F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(float32x2_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = (*(**a3 + 64))();
  if (result)
  {
    v8 = a1[3].i32[1] == 0;
    v9 = (*(**a3 + 80))();
    (*(**a4 + 64))(*a4, *(v9 + 4 * v8));

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, a3, a4);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(float32x2_t *a1, uint64_t a2, void *a3)
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
          v6 = a1[3].i32[1] == 0;
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
      v10 = a1[3].u32[0];
      v11 = a1[3].i32[1];
      v12 = v11 == 0;
      if (v11)
      {
        v13 = v9;
      }

      else
      {
        v13 = v8;
      }

      v18[0] = *v13;
      v18[1] = v13[1];
      v19 = v13[2].i32[0];
      if (v12)
      {
        v14 = v9;
      }

      else
      {
        v14 = v8;
      }

      v16[0] = *v14;
      v16[1] = v14[1];
      v17 = v14[2].i32[0];
      if (fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(a1, v10, v18, v16))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(float32x2_t *a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  v4 = a1[2];
  v5 = *(*&v4 + 136);
  if (a4->i32[0] == -1)
  {
    if ((v5[33] & 1) == 0)
    {
      v7 = (v5[34] & 1) == 0;
      goto LABEL_9;
    }
  }

  else
  {
    v6 = a3->i32[1];
    if (v6 && (v6 != -1 || v5[32] != 1))
    {
      v7 = 0;
LABEL_9:
      v9 = a4[2].i32[0];
      LODWORD(v12) = a3[2].i32[0];
      HIDWORD(v12) = v9;
      v13 = v7;
      v10 = a4->i32[1];
      a1[9].i32[0] = a3->i32[0];
      a1[9].i32[1] = v10;
      a1[10] = vadd_f32(a3[1], a4[1]);
      v8 = 1;
      a1[11].i32[0] = fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(*(*&v4 + 176), &v12, 1);
      return v8;
    }
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::ComposeFstImplBase(a1, a2, a3, a4) = &unk_1F2D0A438;
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
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(a1);
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

void sub_1B52881A0(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(***(a1 + 144) + 40))(**(a1 + 144), 0) & 4) != 0 || ((*(***(a1 + 152) + 40))(**(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Expand(void *a1, int a2)
{
  v4 = (*(a1[22] + 80) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v17 = *(v4 + 8);
  fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetState(v7, v5, v6, &v17);
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(a1, v5, v6))
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

  return fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(v11, v12, v8, v13, v9, v14, v10, v15);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(***(a1 + 144) + 24))(**(a1 + 144), 0) == a3 && (*(***(a1 + 152) + 24))(**(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeStart(void **a1)
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

void *fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeFinal@<X0>(uint64_t a1@<X0>, int a2@<W1>, float32x2_t *a3@<X8>)
{
  v5 = (*(*(a1 + 176) + 80) + 12 * a2);
  v6 = *v5;
  result = (*(***(a1 + 144) + 96))(&v13);
  v17 = v13.f32[1];
  v12.i32[0] = v13.i32[0];
  v16 = INFINITY;
  v15 = INFINITY;
  if (v13.f32[0] == INFINITY && v17 == v15)
  {
    *a3 = v13;
  }

  else
  {
    v8 = v5[1];
    result = (*(***(a1 + 152) + 96))(&v12);
    v10 = v12;
    LODWORD(v16) = HIDWORD(*&v10);
    v9.i32[0] = v10;
    v17 = v12.f32[0];
    v15 = INFINITY;
    v14 = INFINITY;
    if (v12.f32[0] == INFINITY && v16 == v14)
    {
      v9.i32[1] = v12.i32[1];
    }

    else
    {
      v11 = *(a1 + 136);
      LOBYTE(v17) = *(v5 + 8);
      result = fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetState(v11, v6, v8, &v17);
      v9 = vadd_f32(v13, v12);
    }

    *a3 = v9;
  }

  return result;
}

uint64_t fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::MatchComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = &unk_1F2D0A438;
  v2 = a1[17];
  if (v2)
  {
    v3 = fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~SequenceComposeFilter(v2);
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

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void sub_1B5288A98(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void *fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetState(void *result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = result;
  if (*(result + 8) != a2 || *(result + 9) != a3 || *a4 != *(result + 40))
  {
    *(result + 8) = a2;
    *(result + 9) = a3;
    *(result + 40) = *a4;
    v7 = (*(*result[2] + 40))(result[2], a2);
    v8 = (*(*v6[2] + 56))(v6[2], a2);
    (*(*v6[2] + 32))(&v14);
    v17 = *(&v14 + 1);
    v18 = v14;
    v16 = 2139095040;
    v15 = INFINITY;
    v9.n128_u32[0] = v14;
    if (*&v14 == INFINITY)
    {
      v9.n128_f32[0] = v17;
      v10 = v17 == v15;
    }

    else
    {
      v10 = 0;
    }

    *(v6 + 41) = v7 == v8 && v10;
    *(v6 + 43) = v8 == 0;
    v11 = (*(*v6[3] + 40))(v6[3], a3, v9);
    v12 = (*(*v6[3] + 48))(v6[3], a3);
    result = (*(*v6[3] + 32))(&v14);
    v17 = *(&v14 + 1);
    v18 = v14;
    v16 = 2139095040;
    v15 = INFINITY;
    v13 = *&v14 == INFINITY && v17 == v15;
    *(v6 + 42) = v11 == v12 && v13;
    *(v6 + 44) = v12 == 0;
  }

  return result;
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_1B5288F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8)
{
  (*(**a7 + 56))(*a7, a4);
  v19[0] = a8 - 1;
  v19[1] = a8 << 31 >> 31;
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, a2, a7, v19, a8);
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
      v14 = v16[1] + 20 * v18;
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
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, a2, a7, v14, a8);
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
    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetArcs(a1, a2);
  }

LABEL_13:
  if (v17)
  {
    --*v17;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B5289180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    fst::GetLinearSymbolSequence<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,int>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a9);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(uint64_t a1, int a2, void *a3, uint64_t a4, int a5)
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
        v12 = (*(**a3 + 80))();
        v18[0] = *v12;
        v18[1] = *(v12 + 8);
        v19 = *(v12 + 16);
        v16[0] = *a4;
        v16[1] = *(a4 + 8);
        v17 = *(a4 + 16);
        if (a5)
        {
          v15 = fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::FilterArc(*(a1 + 136), v16, v18);
          if (v15 != -1)
          {
            v13 = v16;
            v14 = v18;
LABEL_10:
            fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(a1, a2, v13, v14, &v15);
          }
        }

        else
        {
          v15 = fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::FilterArc(*(a1 + 136), v18, v16);
          if (v15 != -1)
          {
            v13 = v18;
            v14 = v16;
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

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_1F2D0A4B0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = -1;
  *(a1 + 28) = a4;
  fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Copy();
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Type(uint64_t a1, uint64_t a2)
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

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 92))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetState_(uint64_t result, int a2)
{
  if (*(result + 24) != a2)
  {
    v2 = result;
    *(result + 24) = a2;
    v3 = (*(*(*(result + 16) + 176) + 80) + 12 * a2);
    v4 = v3[1];
    (*(***(result + 32) + 56))(**(result + 32), *v3);
    result = (*(***(v2 + 40) + 56))(**(v2 + 40), v4);
    *(v2 + 68) = *(v2 + 24);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Find_(float32x2_t *a1, uint64_t a2)
{
  a1[6].i8[0] = a2 == 0;
  if (!a2)
  {
    return 1;
  }

  v2 = 4;
  if (a1[3].i32[1])
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  if (a1[3].i32[1])
  {
    v2 = 5;
  }

  return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, a2, *&a1[v2], *&a1[v3]);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Done_(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !(*(***(a1 + 32) + 72))(**(a1 + 32)))
  {
    return 0;
  }

  v2 = *(***(a1 + 40) + 72);

  return v2();
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Value_(uint64_t a1)
{
  v1 = 72;
  if (*(a1 + 48))
  {
    v1 = 52;
  }

  return a1 + v1;
}

float32x2_t *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Next_(float32x2_t *result)
{
  if (result[6].i8[0] == 1)
  {
    result[6].i8[0] = 0;
  }

  else
  {
    if (result[3].i32[1])
    {
      v2 = result[4];
      v1 = result[5];
    }

    else
    {
      v1 = result[4];
      v2 = result[5];
    }

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(result, v1, v2);
  }

  return result;
}

void *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = &unk_1F2D0A4B0;
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

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D0A4B0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = -1;
  *(a1 + 28) = *(a2 + 28);
  fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Copy();
}

void sub_1B5289B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(float32x2_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = (*(**a3 + 64))();
  if (result)
  {
    v8 = a1[3].i32[1] == 0;
    v9 = (*(**a3 + 80))();
    (*(**a4 + 64))(*a4, *(v9 + 4 * v8));

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, a3, a4);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(float32x2_t *a1, uint64_t a2, void *a3)
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
          v6 = a1[3].i32[1] == 0;
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
      v10 = a1[3].u32[0];
      v11 = a1[3].i32[1];
      v12 = v11 == 0;
      if (v11)
      {
        v13 = v9;
      }

      else
      {
        v13 = v8;
      }

      v18[0] = *v13;
      v18[1] = v13[1];
      v19 = v13[2].i32[0];
      if (v12)
      {
        v14 = v9;
      }

      else
      {
        v14 = v8;
      }

      v16[0] = *v14;
      v16[1] = v14[1];
      v17 = v14[2].i32[0];
      if (fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(a1, v10, v18, v16))
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(float32x2_t *a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  v7 = fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::FilterArc(*(*&a1[2] + 136), a3, a4);
  v8 = v7;
  if (v7 != -1)
  {
    v9 = a4[2].i32[0];
    LODWORD(v12) = a3[2].i32[0];
    HIDWORD(v12) = v9;
    v13 = v7;
    v10 = a4->i32[1];
    a1[9].i32[0] = a3->i32[0];
    a1[9].i32[1] = v10;
    a1[10] = vadd_f32(a3[1], a4[1]);
    a1[11].i32[0] = fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(*(*&a1[2] + 176), &v12, 1);
  }

  return ~v8 != 0;
}

std::string *quasar::CommandTagging::CommandTagging(std::string *a1, __int128 *a2, const void ***a3, uint64_t *a4)
{
  v7 = std::map<std::string,std::vector<quasar::Token>>::map[abi:ne200100](a1, a3);
  v7[3] = 0;
  v7[4] = 0;
  v7[5] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((v7 + 3), *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&a1[2].__r_.__value_.__l.__data_ = v8;
  }

  return a1;
}

void sub_1B528A0B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::__tree<std::__value_type<std::string,std::vector<quasar::Token>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::Token>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::Token>>>>::destroy(v2, *(v2 + 8));
  _Unwind_Resume(a1);
}

void quasar::CommandTagging::getCommandId(quasar::CommandTagging *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 6), *(this + 7));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 3);
    a2->__r_.__value_.__r.__words[2] = *(this + 8);
  }
}

void quasar::CommandTagger::CommandTagger(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D0A548;
  *(a1 + 24) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  std::string::basic_string[abi:ne200100]<0>(__p, quasar::COMMAND_TAGGER_TYPE_NAME);
  quasar::QuasarTextProcImpl::modelExist(a2);
}

void sub_1B528A6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a9);
  if (*(v18 + 119) < 0)
  {
    operator delete(*(v18 + 96));
  }

  if (*(v18 + 95) < 0)
  {
    operator delete(*v20);
  }

  if (*(v18 + 71) < 0)
  {
    operator delete(*(v18 + 48));
  }

  if (*(v18 + 47) < 0)
  {
    operator delete(*v19);
  }

  v22 = *(v18 + 16);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(a1);
}

void quasar::CommandTagger::runImpl(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  quasar::QuasarTextProcImpl::run(a1[1], a2, &v23, 1, 1, 1u);
  v9 = v23;
  v10 = v24;
  while (v9 != v10)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v11 = *v9;
    v12 = v9[1];
    while (v11 != v12)
    {
      quasar::CommandTagger::createCommandTagging(a1, v11, v18);
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
      }

      else
      {
        v17 = v19;
      }

      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        if (!v17.__r_.__value_.__l.__size_)
        {
          operator delete(v17.__r_.__value_.__l.__data_);
          goto LABEL_27;
        }
      }

      else if (!*(&v17.__r_.__value_.__s + 23))
      {
        goto LABEL_27;
      }

      if (a5)
      {
        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v19;
        }

        v13 = std::__tree<std::string>::__count_unique<std::string>(a4, &__p.__r_.__value_.__l.__data_) != 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((*(&v17.__r_.__value_.__s + 23) & 0x80) == 0)
        {
LABEL_15:
          if (!v13)
          {
            goto LABEL_27;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v13 = 1;
        if ((*(&v17.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_15;
        }
      }

      operator delete(v17.__r_.__value_.__l.__data_);
      if (!v13)
      {
        goto LABEL_27;
      }

LABEL_23:
      v14 = v21;
      if (v21 >= v22)
      {
        v15 = std::vector<quasar::CommandTagging>::__emplace_back_slow_path<quasar::CommandTagging const&>(&v20, v18);
      }

      else
      {
        std::allocator_traits<std::allocator<quasar::CommandTagging>>::construct[abi:ne200100]<quasar::CommandTagging,quasar::CommandTagging const&,0>(&v20, v21, v18);
        v15 = v14 + 3;
      }

      v21 = v15;
LABEL_27:
      quasar::CommandTagging::~CommandTagging(&v18[0].__r_.__value_.__l.__data_);
      v11 += 24;
    }

    std::vector<std::vector<quasar::CommandTagging>>::push_back[abi:ne200100](a3, &v20);
    v18[0].__r_.__value_.__r.__words[0] = &v20;
    std::vector<quasar::CommandTagging>::__destroy_vector::operator()[abi:ne200100](v18);
    v9 += 3;
  }

  v18[0].__r_.__value_.__r.__words[0] = &v23;
  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](v18);
}

void sub_1B528AAAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30)
{
  a20 = v30 - 112;
  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](&a20);
  _Unwind_Resume(a1);
}

void quasar::CommandTagger::~CommandTagger(void **this)
{
  *this = &unk_1F2D0A548;
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

{
  quasar::CommandTagger::~CommandTagger(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::CommandTagger::getParameterTag(quasar::CommandTagger *this, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  v6 = *(this + 9);
  v5 = this + 72;
  v4 = v6;
  v7 = v5[23];
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (v7 >= 0)
  {
    v9 = v5[23];
  }

  else
  {
    v9 = *(v5 + 1);
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v8, v9);
  MEMORY[0x1B8C84C30](v10, a2 + 1);
  std::stringbuf::str();
  v13[0] = *MEMORY[0x1E69E54D8];
  v11 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v11;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v18);
}