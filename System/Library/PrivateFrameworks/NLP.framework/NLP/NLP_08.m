void sub_22CD95024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10)
{
  if (v10)
  {
    std::__destruct_n::__process[abi:ne200100]<NLExtendedString>(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,std::__wrap_iter<NLExtendedString*>,std::__wrap_iter<NLExtendedString*>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = 0;
  if (a1 == a2)
  {
    v7 = a5;
LABEL_11:
    while (a3 != a4)
    {
      v13 = *a3;
      *(v7 + 16) = *(a3 + 16);
      *v7 = v13;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = 0;
      result = *(a3 + 24);
      *(v7 + 40) = *(a3 + 40);
      *(v7 + 24) = result;
      a3 += 48;
      v7 += 48;
    }
  }

  else
  {
    v9 = a1;
    v7 = a5;
    while (a3 != a4)
    {
      if (NLExtendedString::operator>(a3, v9))
      {
        v10 = *a3;
        *(v7 + 16) = *(a3 + 16);
        *v7 = v10;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *a3 = 0;
        result = *(a3 + 24);
        *(v7 + 40) = *(a3 + 40);
        *(v7 + 24) = result;
        a3 += 48;
      }

      else
      {
        v12 = *v9;
        *(v7 + 16) = *(v9 + 16);
        *v7 = v12;
        *(v9 + 8) = 0;
        *(v9 + 16) = 0;
        *v9 = 0;
        result = *(v9 + 24);
        *(v7 + 40) = *(v9 + 40);
        *(v7 + 24) = result;
        v9 += 48;
      }

      ++v18;
      v7 += 48;
      if (v9 == a2)
      {
        goto LABEL_11;
      }
    }

    if (v9 != a2)
    {
      v14 = 0;
      do
      {
        v15 = v7 + v14;
        v16 = (v9 + v14);
        v17 = *(v9 + v14);
        *(v15 + 16) = *(v9 + v14 + 16);
        *v15 = v17;
        v16[1] = 0;
        v16[2] = 0;
        *v16 = 0;
        result = *(v9 + v14 + 24);
        *(v15 + 40) = *(v9 + v14 + 40);
        *(v15 + 24) = result;
        v14 += 48;
      }

      while (v16 + 6 != a2);
    }
  }

  return result;
}

void sub_22CD951BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10)
{
  if (v10)
  {
    std::__destruct_n::__process[abi:ne200100]<NLExtendedString>(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__destruct_n::__process[abi:ne200100]<NLExtendedString>(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = 0;
    do
    {
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
        v2 = *a1;
      }

      ++v5;
      a2 += 48;
    }

    while (v5 < v2);
  }
}

void std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,std::__wrap_iter<NLExtendedString*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  if (a5 <= a6)
  {
    if (a1 == a2)
    {
      v12 = 0;
      v13 = a7;
    }

    else
    {
      v12 = 0;
      v13 = a7;
      v17 = a1;
      do
      {
        v18 = *v17;
        *(v13 + 2) = *(v17 + 16);
        *v13 = v18;
        *(v17 + 8) = 0;
        *(v17 + 16) = 0;
        *v17 = 0;
        v19 = *(v17 + 24);
        *(v13 + 40) = *(v17 + 40);
        *(v13 + 24) = v19;
        ++v12;
        v17 += 48;
        v13 += 3;
      }

      while (v17 != a2);
    }

    v20 = v12;
    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,NLExtendedString*,NLExtendedString*,std::__wrap_iter<NLExtendedString*>,std::__wrap_iter<NLExtendedString*>,std::__wrap_iter<NLExtendedString*>>(a7, v13, a2, a3, a1);
  }

  else
  {
    if (a2 == a3)
    {
      v10 = 0;
      v11 = a7;
    }

    else
    {
      v10 = 0;
      v11 = a7;
      v14 = a2;
      do
      {
        v15 = *v14;
        *(v11 + 16) = *(v14 + 16);
        *v11 = v15;
        *(v14 + 8) = 0;
        *(v14 + 16) = 0;
        *v14 = 0;
        v16 = *(v14 + 24);
        *(v11 + 40) = *(v14 + 40);
        *(v11 + 24) = v16;
        ++v10;
        v14 += 48;
        v11 += 48;
      }

      while (v14 != a3);
    }

    v20 = v10;
    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<std::greater<NLExtendedString> &>,std::reverse_iterator<NLExtendedString*>,std::reverse_iterator<NLExtendedString*>,std::reverse_iterator<std::__wrap_iter<NLExtendedString*>>,std::reverse_iterator<std::__wrap_iter<NLExtendedString*>>,std::reverse_iterator<std::__wrap_iter<NLExtendedString*>>>(v11, v11, a7, a7, a2, a2, a1, a1, a3, a3);
  }

  if (a7)
  {
    std::__destruct_n::__process[abi:ne200100]<NLExtendedString>(&v20, a7);
  }
}

void sub_22CD9538C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__destruct_n::__process[abi:ne200100]<NLExtendedString>((v2 - 24), v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,std::__wrap_iter<NLExtendedString*>,std::__wrap_iter<NLExtendedString*>,NLExtendedString,std::__identity>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a2 != a1)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
    do
    {
      if (NLExtendedString::operator>(a3, v3 + 48 * (v5 >> 1)))
      {
        v5 >>= 1;
      }

      else
      {
        v3 += 48 * (v5 >> 1) + 48;
        v5 += ~(v5 >> 1);
      }
    }

    while (v5);
  }

  return v3;
}

void std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,NLExtendedString*,NLExtendedString*,std::__wrap_iter<NLExtendedString*>,std::__wrap_iter<NLExtendedString*>,std::__wrap_iter<NLExtendedString*>>(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 != a2)
  {
    v19 = v5;
    v20 = v6;
    v11 = a1;
    while (a3 != a4)
    {
      v12 = NLExtendedString::operator>(a3, v11);
      v13 = *(a5 + 23);
      if (v12)
      {
        if (v13 < 0)
        {
          operator delete(*a5);
        }

        v14 = *a3;
        *(a5 + 16) = *(a3 + 16);
        *a5 = v14;
        *(a3 + 23) = 0;
        *a3 = 0;
        v15 = *(a3 + 24);
        *(a5 + 40) = *(a3 + 40);
        *(a5 + 24) = v15;
        a3 += 48;
      }

      else
      {
        if (v13 < 0)
        {
          operator delete(*a5);
        }

        v16 = *v11;
        *(a5 + 16) = *(v11 + 16);
        *a5 = v16;
        *(v11 + 23) = 0;
        *v11 = 0;
        v17 = *(v11 + 24);
        *(a5 + 40) = *(v11 + 40);
        *(a5 + 24) = v17;
        v11 += 48;
      }

      a5 += 48;
      if (v11 == a2)
      {
        return;
      }
    }

    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<NLExtendedString *,NLExtendedString *,NLExtendedString *>(&v18, v11, a2, a5);
  }
}

void std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<std::greater<NLExtendedString> &>,std::reverse_iterator<NLExtendedString*>,std::reverse_iterator<NLExtendedString*>,std::reverse_iterator<std::__wrap_iter<NLExtendedString*>>,std::reverse_iterator<std::__wrap_iter<NLExtendedString*>>,std::reverse_iterator<std::__wrap_iter<NLExtendedString*>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 != a4)
  {
    v13 = a2;
    v14 = a10 - 48;
    while (a6 != a8)
    {
      v15 = NLExtendedString::operator>(v13 - 48, a6 - 48);
      if (v15)
      {
        v16 = a6;
      }

      else
      {
        v16 = v13;
      }

      if (v15)
      {
        v17 = (a6 - 48);
      }

      else
      {
        v17 = (v13 - 48);
      }

      if (v15)
      {
        a6 -= 48;
      }

      else
      {
        v13 -= 48;
      }

      if (*(v14 + 23) < 0)
      {
        operator delete(*v14);
      }

      v18 = *v17;
      *(v14 + 16) = *(v17 + 2);
      *v14 = v18;
      *(v16 - 25) = 0;
      *v17 = 0;
      v19 = *(v16 - 24);
      *(v14 + 40) = *(v16 - 8);
      *(v14 + 24) = v19;
      v14 -= 48;
      if (v13 == a4)
      {
        return;
      }
    }

    for (; v13 != a4; v13 -= 48)
    {
      if (*(v14 + 23) < 0)
      {
        operator delete(*v14);
      }

      v20 = *(v13 - 48);
      *(v14 + 16) = *(v13 - 32);
      *v14 = v20;
      *(v13 - 25) = 0;
      *(v13 - 48) = 0;
      v21 = *(v13 - 24);
      *(v14 + 40) = *(v13 - 8);
      *(v14 + 24) = v21;
      v14 -= 48;
    }
  }
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<NLExtendedString *,NLExtendedString *,NLExtendedString *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      *(v5 + 23) = 0;
      *v5 = 0;
      v8 = *(v5 + 24);
      *(a4 + 40) = *(v5 + 40);
      *(a4 + 24) = v8;
      v5 += 3;
      a4 += 48;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t *std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<NLExtendedString *>>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v10 = a2;
  v11 = a1;
  while (1)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<NLExtendedString *> &,std::__wrap_iter<NLExtendedString *> &>(&v11, &v10);
    v5 = v11 + 6;
    v6 = v10 + 48;
    v10 = v6;
    v11 += 6;
    if (v6 == a3)
    {
      break;
    }

    if (v5 == v4)
    {
      v4 = v6;
    }
  }

  if (v5 != v4)
  {
    do
    {
      v10 = v4;
      while (1)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<NLExtendedString *> &,std::__wrap_iter<NLExtendedString *> &>(&v11, &v10);
        v7 = v11 + 6;
        v8 = v10 + 48;
        v10 = v8;
        v11 += 6;
        if (v8 == a3)
        {
          break;
        }

        if (v7 == v4)
        {
          v4 = v8;
        }
      }
    }

    while (v7 != v4);
  }

  return v5;
}

void std::vector<NLExtendedString>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = (v5 + 48 * a2);
      v11 = 48 * a2;
      do
      {
        NLExtendedString::NLExtendedString(v5);
        v5 = (v5 + 48);
        v11 -= 48;
      }

      while (v11);
      v5 = v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x555555555555555)
    {
      std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v7;
    }

    v23 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<NLExtendedString>>(a1, v9);
    }

    v12 = 48 * v6;
    v20 = 0;
    v21 = v12;
    v22 = v12;
    v13 = 3 * a2;
    v14 = (v12 + 48 * a2);
    v15 = 16 * v13;
    do
    {
      NLExtendedString::NLExtendedString(v12);
      v12 += 48;
      v15 -= 48;
    }

    while (v15);
    *&v22 = v14;
    v16 = *(a1 + 8);
    v17 = v21 + *a1 - v16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<NLExtendedString>,NLExtendedString*>(a1, *a1, v16, v17);
    v18 = *a1;
    *a1 = v17;
    v19 = *(a1 + 16);
    *(a1 + 8) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    std::__split_buffer<NLExtendedString>::~__split_buffer(&v20);
  }
}

void sub_22CD9591C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<NLExtendedString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
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

uint64_t std::vector<NLTransliterationCandidate *>::__init_with_size[abi:ne200100]<NLTransliterationCandidate **,NLTransliterationCandidate **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<NLTransliterationCandidate *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22CD95AA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<NLTransliterationCandidate *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<NLTransliterationCandidate *>>(a1, a2);
  }

  std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
}

void std::vector<std::vector<std::vector<NLExtendedString>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<std::vector<NLExtendedString>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t std::vector<std::vector<std::vector<NLExtendedString>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::vector<NLExtendedString>> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<std::vector<NLExtendedString>>::__init_with_size[abi:ne200100]<std::vector<NLExtendedString>*,std::vector<NLExtendedString>*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<std::vector<NLExtendedString>>>::__emplace_back_slow_path<std::vector<std::vector<NLExtendedString>> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<CFRange>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<std::vector<NLExtendedString>>::__init_with_size[abi:ne200100]<std::vector<NLExtendedString>*,std::vector<NLExtendedString>*>(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
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
  std::__split_buffer<std::vector<std::vector<NLExtendedString>>>::~__split_buffer(&v14);
  return v8;
}

void sub_22CD95CF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<std::vector<NLExtendedString>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<NLExtendedString>>::__init_with_size[abi:ne200100]<std::vector<NLExtendedString>*,std::vector<NLExtendedString>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<NLExtendedString>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22CD95D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<NLExtendedString>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<NLExtendedString>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<CFRange>>>(a1, a2);
  }

  std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<NLExtendedString>>,std::vector<NLExtendedString>*,std::vector<NLExtendedString>*,std::vector<NLExtendedString>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<NLExtendedString>::__init_with_size[abi:ne200100]<NLExtendedString*,NLExtendedString*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 4));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<NLExtendedString>>,std::vector<NLExtendedString>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<NLExtendedString>>,std::vector<NLExtendedString>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<NLExtendedString>>,std::vector<NLExtendedString>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<NLExtendedString>>,std::vector<NLExtendedString>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void **std::__split_buffer<std::vector<std::vector<NLExtendedString>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::vector<NLExtendedString>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::vector<NLExtendedString>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::vector<NLExtendedString>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void NLExtendedString::NLExtendedString(NLExtendedString *this)
{
  *(this + 23) = 0;
  *this = 0;
  *(this + 6) = 0;
  *(this + 4) = 0x3FF0000000000000;
  *(this + 40) |= 3u;
}

void NLExtendedString::NLExtendedString(std::string *this, __int128 *a2, int a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = a3;
  this[1].__r_.__value_.__l.__size_ = 0x3FF0000000000000;
  this[1].__r_.__value_.__s.__data_[16] |= 3u;
}

void NLExtendedString::NLExtendedString(std::string *this, __int128 *a2, int a3, double a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = a3;
  *&this[1].__r_.__value_.__l.__size_ = a4;
  this[1].__r_.__value_.__s.__data_[16] |= 3u;
}

void NLExtendedString::NLExtendedString(std::string *this, __int128 *a2, int a3, int a4, double a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v9;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = a3;
  *&this[1].__r_.__value_.__l.__size_ = a5;
  LODWORD(this[1].__r_.__value_.__r.__words[2]) = a4;
}

void NLGujaratiTransliterator::NLGujaratiTransliterator(NLGujaratiTransliterator *this, const __CFDictionary *a2)
{
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 120) = xmmword_22CDDF0C0;
  *(this + 34) = 2;
  *(this + 18) = 0xC03E000000000000;
  *(this + 19) = 0x3E800000005;
  *(this + 40) = 3;
  *(this + 21) = 0x3FF3333333333333;
  *(this + 22) = 0x1F40000000ALL;
  *this = &unk_28400EAD8;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]((this + 184), "[,,;.'?!:{}<>*\\-]", 0);
}

void sub_22CD96440(_Unwind_Exception *a1)
{
  MEMORY[0x2318C0600](v2, 0xE1C40D30581F4);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 63);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 55);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 47);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 39);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 31);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 23);
  NLGenericTransliterator::~NLGenericTransliterator(v1);
  _Unwind_Resume(a1);
}

void NLGujaratiTransliterator::addSpecialElements(void **a1, char *a2, int *a3, unsigned int *a4, unsigned int *a5, uint64_t a6)
{
  std::string::basic_string[abi:ne200100]<0>(&__str, a2);
  std::string::basic_string(&v13, &__str, *a3, 2uLL, &p_str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  (*(*a1[1] + 32))(&__str);
  ((*a1)[18])(a1, &__str, *a4, *a5, a2, a6);
  p_str = &__str;
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&p_str);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_22CD96640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double NLGujaratiTransliterator::getEnglishCandidateSequenceScore(uint64_t a1, uint64_t *a2)
{
  stringToUTF32Characters(a2, &v8);
  v2 = 0.0;
  if (v8 != v9)
  {
    v3 = v8;
    do
    {
      v4 = *v3;
      v5 = -0.75;
      if (*v3 != 2765)
      {
        v5 = 1.0;
        if ((v4 - 2709) >= 0x25)
        {
          if ((v4 - 2750) >= 0xF && (v4 - 2693) >= 0xF)
          {
            v5 = 0.3;
          }

          else
          {
            v5 = 0.5;
          }
        }
      }

      v2 = v2 + v5;
      ++v3;
    }

    while (v3 != v9);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  return v2;
}

void NLGujaratiTransliterator::preProcessForRomanSuffixes(uint64_t a1@<X0>, std::__wrap_iter<const char *> a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2.__i_ + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v5 < 4)
    {
      *a3 = *a2.__i_;
      v6 = *(a2.__i_ + 2);
LABEL_19:
      *(a3 + 16) = v6;
      return;
    }

    v7 = *(a2.__i_ + 1);
LABEL_9:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    if ((v5 & 0x80000000) != 0)
    {
      a2.__i_ = *a2.__i_;
      v5 = v7;
    }

    v9.__i_ = &a2.__i_[v5];
    std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(a3, a2, v9, (a1 + 248), "$1$2", 0);
    memset(&v13, 0, sizeof(v13));
    v10 = *(a3 + 23);
    if ((v10 & 0x80u) == 0)
    {
      v11.__i_ = a3;
    }

    else
    {
      v11.__i_ = *a3;
    }

    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a3 + 8);
    }

    v12.__i_ = &v11.__i_[v10];
    std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(&v13, v11, v12, (a1 + 312), "$1", 0);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = *&v13.__r_.__value_.__l.__data_;
    v6 = v13.__r_.__value_.__r.__words[2];
    goto LABEL_19;
  }

  v7 = *(a2.__i_ + 1);
  if (v7 >= 4)
  {
    goto LABEL_9;
  }

  v8 = *a2.__i_;

  std::string::__init_copy_ctor_external(a3, v8, v7);
}

void sub_22CD9683C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void NLGujaratiTransliterator::addDynamicMapping(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  memset(v28, 0, 41);
  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 32);
  v4 = *(a2 + 23);
  v5 = *(a2 + 8);
  if ((v4 & 0x80u) != 0)
  {
    a2 = *a2;
    v4 = v5;
  }

  *(&__p.__unmatched_.std::pair<const char *, const char *> + 1) = 0uLL;
  v6 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 376, a2, (a2 + v4), &__p, 0);
  v7 = *(v2 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = v2;
  }

  else
  {
    v8 = *v2;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(v2 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v28, v8, (v8 + v7), &__p, 0);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  if (v6)
  {
    v9 = *(v2 + 23);
    if (v9 >= 0)
    {
      v10 = v2;
    }

    else
    {
      v10 = *v2;
    }

    if (v9 >= 0)
    {
      v11 = *(v2 + 23);
    }

    else
    {
      v11 = *(v2 + 8);
    }

    v12 = &v10[v11];
    if (v11 > 4)
    {
      v13 = v11;
      v14 = v10;
      do
      {
        v15 = memchr(v14, 112, v13 - 4);
        if (!v15)
        {
          break;
        }

        if (*v15 == 1953067632 && v15[4] == 104)
        {
          goto LABEL_26;
        }

        v14 = v15 + 1;
        v13 = v12 - v14;
      }

      while (v12 - v14 > 4);
    }

    v15 = &v10[v11];
LABEL_26:
    v18 = v15 != v12 && v15 - v10 != -1;
    if (v11 >= 4)
    {
      v19 = v10;
      do
      {
        v20 = memchr(v19, 103, v11 - 3);
        if (!v20)
        {
          break;
        }

        if (*v20 == 1751741031)
        {
          goto LABEL_38;
        }

        v19 = v20 + 1;
        v11 = v12 - v19;
      }

      while (v12 - v19 > 3);
    }

    v20 = v12;
LABEL_38:
    v22 = v20 != v12 && v20 - v10 != -1 || v18;
    if (v22 == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v26, "");
      NLExtendedString::NLExtendedString(&__p, v26, 2, 2, 1.0);
      if (v27 < 0)
      {
        operator delete(v26[0]);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v26, "");
      NLExtendedString::NLExtendedString(&__p, v26, 2, 2, 0.005);
      if (v27 < 0)
      {
        operator delete(v26[0]);
      }
    }

    v23 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(v26, "i");
    (*(*v23 + 16))(v23, v26, &__p);
    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    if (SHIBYTE(__p.__matches_.__end_cap_.__value_) < 0)
    {
      operator delete(__p.__matches_.__begin_);
    }
  }

  v24 = *(v2 + 23);
  if (v24 < 0)
  {
    if (*(v2 + 8) != 1)
    {
      goto LABEL_66;
    }

    v2 = *v2;
  }

  else if (v24 != 1)
  {
    goto LABEL_66;
  }

  if (*v2 == 111)
  {
    std::string::basic_string[abi:ne200100]<0>(v26, "ઑ");
    NLExtendedString::NLExtendedString(&__p, v26, 1, 1.0);
    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    v25 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(v26, "o");
    (*(*v25 + 16))(v25, v26, &__p);
    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    if (SHIBYTE(__p.__matches_.__end_cap_.__value_) < 0)
    {
      operator delete(__p.__matches_.__begin_);
    }
  }

LABEL_66:
  if (v28[0].__begin_)
  {
    v28[0].__end_ = v28[0].__begin_;
    operator delete(v28[0].__begin_);
  }
}

void sub_22CD96C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void NLGujaratiTransliterator::postProcessForExaggeration(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = a1[1];
  std::string::basic_string(&__p, a2, 0, 2uLL, &v22);
  (*(*v10 + 32))(v21, v10, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (*(a2 + 23) >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  (*(*a1 + 144))(a1, v21, a4, (v11 + a4), a3, a5);
  v12 = *a5;
  if (a5[1] != *a5)
  {
    v13 = 0;
    do
    {
      NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor((v12 + 48 * v13));
      if (*(v14 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v14, *(v14 + 1));
      }

      else
      {
        v15 = *v14;
        __p.__r_.__value_.__r.__words[2] = *(v14 + 2);
        *&__p.__r_.__value_.__l.__data_ = v15;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 4) <= v13)
      {
        goto LABEL_25;
      }

      Weight = NLExtendedString::getWeight((*a5 + 48 * v13));
      v17 = *(a2 + 23);
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(a2 + 8);
      }

      if (v17 >= 3)
      {
        for (i = 2; i < v19; ++i)
        {
          std::string::append(&__p, "ઽ");
          Weight = Weight + Weight;
          v19 = *(a2 + 23);
          if ((v19 & 0x80u) != 0)
          {
            v19 = *(a2 + 8);
          }
        }
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 4) <= v13 || (NLExtendedString::setString((*a5 + 48 * v13), &__p), 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 4) <= v13))
      {
LABEL_25:
        std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
      }

      NLExtendedString::setWeight(*a5 + 48 * v13, Weight);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v13;
      v12 = *a5;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 4) > v13);
  }

  __p.__r_.__value_.__r.__words[0] = v21;
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_22CD96F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a16;
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t NLGujaratiTransliterator::isSpecialCharSeq(int a1, int a2, char *__s, int a4)
{
  if (a2 == 2)
  {
    v5 = a4;
    v6 = a4 + 1;
    if (strlen(__s) > v6 && __s[v5] == 114 && (v7 = __s[v6] - 97, v7 <= 0x14))
    {
      v8 = 0x100101u >> v7;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t NLGujaratiTransliterator::addSpecialCandidates(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    if (v2 != 2)
    {
      result = 0;
      goto LABEL_22;
    }

    v3 = a2;
    if (*a2 == 26994)
    {
      v4 = a2;
      goto LABEL_19;
    }

    goto LABEL_9;
  }

  if (*(a2 + 8) == 2 && **a2 == 26994)
  {
    goto LABEL_13;
  }

  if (*(a2 + 8) == 2)
  {
    v3 = *a2;
LABEL_9:
    if (*v3 != 30066)
    {
      result = 0;
      if ((v2 & 0x80) != 0)
      {
        goto LABEL_24;
      }

LABEL_22:
      v6 = a2;
      if (v2 != 2)
      {
        return result;
      }

      goto LABEL_26;
    }

LABEL_13:
    if ((v2 & 0x80) != 0)
    {
      if (*(a2 + 8) != 2)
      {
        goto LABEL_20;
      }

      v4 = *a2;
    }

    else
    {
      v4 = a2;
      if (v2 != 2)
      {
        goto LABEL_20;
      }
    }

LABEL_19:
    if (*v4 == 26994)
    {
      operator new();
    }

LABEL_20:
    operator new();
  }

  result = 0;
LABEL_24:
  if (*(a2 + 8) != 2)
  {
    return result;
  }

  v6 = *a2;
LABEL_26:
  if (*v6 == 28015)
  {
    operator new();
  }

  return result;
}

void sub_22CD97514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18)
{
  MEMORY[0x2318C0600](v18, 0x1012C40B0087DDBLL);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void NLGujaratiTransliterator::~NLGujaratiTransliterator(std::locale *this)
{
  NLGujaratiTransliterator::~NLGujaratiTransliterator(this);

  JUMPOUT(0x2318C0600);
}

{
  this->__locale_ = &unk_28400EAD8;
  locale = this[69].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this + 63);
  v3 = this[61].__locale_;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::locale::~locale(this + 55);
  v4 = this[53].__locale_;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::locale::~locale(this + 47);
  v5 = this[45].__locale_;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::locale::~locale(this + 39);
  v6 = this[37].__locale_;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::locale::~locale(this + 31);
  v7 = this[29].__locale_;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::locale::~locale(this + 23);

  NLGenericTransliterator::~NLGenericTransliterator(this);
}

void std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](std::regex_traits<char> *a1, const char *a2, int a3)
{
  v5 = std::regex_traits<char>::regex_traits(a1);
  LODWORD(v5[1].__loc_.__locale_) = a3;
  *(&v5[1].__loc_.__locale_ + 4) = 0u;
  *(&v5[1].__col_ + 4) = 0u;
  HIDWORD(v5[2].__ct_) = 0;
  strlen(a2);
  std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>();
}

void sub_22CD9778C(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v7 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = ++v7;
      do
      {
        v11 = v7;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
      }

      while (v7 != v11);
      if (v11 == v10)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v11 != a3);
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
      ++v3;
    }

    if (v3 != a3)
    {
      do
      {
        v6 = v3;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(this, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        ++v3;
      }
    }

    if (v3 != a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = a1->__end_;
    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, (v8 + 1), a3);
    if (v10 == v8 + 1)
    {
      goto LABEL_8;
    }

    v8 = v10;
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<char const*>(std::basic_regex<char> *a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, __s, v8);
  if (v8 != a3)
  {
    ++v8;
  }

  while (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = a1->__end_;
    if (v10 == v8)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, v8, v10);
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v11);
    if (v10 == a3)
    {
      v8 = v10;
    }

    else
    {
      v8 = v10 + 1;
    }
  }

  return v8;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *__s, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, __s, v8);
  if (v8 != a3)
  {
    v8 = (v8 + 1);
  }

  while (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = a1->__end_;
    if (v10 == v8)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v8, v10);
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v11);
    if (v10 == a3)
    {
      v8 = v10;
    }

    else
    {
      v8 = (&v10->__traits_.__loc_.__locale_ + 1);
    }
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, a2, a3);
  if (result == a2)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
    v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = a1->__marked_count_ + 1;

      return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v9, a3, end, marked_count + 1, v10);
    }
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x5B)
  {
    if (v6 != 36)
    {
      v8 = v6 == 40;
      v7 = a2 + 1;
      v8 = !v8 || v7 == a3;
      if (!v8)
      {
        v8 = *v7 == 63;
        v9 = a2 + 2;
        if (v8 && v9 != a3)
        {
          v11 = *v9;
          if (v11 == 33)
          {
            std::regex_traits<char>::regex_traits(&v18.__traits_);
            memset(&v18.__flags_, 0, 40);
            v18.__flags_ = this->__flags_;
            v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v18, v3 + 3, a3);
            marked_count = v18.__marked_count_;
            std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v18, 1, this->__marked_count_);
            this->__marked_count_ += marked_count;
            if (v12 == a3 || *v12 != 41)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
            }

            goto LABEL_31;
          }

          if (v11 == 61)
          {
            std::regex_traits<char>::regex_traits(&v18.__traits_);
            memset(&v18.__flags_, 0, 40);
            v18.__flags_ = this->__flags_;
            v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v18, v3 + 3, a3);
            v13 = v18.__marked_count_;
            std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v18, 0, this->__marked_count_);
            this->__marked_count_ += v13;
            if (v12 == a3 || *v12 != 41)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
            }

LABEL_31:
            v3 = v12 + 1;
            std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v18.__traits_.__loc_);
            return v3;
          }
        }
      }

      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
    return ++v3;
  }

  if (v6 != 92)
  {
    if (v6 != 94)
    {
      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    return ++v3;
  }

  if (a2 + 1 != a3)
  {
    v15 = a2[1];
    if (v15 == 66)
    {
      v16 = 1;
    }

    else
    {
      if (v15 != 98)
      {
        return v3;
      }

      v16 = 0;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(this, v16);
    v3 += 2;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x3E)
  {
    if (v6 != 40)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if (v6 - 42 >= 2)
      {
        goto LABEL_28;
      }

LABEL_34:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
    }

    if (a2 + 1 != a3)
    {
      if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
      {
        p_open_count = &this->__open_count_;
        ++this->__open_count_;
        v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 3, a3);
        if (v9 == a3)
        {
          goto LABEL_35;
        }

        v10 = v9;
        if (*v9 != 41)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
      marked_count = this->__marked_count_;
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, v3 + 1, a3);
      if (v12 != a3)
      {
        v10 = v12;
        if (*v12 == 41)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, marked_count);
LABEL_25:
          --*p_open_count;
          return v10 + 1;
        }
      }
    }

LABEL_35:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  if (*a2 <= 0x5Bu)
  {
    if (v6 == 91)
    {

      return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
    }

    if (v6 == 63)
    {
      goto LABEL_34;
    }

LABEL_28:

    return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<std::__wrap_iter<char const*>>(this, a2, a3);
  }

  if (v6 != 92)
  {
    if (v6 == 123)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<char const*>(this, a2, a3);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v13 = a2 + 1;
      if (v11)
      {
        v20 = 1;
      }

      else
      {
        v20 = v13 == a3;
      }

      if (!v20 && *v13 == 63)
      {
        v13 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_33;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return a2;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(a1, a2 + 1, a3, &__max);
    if (v16 != v15)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v13 = v16 + 1;
            if (!v11 && v13 != a3 && *v13 == 63)
            {
              v13 = v16 + 2;
              v14 = __max;
              a5 = v7;
              a6 = v6;
              a1 = v10;
              v18 = __max;
LABEL_33:
              v21 = __s;
              v22 = 0;
LABEL_46:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v13;
            }

            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            v18 = __max;
LABEL_45:
            v21 = __s;
            v22 = 1;
            goto LABEL_46;
          }

          goto LABEL_58;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_58;
        }

        if (*v23 == 125)
        {
          v13 = v16 + 2;
          if (!v11 && v13 != a3 && *v13 == 63)
          {
            v13 = v16 + 3;
            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            goto LABEL_26;
          }

          v14 = __max;
          a5 = v7;
          a6 = v6;
          a1 = v10;
LABEL_36:
          v18 = -1;
          goto LABEL_45;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v10, v23, a3, &v27);
        if (v25 != v23 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v13 = v25 + 1;
            v22 = 1;
            if (!v11 && v13 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v13 = v25 + 2;
              }
            }

            a5 = v7;
            a6 = v6;
            a1 = v10;
            v21 = __s;
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_58:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v12 == 42)
  {
    v13 = a2 + 1;
    if (v11)
    {
      v19 = 1;
    }

    else
    {
      v19 = v13 == a3;
    }

    if (!v19 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_26;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_26:
      v18 = -1;
      goto LABEL_33;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_36;
  }

  return a2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = a2 + 1;
    if (a2 + 1 == a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_decimal_escape<char const*>(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<std::__wrap_iter<char const*>>(a1, v3 + 1, a3), v7 == v5))
    {
      v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, v3 + 1, a3, 0);
      if (v9 != v5)
      {
        return v9;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_23;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_23;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](started, 93);
      ++v5;
    }

    if (v5 == a3)
    {
      v8 = v5;
    }

    else
    {
      do
      {
        v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(a1, v5, a3, v7);
        v9 = v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    if (v8 == a3)
    {
      goto LABEL_23;
    }

    if (*v8 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
      ++v8;
    }

    if (v8 == a3 || *v8 != 93)
    {
LABEL_23:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v8 + 1;
  }

  return a2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_decimal_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 0);
      ++v3;
    }

    else if ((v4 - 49) <= 8)
    {
      v5 = (v4 - 48);
      if (++v3 != a3)
      {
        while (1)
        {
          v6 = *v3;
          if ((v6 - 48) > 9)
          {
            break;
          }

          if (v5 >= 0x19999999)
          {
            goto LABEL_14;
          }

          v5 = v6 + 10 * v5 - 48;
          if (++v3 == a3)
          {
            v3 = a3;
            break;
          }
        }

        if (!v5)
        {
          goto LABEL_14;
        }
      }

      if (v5 > a1->__marked_count_)
      {
LABEL_14:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v5);
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 > 0x71u)
  {
    if (*a2 <= 0x74u)
    {
      if (v5 == 114)
      {
        if (!this)
        {
          v10 = 13;
          goto LABEL_69;
        }

        v9 = this;
        v10 = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_64;
        }

        if (!this)
        {
          v10 = 9;
          goto LABEL_69;
        }

        v9 = this;
        v10 = 9;
      }
    }

    else
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_72;
        }

        v11 = a2[1];
        if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38 && (v11 | 0x20u) - 97 >= 6)
        {
          goto LABEL_72;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_72;
        }

        v12 = *v4;
        v13 = -48;
        if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
        {
          v12 |= 0x20u;
          if ((v12 - 97) >= 6)
          {
            goto LABEL_72;
          }

          v13 = -87;
        }

        v6 = 16 * (v13 + v12);
LABEL_39:
        if (v4 + 1 == a3)
        {
          goto LABEL_72;
        }

        v14 = v4[1];
        v15 = -48;
        if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
        {
          v14 |= 0x20u;
          if ((v14 - 97) >= 6)
          {
            goto LABEL_72;
          }

          v15 = -87;
        }

        if (v4 + 2 != a3)
        {
          v16 = v4[2];
          v17 = -48;
          if ((v16 & 0xF8) == 0x30 || (v16 & 0xFE) == 0x38)
          {
LABEL_49:
            v18 = v17 + v16 + 16 * (v15 + v6 + v14);
            if (this)
            {
              std::string::operator=(this, v18);
            }

            else
            {
              std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v18);
            }

            v4 += 3;
            return v4;
          }

          v16 |= 0x20u;
          if ((v16 - 97) < 6)
          {
            v17 = -87;
            goto LABEL_49;
          }
        }

LABEL_72:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
      }

      if (v5 != 118)
      {
        if (v5 == 120)
        {
          v6 = 0;
          goto LABEL_39;
        }

LABEL_64:
        if ((v5 & 0x80) == 0 && (a1->__traits_.__ct_->__tab_[v5] & 0x500) != 0)
        {
          goto LABEL_72;
        }

        v10 = *a2;
        if (this)
        {
          v9 = this;
          goto LABEL_68;
        }

LABEL_69:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v10);
        return ++v4;
      }

      if (!this)
      {
        v10 = 11;
        goto LABEL_69;
      }

      v9 = this;
      v10 = 11;
    }

LABEL_68:
    std::string::operator=(v9, v10);
    return ++v4;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (!this)
      {
        v10 = 12;
        goto LABEL_69;
      }

      v9 = this;
      v10 = 12;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_64;
      }

      if (!this)
      {
        v10 = 10;
        goto LABEL_69;
      }

      v9 = this;
      v10 = 10;
    }

    goto LABEL_68;
  }

  if (v5 == 48)
  {
    if (!this)
    {
      v10 = 0;
      goto LABEL_69;
    }

    v9 = this;
    v10 = 0;
    goto LABEL_68;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_72;
    }

    goto LABEL_64;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_72;
  }

  v7 = a2[1];
  if (((v7 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_72;
  }

  v8 = v7 & 0x1F;
  if (this)
  {
    std::string::operator=(this, v8);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  }

  v4 += 2;
  return v4;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return v4;
  }

  v6 = a4;
  memset(&v25, 0, sizeof(v25));
  if (a2 + 1 == a3 || v5 != 91)
  {
LABEL_9:
    v11 = *(a1 + 24) & 0x1F0;
    goto LABEL_10;
  }

  v9 = a2[1];
  if (v9 != 46)
  {
    if (v9 == 58)
    {
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class<char const*>(a1, a2 + 2, a3, a4);
      goto LABEL_34;
    }

    if (v9 == 61)
    {
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(a1, a2 + 2, a3, a4);
LABEL_34:
      v6 = v10;
      v18 = 0;
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  v19 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, a2 + 2, a3, &v25);
  v4 = v19;
  v11 = *(a1 + 24) & 0x1F0;
  size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  v13 = v19;
  if (!size)
  {
LABEL_10:
    if ((v11 | 0x40) == 0x40)
    {
      v12 = *v4;
      if (v12 == 92)
      {
        if (v11)
        {
          v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v4 + 1, a3, &v25);
        }

        else
        {
          v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v4 + 1, a3, &v25, v6);
          v11 = 0;
        }

        goto LABEL_16;
      }
    }

    else
    {
      LOBYTE(v12) = *v4;
    }

    std::string::operator=(&v25, v12);
    v13 = v4 + 1;
  }

LABEL_16:
  if (v13 == a3 || (v14 = *v13, v14 == 93) || (v16 = v13 + 1, v13 + 1 == a3) || v14 != 45 || *v16 == 93)
  {
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v25.__r_.__value_.__l.__size_)
      {
        if (v25.__r_.__value_.__l.__size_ != 1)
        {
          v15 = v25.__r_.__value_.__r.__words[0];
LABEL_40:
          std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v6, v15->__r_.__value_.__s.__data_[0], v15->__r_.__value_.__s.__data_[1]);
          goto LABEL_41;
        }

        v15 = v25.__r_.__value_.__r.__words[0];
        goto LABEL_25;
      }
    }

    else if (*(&v25.__r_.__value_.__s + 23))
    {
      v15 = &v25;
      if (HIBYTE(v25.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_40;
      }

LABEL_25:
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v6, v15->__r_.__value_.__s.__data_[0]);
    }

LABEL_41:
    v18 = 1;
    v4 = v13;
    goto LABEL_42;
  }

  memset(&v24, 0, sizeof(v24));
  v4 = v13 + 2;
  if (v13 + 2 != a3 && *v16 == 91 && *v4 == 46)
  {
    v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v13 + 3, a3, &v24);
LABEL_55:
    v4 = v17;
    goto LABEL_56;
  }

  if ((v11 | 0x40) == 0x40)
  {
    LODWORD(v16) = *v16;
    if (v16 == 92)
    {
      if (v11)
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v13 + 2, a3, &v24);
      }

      else
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v13 + 2, a3, &v24, v6);
      }

      goto LABEL_55;
    }
  }

  else
  {
    LOBYTE(v16) = *v16;
  }

  std::string::operator=(&v24, v16);
LABEL_56:
  v23 = v25;
  memset(&v25, 0, sizeof(v25));
  __p = v24;
  memset(&v24, 0, sizeof(v24));
  std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](v6, &v23, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v18 = 1;
LABEL_42:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v18)
  {
    return v4;
  }

  return v6;
}

void sub_22CD99008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_32;
  }

  v7 = a2;
  for (i = a2; ; v7 = i)
  {
    v9 = *i++;
    if (v9 == 61 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_32;
    }

    --v4;
  }

  if (v7 == a3)
  {
LABEL_32:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2, v7, &v19);
  v10 = v21;
  if ((v21 & 0x8000000000000000) == 0)
  {
    if (v21)
    {
      v11 = &v19;
      goto LABEL_13;
    }

LABEL_33:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v10 = v20;
  if (!v20)
  {
    goto LABEL_33;
  }

  v11 = v19;
LABEL_13:
  std::regex_traits<char>::__transform_primary<char *>(a1, v11, &v11[v10], __p);
  v12 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    std::vector<std::string>::push_back[abi:ne200100](a4 + 136, __p);
  }

  else
  {
    v13 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v13 = v20;
    }

    if (v13 == 2)
    {
      v15 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v15 = v19;
      }

      std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v15, v15[1]);
    }

    else
    {
      if (v13 != 1)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
      }

      v14 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v14 = v19;
      }

      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v14);
    }
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v19);
  }

  return v7 + 2;
}

void sub_22CD991EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_10;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 58 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_10;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_10:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v9 = std::regex_traits<char>::__lookup_classname<std::__wrap_iter<char const*>>(a1, a2, v6, *(a1 + 24) & 1);
  if (!v9)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
  }

  *(a4 + 160) |= v9;
  return v6 + 2;
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_14;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2, v6, &v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v6 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v6 = *a2;
  if (v6 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          goto LABEL_25;
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        v9 = this;
        v10 = 8;
LABEL_19:
        std::string::operator=(v9, v10);
        return a2 + 1;
      }

      if (v6 != 100)
      {
        goto LABEL_25;
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (*a2)
    {
      if (v6 == 68)
      {
        v7 = *(a5 + 164) | 0x400;
LABEL_21:
        *(a5 + 164) = v7;
        return a2 + 1;
      }

      goto LABEL_25;
    }

    v9 = this;
    v10 = 0;
    goto LABEL_19;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_21;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5, 95);
    return a2 + 1;
  }

LABEL_25:

  return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, this);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
LABEL_51:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 <= 0x65u)
  {
    if (v5 <= 0x5Bu)
    {
      if (v5 != 34 && v5 != 47)
      {
        goto LABEL_32;
      }
    }

    else if (v5 != 92)
    {
      if (v5 == 97)
      {
        if (this)
        {
          v6 = this;
          v5 = 7;
          goto LABEL_31;
        }

        v5 = 7;
        goto LABEL_47;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v6 = this;
          v5 = 8;
LABEL_31:
          std::string::operator=(v6, v5);
          return a2 + 1;
        }

        v5 = 8;
        goto LABEL_47;
      }

      goto LABEL_32;
    }

    if (this)
    {
      v6 = this;
      goto LABEL_31;
    }

    goto LABEL_47;
  }

  if (v5 <= 0x71u)
  {
    if (v5 == 102)
    {
      if (this)
      {
        v6 = this;
        v5 = 12;
        goto LABEL_31;
      }

      v5 = 12;
      goto LABEL_47;
    }

    if (v5 == 110)
    {
      if (this)
      {
        v6 = this;
        v5 = 10;
        goto LABEL_31;
      }

      v5 = 10;
      goto LABEL_47;
    }
  }

  else
  {
    switch(v5)
    {
      case 'r':
        if (this)
        {
          v6 = this;
          v5 = 13;
          goto LABEL_31;
        }

        v5 = 13;
        goto LABEL_47;
      case 't':
        if (this)
        {
          v6 = this;
          v5 = 9;
          goto LABEL_31;
        }

        v5 = 9;
        goto LABEL_47;
      case 'v':
        if (this)
        {
          v6 = this;
          v5 = 11;
          goto LABEL_31;
        }

        v5 = 11;
LABEL_47:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
        return a2 + 1;
    }
  }

LABEL_32:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_51;
  }

  v7 = v5 - 48;
  v8 = a2 + 1;
  if (a2 + 1 != a3 && (*v8 & 0xF8) == 0x30)
  {
    v7 = *v8 + 8 * v7 - 48;
    v8 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v9 = *v8 + 8 * v7 - 48;
      if ((*v8 & 0xF8) == 0x30)
      {
        v8 = a2 + 3;
        v7 = v9;
      }
    }
  }

  if (this)
  {
    std::string::operator=(this, v7);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if ((v4 & 0xF8) == 0x30 || (v4 & 0xFE) == 0x38)
    {
      v5 = v4 - 48;
      *a4 = v5;
      if (++a2 != a3)
      {
        do
        {
          v6 = *a2;
          if ((v6 & 0xF8) != 0x30 && (v6 & 0xFE) != 0x38)
          {
            break;
          }

          if (v5 >= 214748364)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }

          v5 = v6 + 10 * v5 - 48;
          *a4 = v5;
          ++a2;
        }

        while (a2 != a3);
      }
    }
  }

  return a2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(a1, a2, a3);
  if (v8 == a2)
  {
    return a2;
  }

  v9 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(a1, v8, a3, end, marked_count + 1, v9);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<char const*>(a1, a2, a3);
  v7 = v6;
  if (v6 == a2 && v6 != a3 && v6 + 1 != a3 && *v6 == 92)
  {
    v8 = v6[1];
    if (v8 == 40)
    {
      v9 = v6 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
      marked_count = a1->__marked_count_;
      do
      {
        v11 = v9;
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(a1, v9, a3);
        v9 = v12;
      }

      while (v12 != v11);
      if (v11 == a3 || v12 + 1 == a3 || *v12 != 92 || v12[1] != 41)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      v7 = v12 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, marked_count);
    }

    else
    {
      v13 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v8);
      v14 = 2;
      if (!v13)
      {
        v14 = 0;
      }

      v7 += v14;
    }
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t __mexp_begin, size_t __mexp_end)
{
  v6 = a2;
  if (a2 != a3)
  {
    v7 = __mexp_end;
    v8 = __mexp_begin;
    v11 = *a2;
    if (v11 == 42)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(this, 0, 0xFFFFFFFFFFFFFFFFLL, __s, __mexp_begin, __mexp_end, 1);
      return ++v6;
    }

    if (a2 + 1 != a3 && v11 == 92 && a2[1] == 123)
    {
      v14 = a2 + 2;
      LODWORD(__max) = 0;
      v15 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(this, a2 + 2, a3, &__max);
      if (v15 == v14)
      {
        goto LABEL_25;
      }

      if (v15 != a3)
      {
        v16 = v15 + 1;
        v17 = *v15;
        if (v17 == 44)
        {
          v26 = -1;
          v18 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(this, v16, a3, &v26);
          if (v18 != a3)
          {
            v19 = v18;
            if (v18 + 1 != a3 && *v18 == 92)
            {
              v20 = v18[1];
              v21 = v20 == 125;
              if (v20 == 125)
              {
                v22 = v26;
                if (v26 == -1)
                {
                  v23 = v8;
                  v24 = v7;
                  v25 = this;
                  v22 = -1;
                  goto LABEL_23;
                }

                if (v26 >= __max)
                {
                  v23 = v8;
                  v24 = v7;
                  v25 = this;
LABEL_23:
                  std::basic_regex<char,std::regex_traits<char>>::__push_loop(v25, __max, v22, __s, v23, v24, 1);
                  return &v19[2 * v21];
                }

LABEL_25:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
              }
            }
          }
        }

        else if (v16 != a3 && v17 == 92 && *v16 == 125)
        {
          v6 = v15 + 2;
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(this, __max, __max, __s, v8, v7, 1);
          return v6;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }
  }

  return v6;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v7 = a2 + 1;
    v6 = *a2;
    if (a2 + 1 == a3 && v6 == 36 || ((v6 - 46) <= 0x2E ? (v8 = ((1 << (v6 - 46)) & 0x600000000001) == 0) : (v8 = 1), !v8))
    {
      v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(this, a2, a3);
      v7 = v9;
      if (v9 == a2)
      {
        if (*v9 == 46)
        {
          operator new();
        }

        goto LABEL_12;
      }
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v6);
    }

    return v7;
  }

  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(this, a2, a3);
  if (v7 != a2)
  {
    return v7;
  }

LABEL_12:

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(std::basic_regex<char> *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a2;
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v4 = a2[1];
    if ((v4 - 36) <= 0x3A && ((1 << (v4 - 36)) & 0x580000000000441) != 0)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      v3 += 2;
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v6 == a2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  do
  {
    v7 = v6;
    v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<char const*>(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    switch(v10)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
        v11 = a1->__marked_count_;
        ++a1->__open_count_;
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v9 + 1, a3);
        if (v12 == a3 || (v9 = v12, *v12 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v11);
        --a1->__open_count_;
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
        break;
      default:
        goto LABEL_12;
    }

    ++v9;
  }

LABEL_12:
  if (v9 == a2)
  {
    return v9;
  }

  v13 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v9, a3, end, marked_count + 1, v13);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ORD_CHAR_ERE<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = a2 + 1;
  if (v3 + 1 == a3 || *v3 != 92)
  {
    return v3;
  }

  v5 = *v4;
  v6 = (v5 - 36) > 0x3A || ((1 << (v5 - 36)) & 0x5800000080004F1) == 0;
  if (!v6 || (v5 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
    v3 += 2;
    return v3;
  }

  if ((*(a1 + 24) & 0x1F0) != 0x40)
  {
    v8 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v5);
    v9 = 2;
    if (!v8)
    {
      v9 = 0;
    }

    v3 += v9;
    return v3;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v4, a3, 0);
}

std::string *std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(std::string *a1, std::__wrap_iter<const char *> a2, std::__wrap_iter<const char *> a3, const std::regex_iterator<std::__wrap_iter<const char *>, char>::regex_type *a4, char *a5, unsigned __int32 __m)
{
  v6 = __m;
  i = a2.__i_;
  std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_iterator(&v18, a2, a3, a4, __m);
  memset(&v17.__match_.__prefix_, 0, 17);
  memset(&v17.__match_.__suffix_, 0, 17);
  v17.__match_.__ready_ = 0;
  v17.__match_.__position_start_.__i_ = 0;
  memset(&v17.__match_, 0, 41);
  memset(&v17, 0, 28);
  if (std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v18, &v17))
  {
    if ((v6 & 0x200) == 0)
    {
      while (i != a3.__i_)
      {
        std::string::push_back(a1, *i++);
      }
    }
  }

  else
  {
    v11 = strlen(a5);
    v12 = 0;
    v13 = 0;
    while (!std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v18, &v17))
    {
      if ((v6 & 0x200) == 0)
      {
        v14 = v18.__match_.__prefix_.first.__i_;
        v15 = v18.__match_.__prefix_.second.__i_;
        while (v14 != v15)
        {
          std::string::push_back(a1, *v14++);
        }
      }

      a1 = std::match_results<std::__wrap_iter<char const*>>::format<std::back_insert_iterator<std::string>>(&v18.__match_, a1, a5, &a5[v11], v6);
      v13 = v18.__match_.__suffix_.first.__i_;
      v12 = v18.__match_.__suffix_.second.__i_;
      if ((v6 & 0x400) != 0)
      {
        break;
      }

      std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(&v18);
    }

    if ((v6 & 0x200) == 0)
    {
      while (v13 != v12)
      {
        std::string::push_back(a1, *v13++);
      }
    }
  }

  if (v17.__match_.__matches_.__begin_)
  {
    v17.__match_.__matches_.__end_ = v17.__match_.__matches_.__begin_;
    operator delete(v17.__match_.__matches_.__begin_);
  }

  if (v18.__match_.__matches_.__begin_)
  {
    v18.__match_.__matches_.__end_ = v18.__match_.__matches_.__begin_;
    operator delete(v18.__match_.__matches_.__begin_);
  }

  return a1;
}

void sub_22CD9A13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::match_results<std::__wrap_iter<char const*>>::format<std::back_insert_iterator<std::string>>(std::string::value_type ***a1, std::string *this, unsigned __int8 *a3, unsigned __int8 *a4, __int16 a5)
{
  v6 = a3;
  if ((a5 & 0x100) != 0)
  {
    if (a3 == a4)
    {
      return this;
    }

    while (1)
    {
      v29 = *v6;
      if (v29 == 92)
      {
        v33 = v6 + 1;
        if (v6 + 1 != a4)
        {
          v29 = *v33;
          v34 = v29 - 48;
          if ((v29 - 48) <= 9)
          {
            v35 = &(*a1)[3 * (v29 - 48)];
            if (0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) <= v34)
            {
              v35 = (a1 + 3);
            }

            v36 = *v35;
            v37 = *(v35 + 8);
            while (v36 != v37)
            {
              v38 = *v36++;
              std::string::push_back(this, v38);
            }

            goto LABEL_54;
          }

          ++v6;
        }
      }

      else if (v29 == 38)
      {
        v30 = **a1;
        v31 = (*a1)[1];
        while (v30 != v31)
        {
          v32 = *v30++;
          std::string::push_back(this, v32);
        }

        goto LABEL_53;
      }

      std::string::push_back(this, v29);
LABEL_53:
      v33 = v6;
LABEL_54:
      v6 = v33 + 1;
      if (v33 + 1 == a4)
      {
        return this;
      }
    }
  }

  if (a3 != a4)
  {
    do
    {
      v9 = *v6;
      v10 = v6 + 1;
      if (v9 == 36 && v10 != a4)
      {
        v9 = *v10;
        if (v9 > 0x26)
        {
          if (v9 == 39)
          {
            v26 = a1[9];
            v27 = a1[10];
            while (v26 != v27)
            {
              v28 = *v26++;
              std::string::push_back(this, v28);
            }

            goto LABEL_10;
          }

          if (v9 == 96)
          {
            v15 = a1[6];
            v16 = a1[7];
            while (v15 != v16)
            {
              v17 = *v15++;
              std::string::push_back(this, v17);
            }

            goto LABEL_10;
          }
        }

        else
        {
          if (v9 == 36)
          {
            goto LABEL_9;
          }

          if (v9 == 38)
          {
            v12 = **a1;
            v13 = (*a1)[1];
            while (v12 != v13)
            {
              v14 = *v12++;
              std::string::push_back(this, v14);
            }

            goto LABEL_10;
          }
        }

        LODWORD(v18) = v9 - 48;
        if (v18 <= 9)
        {
          v18 = v18;
          if (v6 + 2 != a4)
          {
            v19 = v6[2];
            v20 = v19 - 48;
            v21 = v19 + 10 * v18 - 48;
            if (v20 > 9)
            {
              v10 = v6 + 1;
            }

            else
            {
              v18 = v21;
              v10 = v6 + 2;
            }
          }

          if (0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) <= v18)
          {
            v22 = (a1 + 3);
          }

          else
          {
            v22 = &(*a1)[3 * v18];
          }

          v23 = *v22;
          v24 = *(v22 + 8);
          while (v23 != v24)
          {
            v25 = *v23++;
            std::string::push_back(this, v25);
          }

          goto LABEL_10;
        }

        LOBYTE(v9) = 36;
      }

      v10 = v6;
LABEL_9:
      std::string::push_back(this, v9);
LABEL_10:
      v6 = v10 + 1;
    }

    while (v10 + 1 != a4);
  }

  return this;
}

void createPathForLocalizedResource(const __CFLocale *a1, const __CFString *a2)
{
  Value = CFLocaleGetValue(a1, *MEMORY[0x277CBEED0]);
  v5 = CFLocaleGetValue(a1, *MEMORY[0x277CBEE98]);
  if (v5)
  {
    v6 = CFStringCreateWithFormat(0, 0, @"%@_%@-%@", Value, v5, a2);
  }

  else
  {
    v6 = CFStringCreateWithFormat(0, 0, @"%@-%@", Value, a2);
  }

  NL::Resource::createBundleResource(a1, v6, 0, 0, v7);
}

void NLEmojiGenerator::NLEmojiGenerator(NLEmojiGenerator *this, CFDictionaryRef theDict)
{
  *this = 0;
  *(this + 1) = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, kNLEmojiPredictionLocaleKey[0]);
    if (Value)
    {
      v4 = Value;
      v5 = CFGetTypeID(Value);
      if (v5 == CFStringGetTypeID())
      {
        v6 = CFLocaleCreate(*MEMORY[0x277CBECE8], v4);
        goto LABEL_7;
      }

      v7 = CFGetTypeID(v4);
      if (v7 == CFLocaleGetTypeID())
      {
        v6 = CFRetain(v4);
LABEL_7:
        *(this + 1) = v6;
        if (!v6)
        {
          return;
        }

LABEL_10:
        createPathForLocalizedResource(v6, @"phrase-to-emojis.plist");
      }
    }

    v6 = *(this + 1);
    if (!v6)
    {
      return;
    }

    goto LABEL_10;
  }
}

void NLEmojiGenerator::~NLEmojiGenerator(NLEmojiGenerator *this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
  }
}

CFStringRef NLEmojiGenerator::copyKeyEndingWithPhrase(CFDictionaryRef *this, const __CFString *a2)
{
  v3 = *this;
  if (!v3)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(v3);
  if (Count < 1)
  {
    return 0;
  }

  std::vector<__CFString const*>::vector[abi:ne200100](&keys, Count);
  CFDictionaryGetKeysAndValues(*this, keys, 0);
  v6 = keys;
  if (v14 == keys)
  {
LABEL_10:
    Copy = 0;
    if (!v6)
    {
      return Copy;
    }

    goto LABEL_14;
  }

  v7 = 0;
  while (1)
  {
    if (CFStringHasSuffix(a2, v6[v7]))
    {
      v8 = keys[v7];
      Length = CFStringGetLength(a2);
      v10 = CFStringGetLength(v8);
      if (Length == v10 || Length > v10 && CFStringGetCharacterAtIndex(a2, Length + ~v10) == 32)
      {
        break;
      }
    }

    ++v7;
    v6 = keys;
    if (v7 >= v14 - keys)
    {
      goto LABEL_10;
    }
  }

  Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], keys[v7]);
  v6 = keys;
  if (keys)
  {
LABEL_14:
    v14 = v6;
    operator delete(v6);
  }

  return Copy;
}

void sub_22CD9A720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *NLEmojiGenerator::createEmojisForString(NLEmojiGenerator *this, const __CFString *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a2)
  {
    v5 = *(this + 1);
    if (v5)
    {
      if (*this)
      {
        v6 = *MEMORY[0x277CBECE8];
        Length = CFStringGetLength(a2);
        MutableCopy = CFStringCreateMutableCopy(v6, Length, a2);
        if (MutableCopy)
        {
          v9 = MutableCopy;
          CFStringTrimWhitespace(MutableCopy);
          CFStringLowercase(v9, v5);
          Predefined = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
          v26.length = CFStringGetLength(v9);
          v26.location = 0;
          if (CFStringFindCharacterFromSet(v9, Predefined, v26, 0, &v24))
          {
            v11 = v24.location == 0;
          }

          else
          {
            v11 = 0;
          }

          if (v11)
          {
            do
            {
              v25.length = v24.length;
              v25.location = 0;
              CFStringDelete(v9, v25);
              v27.length = CFStringGetLength(v9);
              v27.location = 0;
            }

            while (CFStringFindCharacterFromSet(v9, Predefined, v27, 0, &v24) && !v24.location);
          }

          while (1)
          {
            v28.length = CFStringGetLength(v9);
            v28.location = 0;
            if (!CFStringFindCharacterFromSet(v9, Predefined, v28, 4uLL, &v24))
            {
              break;
            }

            location = v24.location;
            if (location != CFStringGetLength(v9) - 1)
            {
              break;
            }

            CFStringDelete(v9, v24);
          }

          CFStringTrimWhitespace(v9);
          Value = CFDictionaryGetValue(*this, v9);
          if (Value)
          {
            v14 = Value;
            if (CFArrayGetCount(Value) >= 1)
            {
              v15 = 0;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v14, v15);
                CFArrayAppendValue(Mutable, ValueAtIndex);
                ++v15;
              }

              while (v15 < CFArrayGetCount(v14));
            }
          }

          else
          {
            v17 = NLEmojiGenerator::copyKeyEndingWithPhrase(this, v9);
            if (v17)
            {
              v18 = v17;
              v19 = CFDictionaryGetValue(*this, v17);
              if (v19)
              {
                v20 = v19;
                if (CFArrayGetCount(v19) >= 1)
                {
                  v21 = 0;
                  do
                  {
                    v22 = CFArrayGetValueAtIndex(v20, v21);
                    CFArrayAppendValue(Mutable, v22);
                    ++v21;
                  }

                  while (v21 < CFArrayGetCount(v20));
                }
              }

              CFRelease(v18);
            }
          }

          CFRelease(v9);
        }
      }
    }
  }

  return Mutable;
}

void loadAlternteKeywordsPlistFromFile(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  CFStringFromString = createCFStringFromString(a1);
  getPathForResource(CFStringFromString, &v61);
  v4 = std::string::compare(&v61, "");
  if (v4)
  {
    v5 = *MEMORY[0x277CBECE8];
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v61;
    }

    else
    {
      v6 = v61.__r_.__value_.__r.__words[0];
    }

    v7 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v6, 0x8000100u);
    v8 = CFURLCreateWithFileSystemPath(v5, v7, kCFURLPOSIXPathStyle, 0);
    v9 = v8;
    resourceData = 0;
    errorCode = 0;
    if (v8)
    {
      v8 = CFURLCreateDataAndPropertiesFromResource(v5, v8, &resourceData, 0, 0, &errorCode);
      v10 = v8 != 0;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v10 = 0;
      if (!v7)
      {
LABEL_12:
        if (v9)
        {
          CFRelease(v9);
        }

        if (CFStringFromString)
        {
          CFRelease(CFStringFromString);
        }

        if (resourceData)
        {
          v12 = v10;
        }

        else
        {
          v12 = 0;
        }

        if (v12)
        {
          error = 0;
          v13 = CFPropertyListCreateWithData(v5, resourceData, 0, 0, &error);
          if (resourceData)
          {
            CFRelease(resourceData);
          }

          if (v13)
          {
            Count = CFDictionaryGetCount(v13);
            std::vector<__CFString const*>::vector[abi:ne200100](&v56, Count);
            CFDictionaryGetKeysAndValues(v13, v56, 0);
            v15 = v56;
            v35 = v57;
            if (v56 != v57)
            {
              theDict = v13;
              do
              {
                v37 = v15;
                v16 = *v15;
                Value = CFDictionaryGetValue(theDict, *v15);
                getUTF8StringFromCFString(v16, v54);
                v17 = CFDictionaryGetCount(Value);
                std::vector<__CFString const*>::vector[abi:ne200100](&keys, v17);
                CFDictionaryGetKeysAndValues(Value, keys, 0);
                v18 = keys;
                v38 = v53;
                if (keys != v53)
                {
                  do
                  {
                    v40 = v18;
                    v19 = *v18;
                    getUTF8StringFromCFString(*v18, v50);
                    v20 = CFDictionaryGetValue(Value, v19);
                    v21 = CFArrayGetCount(v20);
                    memset(v48, 0, sizeof(v48));
                    v49 = 1065353216;
                    if (v21 >= 1)
                    {
                      v22 = 0;
                      v41 = v20;
                      do
                      {
                        ValueAtIndex = CFArrayGetValueAtIndex(v20, v22);
                        v24 = CFDictionaryGetCount(ValueAtIndex);
                        std::vector<__CFString const*>::vector[abi:ne200100](&v46, v24);
                        CFDictionaryGetKeysAndValues(ValueAtIndex, v46, 0);
                        v25 = v46;
                        if (v47 != v46)
                        {
                          v26 = 0;
                          do
                          {
                            v27 = CFDictionaryGetValue(ValueAtIndex, v25[v26]);
                            if (v26 >= v47 - v46)
                            {
                              std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
                            }

                            v28 = v27;
                            getUTF8StringFromCFString(v46[v26], __p);
                            getUTF8StringFromCFString(v28, v42);
                            v62 = v54;
                            v29 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, v54);
                            v62 = v50;
                            v30 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v29 + 5, v50);
                            v62 = __p;
                            v31 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v30 + 5, __p);
                            v32 = v31;
                            if (*(v31 + 63) < 0)
                            {
                              operator delete(v31[5]);
                            }

                            *(v32 + 5) = *v42;
                            v32[7] = v43;
                            if (v45 < 0)
                            {
                              operator delete(__p[0]);
                            }

                            ++v26;
                            v25 = v46;
                          }

                          while (v26 < v47 - v46);
                        }

                        if (v25)
                        {
                          v47 = v25;
                          operator delete(v25);
                        }

                        ++v22;
                        v20 = v41;
                      }

                      while (v22 != v21);
                    }

                    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v48);
                    if (v51 < 0)
                    {
                      operator delete(v50[0]);
                    }

                    v18 = v40 + 1;
                  }

                  while (v40 + 1 != v38);
                  v18 = keys;
                }

                if (v18)
                {
                  v53 = v18;
                  operator delete(v18);
                }

                if (v55 < 0)
                {
                  operator delete(v54[0]);
                }

                v15 = v37 + 1;
              }

              while (v37 + 1 != v35);
              v15 = v56;
              v13 = theDict;
            }

            if (v15)
            {
              v57 = v15;
              operator delete(v15);
            }

            CFRelease(v13);
          }

          else
          {
            CFShow(error);
          }
        }

        else
        {
          if (resourceData)
          {
            CFRelease(resourceData);
          }

          v33 = NL::CFLogger::sharedInstance(v8);
          (*(*v33 + 16))(v33, 3, "Could not load the mappings from resource bundle %d", errorCode);
          if (LogHandleForNLPhotoSharingIntentRecognizer(void)::onceToken != -1)
          {
            loadAlternteKeywordsPlistFromFile();
          }

          v34 = LogHandleForNLPhotoSharingIntentRecognizer(void)::logHandle;
          if (os_log_type_enabled(LogHandleForNLPhotoSharingIntentRecognizer(void)::logHandle, OS_LOG_TYPE_FAULT))
          {
            loadAlternteKeywordsPlistFromFile(v34);
          }
        }

        goto LABEL_60;
      }
    }

    CFRelease(v7);
    goto LABEL_12;
  }

  v11 = NL::CFLogger::sharedInstance(v4);
  (*(*v11 + 16))(v11, 3, "Could not find the mappings from resource bundle");
  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }

LABEL_60:
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }
}

void sub_22CD9B07C(_Unwind_Exception *a1)
{
  if (*(v2 - 105) < 0)
  {
    operator delete(*(v2 - 128));
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

uint64_t NLPhotoSharingIntentRecognizer::NLPhotoSharingIntentRecognizer(uint64_t a1, uint64_t a2)
{
  v4 = NLAbstractIntentRecognizer::NLAbstractIntentRecognizer(a1, a2);
  *v4 = &unk_28400E2C8;
  *(v4 + 80) = 0u;
  v5 = v4 + 80;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 1065353216;
  v6 = std::string::basic_string[abi:ne200100]<0>(&v22, "photosharing-alternate-keywords.plist");
  loadAlternteKeywordsPlistFromFile(v6, &v14);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>>>::__move_assign(v5, &v14);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>>>::~__hash_table(&v14);
  if (v23 < 0)
  {
    operator delete(v22);
  }

  v7 = *MEMORY[0x277CBECE8];
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v8, 0x8000100u);
  CFLocaleCreate(0, v9);
  if (v9)
  {
    CFRelease(v9);
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x4002000000;
  v17 = __Block_byref_object_copy__10;
  v18 = __Block_byref_object_dispose__10;
  __p = 0;
  v20 = 0;
  v21 = 0;
  LDEnumerateAssetDataItems();
  if ((*(v15 + 63) & 0x8000000000000000) != 0)
  {
    if (!v15[6])
    {
      goto LABEL_18;
    }
  }

  else if (!*(v15 + 63))
  {
    goto LABEL_18;
  }

  Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v11 = (v15 + 5);
  if (*(v15 + 63) < 0)
  {
    v11 = *v11;
  }

  v12 = CFStringCreateWithCString(v7, v11, 0);
  CFDictionaryAddValue(Mutable, kMRLModelFileLocationKey, v12);
  *(a1 + 32) = MRLModelCreate();
  *(a1 + 40) = MRLModelGetIOMappings();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_18:
  _Block_object_dispose(&v14, 8);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_22CD9B2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  _Block_object_dispose(&a14, 8);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>>>::~__hash_table(v25);
  NLAbstractIntentRecognizer::~NLAbstractIntentRecognizer(v24);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__10(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__10(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void ___ZN30NLPhotoSharingIntentRecognizerC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1, const __CFURL *a2, int a3, int a4, CFTypeRef cf1, _BYTE *a6)
{
  if (CFEqual(cf1, *MEMORY[0x277D23680]))
  {
    v9 = CFURLCopyPath(a2);
    getUTF8StringFromCFString(v9, &v11);
    v10 = *(*(a1 + 32) + 8);
    if (*(v10 + 63) < 0)
    {
      operator delete(*(v10 + 40));
    }

    *(v10 + 40) = v11;
    *(v10 + 56) = v12;
    if (v9)
    {
      CFRelease(v9);
    }

    *a6 = 1;
  }
}

uint64_t NLPhotoSharingIntentRecognizer::NLPhotoSharingIntentRecognizer(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = NLAbstractIntentRecognizer::NLAbstractIntentRecognizer(a1, a2);
  *v6 = &unk_28400E2C8;
  *(v6 + 80) = 0u;
  v7 = v6 + 80;
  *(v6 + 96) = 0u;
  *(v6 + 112) = 1065353216;
  std::string::operator=((v6 + 8), a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "photosharing-alternate-keywords.plist");
  loadAlternteKeywordsPlistFromFile(__p, v15);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>>>::__move_assign(v7, v15);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>>>::~__hash_table(v15);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (*(a3 + 23) >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  v11 = CFStringCreateWithCString(v8, v10, 0);
  CFDictionaryAddValue(Mutable, kMRLModelFileLocationKey, v11);
  *(a1 + 32) = MRLModelCreate();
  *(a1 + 40) = MRLModelGetIOMappings();
  if (v11)
  {
    CFRelease(v11);
  }

  return a1;
}

void sub_22CD9B57C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>>>::~__hash_table(v15);
  NLAbstractIntentRecognizer::~NLAbstractIntentRecognizer(v14);
  _Unwind_Resume(a1);
}

uint64_t NLPhotoSharingIntentRecognizer::copyIntentCandidate@<X0>(uint64_t result@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*(result + 32))
  {
    v3 = result;
    if (a2[23] < 0)
    {
      a2 = *a2;
    }

    v14 = *MEMORY[0x277CBECE8];
    v12 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x8000100u);
    v4 = NLTokenizerWithDataDetector::copyTokenizedSentences((v3 + 72), v12);
    Count = CFArrayGetCount(v4);
    Mutable = CFArrayCreateMutable(v14, 0, MEMORY[0x277CBF128]);
    if (Count >= 1)
    {
      v6 = 0;
      v7 = Count;
      do
      {
        if (!std::string::compare((v3 + 8), "zh-Hans"))
        {
          v8 = NLTokenizerWithDataDetector::copyCharacterTokens((v3 + 72), v12);
        }

        else
        {
          v8 = NLTokenizerWithDataDetector::copyTokens((v3 + 72), v12);
        }

        v9 = v8;
        v10 = CFArrayGetCount(v8);
        CFArrayAppendValue(Mutable, v9);
        CFRelease(v9);
        v6 += v10;
        --v7;
      }

      while (v7);
    }

    operator new[]();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22CD9C444(_Unwind_Exception *a1)
{
  v3 = *(v1 - 184);
  if (v3)
  {
    *(v1 - 176) = v3;
    operator delete(v3);
  }

  *(v1 - 256) = *(v1 - 440);
  std::vector<std::unique_ptr<NLMessageIntentCandidate>>::__destroy_vector::operator()[abi:ne200100]((v1 - 256));
  _Unwind_Resume(a1);
}

uint64_t IOMappings::lookupInput(IOMappings *this, const char *src, size_t srcLength)
{
  pErrorCode = U_ZERO_ERROR;
  u_strFromUTF8(0, 0, 0, src, srcLength, &pErrorCode);
  if (pErrorCode >= U_ILLEGAL_ARGUMENT_ERROR && pErrorCode != U_BUFFER_OVERFLOW_ERROR)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "UNKNOWN");
    v7 = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(this, &__p);
    if (v15 < 0)
    {
      operator delete(__p);
    }

    if ((this + 8) == v7)
    {
      return 1;
    }

    else
    {
      return v7[14];
    }
  }

  if (srcLength >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (srcLength >= 0x17)
  {
    operator new();
  }

  v15 = srcLength;
  if (srcLength)
  {
    memcpy(&__p, src, srcLength);
  }

  *(&__p + srcLength) = 0;
  v9 = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(this, &__p);
  if ((this + 8) == v9)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "UNKNOWN");
    v10 = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(this, v12);
    if (v13 < 0)
    {
      operator delete(v12[0]);
    }

    if (v9 == v10)
    {
      v8 = 1;
      goto LABEL_24;
    }

    v9 = v10;
  }

  v8 = v9[14];
LABEL_24:
  if (v15 < 0)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_22CD9C7D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<float>::__append(a1, a2 - v2);
  }
}

void NLPhotoSharingIntentRecognizer::~NLPhotoSharingIntentRecognizer(NLPhotoSharingIntentRecognizer *this)
{
  *this = &unk_28400E2C8;
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>>>::~__hash_table(this + 80);

  NLAbstractIntentRecognizer::~NLAbstractIntentRecognizer(this);
}

{
  *this = &unk_28400E2C8;
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>>>::~__hash_table(this + 80);
  NLAbstractIntentRecognizer::~NLAbstractIntentRecognizer(this);

  JUMPOUT(0x2318C0600);
}

os_log_t ___ZL42LogHandleForNLPhotoSharingIntentRecognizerv_block_invoke()
{
  result = os_log_create("com.apple.NLP", "NLPhotoSharingIntentRecognizer");
  LogHandleForNLPhotoSharingIntentRecognizer(void)::logHandle = result;
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,std::string>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,std::string>>,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_22CD9CE44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_22CD9D1C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,std::string>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,std::string>>>>>::__deallocate_node(a1, *(a1 + 16));
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

void std::allocator_traits<std::allocator<std::unique_ptr<NLMessageIntentCandidate>>>::destroy[abi:ne200100]<std::unique_ptr<NLMessageIntentCandidate>,0>(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v2 + 8);

    JUMPOUT(0x2318C0600);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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
    operator new();
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

void sub_22CD9D6D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::string>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

int *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(int *result, int *a2, uint64_t a3, uint64_t a4, char a5)
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
        v88 = *(a2 - 2);
        v89 = *v10;
        if (v88 < *v10 || v89 >= v88 && *(a2 - 1) < v10[1])
        {
          *v10 = v88;
          *(a2 - 2) = v89;
          v90 = v10[1];
          v10[1] = *(a2 - 1);
          *(a2 - 1) = v90;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v91 = v10[2];
      v92 = *v10;
      if (v91 >= *v10 && (v92 < v91 || v10[3] >= v10[1]))
      {
        v106 = *(a2 - 2);
        if (v106 >= v91 && (v91 < v106 || *(a2 - 1) >= v10[3]))
        {
          return result;
        }

        v10[2] = v106;
        *(a2 - 2) = v91;
        v9 = v10 + 3;
        v107 = v10[3];
        v10[3] = *(a2 - 1);
        *(a2 - 1) = v107;
        v108 = v10[2];
        v109 = *v10;
        if (v108 >= *v10 && (v109 < v108 || v10[3] >= v10[1]))
        {
          return result;
        }

        *v10 = v108;
        v10[2] = v109;
        v94 = v10 + 1;
LABEL_201:
        v113 = *v94;
        *v94 = *v9;
        *v9 = v113;
        return result;
      }

      v93 = *(a2 - 2);
      if (v93 < v91)
      {
LABEL_156:
        *v10 = v93;
        v94 = v10 + 1;
        *(a2 - 2) = v92;
        goto LABEL_201;
      }

      if (v91 >= v93)
      {
        v110 = v10[3];
        if (*(a2 - 1) < v110)
        {
          goto LABEL_156;
        }
      }

      else
      {
        v110 = v10[3];
      }

      v111 = v10[1];
      v10[3] = v111;
      *v10 = v91;
      v10[1] = v110;
      v10[2] = v92;
      v112 = *(a2 - 2);
      if (v112 >= v92 && (v92 < v112 || *(a2 - 1) >= v111))
      {
        return result;
      }

      v10[2] = v112;
      *(a2 - 2) = v92;
      v94 = v10 + 3;
      goto LABEL_201;
    }

    if (v13 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(v10, v10 + 2, v10 + 4, a2 - 2);
    }

    if (v13 == 5)
    {
      break;
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(v10, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(v10, a2);
      }
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,std::pair<int,int> *>(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = &v10[2 * (v13 >> 1)];
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = *v14;
      v17 = *v10;
      if (*v14 >= *v10 && (v17 < v16 || v14[1] >= v10[1]))
      {
        v24 = *(a2 - 2);
        if (v24 >= v16 && (v16 < v24 || *(a2 - 1) >= v14[1]))
        {
          goto LABEL_45;
        }

        *v14 = v24;
        *(a2 - 2) = v16;
        v25 = v14 + 1;
        v26 = v14[1];
        v14[1] = *(a2 - 1);
        *(a2 - 1) = v26;
        v27 = *v14;
        v28 = *v10;
        if (*v14 >= *v10 && (v28 < v27 || *v25 >= v10[1]))
        {
LABEL_45:
          v39 = v14 - 2;
          v40 = *(v14 - 2);
          v41 = v10[2];
          if (v40 >= v41 && (v41 < v40 || *(v14 - 1) >= v10[3]))
          {
            v44 = *(a2 - 4);
            if (v44 >= v40 && (v40 < v44 || *(a2 - 3) >= *(v14 - 1)))
            {
              goto LABEL_67;
            }

            *v39 = v44;
            *(a2 - 4) = v40;
            v45 = v14 - 1;
            v46 = *(v14 - 1);
            *(v14 - 1) = *(a2 - 3);
            *(a2 - 3) = v46;
            v47 = *v39;
            v48 = v10[2];
            if (*v39 >= v48 && (v48 < v47 || *v45 >= v10[3]))
            {
LABEL_67:
              v57 = v14[2];
              v55 = v14 + 2;
              v56 = v57;
              v58 = v10[4];
              if (v57 >= v58 && (v58 < v56 || v55[1] >= v10[5]))
              {
                v61 = *(a2 - 6);
                if (v61 >= v56 && (v56 < v61 || *(a2 - 5) >= v55[1]))
                {
                  goto LABEL_85;
                }

                *v55 = v61;
                *(a2 - 6) = v56;
                v62 = v55 + 1;
                v63 = v55[1];
                v55[1] = *(a2 - 5);
                *(a2 - 5) = v63;
                v64 = *v55;
                v65 = v10[4];
                if (*v55 >= v65 && (v65 < v64 || *v62 >= v10[5]))
                {
LABEL_85:
                  v70 = *v15;
                  v71 = *v39;
                  if (*v15 >= *v39 && (v71 < v70 || v15[1] >= v39[1]))
                  {
                    v75 = *v55;
                    if (*v55 >= v70)
                    {
                      if (v70 < v75)
                      {
                        goto LABEL_104;
                      }

                      v77 = v55[1];
                      v76 = v15[1];
                      if (v77 >= v76)
                      {
                        goto LABEL_104;
                      }
                    }

                    else
                    {
                      v76 = v15[1];
                      v77 = v55[1];
                    }

                    *v15 = v75;
                    v15[1] = v77;
                    v78 = v15 + 1;
                    *v55 = v70;
                    v55[1] = v76;
                    if (v75 >= v71 && (v71 < v75 || v77 >= v39[1]))
                    {
                      v70 = v75;
                      goto LABEL_104;
                    }

                    *v39 = v75;
                    v73 = v39 + 1;
                    *v15 = v71;
LABEL_103:
                    v81 = *v73;
                    *v73 = *v78;
                    *v78 = v81;
                    v70 = *v15;
LABEL_104:
                    v82 = *v10;
                    *v10 = v70;
                    v23 = v10 + 1;
                    *v15 = v82;
                    v30 = v15 + 1;
                    goto LABEL_105;
                  }

                  v72 = *v55;
                  if (*v55 < v70)
                  {
                    goto LABEL_87;
                  }

                  if (v70 >= v72)
                  {
                    v79 = v15[1];
                    if (v55[1] < v79)
                    {
LABEL_87:
                      *v39 = v72;
                      v73 = v39 + 1;
                      *v55 = v71;
                      v74 = v55 + 1;
LABEL_102:
                      v78 = v74;
                      goto LABEL_103;
                    }
                  }

                  else
                  {
                    v79 = v15[1];
                  }

                  *v15 = v71;
                  v80 = v39[1];
                  v15[1] = v80;
                  *v39 = v70;
                  v39[1] = v79;
                  if (v72 >= v71 && (v71 < v72 || v55[1] >= v80))
                  {
                    v70 = v71;
                    goto LABEL_104;
                  }

                  *v15 = v72;
                  *v55 = v71;
                  v74 = v55 + 1;
                  v73 = v15 + 1;
                  goto LABEL_102;
                }

                v10[4] = v64;
                *v55 = v65;
                v60 = v10 + 5;
LABEL_84:
                v69 = *v60;
                *v60 = *v62;
                *v62 = v69;
                goto LABEL_85;
              }

              v59 = *(a2 - 6);
              if (v59 < v56)
              {
                goto LABEL_69;
              }

              if (v56 >= v59)
              {
                v66 = v55[1];
                if (*(a2 - 5) < v66)
                {
LABEL_69:
                  v10[4] = v59;
                  *(a2 - 6) = v58;
                  v60 = v10 + 5;
LABEL_83:
                  v62 = a2 - 5;
                  goto LABEL_84;
                }
              }

              else
              {
                v66 = v55[1];
              }

              v67 = v10[5];
              v10[4] = v56;
              v10[5] = v66;
              *v55 = v58;
              v55[1] = v67;
              v60 = v55 + 1;
              v68 = *(a2 - 6);
              if (v68 >= v58 && (v58 < v68 || *(a2 - 5) >= v67))
              {
                goto LABEL_85;
              }

              *v55 = v68;
              *(a2 - 6) = v58;
              goto LABEL_83;
            }

            v10[2] = v47;
            *v39 = v48;
            v43 = v10 + 3;
LABEL_66:
            v54 = *v43;
            *v43 = *v45;
            *v45 = v54;
            goto LABEL_67;
          }

          v42 = *(a2 - 4);
          if (v42 < v40)
          {
            goto LABEL_47;
          }

          if (v40 >= v42)
          {
            v49 = *(v14 - 1);
            if (*(a2 - 3) < v49)
            {
LABEL_47:
              v10[2] = v42;
              *(a2 - 4) = v41;
              v43 = v10 + 3;
LABEL_65:
              v45 = a2 - 3;
              goto LABEL_66;
            }
          }

          else
          {
            v49 = *(v14 - 1);
          }

          v52 = v10[3];
          v10[2] = v40;
          v10[3] = v49;
          *v39 = v41;
          *(v14 - 1) = v52;
          v43 = v14 - 1;
          v53 = *(a2 - 4);
          if (v53 >= v41 && (v41 < v53 || *(a2 - 3) >= v52))
          {
            goto LABEL_67;
          }

          *v39 = v53;
          *(a2 - 4) = v41;
          goto LABEL_65;
        }

        *v10 = v27;
        v19 = v10 + 1;
        *v14 = v28;
LABEL_44:
        v38 = *v19;
        *v19 = *v25;
        *v25 = v38;
        goto LABEL_45;
      }

      v18 = *(a2 - 2);
      if (v18 < v16)
      {
        goto LABEL_16;
      }

      if (v16 >= v18)
      {
        v34 = v14[1];
        if (*(a2 - 1) < v34)
        {
LABEL_16:
          *v10 = v18;
          v19 = v10 + 1;
LABEL_43:
          *(a2 - 2) = v17;
          v25 = a2 - 1;
          goto LABEL_44;
        }
      }

      else
      {
        v34 = v14[1];
      }

      v36 = v10[1];
      *v10 = v16;
      v10[1] = v34;
      *v14 = v17;
      v14[1] = v36;
      v19 = v14 + 1;
      v37 = *(a2 - 2);
      if (v37 >= v17 && (v17 < v37 || *(a2 - 1) >= v36))
      {
        goto LABEL_45;
      }

      *v14 = v37;
      goto LABEL_43;
    }

    v20 = *v10;
    v21 = *v14;
    if (*v10 < *v15 || v21 >= v20 && v10[1] < v15[1])
    {
      v22 = *(a2 - 2);
      if (v22 < v20)
      {
        goto LABEL_19;
      }

      if (v20 >= v22)
      {
        v35 = v10[1];
        if (*(a2 - 1) >= v35)
        {
          goto LABEL_59;
        }

LABEL_19:
        *v15 = v22;
        *(a2 - 2) = v21;
        v23 = v15 + 1;
      }

      else
      {
        v35 = v10[1];
LABEL_59:
        v50 = v15[1];
        *v15 = v20;
        v15[1] = v35;
        *v10 = v21;
        v10[1] = v50;
        v23 = v10 + 1;
        v51 = *(a2 - 2);
        if (v51 >= v21 && (v21 < v51 || *(a2 - 1) >= v50))
        {
          goto LABEL_106;
        }

        *v10 = v51;
        *(a2 - 2) = v21;
      }

      v30 = a2 - 1;
LABEL_105:
      v83 = *v23;
      *v23 = *v30;
      *v30 = v83;
      goto LABEL_106;
    }

    v29 = *(a2 - 2);
    if (v29 < v20 || v20 >= v29 && *(a2 - 1) < v10[1])
    {
      *v10 = v29;
      *(a2 - 2) = v20;
      v30 = v10 + 1;
      v31 = v10[1];
      v10[1] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = *v10;
      v33 = *v15;
      if (*v10 < *v15 || v33 >= v32 && *v30 < v15[1])
      {
        *v15 = v32;
        *v10 = v33;
        v23 = v15 + 1;
        goto LABEL_105;
      }
    }

LABEL_106:
    if ((a5 & 1) == 0)
    {
      v84 = *(v10 - 2);
      if (v84 >= *v10 && (*v10 < v84 || *(v10 - 1) >= v10[1]))
      {
        result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,int> *,std::__less<void,void> &>(v10, a2);
        v10 = result;
        goto LABEL_146;
      }
    }

    v85 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,int> *,std::__less<void,void> &>(v10, a2);
    if ((v86 & 1) == 0)
    {
      goto LABEL_144;
    }

    v87 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(v10, v85);
    v10 = v85 + 2;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(v85 + 2, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v85;
      if (v87)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v87)
    {
LABEL_144:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(v8, v85, a3, -v12, a5 & 1);
      v10 = v85 + 2;
LABEL_146:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(v10, v10 + 2, v10 + 4, v10 + 6);
  v95 = *(a2 - 2);
  v96 = v10[6];
  if (v95 < v96 || v96 >= v95 && *(a2 - 1) < v10[7])
  {
    v10[6] = v95;
    *(a2 - 2) = v96;
    v97 = v10[7];
    v10[7] = *(a2 - 1);
    *(a2 - 1) = v97;
    v98 = v10[6];
    v99 = v10[4];
    if (v98 >= v99)
    {
      if (v99 < v98)
      {
        return result;
      }

      v101 = v10[7];
      v100 = v10[5];
      if (v101 >= v100)
      {
        return result;
      }
    }

    else
    {
      v100 = v10[5];
      v101 = v10[7];
    }

    v10[4] = v98;
    v10[5] = v101;
    v10[6] = v99;
    v10[7] = v100;
    v102 = v10[2];
    if (v98 >= v102)
    {
      if (v102 < v98)
      {
        return result;
      }

      v103 = v10[3];
      if (v101 >= v103)
      {
        return result;
      }
    }

    else
    {
      v103 = v10[3];
    }

    v10[2] = v98;
    v10[3] = v101;
    v10[4] = v102;
    v10[5] = v103;
    v104 = *v10;
    if (v98 >= *v10)
    {
      if (v104 < v98)
      {
        return result;
      }

      v105 = v10[1];
      if (v101 >= v105)
      {
        return result;
      }
    }

    else
    {
      v105 = v10[1];
    }

    *v10 = v98;
    v10[1] = v101;
    v10[2] = v104;
    v10[3] = v105;
  }

  return result;
}

int *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(int *result, int *a2, int *a3, int *a4)
{
  v4 = *a2;
  v5 = *result;
  if (*a2 < *result || v5 >= v4 && a2[1] < result[1])
  {
    v6 = *a3;
    if (*a3 < v4 || v4 >= v6 && a3[1] < a2[1])
    {
      *result = v6;
      v7 = result + 1;
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v7 = a2 + 1;
      v13 = result[1];
      result[1] = a2[1];
      a2[1] = v13;
      v14 = *a3;
      v5 = *a2;
      if (*a3 >= *a2 && (v5 < v14 || a3[1] >= v13))
      {
        goto LABEL_15;
      }

      *a2 = v14;
    }

    *a3 = v5;
    v10 = a3 + 1;
    goto LABEL_14;
  }

  v8 = *a3;
  if (*a3 < v4 || v4 >= v8 && a3[1] < a2[1])
  {
    *a2 = v8;
    *a3 = v4;
    v10 = a2 + 1;
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = *a2;
    v12 = *result;
    if (*a2 < *result || v12 >= v11 && *v10 < result[1])
    {
      *result = v11;
      v7 = result + 1;
      *a2 = v12;
LABEL_14:
      v15 = *v7;
      *v7 = *v10;
      *v10 = v15;
    }
  }

LABEL_15:
  v16 = *a4;
  v17 = *a3;
  if (*a4 < *a3 || v17 >= v16 && a4[1] < a3[1])
  {
    *a3 = v16;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    if (*a3 < *a2 || v20 >= v19 && a3[1] < a2[1])
    {
      *a2 = v19;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a2;
      v23 = *result;
      if (*a2 < *result || v23 >= v22 && a2[1] < result[1])
      {
        *result = v22;
        *a2 = v23;
        v24 = result[1];
        result[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

_DWORD *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(_DWORD *result, _DWORD *a2)
{
  if (result == a2)
  {
    return result;
  }

  v2 = result + 2;
  if (result + 2 == a2)
  {
    return result;
  }

  v3 = 0;
  v4 = result;
  do
  {
    v5 = v4;
    v4 = v2;
    v6 = v5[2];
    v7 = *v5;
    if (v6 >= *v5 && (v7 < v6 || v5[3] >= v5[1]))
    {
      goto LABEL_18;
    }

    v9 = v5[2];
    v8 = v5[3];
    v10 = v5[1];
    v5[2] = v7;
    v4[1] = v10;
    v11 = result;
    if (v5 == result)
    {
      goto LABEL_17;
    }

    v12 = v3;
    while (1)
    {
      v13 = *(result + v12 - 8);
      if (v13 <= v9)
      {
        break;
      }

      v14 = *(result + v12 - 4);
LABEL_11:
      v5 -= 2;
      v15 = (result + v12);
      *v15 = v13;
      v15[1] = v14;
      v12 -= 8;
      if (!v12)
      {
        v11 = result;
        goto LABEL_17;
      }
    }

    if (v13 >= v9)
    {
      v11 = (result + v12);
      v14 = *(result + v12 - 4);
      if (v14 <= v8)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    v11 = v5;
LABEL_17:
    *v11 = v9;
    v11[1] = v8;
LABEL_18:
    v2 = v4 + 2;
    v3 += 8;
  }

  while (v4 + 2 != a2);
  return result;
}

int *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(int *result, int *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = result + 1;
      do
      {
        v4 = result;
        result = v2;
        v5 = v4[2];
        v6 = *v4;
        if (v5 < *v4 || v6 >= v5 && v4[3] < v4[1])
        {
          v7 = *result;
          v8 = result[1];
          for (i = v3; ; i -= 2)
          {
            v10 = *i;
            i[1] = v6;
            i[2] = v10;
            v6 = *(i - 3);
            if (v6 <= v7 && (v6 < v7 || *(i - 2) <= v8))
            {
              break;
            }
          }

          *(i - 1) = v7;
          *i = v8;
        }

        v2 = result + 2;
        v3 += 2;
      }

      while (result + 2 != a2);
    }
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,int> *,std::__less<void,void> &>(int *a1, int *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 - 2);
  if (v4 > *a1 || v4 >= v3 && *(a2 - 1) > v2)
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v7 <= v3 && (v6 < v3 || i[1] <= v2));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v4 > v3 || v4 >= v3 && a2[1] > v2; a2 -= 2)
    {
      v8 = *(a2 - 2);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = i[1];
      i[1] = a2[1];
      a2[1] = v11;
      do
      {
        v12 = i[2];
        i += 2;
        v9 = v12;
      }

      while (v12 <= v3 && (v9 < v3 || i[1] <= v2));
      do
      {
        do
        {
          v13 = *(a2 - 2);
          a2 -= 2;
          v10 = v13;
          v14 = v13 < v3;
        }

        while (v13 > v3);
      }

      while (!v14 && a2[1] > v2);
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    a1[1] = *(i - 1);
  }

  *(i - 2) = v3;
  *(i - 1) = v2;
  return i;
}

_DWORD *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,int> *,std::__less<void,void> &>(int *a1, _DWORD *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v5 > v3 || a1[v2 + 3] >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 4)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
      v7 = v8;
    }

    while (v8 >= v3 && (v7 > v3 || a2[1] >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 2);
        a2 -= 2;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v9 > v3)
        {
          goto LABEL_19;
        }
      }

      while (a2[1] >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    v12 = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = v13[1];
      v13[1] = v14[1];
      v14[1] = v15;
      do
      {
        do
        {
          v16 = v13[2];
          v13 += 2;
          v5 = v16;
          v17 = v16 <= v3;
        }

        while (v16 < v3);
      }

      while (v17 && v13[1] < v4);
      do
      {
        v18 = *(v14 - 2);
        v14 -= 2;
        v12 = v18;
      }

      while (v18 >= v3 && (v12 > v3 || v14[1] >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 2 != a1)
  {
    *a1 = *(v13 - 2);
    a1[1] = *(v13 - 1);
  }

  *(v13 - 2) = v3;
  *(v13 - 1) = v4;
  return v13 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(int *a1, int *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      }

      if (v4 != 5)
      {
        goto LABEL_20;
      }

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
      v8 = *(a2 - 2);
      v9 = a1[6];
      if (v8 >= v9 && (v9 < v8 || *(a2 - 1) >= a1[7]))
      {
        return 1;
      }

      a1[6] = v8;
      *(a2 - 2) = v9;
      v10 = a1[7];
      a1[7] = *(a2 - 1);
      *(a2 - 1) = v10;
      v11 = a1[6];
      v12 = a1[4];
      if (v11 >= v12)
      {
        if (v12 < v11)
        {
          return 1;
        }

        v14 = a1[7];
        v13 = a1[5];
        if (v14 >= v13)
        {
          return 1;
        }
      }

      else
      {
        v13 = a1[5];
        v14 = a1[7];
      }

      a1[4] = v11;
      a1[5] = v14;
      a1[6] = v12;
      a1[7] = v13;
      v15 = a1[2];
      if (v11 >= v15)
      {
        if (v15 < v11)
        {
          return 1;
        }

        v16 = a1[3];
        if (v14 >= v16)
        {
          return 1;
        }
      }

      else
      {
        v16 = a1[3];
      }

      a1[2] = v11;
      a1[3] = v14;
      a1[4] = v15;
      a1[5] = v16;
      v17 = *a1;
      if (v11 >= *a1)
      {
        if (v17 < v11)
        {
          return 1;
        }

        v18 = a1[1];
        if (v14 >= v18)
        {
          return 1;
        }
      }

      else
      {
        v18 = a1[1];
      }

      *a1 = v11;
      a1[1] = v14;
      result = 1;
      a1[2] = v17;
      a1[3] = v18;
      return result;
    }

    v20 = a1[2];
    v21 = *a1;
    if (v20 >= *a1 && (v21 < v20 || a1[3] >= a1[1]))
    {
      v30 = *(a2 - 2);
      if (v30 >= v20 && (v20 < v30 || *(a2 - 1) >= a1[3]))
      {
        return 1;
      }

      a1[2] = v30;
      *(a2 - 2) = v20;
      v24 = a1 + 3;
      v31 = a1[3];
      a1[3] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = a1[2];
      v33 = *a1;
      if (v32 >= *a1 && (v33 < v32 || a1[3] >= a1[1]))
      {
        return 1;
      }

      *a1 = v32;
      a1[2] = v33;
      v23 = a1 + 1;
      goto LABEL_60;
    }

    v22 = *(a2 - 2);
    if (v22 < v20)
    {
LABEL_19:
      *a1 = v22;
      v23 = a1 + 1;
      *(a2 - 2) = v21;
      v24 = a2 - 1;
      goto LABEL_60;
    }

    if (v20 >= v22)
    {
      v38 = a1[3];
      if (*(a2 - 1) < v38)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v38 = a1[3];
    }

    v40 = a1[1];
    a1[3] = v40;
    *a1 = v20;
    a1[1] = v38;
    a1[2] = v21;
    v41 = *(a2 - 2);
    if (v41 >= v21 && (v21 < v41 || *(a2 - 1) >= v40))
    {
      return 1;
    }

    a1[2] = v41;
    *(a2 - 2) = v21;
    v24 = a2 - 1;
    v23 = a1 + 3;
LABEL_60:
    v42 = *v23;
    *v23 = *v24;
    *v24 = v42;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    if (v5 < *a1 || v6 >= v5 && *(a2 - 1) < a1[1])
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_20:
  v25 = a1 + 4;
  v26 = a1[2];
  v27 = *a1;
  if (v26 < *a1 || v27 >= v26 && a1[3] < a1[1])
  {
    v28 = *v25;
    if (*v25 < v26)
    {
LABEL_22:
      *a1 = v28;
      a1[4] = v27;
      v29 = a1 + 1;
LABEL_64:
      v37 = a1 + 5;
      goto LABEL_65;
    }

    if (v26 >= v28)
    {
      v39 = a1[3];
      if (a1[5] < v39)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v39 = a1[3];
    }

    v43 = a1[1];
    a1[3] = v43;
    v29 = a1 + 3;
    *a1 = v26;
    a1[1] = v39;
    a1[2] = v27;
    if (v28 >= v27 && (v27 < v28 || a1[5] >= v43))
    {
      goto LABEL_66;
    }

    a1[2] = v28;
    a1[4] = v27;
    goto LABEL_64;
  }

  v34 = *v25;
  if (*v25 < v26)
  {
    v35 = a1[3];
    v36 = a1[5];
LABEL_33:
    a1[3] = v36;
    v37 = a1 + 3;
    a1[2] = v34;
    a1[4] = v26;
    a1[5] = v35;
    if (v34 >= v27 && (v27 < v34 || v36 >= a1[1]))
    {
      goto LABEL_66;
    }

    *a1 = v34;
    a1[2] = v27;
    v29 = a1 + 1;
LABEL_65:
    v44 = *v29;
    *v29 = *v37;
    *v37 = v44;
    goto LABEL_66;
  }

  if (v26 >= v34)
  {
    v36 = a1[5];
    v35 = a1[3];
    if (v36 < v35)
    {
      goto LABEL_33;
    }
  }

LABEL_66:
  v45 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (2)
  {
    v48 = *v25;
    if (*v45 >= *v25 && (v48 < *v45 || v45[1] >= v25[1]))
    {
      goto LABEL_81;
    }

    v49 = *v45;
    v50 = v45[1];
    *v45 = v48;
    v45[1] = v25[1];
    v51 = v46;
    while (1)
    {
      v52 = a1 + v51;
      v53 = *(a1 + v51 + 8);
      if (v53 <= v49)
      {
        break;
      }

      v54 = *(v52 + 3);
LABEL_74:
      *(v52 + 4) = v53;
      *(a1 + v51 + 20) = v54;
      v51 -= 8;
      if (v51 == -16)
      {
        v55 = a1;
        goto LABEL_80;
      }
    }

    if (v53 >= v49)
    {
      v54 = *(a1 + v51 + 12);
      if (v54 > v50)
      {
        goto LABEL_74;
      }
    }

    v55 = (a1 + v51 + 16);
LABEL_80:
    *v55 = v49;
    v55[1] = v50;
    if (++v47 != 8)
    {
LABEL_81:
      v25 = v45;
      v46 += 8;
      v45 += 2;
      if (v45 == a2)
      {
        return 1;
      }

      continue;
    }

    return v45 + 2 == a2;
  }
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,std::pair<int,int> *>(int *a1, int *a2, int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(a1, a4, v8, v11);
        v11 -= 2;
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
        v14 = *a1;
        if (*v12 < *a1 || v14 >= v13 && v12[1] < a1[1])
        {
          *v12 = v14;
          *a1 = v13;
          v15 = v12[1];
          v12[1] = a1[1];
          a1[1] = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v16 = a2 - 2;
      do
      {
        v18 = *a1;
        v17 = a1[1];
        v19 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(a1, a4, v8);
        if (v16 == v19)
        {
          *v19 = v18;
          v19[1] = v17;
        }

        else
        {
          *v19 = *v16;
          v19[1] = v16[1];
          *v16 = v18;
          v16[1] = v17;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(a1, (v19 + 2), a4, ((v19 + 2) - a1) >> 3);
        }

        v16 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
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
      if (v9 < a3)
      {
        v10 = v8[2];
        if (*v8 < v10 || v10 >= *v8 && v8[1] < v8[3])
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *v8;
      if (*v8 >= *a4 && (*a4 < v11 || v8[1] >= a4[1]))
      {
        v12 = *a4;
        v13 = a4[1];
        *a4 = v11;
        a4[1] = v8[1];
        if (v5 >= v7)
        {
          while (1)
          {
            v15 = 2 * v7;
            v7 = (2 * v7) | 1;
            v14 = (result + 8 * v7);
            v16 = v15 + 2;
            if (v16 < a3)
            {
              v17 = v14[2];
              if (*v14 < v17 || v17 >= *v14 && v14[1] < v14[3])
              {
                v14 += 2;
                v7 = v16;
              }
            }

            v18 = *v14;
            if (*v14 < v12 || v18 <= v12 && v14[1] < v13)
            {
              break;
            }

            *v8 = v18;
            v8[1] = v14[1];
            v8 = v14;
            if (v5 < v7)
            {
              goto LABEL_13;
            }
          }
        }

        v14 = v8;
LABEL_13:
        *v14 = v12;
        v14[1] = v13;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[2 * v3];
    result = v5 + 2;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[4];
      v9 = v5[2];
      if (v9 < v8 || v8 >= v9 && v5[3] < v5[5])
      {
        result = v5 + 4;
        v3 = v7;
      }
    }

    *v4 = *result;
    v4[1] = result[1];
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 8 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 8);
    if (*v6 < v8 || v8 >= v7 && v6[1] < *(a2 - 4))
    {
      v9 = *(a2 - 8);
      v10 = *(a2 - 4);
      *(a2 - 8) = v7;
      *(a2 - 4) = v6[1];
      if (v4 >= 2)
      {
        while (1)
        {
          v12 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v11 = (result + 8 * v5);
          v13 = *v11;
          if (*v11 >= v9)
          {
            if (v13 > v9)
            {
              break;
            }

            v14 = v11[1];
            if (v14 >= v10)
            {
              break;
            }
          }

          else
          {
            v14 = v11[1];
          }

          *v6 = v13;
          v6[1] = v14;
          v6 = (result + 8 * v5);
          if (v12 <= 1)
          {
            goto LABEL_10;
          }
        }
      }

      v11 = v6;
LABEL_10:
      *v11 = v9;
      v11[1] = v10;
    }
  }

  return result;
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<char32_t>>(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void sub_22CD9F278(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::unordered_map<int,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<int,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<int,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<int,float>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::unordered_map<int,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<int,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<int,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<int,float>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::unordered_map<int,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<int,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<int,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<int,float>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::unordered_map<int,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<int,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<int,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<int,float>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(void *a1, int *a2)
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

void sub_22CD9F5BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::unordered_map<int,float>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::unordered_map<int,float>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::unordered_map<int,float>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::unordered_map<int,float>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
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

uint64_t std::__split_buffer<std::unique_ptr<NLMessageIntentCandidate>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<NLMessageIntentCandidate>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::unique_ptr<NLMessageIntentCandidate>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 8;
    std::allocator_traits<std::allocator<std::unique_ptr<NLMessageIntentCandidate>>>::destroy[abi:ne200100]<std::unique_ptr<NLMessageIntentCandidate>,0>(v5, (v4 - 8));
  }
}

const __CFString *containsNonNamePunctuation(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    Length = CFStringGetLength(result);
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
    v5.location = 0;
    v5.length = 1;
    result = 1;
    if (!CFStringFindCharacterFromSet(v1, Predefined, v5, 0, 0))
    {
      v4 = CFCharacterSetGetPredefined(kCFCharacterSetLetter);
      v6.location = 0;
      v6.length = Length;
      if (CFStringFindCharacterFromSet(v1, v4, v6, 0, 0))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t lookslikeProperName(CFStringRef theString, uint64_t a2, uint64_t a3, int a4)
{
  v4 = theString;
  v44 = *MEMORY[0x277D85DE8];
  if (theString)
  {
    if (CFStringGetLength(theString) && (containsNonNamePunctuation(v4) & 1) == 0)
    {
      v8 = a4 ? CFStringCreateWithFormat(0, 0, @"(kMDItemRecipients=%@*cwd || kMDItemRecipientEmailAddresses=%@cd || kMDItemAuthors=%@*cwd || kMDItemAuthorEmailAddresses=%@cd)", v4, v4, v4, v4) : CFStringCreateWithFormat(0, 0, @"(kMDItemRecipients=%@*cwd || kMDItemRecipientEmailAddresses=%@@*cd || kMDItemAuthors=%@*cwd || kMDItemAuthorEmailAddresses=%@@*cd)", v4, v4, v4, v4);
      if (v8)
      {
        v9 = v8;
        v39 = 0;
        v40 = &v39;
        v41 = 0x2000000000;
        v42 = 0;
        v35 = 0;
        v36 = &v35;
        v37 = 0x2000000000;
        v38 = 0;
        if (getDynamicNamesQueue(void)::namesOnce != -1)
        {
          lookslikeProperName_cold_1();
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __lookslikeProperName_block_invoke;
        block[3] = &unk_27873FA70;
        block[4] = &v35;
        block[5] = &v39;
        block[6] = v4;
        dispatch_sync(getDynamicNamesQueue(void)::dynamicNamesQueue, block);
        v10 = v36;
        v11 = *(v36 + 24);
        if (v11 == 1)
        {
          if (a4)
          {
            v11 = 1;
            if (*(v40 + 6) == 1)
            {
              *(v36 + 24) = 1;
            }
          }
        }

        if (v11 && (a4 & 1) == 0 && *(v40 + 6) == 2)
        {
          *(v10 + 24) = 1;
        }

        else if (!v11)
        {
          v14 = CFPreferencesCopyValue(@"NLSearchNameCheckTimeout", @"com.apple.NLP", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
          v15 = v14;
          v16 = 90000000;
          v33 = v14;
          if (v14)
          {
            v17 = CFGetTypeID(v14);
            if (v17 == CFStringGetTypeID())
            {
              v16 = (CFStringGetDoubleValue(v15) * 1000000000.0);
            }
          }

          if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 2 || !CoreSpotlightLibraryCore(0))
          {
            goto LABEL_46;
          }

          if (CFPreferencesGetAppBooleanValue(@"NLSearchEnableLogging", *MEMORY[0x277CBF008], 0))
          {
            v18 = _nlpDefaultLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              lookslikeProperName_cold_2(v18);
            }
          }

          *values = xmmword_278740218;
          v19 = CFArrayCreate(*MEMORY[0x277CBECE8], values, 2, MEMORY[0x277CBF128]);
          if (!v19)
          {
            goto LABEL_46;
          }

          v20 = CFLocaleCopyPreferredLanguages();
          if (v20)
          {
            if (a2)
            {
              v25 = MEMORY[0x2318BF8A0](a2);
            }

            else
            {
              v25 = 0;
            }

            v29 = 0;
            v30 = &v29;
            v31 = 0x2000000000;
            v32 = 0;
            v22 = dispatch_group_create();
            dispatch_group_enter(v22);
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 0x40000000;
            v28[2] = __lookslikeProperName_block_invoke_20;
            v28[3] = &unk_278740230;
            v28[4] = &v29;
            v28[5] = v22;
            HasResultsForQuery = _CSSimpleQueryHasResultsForQuery(v9, v19, v25, v20, v28);
            v23 = dispatch_time(0, v16);
            if (dispatch_group_wait(v22, v23))
            {
              _CSSimpleQueryCancel(HasResultsForQuery);
            }

            dispatch_release(v22);
            v21 = *(v30 + 24);
            CFRelease(v20);
            _Block_object_dispose(&v29, 8);
          }

          else
          {
            v21 = 0;
          }

          CFRelease(v19);
          if (v21)
          {
            if (a4)
            {
              v24 = 1;
            }

            else
            {
              v24 = 2;
            }

            *(v40 + 6) = v24;
            CFRetain(v4);
            if (getDynamicNamesQueue(void)::namesOnce != -1)
            {
              lookslikeProperName_cold_1();
            }

            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 0x40000000;
            v27[2] = __lookslikeProperName_block_invoke_2;
            v27[3] = &unk_278740278;
            v27[4] = &v39;
            v27[5] = v4;
            dispatch_async(getDynamicNamesQueue(void)::dynamicNamesQueue, v27);
            LOBYTE(v4) = 1;
          }

          else
          {
LABEL_46:
            LOBYTE(v4) = 0;
          }

          CFRelease(v9);
          if (v15)
          {
            CFRelease(v15);
          }

          goto LABEL_49;
        }

        CFRelease(v9);
        LOBYTE(v4) = *(v36 + 24);
LABEL_49:
        _Block_object_dispose(&v35, 8);
        _Block_object_dispose(&v39, 8);
        goto LABEL_19;
      }
    }

    LOBYTE(v4) = 0;
  }

LABEL_19:
  v12 = *MEMORY[0x277D85DE8];
  return v4 & 1;
}

void sub_22CD9FDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, const void *a31)
{
  nlp::CFScopedPtr<void const*>::reset(&a31, 0);
  _Block_object_dispose((v31 - 192), 8);
  _Block_object_dispose((v31 - 160), 8);
  _Unwind_Resume(a1);
}

BOOL __lookslikeProperName_block_invoke(uint64_t a1)
{
  if (getProperNames(void)::propernamesOnce != -1)
  {
    __lookslikeProperName_block_invoke_cold_1();
  }

  result = searchBurstTrie(getProperNames(void)::propernames, *(a1 + 48), (*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

BOOL searchBurstTrie(nlp *a1, CFStringRef theString, _DWORD *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(theString);
  CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v7 = MEMORY[0x28223BE20]();
  v9 = v13 - v8;
  CFStringGetCString(theString, v13 - v8, v7 + 1, 0x8000100u);
  v10 = strlen(v9);
  result = nlp::BurstTrieContains(a1, v9, v10, a3, 0) != 0;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _CSSimpleQueryHasResultsForQuery(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v10 = getCSSimpleQueryHasResultsForQuerySymbolLoc(void)::ptr;
  v17 = getCSSimpleQueryHasResultsForQuerySymbolLoc(void)::ptr;
  if (!getCSSimpleQueryHasResultsForQuerySymbolLoc(void)::ptr)
  {
    v11 = CoreSpotlightLibrary();
    v15[3] = dlsym(v11, "CSSimpleQueryHasResultsForQuery");
    getCSSimpleQueryHasResultsForQuerySymbolLoc(void)::ptr = v15[3];
    v10 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v10)
  {
    HasResultsForQuery = _CSSimpleQueryHasResultsForQuery();
    _Block_object_dispose(&v14, 8);
    _Unwind_Resume(HasResultsForQuery);
  }

  return (v10)(a1, a2, 0, a3, a4, 0, a5);
}

void __lookslikeProperName_block_invoke_20(uint64_t a1, int a2, int a3)
{
  if (a2 && a3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t _CSSimpleQueryCancel(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v2 = getCSSimpleQueryCancelSymbolLoc(void)::ptr;
  v9 = getCSSimpleQueryCancelSymbolLoc(void)::ptr;
  if (!getCSSimpleQueryCancelSymbolLoc(void)::ptr)
  {
    v3 = CoreSpotlightLibrary();
    v7[3] = dlsym(v3, "CSSimpleQueryCancel");
    getCSSimpleQueryCancelSymbolLoc(void)::ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    HasResultsForQuery = _CSSimpleQueryHasResultsForQuery();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(HasResultsForQuery);
  }

  return v2(a1);
}

void __lookslikeProperName_block_invoke_2(uint64_t a1)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (getProperNames(void)::propernamesOnce != -1)
  {
    __lookslikeProperName_block_invoke_cold_1();
  }

  if (nlp::BurstTrieGetCount(getProperNames(void)::propernames) == 2000)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v3 = Mutable;
      if (getProperNames(void)::propernamesOnce != -1)
      {
        __lookslikeProperName_block_invoke_cold_1();
      }

      v4 = getProperNames(void)::propernames;
      v9[0] = &unk_28400DF78;
      v9[1] = _Block_copy(&__block_literal_global_5);
      v9[3] = v9;
      nlp::BurstTrieSearch(v4, "", 0, v3, v9, -1);
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::~__value_func[abi:ne200100](v9);
      Count = CFArrayGetCount(v3);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
          if (getProperNames(void)::propernamesOnce != -1)
          {
            __lookslikeProperName_block_invoke_2_cold_3();
          }

          removeFromBurstTrie(getProperNames(void)::propernames, ValueAtIndex);
        }
      }

      CFRelease(v3);
    }
  }

  if (getProperNames(void)::propernamesOnce != -1)
  {
    __lookslikeProperName_block_invoke_2_cold_3();
  }

  addToBurstTrie(getProperNames(void)::propernames, *(a1 + 40));
  CFRelease(*(a1 + 40));
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22CDA03C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void __lookslikeProperName_block_invoke_3(uint64_t a1, __CFArray *a2, _DWORD *a3)
{
  Score = nlp::TrieCompletionGetScore(a3);
  if (*&Score <= 1.0)
  {
    v6 = *MEMORY[0x277CBECE8];
    Completion = nlp::TrieCompletionGetCompletion(a3);
    Length = nlp::TrieCompletionGetLength(a3);
    v9 = CFStringCreateWithBytes(v6, Completion, Length, 0x8000100u, 0);
    if (v9)
    {
      v10 = v9;
      CFArrayAppendValue(a2, v9);

      CFRelease(v10);
    }
  }
}

uint64_t removeFromBurstTrie(_DWORD *a1, CFStringRef theString)
{
  v11[1] = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(theString);
  CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v5 = MEMORY[0x28223BE20]();
  v7 = v11 - v6;
  CFStringGetCString(theString, v11 - v6, v5 + 1, 0x8000100u);
  v8 = strlen(v7);
  result = nlp::BurstTrieRemove(a1, v7, v8);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL addToBurstTrie(uint64_t a1, CFStringRef theString)
{
  v11[1] = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(theString);
  CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v5 = MEMORY[0x28223BE20]();
  v7 = v11 - v6;
  CFStringGetCString(theString, v11 - v6, v5 + 1, 0x8000100u);
  v8 = strlen(v7);
  result = nlp::BurstTrieAdd(a1, v7, v8, 1);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void NL::EntityConverter::EntityConverter(void *a1, void *a2)
{
  v2 = a2[1];
  *a1 = *a2;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  operator new();
}

void sub_22CDA0790(_Unwind_Exception *a1)
{
  MEMORY[0x2318C0600](v5, 0x20C4093837F09);
  std::unique_ptr<NL::Transcriber>::reset[abi:ne200100](v4, 0);
  std::unique_ptr<NL::NumericConverter>::reset[abi:ne200100](v3, 0);
  v7 = *v2;
  *v2 = 0;
  if (v7)
  {
    std::default_delete<NL::DateConverter>::operator()[abi:ne200100](v2, v7);
  }

  v8 = *(v1 + 8);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  _Unwind_Resume(a1);
}

NL::NumericConverter *std::unique_ptr<NL::NumericConverter>::reset[abi:ne200100](NL::NumericConverter **a1, NL::NumericConverter *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    NL::NumericConverter::~NumericConverter(result);

    JUMPOUT(0x2318C0600);
  }

  return result;
}

NL::Transcriber *std::unique_ptr<NL::Transcriber>::reset[abi:ne200100](NL::Transcriber **a1, NL::Transcriber *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    NL::Transcriber::~Transcriber(result);

    JUMPOUT(0x2318C0600);
  }

  return result;
}

CFIndex NL::EntityConverter::entityWithString@<X0>(CFIndex this@<X0>, CFStringRef theString@<X1>, CFRange a3@<0:X2, 8:X3>, void *a4@<X8>)
{
  *a4 = 0;
  if (theString && (*(*this + 40) - 7) <= 1)
  {
    if (*(*this + 8))
    {
      return CFStringGetLength(theString);
    }
  }

  return this;
}

NL::Entity *std::unique_ptr<NL::Entity>::reset[abi:ne200100](NL::Entity **a1, NL::Entity *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    NL::Entity::~Entity(result);

    JUMPOUT(0x2318C0600);
  }

  return result;
}

NL::Entity *NL::EntityConverter::enumerateEntitiesWithTypeAndValues(NL::Entity *result, CFStringRef theString, CFIndex a3, CFIndex a4, const __CFString *a5, const __CFString *a6, const __CFDictionary *a7, int a8, uint64_t a9)
{
  v42 = *MEMORY[0x277D85DE8];
  if (!theString)
  {
    goto LABEL_37;
  }

  if (!a5)
  {
    goto LABEL_37;
  }

  if (!a6)
  {
    goto LABEL_37;
  }

  v16 = result;
  v17 = (a3 + a4);
  result = CFStringGetLength(theString);
  if (v17 > result)
  {
    goto LABEL_37;
  }

  v41 = 0;
  if (a7)
  {
    Count = CFDictionaryGetCount(a7);
  }

  else
  {
    Count = 0;
  }

  v19 = *MEMORY[0x277CBECE8];
  v36 = a3;
  v37 = a4;
  v43.location = a3;
  v43.length = a4;
  v20 = CFStringCreateWithSubstring(v19, theString, v43);
  v40 = v20;
  v35 = a9;
  if (CFStringHasSuffix(a5, @"Text"))
  {
    v21 = 7;
  }

  else
  {
    v21 = 0;
  }

  if (a8)
  {
    v21 = 3;
  }

  v32[1] = v21;
  if (!Count)
  {
    if (!CFStringHasSuffix(a6, @"Date") && !CFStringHasSuffix(a6, @"Time"))
    {
      operator new();
    }

    v26 = *(v16 + 2);
    NL::DateConverter::datePeriodForRelativeDate(a6, &v38);
    if (v38)
    {
      operator new();
    }

    std::unique_ptr<NL::DatePeriod>::~unique_ptr[abi:ne200100](&v38);
    if (!v20)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v33 = v32;
  MEMORY[0x28223BE20]();
  v34 = v20;
  v22 = (8 * Count + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = (v32 - v22);
  if ((8 * Count) >= 0x200)
  {
    v24 = 512;
  }

  else
  {
    v24 = 8 * Count;
  }

  bzero(v32 - v22, v24);
  MEMORY[0x28223BE20]();
  v25 = (v32 - v22);
  v20 = v34;
  bzero(v25, v24);
  CFDictionaryGetKeysAndValues(a7, v23, v25);
  if (CFStringsAreEqual(a6, @"Contact") || CFStringFind(a6, @"Email", 0).location != -1)
  {
    operator new();
  }

  if (CFStringHasSuffix(a6, @"Status"))
  {
    if (Count >= 1)
    {
      do
      {
        if (CFStringHasSuffix(a5, *v23))
        {
          v29 = *v25;
          operator new();
        }

        ++v25;
        ++v23;
        --Count;
      }

      while (Count);
    }

    goto LABEL_20;
  }

  if (CFStringHasSuffix(a6, @"Value"))
  {
    NL::NumericConverter::numericValueForTypeWithValues(*(v16 + 3), a6, a7, &v38);
    v28 = v39;
    if (v38)
    {
      operator new();
    }

LABEL_45:
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    goto LABEL_20;
  }

  if (CFStringHasSuffix(a6, @"Count"))
  {
    NL::NumericConverter::numericValueForTypeWithValues(*(v16 + 3), a5, a7, &v38);
    v28 = v39;
    if (v38)
    {
      operator new();
    }

    goto LABEL_45;
  }

  if (CFStringHasSuffix(a6, @"CalendarTime") || CFStringHasSuffix(a6, @"FormattedTime"))
  {
    v30 = *(v16 + 2);
    NL::DateConverter::datePeriodForValues(a6, a7, &v38);
    if (v38)
    {
      operator new();
    }
  }

  else
  {
    if (!CFStringHasSuffix(a6, @"Date") && !CFStringHasSuffix(a6, @"Time"))
    {
      operator new();
    }

    v31 = *(v16 + 2);
    NL::DateConverter::datePeriodForValues(a6, a7, &v38);
    if (v38)
    {
      operator new();
    }
  }

  std::unique_ptr<NL::DatePeriod>::~unique_ptr[abi:ne200100](&v38);
LABEL_20:
  if (v20)
  {
LABEL_34:
    CFRelease(v20);
  }

LABEL_35:
  result = v41;
  v41 = 0;
  if (result)
  {
    NL::Entity::~Entity(result);
    result = MEMORY[0x2318C0600]();
  }

LABEL_37:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22CDA1808(_Unwind_Exception *a1)
{
  std::unique_ptr<NL::Entity>::reset[abi:ne200100]((v1 + 216), 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v2 - 112), 0);
  std::unique_ptr<NL::Entity>::reset[abi:ne200100]((v2 - 104), 0);
  _Unwind_Resume(a1);
}

void NL::Entity::setValues(NL::Entity *this, CFTypeRef cf)
{
  v4 = *(this + 15);
  if (v4)
  {
    CFRelease(v4);
    *(this + 15) = 0;
  }

  if (cf)
  {
    *(this + 15) = CFRetain(cf);
  }
}

NL::ParserContext **NL::EntityConverter::enumerateEntitiesWithString(NL::ParserContext **a1, const __CFString *a2, const __CFString *a3, CFIndex a4, CFIndex a5)
{
  if (a2 && a4 != -1)
  {
    v9 = a1;
    v21 = 0;
    result = xmmword_22CDDE2F0;
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
    v22.location = a4;
    v22.length = a5;
    CFStringFindCharacterFromSet(a2, Predefined, v22, 0, &result);
    Length = CFStringGetLength(a2);
    if (a3)
    {
      v12 = CFStringHasPrefix(a3, @"QuotedText") != 0;
      v13 = CFStringHasPrefix(a3, @"Keyword") != 0;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    if (result.location == -1)
    {
      v19 = 0;
    }

    else
    {
      v15 = result.location == a4 && result.length == a5;
      v19 = v15;
    }

    v23.location = a4;
    v23.length = a5;
    v16 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], a2, v23);
    if ((a3 == 0) & ~v19 | (v12 || v13))
    {
      v17 = *(*v9 + 1);
      v18 = NL::ParserContext::index(*v9);
      if (lookslikeProperName(v16, v17, v18, a4 + a5 < Length))
      {
        operator new();
      }

      if ((*(*v9 + 10) - 7) <= 1 && v16 && *(*v9 + 1))
      {
        CFStringGetLength(v16);
      }
    }

    if (a3)
    {
      operator new();
    }

    if (v19)
    {
      operator new();
    }

    operator new();
  }

  return a1;
}

void sub_22CDA2288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (*(v62 - 169) < 0)
  {
    operator delete(*(v62 - 192));
  }

  nlp::CFScopedPtr<__CFString const*>::reset(&a38, 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v62 - 120), 0);
  std::unique_ptr<NL::Entity>::reset[abi:ne200100]((v62 - 96), 0);
  _Unwind_Resume(a1);
}

void NL::EntityConverter::merge(uint64_t a1, NL::Entity *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 17);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5)
  {
    v9 = 1;
    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v8 = *(a4 + 128);
  v7 = *(a4 + 136);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = v8 == 0;
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_8:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    goto LABEL_9;
  }

  v9 = v8 == 0;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (!v9)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3802000000;
    v10[3] = __Block_byref_object_copy__11;
    v10[5] = 0;
    v10[6] = 0;
    v10[4] = __Block_byref_object_dispose__11;
    NL::Entity::entityTemplate(a2);
  }
}

void sub_22CDA2758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, NL::Entity *a19, uint64_t a20, NL::Entity *a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  std::unique_ptr<NL::Entity>::reset[abi:ne200100](&a19, 0);
  std::unique_ptr<NL::Entity>::reset[abi:ne200100](&a21, 0);
  _Block_object_dispose(&a22, 8);
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__11(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__11(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_22CDA29CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  MEMORY[0x2318C0600](v28, v29);
  _Unwind_Resume(a1);
}

void *std::shared_ptr<NL::DatePeriod>::operator=[abi:ne200100]<NL::DatePeriod,std::default_delete<NL::DatePeriod>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<NL::DatePeriod>::shared_ptr[abi:ne200100]<NL::DatePeriod,std::default_delete<NL::DatePeriod>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void sub_22CDA2C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::unique_ptr<NL::Entity>::reset[abi:ne200100](va, 0);
  std::unique_ptr<NL::Entity>::reset[abi:ne200100]((v10 - 56), 0);
  _Unwind_Resume(a1);
}

void sub_22CDA2E4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, NL::Entity *);
  v5 = va_arg(va1, void);
  std::unique_ptr<NL::Entity>::reset[abi:ne200100](va, 0);
  std::unique_ptr<NL::Entity>::reset[abi:ne200100](va1, 0);
  _Unwind_Resume(a1);
}

dispatch_queue_t ___ZL20getDynamicNamesQueuev_block_invoke()
{
  result = dispatch_queue_create("com.apple.NLP.DynamicNames", 0);
  getDynamicNamesQueue(void)::dynamicNamesQueue = result;
  return result;
}

uint64_t CoreSpotlightLibraryCore(char **a1)
{
  v3 = *MEMORY[0x277D85DE8];
  if (!CoreSpotlightLibraryCore(char **)::frameworkLibrary)
  {
    CoreSpotlightLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  result = CoreSpotlightLibraryCore(char **)::frameworkLibrary;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ___ZL24CoreSpotlightLibraryCorePPc_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSpotlightLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *___ZL43getCSSimpleQueryHasResultsForQuerySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "CSSimpleQueryHasResultsForQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCSSimpleQueryHasResultsForQuerySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreSpotlightLibrary(void)
{
  v3 = 0;
  v0 = CoreSpotlightLibraryCore(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np();
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

void *___ZL31getCSSimpleQueryCancelSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "CSSimpleQueryCancel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCSSimpleQueryCancelSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

std::string *NL::Entity::Entity(std::string *this, __int128 *a2, __int128 *a3, std::string::size_type a4, std::string::size_type a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v9;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v10;
  }

  std::string::basic_string[abi:ne200100]<0>(&this[2], "");
  std::string::basic_string[abi:ne200100]<0>(&this[3], "");
  this[4].__r_.__value_.__r.__words[0] = a4;
  this[4].__r_.__value_.__l.__size_ = a5;
  LODWORD(this[4].__r_.__value_.__r.__words[2]) = 0;
  *&this[5].__r_.__value_.__l.__data_ = 0u;
  *&this[5].__r_.__value_.__r.__words[2] = 0u;
  *&this[6].__r_.__value_.__r.__words[1] = 0u;
  *&this[7].__r_.__value_.__l.__data_ = 0u;
  return this;
}

void sub_22CDA31F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *NL::Entity::Entity(std::string *this, __int128 *a2, __int128 *a3, __int128 *a4, std::string::size_type a5, std::string::size_type a6)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v11;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v12 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v12;
  }

  std::string::basic_string[abi:ne200100]<0>(&this[2], "");
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *a4, *(a4 + 1));
  }

  else
  {
    v13 = *a4;
    this[3].__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&this[3].__r_.__value_.__l.__data_ = v13;
  }

  this[4].__r_.__value_.__r.__words[0] = a5;
  this[4].__r_.__value_.__l.__size_ = a6;
  LODWORD(this[4].__r_.__value_.__r.__words[2]) = 0;
  *&this[5].__r_.__value_.__l.__data_ = 0u;
  *&this[5].__r_.__value_.__r.__words[2] = 0u;
  *&this[6].__r_.__value_.__r.__words[1] = 0u;
  *&this[7].__r_.__value_.__l.__data_ = 0u;
  return this;
}

void sub_22CDA332C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void nlp::CFScopedPtr<void const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void *std::__function::__func<void({block_pointer})(void *,nlp::_TrieCompletion *,BOOL *),std::allocator<void({block_pointer})(void *,nlp::_TrieCompletion *,BOOL *)>,void ()(void *,nlp::_TrieCompletion *,BOOL *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28400DF78;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void std::__function::__func<void({block_pointer})(void *,nlp::_TrieCompletion *,BOOL *),std::allocator<void({block_pointer})(void *,nlp::_TrieCompletion *,BOOL *)>,void ()(void *,nlp::_TrieCompletion *,BOOL *)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  *(a1 + 8) = 0;
}

uint64_t std::__function::__func<void({block_pointer})(void *,nlp::_TrieCompletion *,BOOL *),std::allocator<void({block_pointer})(void *,nlp::_TrieCompletion *,BOOL *)>,void ()(void *,nlp::_TrieCompletion *,BOOL *)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *a4;
  return (*(*(a1 + 8) + 16))();
}

uint64_t std::__function::__func<void({block_pointer})(void *,nlp::_TrieCompletion *,BOOL *),std::allocator<void({block_pointer})(void *,nlp::_TrieCompletion *,BOOL *)>,void ()(void *,nlp::_TrieCompletion *,BOOL *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::shared_ptr<NL::DatePeriod>::shared_ptr[abi:ne200100]<NL::DatePeriod,std::default_delete<NL::DatePeriod>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<NL::DatePeriod  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318C0600);
}

const void **std::__shared_ptr_pointer<NL::DatePeriod  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    NL::DatePeriod::~DatePeriod(result);

    JUMPOUT(0x2318C0600);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<NL::DatePeriod  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t NLAbstractIntentRecognizer::NLAbstractIntentRecognizer(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_28400E8A8;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v3;
  }

  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  NLTokenizerWithDataDetector::NLTokenizerWithDataDetector((a1 + 72));
  return a1;
}

void sub_22CDA370C(_Unwind_Exception *exception_object)
{
  v4 = v3;
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 56) = v6;
    operator delete(v6);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void NLAbstractIntentRecognizer::~NLAbstractIntentRecognizer(NLAbstractIntentRecognizer *this)
{
  *this = &unk_28400E8A8;
  if (*(this + 4))
  {
    MRLModelRelease();
  }

  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

NL::SpotlightUserContext *NL::SpotlightUserContext::SpotlightUserContext(NL::SpotlightUserContext *this)
{
  *this = getuid();
  *(this + 1) = 0;
  Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
  nlp::CFScopedPtr<__CFSet *>::reset(this + 1, Mutable);
  return this;
}

void nlp::CFScopedPtr<__CFSet *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void NLUrduTransliterator::NLUrduTransliterator(NLUrduTransliterator *this, const __CFDictionary *a2)
{
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 120) = xmmword_22CDDF0C0;
  *(this + 34) = 2;
  *(this + 18) = 0xC03E000000000000;
  *(this + 19) = 0x3E800000005;
  *(this + 40) = 3;
  *(this + 21) = 0x3FF3333333333333;
  *(this + 22) = 0x1F40000000ALL;
  *this = &unk_28400F188;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]((this + 184), "[,,;.'?!:{}<>*\\-]", 0);
}

void sub_22CDA3B74(_Unwind_Exception *a1)
{
  MEMORY[0x2318C0600](v2, 0xE1C40D30581F4);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 63);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 55);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 47);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 39);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 31);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 23);
  NLGenericTransliterator::~NLGenericTransliterator(v1);
  _Unwind_Resume(a1);
}

void NLUrduTransliterator::addDynamicMapping(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  memset(v37, 0, 41);
  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 32);
  v4 = *(a2 + 23);
  v5 = *(a2 + 8);
  if ((v4 & 0x80u) != 0)
  {
    a2 = *a2;
    v4 = v5;
  }

  *(&__p.__unmatched_.std::pair<const char *, const char *> + 1) = 0uLL;
  v6 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 376, a2, (a2 + v4), &__p, 0);
  v7 = *(v2 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = v2;
  }

  else
  {
    v8 = *v2;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(v2 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v37, v8, (v8 + v7), &__p, 0);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  if (v6)
  {
    v9 = *(v2 + 23);
    if (v9 >= 0)
    {
      v10 = v2;
    }

    else
    {
      v10 = *v2;
    }

    if (v9 >= 0)
    {
      v11 = *(v2 + 23);
    }

    else
    {
      v11 = *(v2 + 8);
    }

    v12 = &v10[v11];
    if (v11 > 4)
    {
      v13 = v11;
      v14 = v10;
      do
      {
        v15 = memchr(v14, 112, v13 - 4);
        if (!v15)
        {
          break;
        }

        if (*v15 == 1953067632 && v15[4] == 104)
        {
          goto LABEL_26;
        }

        v14 = v15 + 1;
        v13 = v12 - v14;
      }

      while (v12 - v14 > 4);
    }

    v15 = &v10[v11];
LABEL_26:
    v18 = v15 != v12 && v15 - v10 != -1;
    if (v11 >= 4)
    {
      v19 = v10;
      do
      {
        v20 = memchr(v19, 103, v11 - 3);
        if (!v20)
        {
          break;
        }

        if (*v20 == 1751741031)
        {
          goto LABEL_38;
        }

        v19 = v20 + 1;
        v11 = v12 - v19;
      }

      while (v12 - v19 > 3);
    }

    v20 = v12;
LABEL_38:
    v22 = v20 != v12 && v20 - v10 != -1 || v18;
    if (v22 == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v35, "");
      NLExtendedString::NLExtendedString(&__p, v35, 2, 2, 1.0);
      if (v36 < 0)
      {
        operator delete(v35[0]);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v35, "");
      NLExtendedString::NLExtendedString(&__p, v35, 2, 2, 0.005);
      if (v36 < 0)
      {
        operator delete(v35[0]);
      }
    }

    v23 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(v35, "i");
    (*(*v23 + 16))(v23, v35, &__p);
    if (v36 < 0)
    {
      operator delete(v35[0]);
    }

    if (SHIBYTE(__p.__matches_.__end_cap_.__value_) < 0)
    {
      operator delete(__p.__matches_.__begin_);
    }
  }

  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 41);
  v24 = *(v2 + 23);
  if ((v24 & 0x80u) == 0)
  {
    v25 = v2;
  }

  else
  {
    v25 = *v2;
  }

  if ((v24 & 0x80u) != 0)
  {
    v24 = *(v2 + 8);
  }

  v26 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 312, v25, &v25[v24], &__p, 0);
  v27 = *(v2 + 23);
  if ((v27 & 0x80u) == 0)
  {
    v28 = v2;
  }

  else
  {
    v28 = *v2;
  }

  if ((v27 & 0x80u) != 0)
  {
    v27 = *(v2 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v37, v28, (v28 + v27), &__p, 0);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  if (v26)
  {
    goto LABEL_80;
  }

  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 41);
  v29 = *(v2 + 23);
  if ((v29 & 0x80u) == 0)
  {
    v30 = v2;
  }

  else
  {
    v30 = *v2;
  }

  if ((v29 & 0x80u) != 0)
  {
    v29 = *(v2 + 8);
  }

  v31 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 248, v30, &v30[v29], &__p, 0);
  v32 = *(v2 + 23);
  if ((v32 & 0x80u) == 0)
  {
    v33 = v2;
  }

  else
  {
    v33 = *v2;
  }

  if ((v32 & 0x80u) != 0)
  {
    v32 = *(v2 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v37, v33, (v33 + v32), &__p, 0);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  if (v31)
  {
LABEL_80:
    std::string::basic_string[abi:ne200100]<0>(v35, "");
    NLExtendedString::NLExtendedString(&__p, v35, 3, 2, 0.1);
    if (v36 < 0)
    {
      operator delete(v35[0]);
    }

    v34 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(v35, "a");
    (*(*v34 + 16))(v34, v35, &__p);
    if (v36 < 0)
    {
      operator delete(v35[0]);
    }

    if (SHIBYTE(__p.__matches_.__end_cap_.__value_) < 0)
    {
      operator delete(__p.__matches_.__begin_);
    }
  }

  if (v37[0].__begin_)
  {
    v37[0].__end_ = v37[0].__begin_;
    operator delete(v37[0].__begin_);
  }
}

void sub_22CDA4134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL NLUrduTransliterator::addSpecialCandidates(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a2 + 23);
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 1) != 2)
    {
      v4 = 0;
      goto LABEL_13;
    }

    v3 = *a2;
  }

  else
  {
    v3 = a2;
    if (v2 != 2)
    {
      v4 = 0;
LABEL_11:
      if (v2 != 2)
      {
LABEL_17:
        if (v2 != 2)
        {
LABEL_24:
          if (v2 != 2)
          {
            goto LABEL_31;
          }

          v8 = a2;
          goto LABEL_29;
        }

        v7 = a2;
        goto LABEL_22;
      }

      v6 = a2;
      goto LABEL_15;
    }
  }

  v5 = *v3;
  v4 = v5 == 25977;
  if (v5 == 25977)
  {
    operator new();
  }

  if ((v2 & 0x80) == 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  if (*(a2 + 1) != 2)
  {
    goto LABEL_20;
  }

  v6 = *a2;
LABEL_15:
  if (*v6 == 28535)
  {
    operator new();
  }

  if ((v2 & 0x80) == 0)
  {
    goto LABEL_17;
  }

LABEL_20:
  if (*(a2 + 1) != 2)
  {
    goto LABEL_27;
  }

  v7 = *a2;
LABEL_22:
  if (*v7 == 28534)
  {
    operator new();
  }

  if ((v2 & 0x80) == 0)
  {
    goto LABEL_24;
  }

LABEL_27:
  if (*(a2 + 1) != 2)
  {
    goto LABEL_34;
  }

  v8 = *a2;
LABEL_29:
  if (*v8 == 26987)
  {
    operator new();
  }

  if ((v2 & 0x80) == 0)
  {
LABEL_31:
    v9 = a2;
    if (v2 != 1)
    {
      return v4;
    }

    goto LABEL_36;
  }

LABEL_34:
  if (*(a2 + 1) != 1)
  {
    return v4;
  }

  v9 = *a2;
LABEL_36:
  if (*v9 == 107)
  {
    operator new();
  }

  return v4;
}

void sub_22CDA46B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL NLUrduTransliterator::isSpecialCharSeq(int a1, int a2, char *__s, int a4)
{
  if (a2 != 1)
  {
    return 0;
  }

  v5 = a4;
  v6 = a4 + 1;
  if (strlen(__s) <= v6 || __s[v5] != 97)
  {
    return 0;
  }

  v7 = __s[v6];
  return v7 == 104 || v7 == 121;
}

void NLUrduTransliterator::~NLUrduTransliterator(std::locale *this)
{
  NLUrduTransliterator::~NLUrduTransliterator(this);

  JUMPOUT(0x2318C0600);
}

{
  this->__locale_ = &unk_28400F188;
  locale = this[69].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this + 63);
  v3 = this[61].__locale_;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::locale::~locale(this + 55);
  v4 = this[53].__locale_;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::locale::~locale(this + 47);
  v5 = this[45].__locale_;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::locale::~locale(this + 39);
  v6 = this[37].__locale_;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::locale::~locale(this + 31);
  v7 = this[29].__locale_;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::locale::~locale(this + 23);

  NLGenericTransliterator::~NLGenericTransliterator(this);
}

uint64_t createTransliteratorWrapper(uint64_t a1, uint64_t a2)
{
  CFAllocatorGetDefault();
  if (!g_CFTypeID_TransliteratorWrapper)
  {
    qword_280C26FF0 = 0;
    unk_280C27000 = 0u;
    unk_280C27010 = 0u;
    g_CFTypeID_TransliteratorWrapper = _CFRuntimeRegisterClass();
  }

  result = _CFRuntimeCreateInstance();
  *(result + 24) = a1;
  *(result + 32) = a2;
  return result;
}

const __CFDictionary *NLTransliteratorCreate(const __CFDictionary *a1)
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if (!a1)
    {
      v10 = 0;
      goto LABEL_16;
    }

    Value = CFDictionaryGetValue(a1, kNLTransliteratorTargetLocaleKey[0]);
    if (Value)
    {
      v7 = Value;
      v8 = CFGetTypeID(Value);
      if (v8 == CFStringGetTypeID())
      {
        v9 = CFLocaleCreate(0, v7);
LABEL_15:
        v10 = v9;
LABEL_16:
        v16 = CFLocaleGetValue(v10, *MEMORY[0x277CBEED0]);
        if (CFStringCompare(v16, @"hi", 0))
        {
          if (CFStringCompare(v16, @"gu", 0))
          {
            if (CFStringCompare(v16, @"ur", 0))
            {
              if (CFStringCompare(v16, @"ar", 0))
              {
                operator new();
              }

              operator new();
            }

            operator new();
          }

          operator new();
        }

        operator new();
      }

      v14 = CFGetTypeID(v7);
      TypeID = CFLocaleGetTypeID();
      if (v14 == TypeID)
      {
        v9 = CFRetain(v7);
        goto LABEL_15;
      }

      v11 = *(*NL::CFLogger::sharedInstance(TypeID) + 16);
    }

    else
    {
      v11 = *(*NL::CFLogger::sharedInstance(0) + 16);
    }

    v11();
    return 0;
  }

  if (a1)
  {
    v2 = CFDictionaryGetValue(a1, kNLTransliteratorTargetLocaleKey[0]);
    v3 = v2;
    if (v2)
    {
      v4 = CFGetTypeID(v2);
      if (v4 == CFStringGetTypeID())
      {
        v5 = CFLocaleCreate(0, v3);
        goto LABEL_24;
      }

      v17 = CFGetTypeID(v3);
      v18 = CFLocaleGetTypeID();
      if (v17 == v18)
      {
        v5 = CFRetain(v3);
LABEL_24:
        v19 = v5;
        CFDictionaryGetValue(a1, kNLTransliteratorBundleURLKey);
        if (v19)
        {
          operator new();
        }

        return 0;
      }

      v12 = NL::CFLogger::sharedInstance(v18);
      v13 = "Non supported target locale type for transliteration";
    }

    else
    {
      v12 = NL::CFLogger::sharedInstance(0);
      v13 = "No target locale specified for transliteration";
    }

    (*(*v12 + 16))(v12, 3, v13);
    return 0;
  }

  return a1;
}

CFIndex convertToVector@<X0>(CFIndex theArray@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (theArray)
  {
    v2 = theArray;
    for (i = 0; ; ++i)
    {
      theArray = CFArrayGetCount(v2);
      if (theArray <= i)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
      ResolvedDate = NLTextSlot::getResolvedDate(ValueAtIndex);
      v8 = *(a2 + 8);
      v7 = *(a2 + 16);
      if (v8 >= v7)
      {
        v10 = (v8 - *a2) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
        }

        v11 = v7 - *a2;
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
          std::__allocate_at_least[abi:ne200100]<std::allocator<NLTransliterationCandidate *>>(a2, v13);
        }

        v14 = (8 * v10);
        *v14 = ResolvedDate;
        v9 = 8 * v10 + 8;
        v15 = *(a2 + 8) - *a2;
        v16 = v14 - v15;
        memcpy(v14 - v15, *a2, v15);
        v17 = *a2;
        *a2 = v16;
        *(a2 + 8) = v9;
        *(a2 + 16) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v8 = ResolvedDate;
        v9 = (v8 + 1);
      }

      *(a2 + 8) = v9;
    }
  }

  return theArray;
}

void sub_22CDA5088(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *NLTransliteratorCopyCandidates(uint64_t a1, const __CFString *a2, const void *a3, uint64_t a4)
{
  Mutable = 0;
  if (_os_feature_enabled_impl())
  {
    if (a1 && a2)
    {
      getUTF8StringFromCFString(a2, &v52);
      v9 = v54;
      v10 = v54;
      v11 = v52;
      v12 = v53;
      if ((v54 & 0x80u) == 0)
      {
        v13 = &v52;
      }

      else
      {
        v13 = v52;
      }

      if ((v54 & 0x80u) == 0)
      {
        v14 = v54;
      }

      else
      {
        v14 = v53;
      }

      if (v14)
      {
        v15 = v14 + v13;
        v16 = MEMORY[0x277D85DE0];
        while (1)
        {
          v17 = *v13;
          if (!((v17 & 0x80000000) != 0 ? __maskrune(v17, 0x100uLL) : *(v16 + 4 * v17 + 60) & 0x100))
          {
            break;
          }

          ++v13;
          v14 = (v14 - 1);
          if (!v14)
          {
            v13 = v15;
            break;
          }
        }

        v9 = v54;
        v11 = v52;
        v12 = v53;
        v10 = v54;
      }

      if ((v10 & 0x80u) != 0)
      {
        v9 = v12;
      }

      else
      {
        v11 = &v52;
      }

      if (v13 == v9 + v11)
      {
        if (a3)
        {
          CFRetain(a3);
          theArray = a3;
          v24 = CFGetTypeID(a3);
          if (v24 != CFArrayGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v50 = 0;
          v51 = 0;
          v49 = 0;
          Count = CFArrayGetCount(a3);
          v26 = CFArrayGetCount(theArray);
          if (Count)
          {
            for (i = 0; i != Count; ++i)
            {
              if (v26 == i)
              {
                break;
              }

              v28 = applesauce::CF::details::at_to<void const*>(theArray, i);
              v29 = NLTransliterationCandidateCopyOutputString(v28);
              cf = v29;
              if (v29)
              {
                v30 = CFGetTypeID(v29);
                if (v30 != CFStringGetTypeID())
                {
                  v46 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v46, "Could not construct");
                  __cxa_throw(v46, MEMORY[0x277D82760], MEMORY[0x277D82600]);
                }

                v29 = cf;
              }

              applesauce::CF::convert_to<std::string,0>(v29, __p);
              v31 = v50;
              if (v50 >= v51)
              {
                v33 = 0xAAAAAAAAAAAAAAABLL * ((v50 - v49) >> 3);
                v34 = v33 + 1;
                if (v33 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
                }

                if (0x5555555555555556 * ((v51 - v49) >> 3) > v34)
                {
                  v34 = 0x5555555555555556 * ((v51 - v49) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v51 - v49) >> 3) >= 0x555555555555555)
                {
                  v35 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v35 = v34;
                }

                v58.__end_cap_.__value_ = &v49;
                if (v35)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v49, v35);
                }

                v36 = 8 * ((v50 - v49) >> 3);
                v37 = *__p;
                *(v36 + 16) = v56;
                *v36 = v37;
                __p[1] = 0;
                v56 = 0;
                __p[0] = 0;
                v38 = 24 * v33 + 24;
                v39 = (24 * v33 - (v50 - v49));
                memcpy((v36 - (v50 - v49)), v49, v50 - v49);
                v40 = v49;
                v41 = v51;
                v49 = v39;
                v50 = v38;
                v51 = 0;
                v58.__end_ = v40;
                v58.__end_cap_.__value_ = v41;
                v58.__first_ = v40;
                v58.__begin_ = v40;
                std::__split_buffer<std::string>::~__split_buffer(&v58);
                v50 = v38;
                if (SHIBYTE(v56) < 0)
                {
                  operator delete(__p[0]);
                }
              }

              else
              {
                v32 = *__p;
                *(v50 + 2) = v56;
                *v31 = v32;
                v50 = v31 + 24;
              }

              if (cf)
              {
                CFRelease(cf);
              }
            }
          }

          CFRelease(theArray);
        }

        else
        {
          v49 = 0;
          v50 = 0;
          v51 = 0;
        }

        NLCompositeTransliterator::getTransliterationCandidates(*(a1 + 32), &v49, &v52, a4, &v58);
        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
        first = v58.__first_;
        begin = v58.__begin_;
        if (v58.__first_ != v58.__begin_)
        {
          do
          {
            CandidateWrapper = createCandidateWrapper(*first);
            __p[0] = CandidateWrapper;
            CFArrayAppendValue(Mutable, CandidateWrapper);
            if (CandidateWrapper)
            {
              CFRelease(CandidateWrapper);
            }

            ++first;
          }

          while (first != begin);
          first = v58.__first_;
        }

        if (first)
        {
          v58.__begin_ = first;
          operator delete(first);
        }

        v58.__first_ = &v49;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v58);
        if ((v54 & 0x80) != 0)
        {
          goto LABEL_70;
        }
      }

      else
      {
        Mutable = 0;
        if ((v10 & 0x80) != 0)
        {
LABEL_70:
          v23 = v52;
          goto LABEL_71;
        }
      }
    }
  }

  else if (a1 && a2)
  {
    convertToVector(a3, &v58);
    v19 = *(a1 + 24);
    getUTF8StringFromCFString(a2, __p);
    (*(*v19 + 16))(&v52, v19, __p, &v58, a4);
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    v20 = v52;
    v21 = v53;
    if (v52 != v53)
    {
      do
      {
        v22 = createCandidateWrapper(*v20);
        CFArrayAppendValue(Mutable, v22);
        CFRelease(v22);
        ++v20;
      }

      while (v20 != v21);
      v20 = v52;
    }

    if (v20)
    {
      v53 = v20;
      operator delete(v20);
    }

    if (SHIBYTE(v56) < 0)
    {
      operator delete(__p[0]);
    }

    v23 = v58.__first_;
    if (v58.__first_)
    {
      v58.__begin_ = v58.__first_;
LABEL_71:
      operator delete(v23);
    }
  }

  return Mutable;
}