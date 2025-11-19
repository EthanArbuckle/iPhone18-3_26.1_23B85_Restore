void sub_1B54F7D40(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::TokenClassification>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::corrective_reranking::TokenClassification>,quasar::corrective_reranking::TokenClassification*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v9 = *(v7 + 48);
      *(a4 + 56) = *(v7 + 56);
      *(a4 + 48) = v9;
      v7 += 64;
      a4 += 64;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::destroy[abi:ne200100](a1, v5);
      v5 += 64;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::corrective_reranking::TokenClassification>,quasar::corrective_reranking::TokenClassification*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::corrective_reranking::TokenClassification>,quasar::corrective_reranking::TokenClassification*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::corrective_reranking::TokenClassification>,quasar::corrective_reranking::TokenClassification*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::corrective_reranking::TokenClassification>,quasar::corrective_reranking::TokenClassification*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 64;
      std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<quasar::corrective_reranking::TokenClassification>::~__split_buffer(void **a1)
{
  std::__split_buffer<quasar::corrective_reranking::TokenClassification>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::corrective_reranking::TokenClassification>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 64;
    std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::destroy[abi:ne200100](v4, i - 64);
  }
}

uint64_t std::vector<quasar::corrective_reranking::TokenClassification>::__construct_one_at_end[abi:ne200100]<quasar::corrective_reranking::TokenClassification const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4 + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 2);
  v7 = *(a2 + 6);
  *(v4 + 56) = *(a2 + 14);
  *(v4 + 48) = v7;
  *(a1 + 8) = v4 + 64;
  return result;
}

uint64_t std::vector<quasar::corrective_reranking::TokenClassification>::__emplace_back_slow_path<quasar::corrective_reranking::TokenClassification const&>(uint64_t *a1, __int128 *a2)
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

  v20 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::TokenClassification>>(a1, v7);
  }

  v8 = (v2 << 6);
  v17 = 0;
  v18 = v8;
  v19 = v8;
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(v8, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    v8->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v8->__r_.__value_.__l.__data_ = v9;
  }

  v8[1].__r_.__value_.__r.__words[0] = 0;
  v8[1].__r_.__value_.__l.__size_ = 0;
  v8[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v8[1], *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 2);
  v10 = *(a2 + 6);
  v8[2].__r_.__value_.__s.__data_[2] = *(a2 + 14);
  v8[2].__r_.__value_.__r.__words[0] = v10;
  *&v19 = v19 + 64;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::corrective_reranking::TokenClassification>,quasar::corrective_reranking::TokenClassification*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<quasar::corrective_reranking::TokenClassification>::~__split_buffer(&v17);
  return v16;
}

void sub_1B54F818C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  std::__split_buffer<quasar::corrective_reranking::TokenClassification>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__construct_one_at_end[abi:ne200100]<std::basic_string<char32_t> const&,quasar::corrective_reranking::TextRange const&>(uint64_t a1, __int128 *a2, void *a3)
{
  v5 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
  }

  *(v5 + 24) = *a3;
  *(a1 + 8) = v5 + 32;
}

std::wstring::size_type *std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__emplace_back_slow_path<std::basic_string<char32_t> const&,quasar::corrective_reranking::TextRange const&>(uint64_t a1, __int128 *a2, std::wstring::size_type *a3)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>>(a1, v9);
  }

  v10 = (32 * v3);
  v21 = 0;
  v22 = v10;
  v11 = 0;
  v23 = v10;
  v24 = 0;
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(v10, *a2, *(a2 + 1));
    v13 = v22;
    v14 = v23;
    v11 = v24;
  }

  else
  {
    v12 = *a2;
    v10->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v10->__r_.__value_.__l.__data_ = v12;
    v13 = v10;
    v14 = v10;
  }

  v10[1].__r_.__value_.__r.__words[0] = *a3;
  p_size = &v14[1].__r_.__value_.__l.__size_;
  v16 = *(a1 + 8) - *a1;
  v17 = v13 - v16;
  memcpy(v13 - v16, *a1, v16);
  v18 = *a1;
  *a1 = v17;
  *(a1 + 8) = p_size;
  v19 = *(a1 + 16);
  *(a1 + 16) = v11;
  v23 = v18;
  v24 = v19;
  v21 = v18;
  v22 = v18;
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(&v21);
  return p_size;
}

void sub_1B54F8350(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<quasar::corrective_reranking::TokenClassification>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::TokenClassification>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B54F840C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::corrective_reranking::TokenClassification>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::corrective_reranking::TokenClassification>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<quasar::corrective_reranking::TokenClassification>::__emplace_back_slow_path<quasar::corrective_reranking::TokenClassification const&>(a1, a2);
  }

  else
  {
    std::vector<quasar::corrective_reranking::TokenClassification>::__construct_one_at_end[abi:ne200100]<quasar::corrective_reranking::TokenClassification const&>(a1, a2);
    result = v3 + 64;
  }

  a1[1] = result;
  return result;
}

std::basic_string<char32_t> *std::vector<quasar::corrective_reranking::TokenClassification>::__insert_with_size[abi:ne200100]<std::__wrap_iter<quasar::corrective_reranking::TokenClassification*>,std::__wrap_iter<quasar::corrective_reranking::TokenClassification*>>(uint64_t *a1, uint64_t a2, std::basic_string<char32_t> *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 6)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 6;
      if (v17 >= a5)
      {
        std::vector<quasar::corrective_reranking::TokenClassification>::__move_range(a1, a2, a1[1], a2 + (a5 << 6));
        v18 = (v7 + 64 * a5);
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::corrective_reranking::TokenClassification>,quasar::corrective_reranking::TokenClassification*,quasar::corrective_reranking::TokenClassification*,quasar::corrective_reranking::TokenClassification*>(a1, (a3 + v16), a4, a1[1]);
        if (v17 < 1)
        {
          return v5;
        }

        std::vector<quasar::corrective_reranking::TokenClassification>::__move_range(a1, v5, v10, v5 + 64 * a5);
        v18 = (v7 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<quasar::corrective_reranking::TokenClassification *,quasar::corrective_reranking::TokenClassification *,quasar::corrective_reranking::TokenClassification *>(v23, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 6);
    if (v12 >> 58)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 5 > v12)
    {
      v12 = v14 >> 5;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFC0)
    {
      v15 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    *v26 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::TokenClassification>>(a1, v15);
    }

    v19 = (v13 >> 6 << 6);
    v23[0] = 0;
    v23[1] = v19;
    v24 = v19;
    v25 = 0;
    v20 = a5 << 6;
    v21 = (v19 + 64 * a5);
    do
    {
      std::allocator_traits<std::allocator<quasar::corrective_reranking::TokenClassification>>::construct[abi:ne200100]<quasar::corrective_reranking::TokenClassification,quasar::corrective_reranking::TokenClassification&,0>(v26[0], v19, v7);
      v19 = (v19 + 64);
      v7 = (v7 + 64);
      v20 -= 64;
    }

    while (v20);
    v24 = v21;
    v5 = std::vector<quasar::corrective_reranking::TokenClassification>::__swap_out_circular_buffer(a1, v23, v5);
    std::__split_buffer<quasar::corrective_reranking::TokenClassification>::~__split_buffer(v23);
  }

  return v5;
}

uint64_t std::vector<quasar::corrective_reranking::TokenClassification>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v8 = v10;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 24) = *(v9 + 24);
      *(v8 + 40) = *(v9 + 40);
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      v11 = *(v9 + 48);
      *(v8 + 56) = *(v9 + 56);
      *(v8 + 48) = v11;
      v9 += 64;
      v8 += 64;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<quasar::corrective_reranking::TokenClassification *,quasar::corrective_reranking::TokenClassification *,quasar::corrective_reranking::TokenClassification *>(&v13, a2, v7, v6);
}

uint64_t std::vector<quasar::corrective_reranking::TokenClassification>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::corrective_reranking::TokenClassification>,quasar::corrective_reranking::TokenClassification*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::corrective_reranking::TokenClassification>,quasar::corrective_reranking::TokenClassification*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

std::wstring *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::corrective_reranking::TokenClassification>,quasar::corrective_reranking::TokenClassification*,quasar::corrective_reranking::TokenClassification*,quasar::corrective_reranking::TokenClassification*>(uint64_t a1, __int128 *a2, __int128 *a3, std::wstring *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a1;
    do
    {
      std::allocator_traits<std::allocator<quasar::corrective_reranking::TokenClassification>>::construct[abi:ne200100]<quasar::corrective_reranking::TokenClassification,quasar::corrective_reranking::TokenClassification&,0>(v7, v4, v6);
      v6 += 4;
      v4 = (v12 + 64);
      v12 = (v12 + 64);
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::corrective_reranking::TokenClassification>,quasar::corrective_reranking::TokenClassification*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<quasar::corrective_reranking::TokenClassification *,quasar::corrective_reranking::TokenClassification *,quasar::corrective_reranking::TokenClassification *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a4 + v7 - 64);
      if (*(a4 + v7 - 41) < 0)
      {
        operator delete(*v9);
      }

      v10 = (a3 + v7 - 64);
      v11 = *v10;
      *(a4 + v7 - 48) = *(a3 + v7 - 48);
      *v9 = v11;
      *(a3 + v7 - 41) = 0;
      *v10 = 0;
      std::vector<int>::__move_assign(v8 - 40, (a3 + v7 - 40));
      v12 = *(a3 + v7 - 16);
      *(v8 - 8) = *(a3 + v7 - 8);
      *(v8 - 16) = v12;
      v7 -= 64;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

std::basic_string<char32_t> *std::__copy_impl::operator()[abi:ne200100]<quasar::corrective_reranking::TokenClassification *,quasar::corrective_reranking::TokenClassification *,quasar::corrective_reranking::TokenClassification *>(int a1, std::basic_string<char32_t> *__str, std::basic_string<char32_t> *a3, std::basic_string<char32_t> *this)
{
  v5 = __str;
  if (__str != a3)
  {
    do
    {
      std::basic_string<char32_t>::operator=(this, v5);
      if (this != v5)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this[1].__r_.__value_.__r.__words, v5[1].__r_.__value_.__l.__data_, v5[1].__r_.__value_.__l.__size_, (v5[1].__r_.__value_.__l.__size_ - v5[1].__r_.__value_.__r.__words[0]) >> 2);
      }

      v7 = v5[2].__r_.__value_.__r.__words[0];
      this[2].__r_.__value_.__s.__data_[2] = v5[2].__r_.__value_.__s.__data_[2];
      this[2].__r_.__value_.__r.__words[0] = v7;
      v5 = (v5 + 64);
      this = (this + 64);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t quasar::corrective_reranking::TransformerTokenUtilities::TransformerTokenUtilities(uint64_t result, void *a2, int a3)
{
  v3 = a2[1];
  *result = *a2;
  *(result + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 16) = a3;
  return result;
}

void quasar::corrective_reranking::TransformerTokenUtilities::~TransformerTokenUtilities(quasar::corrective_reranking::TransformerTokenUtilities *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_1B54F8E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  a9 = (v35 - 104);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::TransformerTokenUtilities::buildTruncatedExistingAndResultingTexts(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  quasar::corrective_reranking::TextEdit::getAdjustedPayload(a4, a2, 1, &__str);
  quasar::corrective_reranking::TextEdit::getAdjustedPayload(a4, a2, 0, &v6);
  quasar::corrective_reranking::TransformerTokenUtilities::tokenize();
}

void sub_1B54F91AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (*(v31 - 105) < 0)
  {
    operator delete(*(v31 - 128));
  }

  if (*(v31 - 81) < 0)
  {
    operator delete(*(v31 - 104));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *quasar::corrective_reranking::TransformerTokenUtilities::truncateAdjacentTexts@<X0>(int a1@<W3>, _BYTE *a2@<X8>)
{
  if (a1 > 0)
  {
    quasar::corrective_reranking::TransformerTokenUtilities::tokenize();
  }

  return std::pair<std::basic_string<char32_t>,std::basic_string<char32_t>>::pair[abi:ne200100]<char32_t const(&)[1],char32_t const(&)[1],0>(a2, byte_1B5B03754, byte_1B5B03754);
}

void sub_1B54F986C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char **a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  a16 = &a23;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a16);
  a23 = &a27;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

uint64_t quasar::corrective_reranking::TransformerTokenUtilities::removeTrailingAndLeadingSubtokens@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  std::deque<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::deque<std::__wrap_iter<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange> const*>,0>(&v17, *a1, a1[1]);
  while (1)
  {
    v3 = v21;
    if (!v21)
    {
      goto LABEL_8;
    }

    v4 = v20;
    v5 = *(v18 + ((v20 >> 4) & 0xFFFFFFFFFFFFFF8));
    std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(__p, "#");
    v6 = quasar::startsWith(v5 + 32 * (v4 & 0x7F), __p);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (!v6)
    {
      break;
    }

    std::deque<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::pop_front(&v17);
  }

  while (1)
  {
    v3 = v21;
LABEL_8:
    if (!v3)
    {
      break;
    }

    v7 = v3 + v20 - 1;
    v8 = *(v18 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8));
    std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(__p, "#");
    v9 = quasar::startsWith(v8 + 32 * (v7 & 0x7F), __p);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (!v9)
    {
      break;
    }

    std::deque<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::pop_back(&v17);
  }

  v10 = (v18 + 8 * (v20 >> 7));
  if (v19 == v18)
  {
    v11 = 0;
    v13 = 0;
    v12 = (v18 + 8 * ((v21 + v20) >> 7));
  }

  else
  {
    v11 = *v10 + 32 * (v20 & 0x7F);
    v12 = (v18 + 8 * ((v21 + v20) >> 7));
    v13 = *v12 + 32 * ((v21 + v20) & 0x7F);
  }

  std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::vector[abi:ne200100]<std::__deque_iterator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>&,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>**,long,128l>,0>(a2, v10, v11, v12, v13);
  return std::deque<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::~deque[abi:ne200100](&v17);
}

void quasar::corrective_reranking::TransformerTokenUtilities::mapTransformerTokenizationToIcu(uint64_t a1@<X2>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*a1 != *(a1 + 8))
  {
    quasar::corrective_reranking::stripDiacritics(*a1);
  }
}

void sub_1B54F9DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v16[1] = v17;
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  if (*(v18 - 144) == 1)
  {
    v20 = *(v18 - 168);
    if (v20)
    {
      *(v18 - 160) = v20;
      operator delete(v20);
    }
  }

  if (*(v18 - 113) < 0)
  {
    operator delete(*(v18 - 136));
  }

  if (*(v18 - 89) < 0)
  {
    operator delete(*(v18 - 112));
  }

  __p = v16;
  std::vector<quasar::corrective_reranking::TokenClassification>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t std::optional<std::vector<float>>::operator=[abi:ne200100]<std::vector<float> const&,void>(uint64_t a1, char **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t std::deque<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::pop_front(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[1] + ((v2 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v2 & 0x7F);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
    v2 = a1[4];
  }

  v4 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v4;

  return std::deque<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::pop_back(void *a1)
{
  v2 = a1[5] - 1;
  v3 = *(a1[1] + (((v2 + a1[4]) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v2 + a1[4]) & 0x7F);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
    v2 = a1[5] - 1;
  }

  a1[5] = v2;

  return std::deque<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

std::wstring *std::pair<std::basic_string<char32_t>,std::basic_string<char32_t>>::pair[abi:ne200100]<std::basic_string<char32_t>&,std::basic_string<char32_t>&,0>(std::wstring *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_1B54FA090(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::basic_string<char32_t>,std::basic_string<char32_t>>::pair[abi:ne200100]<char32_t const(&)[1],char32_t const(&)[1],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(a1, a2);
  std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B54FA0E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::erase(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange> *,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange> *,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange> *>(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 9);
        v7 -= 4;
        if (v8 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__construct_one_at_end[abi:ne200100]<std::basic_string<char32_t> const&,quasar::corrective_reranking::TextRange>(uint64_t a1, __int128 *a2, void *a3)
{
  v5 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
  }

  *(v5 + 24) = *a3;
  *(a1 + 8) = v5 + 32;
}

void std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__construct_one_at_end[abi:ne200100]<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  *(v4 + 24) = *(a2 + 3);
  *(a1 + 8) = v4 + 32;
}

std::wstring::size_type *std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__emplace_back_slow_path<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>&>(uint64_t a1, __int128 *a2)
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

  v23 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>>(a1, v7);
  }

  v8 = (32 * v2);
  v19 = 0;
  v20 = v8;
  v9 = 0;
  v21 = v8;
  v22 = 0;
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(v8, *a2, *(a2 + 1));
    v11 = v20;
    v12 = v21;
    v9 = v22;
  }

  else
  {
    v10 = *a2;
    v8->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v8->__r_.__value_.__l.__data_ = v10;
    v11 = v8;
    v12 = v8;
  }

  v8[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  p_size = &v12[1].__r_.__value_.__l.__size_;
  v14 = *(a1 + 8) - *a1;
  v15 = v11 - v14;
  memcpy(v11 - v14, *a1, v14);
  v16 = *a1;
  *a1 = v15;
  *(a1 + 8) = p_size;
  v17 = *(a1 + 16);
  *(a1 + 16) = v9;
  v21 = v16;
  v22 = v17;
  v19 = v16;
  v20 = v16;
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(&v19);
  return p_size;
}

void sub_1B54FA384(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

std::basic_string<char32_t> *__cdecl std::basic_string<char32_t>::insert(std::basic_string<char32_t> *this, std::basic_string<char32_t>::size_type __pos, const std::basic_string<char32_t>::value_type *__s, std::basic_string<char32_t>::size_type __n)
{
  v5 = __s;
  v8 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v8 & 0x8000000000000000) == 0)
  {
    if (v8 >= __pos)
    {
      v9 = 4;
      size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
      goto LABEL_6;
    }

LABEL_24:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  size = this->__r_.__value_.__l.__size_;
  if (size < __pos)
  {
    goto LABEL_24;
  }

  v9 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
LABEL_6:
  if (v9 - size >= __n)
  {
    if (__n)
    {
      v11 = this;
      if ((v8 & 0x80000000) != 0)
      {
        v11 = this->__r_.__value_.__r.__words[0];
      }

      v12 = (v11 + 4 * __pos);
      if (size != __pos)
      {
        if (v11 + 4 * size <= __s || v12 > __s)
        {
          v14 = 0;
        }

        else
        {
          v14 = __n;
        }

        v5 = &__s[v14];
        memmove(&v12[__n], v11 + 4 * __pos, 4 * (size - __pos));
      }

      memmove(v12, v5, 4 * __n);
      v15 = size + __n;
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        this->__r_.__value_.__l.__size_ = v15;
      }

      else
      {
        *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
      }

      v11->__r_.__value_.__s.__data_[v15] = 0;
    }
  }

  else
  {
    std::basic_string<char32_t>::__grow_by_and_replace(this, v9, size + __n - v9, size, __pos, 0, __n, __s);
  }

  return this;
}

uint64_t std::vector<quasar::corrective_reranking::TokenClassification>::__emplace_back_slow_path<std::basic_string<char32_t> const&,std::vector<float>,quasar::corrective_reranking::TextRange const&>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a1[1] - *a1) >> 6;
  v5 = v4 + 1;
  if ((v4 + 1) >> 58)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - *a1;
  if (v8 >> 5 > v5)
  {
    v5 = v8 >> 5;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFC0)
  {
    v9 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v5;
  }

  v19 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::TokenClassification>>(a1, v9);
  }

  v16 = 0;
  v17 = v4 << 6;
  quasar::corrective_reranking::TokenClassification::TokenClassification(v4 << 6, a2, a3, a4);
  v18 = ((v4 << 6) + 64);
  v10 = a1[1];
  v11 = (v4 << 6) + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::corrective_reranking::TokenClassification>,quasar::corrective_reranking::TokenClassification*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<quasar::corrective_reranking::TokenClassification>::~__split_buffer(&v16);
  return v15;
}

void sub_1B54FA5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::corrective_reranking::TokenClassification>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::deque<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::deque<std::__wrap_iter<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange> const*>,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  std::deque<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__append_with_size[abi:ne200100]<std::__wrap_iter<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange> const*>>(a1, a2, (a3 - a2) >> 5);
  return a1;
}

void std::deque<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__append_with_size[abi:ne200100]<std::__wrap_iter<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange> const*>>(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 16 * (v7 - v6) - 1;
  }

  v9 = a1[5] + a1[4];
  v10 = v8 - v9;
  if (a3 > v10)
  {
    std::deque<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__add_back_capacity(a1, a3 - v10);
    v6 = a1[1];
    v7 = a1[2];
    v9 = a1[4] + a1[5];
  }

  v11 = (v6 + 8 * (v9 >> 7));
  if (v7 == v6)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = *v11 + 32 * (v9 & 0x7F);
    v13 = v12;
  }

  v24[0] = v11;
  v24[1] = v13;
  v14 = std::__deque_iterator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>&,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>**,long,128l>::operator+[abi:ne200100](v24, a3);
  if (v12 != v15)
  {
    v16 = v14;
    v17 = v15;
    do
    {
      if (v11 == v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = *v11 + 4096;
      }

      if (v12 == v18)
      {
        v18 = v12;
      }

      else
      {
        v19 = 0;
        do
        {
          v20 = (v12 + v19);
          v21 = (a2 + v19);
          if (*(a2 + v19 + 23) < 0)
          {
            std::basic_string<char32_t>::__init_copy_ctor_external(v20, *v21, *(v21 + 1));
          }

          else
          {
            v22 = *v21;
            v20->__r_.__value_.__r.__words[2] = *(v21 + 2);
            *&v20->__r_.__value_.__l.__data_ = v22;
          }

          *(v12 + v19 + 24) = *(a2 + v19 + 24);
          v19 += 32;
        }

        while (v12 + v19 != v18);
        a2 += v19;
      }

      a1[5] += (v18 - v12) >> 5;
      if (v11 == v16)
      {
        break;
      }

      v23 = v11[1];
      ++v11;
      v12 = v23;
    }

    while (v23 != v17);
  }
}

void *std::deque<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__add_back_capacity(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x7F) != 0)
  {
    v5 = (v4 >> 7) + 1;
  }

  else
  {
    v5 = v4 >> 7;
  }

  v6 = result[4];
  if (v5 >= v6 >> 7)
  {
    v7 = v6 >> 7;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 7)
  {
    for (result[4] = v6 - (v7 << 7); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *,std::allocator<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>>::emplace_back<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *&>(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 7; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *,std::allocator<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>>::emplace_back<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *&>(v2, v16);
    }
  }

  return result;
}

void sub_1B54FAA50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__deque_iterator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>&,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>**,long,128l>::operator+[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 5);
    if (v4 < 1)
    {
      result -= (127 - v4) >> 7;
    }

    else
    {
      result += v4 >> 7;
    }
  }

  return result;
}

uint64_t std::deque<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::~deque[abi:ne200100](void *a1)
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
    v6 = &v2[v5 >> 7];
    v7 = *v6;
    v8 = *v6 + 32 * (v5 & 0x7F);
    v9 = *(v2 + (((a1[5] + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v5) & 0x7F);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
          v7 = *v6;
        }

        v8 += 32;
        if (v8 - v7 == 4096)
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
    v12 = 64;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_18;
    }

    v12 = 128;
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

uint64_t std::deque<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x80)
  {
    a2 = 1;
  }

  if (v2 < 0x100)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 128;
  }

  return v4 ^ 1u;
}

uint64_t std::deque<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 16 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x80)
  {
    a2 = 1;
  }

  if (v5 < 0x100)
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

void *std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::vector[abi:ne200100]<std::__deque_iterator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>&,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>**,long,128l>,0>(void *a1, char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  v6 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a5 != a3)
  {
    v6 = ((a5 - *a4) >> 5) + 16 * (a4 - a2) - ((a3 - *a2) >> 5);
  }

  std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__init_with_size[abi:ne200100]<std::__deque_iterator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>&,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>**,long,128l>,std::__deque_iterator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>&,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>**,long,128l>>(a1, a2, a3, a4, a5, v6);
  return a1;
}

uint64_t std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__init_with_size[abi:ne200100]<std::__deque_iterator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>&,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>**,long,128l>,std::__deque_iterator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>&,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>**,long,128l>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6)
  {
    std::vector<quasar::EuclidNeighbor>::__vallocate[abi:ne200100](result, a6);
  }

  return result;
}

void sub_1B54FAE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::wstring *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>,std::__deque_iterator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>&,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>**,long,128l>,std::__deque_iterator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>&,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>**,long,128l>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*>(uint64_t a1, void *a2, __int128 *a3, int a4, __int128 *a5, std::wstring *this)
{
  v6 = this;
  v15 = this;
  v16 = this;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  v14 = 0;
  if (a3 != a5)
  {
    v8 = a3;
    do
    {
      if (*(v8 + 23) < 0)
      {
        std::basic_string<char32_t>::__init_copy_ctor_external(v6, *v8, *(v8 + 1));
      }

      else
      {
        v10 = *v8;
        v6->__r_.__value_.__r.__words[2] = *(v8 + 2);
        *&v6->__r_.__value_.__l.__data_ = v10;
      }

      v6[1].__r_.__value_.__r.__words[0] = *(v8 + 3);
      v8 += 2;
      if ((v8 - *a2) == 4096)
      {
        v11 = a2[1];
        ++a2;
        v8 = v11;
      }

      v6 = (v16 + 32);
      v16 = (v16 + 32);
    }

    while (v8 != a5);
  }

  v14 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*>>::~__exception_guard_exceptions[abi:ne200100](v13);
  return v6;
}

void TaggedVocab::TaggedVocab(TaggedVocab *this, int a2, unsigned int a3)
{
  v3 = a3;
  if (a3 >= 0xFFFFE)
  {
    a3 = 1048574;
  }

  Vocab::Vocab(this, a2, a3);
  *v5 = &unk_1F2D18CF8;
  Vocab::Vocab((v5 + 12), 1u, 0xFFFu);
  *(this + 24) = 0;
  if (v3 >= 0xFFFFF)
  {
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "warning: maximum tagged index lowered to ", 41);
    v7 = MEMORY[0x1B8C84C10](v6, 1048574);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(&v9, MEMORY[0x1E69E5318]);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(&v9);
    std::ostream::put();
    std::ostream::flush();
  }
}

void sub_1B54FB050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);
  LHash<unsigned int,char const*>::~LHash(v12);
  Vocab::~Vocab(v11);
  Vocab::~Vocab(v10);
  _Unwind_Resume(a1);
}

void TaggedVocab::~TaggedVocab(TaggedVocab *this)
{
  *this = &unk_1F2D18CF8;
  v2 = (this + 192);
  LHashIter<unsigned int,unsigned long>::LHashIter(v5, this + 24, 0);
  v4 = 0;
  while (1)
  {
    v3 = LHashIter<unsigned int,unsigned long>::next(v5, &v4);
    if (!v3)
    {
      break;
    }

    free(*v3);
  }

  if (v6)
  {
    MEMORY[0x1B8C85310](v6, 0x1000C8052888210);
  }

  LHash<unsigned int,double>::clear(v2, 0);
  Vocab::~Vocab((this + 96));
  Vocab::~Vocab(this);
}

{
  TaggedVocab::~TaggedVocab(this);

  JUMPOUT(0x1B8C85350);
}

_DWORD **TaggedVocab::memStats(TaggedVocab *this, MemStats *a2)
{
  Vocab::memStats(this, a2);
  *a2 -= 96;

  return Vocab::memStats(this + 96, a2);
}

uint64_t TaggedVocab::addWord(TaggedVocab *this, char *a2)
{
  TagSep = findTagSep(a2);
  v5 = TagSep;
  if (TagSep)
  {
    v6 = *TagSep;
    *TagSep = 0;
    if (TagSep == a2)
    {
      v7 = 0xFFFFF;
    }

    else
    {
      v7 = Vocab::addWord(this, a2);
    }

    v8 = Vocab::addWord((this + 96), (v5 + 1));
  }

  else
  {
    v7 = Vocab::addWord(this, a2);
    v6 = 0;
    v8 = 0;
  }

  if (v7 == -1)
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "maximum number of tagged words (", 32);
    v10 = MEMORY[0x1B8C84C10](v9, 1048574);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ") exceeded\n", 11);
  }

  if (v8 == -1)
  {
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "maximum number of tags (", 24);
    v12 = MEMORY[0x1B8C84C10](v11, 4095);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ") exceeded\n", 11);
  }

  if (v5)
  {
    *v5 = v6;
  }

  return v7 & 0xFFFFF | (v8 << 20);
}

const char *findTagSep(const char *a1)
{
  v1 = a1;
  v2 = strlen(a1) - 1;
  while (1)
  {
    if (v1[v2] == 47)
    {
      if (!v2)
      {
        return v1;
      }

      if (v1[v2 - 1] != 60)
      {
        break;
      }
    }

    if (&v1[--v2] < v1)
    {
      return 0;
    }
  }

  v1 += v2;
  return v1;
}

char *TaggedVocab::getWord(TaggedVocab *this, unsigned int a2)
{
  v11 = 0;
  if (LHash<unsigned int,double>::locate(this + 24, a2, &v11))
  {
    return *(*(this + 24) + 16 * v11 + 8);
  }

  v5 = a2 & 0xFFFFF;
  if (!(a2 >> 20) && v5 != 0xFFFFF)
  {
    return Vocab::getWord(this, a2);
  }

  if (v5 == 0xFFFFF)
  {
    Word = "";
    v7 = "";
    if (a2 < 0x100000)
    {
      goto LABEL_11;
    }
  }

  else
  {
    Word = Vocab::getWord(this, v5);
  }

  v7 = Vocab::getWord((this + 96), a2 >> 20);
LABEL_11:
  v4 = 0;
  if (Word && v7)
  {
    v8 = strlen(Word);
    v9 = v8 + strlen(v7) + 3;
    v4 = malloc_type_malloc(v9, 0x100004077774924uLL);
    snprintf(v4, v9, "%s%c%s", Word, 47, v7);
    v12 = 0;
    *LHash<unsigned int,double>::insert(this + 24, a2, &v12) = v4;
  }

  return v4;
}

uint64_t TaggedVocab::getIndex(TaggedVocab *this, char *a2, uint64_t a3)
{
  TagSep = findTagSep(a2);
  if (TagSep)
  {
    v7 = TagSep;
    v8 = *TagSep;
    *TagSep = 0;
    if (TagSep == a2)
    {
      Index = 0xFFFFF;
    }

    else
    {
      Index = Vocab::getIndex(this, a2, 0xFFFFFFFFLL);
    }

    v11 = Vocab::getIndex((this + 96), (v7 + 1), 0xFFFFFFFFLL);
    *v7 = v8;
    v12 = Index & 0xFFFFF | (v11 << 20);
    if (v11 == -1)
    {
      v12 = a3;
    }

    if (Index == -1)
    {
      return a3;
    }

    else
    {
      return v12;
    }
  }

  else
  {

    return Vocab::getIndex(this, a2, a3);
  }
}

uint64_t TaggedVocab::remove(TaggedVocab *this, char *a2)
{
  TagSep = findTagSep(a2);
  if (TagSep)
  {
    v5 = TagSep;
    v6 = *TagSep;
    *TagSep = 0;
    if (TagSep != a2)
    {
      Vocab::remove(this, a2);
    }

    result = Vocab::remove((this + 96), (v5 + 1));
    *v5 = v6;
  }

  else
  {

    return Vocab::remove(this, a2);
  }

  return result;
}

uint64_t TaggedVocab::remove(TaggedVocab *this, unsigned int a2)
{
  v2 = this;
  if (a2 >= 0x100000)
  {
    v3 = a2 >> 20;
    v4 = a2 & 0xFFFFF;
    if (v4 != 0xFFFFF)
    {
      Vocab::remove(this, v4);
    }

    this = (v2 + 96);
    a2 = v3;
  }

  return Vocab::remove(this, a2);
}

uint64_t TaggedVocab::write(TaggedVocab *this, File *a2, int a3)
{
  Vocab::write(this, a2, a3);
  VocabIter::VocabIter(v8, (this + 96), a3);
  while (!File::error(a2))
  {
    v10 = 0;
    v6 = VocabIter::next(v8, &v10);
    if (!v6)
    {
      break;
    }

    File::fprintf(a2, "%c%s\n", 47, v6);
  }

  result = v9;
  if (v9)
  {
    return MEMORY[0x1B8C85310](v9, 0x50C80EE9192B6);
  }

  return result;
}

void sub_1B54FB734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
    MEMORY[0x1B8C85310](a15, 0x50C80EE9192B6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::QuasarCLogger(quasar *this)
{
  if ((atomic_load_explicit(&qword_1EB90B778, memory_order_acquire) & 1) == 0)
  {
    quasar::QuasarCLogger();
  }

  return _MergedGlobals_2;
}

uint64_t quasar::QuasarOsLog(quasar *this)
{
  if ((atomic_load_explicit(&qword_1EB90B788, memory_order_acquire) & 1) == 0)
  {
    quasar::QuasarOsLog();
  }

  return qword_1EB90B780;
}

uint64_t quasar::QuasarLogLevelToType(int a1)
{
  if ((a1 + 1) >= 8)
  {
    return 0;
  }

  else
  {
    return (0x202010111111111uLL >> (8 * (a1 + 1)));
  }
}

uint64_t quasar::StandardErrorLoggerFatal(uint64_t a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  return fprintf(*MEMORY[0x1E69E9848], "[QSR] FATAL %s\n", v1);
}

uint64_t quasar::StandardErrorLoggerError(uint64_t a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  return fprintf(*MEMORY[0x1E69E9848], "[QSR] ERROR %s\n", v1);
}

uint64_t quasar::StandardErrorLoggerWarn(uint64_t a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  return fprintf(*MEMORY[0x1E69E9848], "[QSR] WARN %s\n", v1);
}

uint64_t quasar::StandardErrorLoggerProdInfo(uint64_t a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  return fprintf(*MEMORY[0x1E69E9848], "[QSR] PRODINFO %s\n", v1);
}

uint64_t quasar::StandardErrorLoggerInfo(uint64_t a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  return fprintf(*MEMORY[0x1E69E9848], "[QSR] INFO %s\n", v1);
}

uint64_t quasar::StandardErrorLoggerDebug(uint64_t a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  return fprintf(*MEMORY[0x1E69E9848], "[QSR] DEBUG %s\n", v1);
}

uint64_t quasar::StandardErrorLoggerTrace(uint64_t a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  return fprintf(*MEMORY[0x1E69E9848], "[QSR] TRACE %s\n", v1);
}

void quasar::corrective_reranking::Models::Models(quasar::corrective_reranking::Models *this, const quasar::corrective_reranking::Config *a2)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  v2 = *(a2 + 41);
  *(this + 18) = *(a2 + 84);
  *(this + 8) = v2;
  operator new();
}

void sub_1B54FBCF8(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v5, 0x10A0C402A29AD3ELL);
  std::unique_ptr<quasar::corrective_reranking::OverridesDictionary>::reset[abi:ne200100]((v1 + 56), 0);
  std::unique_ptr<quasar::corrective_reranking::TargetIndexFilter>::reset[abi:ne200100](v4, 0);
  std::unique_ptr<quasar::corrective_reranking::FusedIntentClassifier>::reset[abi:ne200100]((v1 + 40), 0);
  std::unique_ptr<quasar::corrective_reranking::CorrectiveReranker>::reset[abi:ne200100](v3, 0);
  std::unique_ptr<quasar::corrective_reranking::TransformerClassifier>::reset[abi:ne200100]((v1 + 24), 0);
  std::unique_ptr<quasar::corrective_reranking::VoiceEditingWFST>::reset[abi:ne200100](v2, 0);
  std::unique_ptr<quasar::corrective_reranking::VoiceEditingWFST>::reset[abi:ne200100]((v1 + 8), 0);
  std::unique_ptr<quasar::corrective_reranking::PhoneticMatcher>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::Models::~Models(quasar::corrective_reranking::Models *this)
{
  std::unique_ptr<quasar::corrective_reranking::OverridesDictionary>::reset[abi:ne200100](this + 7, 0);
  std::unique_ptr<quasar::corrective_reranking::TargetIndexFilter>::reset[abi:ne200100](this + 6, 0);
  std::unique_ptr<quasar::corrective_reranking::FusedIntentClassifier>::reset[abi:ne200100](this + 5, 0);
  std::unique_ptr<quasar::corrective_reranking::CorrectiveReranker>::reset[abi:ne200100](this + 4, 0);
  std::unique_ptr<quasar::corrective_reranking::TransformerClassifier>::reset[abi:ne200100](this + 3, 0);
  std::unique_ptr<quasar::corrective_reranking::VoiceEditingWFST>::reset[abi:ne200100](this + 2, 0);
  std::unique_ptr<quasar::corrective_reranking::VoiceEditingWFST>::reset[abi:ne200100](this + 1, 0);
  std::unique_ptr<quasar::corrective_reranking::PhoneticMatcher>::reset[abi:ne200100](this, 0);
}

void quasar::corrective_reranking::Models::generateParses(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, int a6@<W5>, int a7@<W7>, void **a8@<X8>)
{
  quasar::corrective_reranking::Models::generateWFSTParses(a1, a2, a3, a8);
  v13 = *a8;
  v14 = a8[1];
  if (*a8 == v14)
  {
    v20 = 0;
    if (a6)
    {
      goto LABEL_25;
    }

    return;
  }

  v15 = a4;
  v16 = a7;
  while (1)
  {
    quasar::corrective_reranking::Parse::getIntent(v13, &v31);
    if ((SBYTE7(v32) & 0x80000000) == 0)
    {
      if (SBYTE7(v32) != 7)
      {
        goto LABEL_23;
      }

      if (v31 != 1952672100 || *(&v31 + 3) != 1702125940)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }

    if (*(&v31 + 1) != 7)
    {
      break;
    }

    v19 = *v31 != 1952672100 || *(v31 + 3) != 1702125940;
    operator delete(v31);
    if (v19)
    {
      goto LABEL_23;
    }

LABEL_18:
    v13 = (v13 + 384);
    if (v13 == v14)
    {
      v20 = 0;
      goto LABEL_24;
    }
  }

  operator delete(v31);
LABEL_23:
  v20 = 1;
LABEL_24:
  a7 = v16;
  a4 = v15;
  if (a6)
  {
LABEL_25:
    if (*a5 == a5[1])
    {
      v20 = 1;
    }

    if ((v20 & 1) == 0)
    {
      if (a7 && quasar::gLogLevel >= 5)
      {
        v46 = 0u;
        v47 = 0u;
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
        v31 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v31);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "== SPELLED RANGES: ", 19);
        quasar::joinToList<std::vector<quasar::corrective_reranking::TextRange>>(a5, 0);
        if ((v30 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v30 & 0x80u) == 0)
        {
          v23 = v30;
        }

        else
        {
          v23 = v29;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, p_p, v23);
        if (v30 < 0)
        {
          operator delete(__p);
        }

        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v31);
      }

      quasar::corrective_reranking::Models::generateInlineSpellingParses(a4, a5, &__p);
      if (__p != v29)
      {
        if (&__p != a8)
        {
          std::vector<quasar::corrective_reranking::Parse>::__assign_with_size[abi:ne200100]<quasar::corrective_reranking::Parse*,quasar::corrective_reranking::Parse*>(a8, __p, v29, 0xAAAAAAAAAAAAAAABLL * ((v29 - __p) >> 7));
        }

        if (a7)
        {
          if (quasar::gLogLevel >= 5)
          {
            v46 = 0u;
            v47 = 0u;
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
            v31 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v31);
            v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "[Inline Spelling]\n", 18);
            v25 = a8;
            v26 = 0;
            v27 = a4;
            quasar::corrective_reranking::operator<<(v24, &v25);
            quasar::QuasarDebugMessage::~QuasarDebugMessage(&v31);
          }
        }
      }

      *&v31 = &__p;
      std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&v31);
    }
  }
}

void sub_1B54FC170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void **p_p)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&p_p);
  p_p = &__p;
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&p_p);
  p_p = v20;
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&p_p);
  _Unwind_Resume(a1);
}

uint64_t quasar::corrective_reranking::Models::generateWFSTParses@<X0>(uint64_t result@<X0>, int a2@<W1>, void *a3@<X2>, void *a4@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (*(result + 8))
    {
      goto LABEL_6;
    }

LABEL_9:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v4, "wfstToUse");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v4);
  }

  if (a2 != 1)
  {
    goto LABEL_9;
  }

  if (!*(result + 16))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return result;
  }

LABEL_6:
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a3 != a3[1])
  {
    quasar::corrective_reranking::tokenize();
  }

  return result;
}

void sub_1B54FC5BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void quasar::corrective_reranking::Models::generateInlineSpellingParses(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = 0;
  v21 = 0;
  std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange*,quasar::corrective_reranking::TextRange*>(&v19, *a2, a2[1], (a2[1] - *a2) >> 3);
  v4 = v19;
  v5 = v20;
  if ((v20 - v19) >> 3 < 129)
  {
    v11 = 0;
    v7 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E69E5398];
    v7 = (v20 - v19) >> 3;
    while (1)
    {
      v8 = operator new(8 * v7, v6);
      if (v8)
      {
        break;
      }

      v9 = v7 >> 1;
      v10 = v7 > 1;
      v7 >>= 1;
      if (!v10)
      {
        v11 = 0;
        v7 = v9;
        goto LABEL_8;
      }
    }

    v11 = v8;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,quasar::corrective_reranking::Models::generateInlineSpellingParses(std::basic_string<char32_t> const&,std::vector<quasar::corrective_reranking::TextRange> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::TextRange*>>(v4, v5, v5 - v4, v11, v7);
  if (v11)
  {
    operator delete(v11);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v12 = v19;
  if (v19 != v20)
  {
    if (*a3 == a3[1])
    {
      quasar::corrective_reranking::TextRange::getSubstringFromText(v19, a1, &v18);
      std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(__dst, " ");
      std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(__p, byte_1B5B03790);
      quasar::replaceAll(&v18, __dst, __p);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      if (v17 < 0)
      {
        operator delete(__dst[0]);
      }

      quasar::corrective_reranking::tokenize();
    }

    v12 = v19;
  }

  if (v12)
  {
    v20 = v12;
    operator delete(v12);
  }
}

void sub_1B54FD4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, char a28, void *__p, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a32 == 1 && __p)
  {
    a30 = __p;
    operator delete(__p);
  }

  if (a39)
  {
    a40 = a39;
    operator delete(a39);
  }

  if (a59)
  {
    a60 = a59;
    operator delete(a59);
  }

  quasar::corrective_reranking::Parse::~Parse(&a71);
  a71 = &a56;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a71);
  quasar::URegularExpressionWrapper::~URegularExpressionWrapper(&a28);
  a71 = &a64;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a71);
  a71 = (v71 - 136);
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a71);
  a71 = (v71 - 232);
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a71);
  if (*(v71 - 185) < 0)
  {
    operator delete(*(v71 - 208));
  }

  a71 = a18;
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&a71);
  v73 = *(v71 - 184);
  if (v73)
  {
    *(v71 - 176) = v73;
    operator delete(v73);
  }

  _Unwind_Resume(a1);
}

quasar::corrective_reranking::PhoneticMatcher *std::unique_ptr<quasar::corrective_reranking::PhoneticMatcher>::reset[abi:ne200100](quasar::corrective_reranking::PhoneticMatcher **a1, quasar::corrective_reranking::PhoneticMatcher *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    quasar::corrective_reranking::PhoneticMatcher::~PhoneticMatcher(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

uint64_t *std::unique_ptr<quasar::corrective_reranking::VoiceEditingWFST>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v2 + 72);
    std::__hash_table<std::__hash_value_type<int,std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>>>>::~__hash_table(v2 + 32);
    std::__tree<std::string>::destroy(v2 + 8, *(v2 + 16));

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

quasar::corrective_reranking::TransformerClassifier *std::unique_ptr<quasar::corrective_reranking::TransformerClassifier>::reset[abi:ne200100](quasar::corrective_reranking::TransformerClassifier **a1, quasar::corrective_reranking::TransformerClassifier *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    quasar::corrective_reranking::TransformerClassifier::~TransformerClassifier(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

uint64_t *std::unique_ptr<quasar::corrective_reranking::CorrectiveReranker>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 256);
    *(v2 + 256) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = (v2 + 232);
    std::vector<std::unique_ptr<quasar::corrective_reranking::Featurizer>>::__destroy_vector::operator()[abi:ne200100](&v4);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v2 + 192);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v2 + 152);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v2 + 112);
    v4 = (v2 + 80);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 24);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    return MEMORY[0x1B8C85350](v2, 0x10F2C40D67644E6);
  }

  return result;
}

uint64_t *std::unique_ptr<quasar::corrective_reranking::FusedIntentClassifier>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 32);
    *(v2 + 32) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = (v2 + 8);
    std::vector<std::unique_ptr<quasar::corrective_reranking::Featurizer>>::__destroy_vector::operator()[abi:ne200100](&v4);
    return MEMORY[0x1B8C85350](v2, 0x60C409743DB05);
  }

  return result;
}

uint64_t *std::unique_ptr<quasar::corrective_reranking::TargetIndexFilter>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    kaldi::CuVector<float>::~CuVector((v2 + 80));
    kaldi::CuMatrix<float>::~CuMatrix(v2 + 32);
    v3 = (v2 + 8);
    std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v3);
    return MEMORY[0x1B8C85350](v2, 0x10E0C4043F1346FLL);
  }

  return result;
}

quasar::corrective_reranking::OverridesDictionary *std::unique_ptr<quasar::corrective_reranking::OverridesDictionary>::reset[abi:ne200100](quasar::corrective_reranking::OverridesDictionary **a1, quasar::corrective_reranking::OverridesDictionary *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    quasar::corrective_reranking::OverridesDictionary::~OverridesDictionary(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void std::vector<quasar::corrective_reranking::Parse>::__assign_with_size[abi:ne200100]<quasar::corrective_reranking::Parse*,quasar::corrective_reranking::Parse*>(uint64_t a1, quasar::corrective_reranking::Parse *a2, quasar::corrective_reranking::Parse *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 7) < a4)
  {
    std::vector<quasar::corrective_reranking::Parse>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 7);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 7) >= 0x55555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<quasar::corrective_reranking::Parse>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 7) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        quasar::corrective_reranking::Parse::operator=(v8, v6);
        v6 += 384;
        v8 += 16;
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    while (v11 != v8)
    {
      v11 -= 16;
      quasar::corrective_reranking::Parse::~Parse(&v11->__r_.__value_.__l.__data_);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        quasar::corrective_reranking::Parse::operator=(v8, v14);
        v14 += 384;
        v8 += 16;
        v13 -= 384;
      }

      while (v13);
      v11 = *(a1 + 8);
    }

    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::corrective_reranking::Parse>,quasar::corrective_reranking::Parse*,quasar::corrective_reranking::Parse*,quasar::corrective_reranking::Parse*>(a1, (v6 + v12), a3, v11);
  }
}

uint64_t *std::__stable_sort<std::_ClassicAlgPolicy,quasar::corrective_reranking::Models::generateInlineSpellingParses(std::basic_string<char32_t> const&,std::vector<quasar::corrective_reranking::TextRange> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::TextRange*>>(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    v6 = result;
    if (a3 == 2)
    {
      if (*(a2 - 2) > *result)
      {
        v7 = *result;
        *result = *(a2 - 1);
        *(a2 - 1) = v7;
      }
    }

    else if (a3 > 128)
    {
      v18 = a4;
      v19 = a3 >> 1;
      v20 = &result[a3 >> 1];
      v21 = a3 >> 1;
      if (a3 <= a5)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,quasar::corrective_reranking::Models::generateInlineSpellingParses(std::basic_string<char32_t> const&,std::vector<quasar::corrective_reranking::TextRange> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::TextRange*>>(result, v20, v21, a4);
        v22 = &v18[v19];
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,quasar::corrective_reranking::Models::generateInlineSpellingParses(std::basic_string<char32_t> const&,std::vector<quasar::corrective_reranking::TextRange> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::TextRange*>>(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v22);
        v23 = &v18[a3];
        v24 = v22;
        while (v24 != v23)
        {
          v25 = *v24 > *v18;
          if (*v24 <= *v18)
          {
            v26 = v18;
          }

          else
          {
            v26 = v24;
          }

          v18 += *v24 <= *v18;
          v24 += v25;
          *v6 = *v26;
          v6 += 8;
          if (v18 == v22)
          {
            while (v24 != v23)
            {
              v28 = *v24++;
              *v6 = v28;
              v6 += 8;
            }

            return result;
          }
        }

        while (v18 != v22)
        {
          v27 = *v18++;
          *v6 = v27;
          v6 += 8;
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,quasar::corrective_reranking::Models::generateInlineSpellingParses(std::basic_string<char32_t> const&,std::vector<quasar::corrective_reranking::TextRange> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::TextRange*>>(result, v20, v21, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,quasar::corrective_reranking::Models::generateInlineSpellingParses(std::basic_string<char32_t> const&,std::vector<quasar::corrective_reranking::TextRange> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::TextRange*>>(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v18, a5);

        return std::__inplace_merge<std::_ClassicAlgPolicy,quasar::corrective_reranking::Models::generateInlineSpellingParses(std::basic_string<char32_t> const&,std::vector<quasar::corrective_reranking::TextRange> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::TextRange*>>(v6, &v6[8 * (a3 >> 1)], a2, a3 >> 1, a3 - (a3 >> 1), v18, a5);
      }
    }

    else if (result != a2)
    {
      v9 = result + 1;
      if (result + 1 != a2)
      {
        v10 = 0;
        v11 = result;
        do
        {
          v12 = *v11;
          v11 = v9;
          if (*v9 > v12)
          {
            v13 = *v9;
            v14 = v10;
            while (1)
            {
              *(result + v14 + 8) = *(result + v14);
              if (!v14)
              {
                break;
              }

              v15 = *(result + v14 - 8);
              v14 -= 8;
              if (v15 >= v13)
              {
                v16 = (result + v14 + 8);
                goto LABEL_16;
              }
            }

            v16 = result;
LABEL_16:
            *v16 = v13;
          }

          v9 = v11 + 1;
          v10 += 8;
        }

        while (v11 + 1 != a2);
      }
    }
  }

  return result;
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,quasar::corrective_reranking::Models::generateInlineSpellingParses(std::basic_string<char32_t> const&,std::vector<quasar::corrective_reranking::TextRange> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::TextRange*>>(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = result;
    if (a3 == 1)
    {
LABEL_10:
      *v4 = *v6;
      return result;
    }

    if (a3 == 2)
    {
      v8 = *(a2 - 2);
      v9 = v8 <= *result;
      if (v8 <= *result)
      {
        v10 = result;
      }

      else
      {
        v10 = a2 - 1;
      }

      *a4 = *v10;
      v4 = a4 + 1;
      if (v9)
      {
        v6 = a2 - 1;
      }

      goto LABEL_10;
    }

    if (a3 > 8)
    {
      v19 = &result[a3 >> 1];
      std::__stable_sort<std::_ClassicAlgPolicy,quasar::corrective_reranking::Models::generateInlineSpellingParses(std::basic_string<char32_t> const&,std::vector<quasar::corrective_reranking::TextRange> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::TextRange*>>(result, v19, a3 >> 1, a4, a3 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,quasar::corrective_reranking::Models::generateInlineSpellingParses(std::basic_string<char32_t> const&,std::vector<quasar::corrective_reranking::TextRange> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::TextRange*>>(&v6[a3 >> 1], a2, a3 - (a3 >> 1), &v4[a3 >> 1], a3 - (a3 >> 1));
      v20 = &v6[a3 >> 1];
      while (v20 != a2)
      {
        v21 = *v20 <= *v6;
        if (*v20 <= *v6)
        {
          v22 = v6;
        }

        else
        {
          v22 = v20;
        }

        v20 += *v20 > *v6;
        v6 += v21;
        *v4++ = *v22;
        if (v6 == v19)
        {
          while (v20 != a2)
          {
            v24 = *v20++;
            *v4++ = v24;
          }

          return result;
        }
      }

      while (v6 != v19)
      {
        v23 = *v6++;
        *v4++ = v23;
      }
    }

    else if (result != a2)
    {
      v11 = result + 1;
      *a4 = *result;
      if (result + 1 != a2)
      {
        v12 = 0;
        v13 = a4;
        do
        {
          v14 = v13;
          v15 = *v13++;
          v16 = v13;
          if (*v11 > v15)
          {
            v14[1] = *v14;
            v16 = a4;
            if (v14 != a4)
            {
              v17 = v12;
              while (1)
              {
                v16 = (a4 + v17);
                if (*v11 <= *(a4 + v17 - 8))
                {
                  break;
                }

                *v16 = *(v16 - 1);
                v17 -= 8;
                if (!v17)
                {
                  v16 = a4;
                  break;
                }
              }
            }
          }

          v18 = *v11++;
          *v16 = v18;
          v12 += 8;
        }

        while (v11 != a2);
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,quasar::corrective_reranking::Models::generateInlineSpellingParses(std::basic_string<char32_t> const&,std::vector<quasar::corrective_reranking::TextRange> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::TextRange*>>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v9 = a5;
    v11 = result;
    while (v9 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v12 = 0;
      v13 = -a4;
      while (*a2 <= *&v11[v12])
      {
        v12 += 8;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v15 = -v13;
      v55 = a3;
      __src = a6;
      v54 = a7;
      if (-v13 >= v9)
      {
        if (v13 == -1)
        {
          v51 = *&v11[v12];
          *&v11[v12] = *a2;
          *a2 = v51;
          return result;
        }

        v24 = v15 / 2;
        v25 = &v11[8 * (v15 / 2)];
        v17 = a2;
        if (a2 != a3)
        {
          v26 = (a3 - a2) >> 3;
          v17 = a2;
          do
          {
            v27 = v26 >> 1;
            v28 = &v17[8 * (v26 >> 1)];
            v30 = *v28;
            v29 = v28 + 8;
            v26 += ~(v26 >> 1);
            if (v30 > *&v25[v12])
            {
              v17 = v29;
            }

            else
            {
              v26 = v27;
            }
          }

          while (v26);
        }

        v16 = (v17 - a2) >> 3;
        v18 = &v25[v12];
      }

      else
      {
        v16 = v9 / 2;
        v17 = &a2[8 * (v9 / 2)];
        v18 = a2;
        if (a2 - v11 != v12)
        {
          v19 = (a2 - v11 - v12) >> 3;
          v18 = &v11[v12];
          do
          {
            v20 = v19 >> 1;
            v21 = &v18[8 * (v19 >> 1)];
            v23 = *v21;
            v22 = v21 + 8;
            v19 += ~(v19 >> 1);
            if (*v17 > v23)
            {
              v19 = v20;
            }

            else
            {
              v18 = v22;
            }
          }

          while (v19);
        }

        v24 = (v18 - v11 - v12) >> 3;
      }

      a4 = -(v24 + v13);
      v31 = v9 - v16;
      v32 = v24;
      v33 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::WordHypLattice::Node **>,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(v18, a2, v17);
      v34 = v32;
      v35 = v33;
      if (v34 + v16 >= v9 - (v34 + v16) - v13)
      {
        v38 = v34;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,quasar::corrective_reranking::Models::generateInlineSpellingParses(std::basic_string<char32_t> const&,std::vector<quasar::corrective_reranking::TextRange> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::TextRange*>>(v33, v17, v55, a4, v31, __src, v54);
        v17 = v18;
        a7 = v54;
        v31 = v16;
        a6 = __src;
        a4 = v38;
        a3 = v35;
        v11 += v12;
      }

      else
      {
        v36 = v18;
        v37 = v16;
        a6 = __src;
        a7 = v54;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,quasar::corrective_reranking::Models::generateInlineSpellingParses(std::basic_string<char32_t> const&,std::vector<quasar::corrective_reranking::TextRange> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::TextRange*>>(&v11[v12], v36, v33, v34, v37, __src, v54);
        v11 = v35;
        a3 = v55;
      }

      v9 = v31;
      a2 = v17;
      if (!v31)
      {
        return result;
      }
    }

    if (a4 <= v9)
    {
      if (a2 != v11)
      {
        v45 = -a6;
        v46 = a6;
        v47 = v11;
        do
        {
          v48 = *v47;
          v47 += 8;
          *v46++ = v48;
          v45 -= 8;
        }

        while (v47 != a2);
        while (a2 != a3)
        {
          v49 = *a2 <= *a6;
          if (*a2 <= *a6)
          {
            v50 = a6;
          }

          else
          {
            v50 = a2;
          }

          a2 += 8 * (*a2 > *a6);
          a6 += 8 * v49;
          *v11 = *v50;
          v11 += 8;
          if (v46 == a6)
          {
            return result;
          }
        }

        return memmove(v11, a6, -(a6 + v45));
      }
    }

    else if (a2 != a3)
    {
      v39 = 0;
      do
      {
        *(a6 + v39) = *&a2[v39];
        v39 += 8;
      }

      while (&a2[v39] != a3);
      v40 = (a6 + v39);
      while (a2 != v11)
      {
        v41 = *(v40 - 2);
        v42 = *(a2 - 2);
        v43 = v41 <= v42;
        if (v41 <= v42)
        {
          v44 = v40;
        }

        else
        {
          v44 = a2;
        }

        if (v43)
        {
          v40 -= 8;
        }

        else
        {
          a2 -= 8;
        }

        *(a3 - 1) = *(v44 - 1);
        a3 -= 8;
        if (v40 == a6)
        {
          return result;
        }
      }

      if (v40 != a6)
      {
        v52 = -8;
        do
        {
          v53 = *(v40 - 1);
          v40 -= 8;
          *&a3[v52] = v53;
          v52 -= 8;
        }

        while (v40 != a6);
      }
    }
  }

  return result;
}

void std::vector<quasar::corrective_reranking::Parse>::__emplace_back_slow_path<quasar::corrective_reranking::ASRCandidate const&,std::vector<std::string>,double>(void *a1, __int128 *a2, int a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 7) + 1;
  if (v3 <= 0xAAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 7) > v3)
    {
      v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 7);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 7) >= 0x55555555555555)
    {
      v5 = 0xAAAAAAAAAAAAAALL;
    }

    else
    {
      v5 = v3;
    }

    if (v5)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::Parse>>(a1, v5);
    }

    std::allocator<quasar::corrective_reranking::Parse>::construct[abi:ne200100]<quasar::corrective_reranking::Parse,quasar::corrective_reranking::ASRCandidate const&,std::vector<std::string>,double>(a1, ((a1[1] - *a1) >> 7 << 7), a2, a3);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void sub_1B54FE7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::corrective_reranking::Parse>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::corrective_reranking::Parse>::construct[abi:ne200100]<quasar::corrective_reranking::Parse,quasar::corrective_reranking::ASRCandidate const&,std::vector<std::string>,double>(uint64_t a1, std::wstring *a2, __int128 *a3, int a4)
{
  LOBYTE(v16) = 0;
  v17 = 0;
  memset(v15, 0, sizeof(v15));
  std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(__dst, byte_1B5B03790);
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  LOBYTE(v9) = 0;
  v10 = 0;
  LOBYTE(v7) = 0;
  v8 = 0;
  quasar::corrective_reranking::Parse::Parse(a2, a3, a4, &v16, v15, __dst, v13, 1, v12, v11, 0, &v9, &v7, 0, 0, 0, 0, 0, 0);
}

void sub_1B54FE96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, int a30, char a31)
{
  std::optional<quasar::corrective_reranking::AdjustedPayloadParts>::~optional(&a16);
  if (a29 == 1)
  {
    quasar::createConstituentDfstsFromSecondPassDecoder(&a26);
  }

  a16 = &a31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  a16 = (v31 - 176);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  v33 = *(v31 - 152);
  if (v33)
  {
    *(v31 - 144) = v33;
    operator delete(v33);
  }

  if (*(v31 - 105) < 0)
  {
    operator delete(*(v31 - 128));
  }

  a16 = (v31 - 104);
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (*(v31 - 56) == 1)
  {
    v34 = *(v31 - 80);
    if (v34)
    {
      *(v31 - 72) = v34;
      operator delete(v34);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1B54FEED4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 - 73) < 0)
  {
    operator delete(*(v16 - 96));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B54FEF40);
}

void sub_1B54FEF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    JUMPOUT(0x1B54FEF4CLL);
  }

  JUMPOUT(0x1B54FEF50);
}

void sub_1B54FEF3C(_Unwind_Exception *a1)
{
  if (*(v3 - 49) < 0)
  {
    operator delete(*(v3 - 72));
  }

  v5 = *(v1 + 272);
  *(v1 + 272) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::~wstring_convert(v1 + 80);
  if (*(v1 + 79) < 0)
  {
    operator delete(*v2);
  }

  quasar::SimpleNameEnumerator::~SimpleNameEnumerator(v1);
  _Unwind_Resume(a1);
}

void sub_1B54FEFB0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B54FEFA0);
}

void quasar::SimpleNameEnumerator::~SimpleNameEnumerator(void **this)
{
  *this = &unk_1F2D31F98;
  v2 = this + 4;
  std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  quasar::NameEnumerator::~NameEnumerator(this);
}

{
  *this = &unk_1F2D31F98;
  v2 = this + 4;
  std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  quasar::NameEnumerator::~NameEnumerator(this);
}

{
  *this = &unk_1F2D31F98;
  v2 = this + 4;
  std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  quasar::NameEnumerator::~NameEnumerator(this);
  MEMORY[0x1B8C85350]();
}

void quasar::DerivedEnumerator::createTokens(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = 0;
  v3 = 0uLL;
  v31 = 0u;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    v23 = 0;
    goto LABEL_50;
  }

  v24 = a3;
  do
  {
    v29 = 0uLL;
    v30 = 0;
    v7 = *(v4 + 23);
    if (v7 >= 0)
    {
      v8 = v4;
    }

    else
    {
      v8 = *v4;
    }

    if (v7 >= 0)
    {
      v9 = *(v4 + 23);
    }

    else
    {
      v9 = *(v4 + 8);
    }

    std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::from_bytes(a2, v8, (v8 + v9), &v27);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29);
    }

    v30 = v28;
    v29 = v27;
    LODWORD(v27) = 0;
    v26 = 0;
    v10 = HIBYTE(v28);
    if (v28 >= 0)
    {
      v11 = &v29;
    }

    else
    {
      v11 = v29;
    }

    if (v28 < 0)
    {
      v10 = *(&v29 + 1);
    }

    if (!v10)
    {
      v25 = 2;
LABEL_35:
      if (v27 > 0 || SHIDWORD(v26) >= 1)
      {
        v16 = 0;
        v25 = 0;
      }

      else
      {
        v16 = 2;
      }

      goto LABEL_39;
    }

    v12 = 0;
    v13 = 4 * v10;
    do
    {
      v14 = *v11;
      if (u_isalpha(*v11))
      {
        if (quasar::isCJK(v14))
        {
          LODWORD(v27) = v27 + 1;
        }

        else
        {
          ++HIDWORD(v26);
        }
      }

      else if (u_isWhitespace(v14))
      {
        ++v12;
      }

      else if (u_charType(v14) == 20 || v14 == 39 || v14 == 34)
      {
        LODWORD(v26) = v26 + 1;
      }

      ++v11;
      v13 -= 4;
    }

    while (v13);
    v25 = 2;
    if (v12 <= 0)
    {
      goto LABEL_35;
    }

    v15 = HIBYTE(v30);
    if (v30 < 0)
    {
      v15 = *(&v29 + 1);
    }

    if (v15 != v12)
    {
      goto LABEL_35;
    }

    v16 = 1;
    v25 = 1;
LABEL_39:
    v17 = *(&v31 + 1);
    if (*(&v31 + 1) >= v32)
    {
      v22 = std::vector<quasar::DerivedEnumerator::Token>::__emplace_back_slow_path<std::string const&,quasar::DerivedEnumerator::TokenType &,int &,int &,int &>(&v31, v4, &v25, &v27, &v26 + 1, &v26);
    }

    else
    {
      v19 = HIDWORD(v26);
      v18 = v27;
      v20 = v26;
      if (*(v4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(*(&v31 + 1), *v4, *(v4 + 8));
      }

      else
      {
        v21 = *v4;
        *(*(&v31 + 1) + 16) = *(v4 + 16);
        *v17 = v21;
      }

      *(v17 + 24) = v16;
      *(v17 + 28) = v18;
      v22 = v17 + 40;
      *(v17 + 32) = v19;
      *(v17 + 36) = v20;
    }

    *(&v31 + 1) = v22;
    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29);
    }

    v4 += 24;
  }

  while (v4 != v5);
  v3 = v31;
  v23 = v32;
  a3 = v24;
LABEL_50:
  *a3 = v3;
  *(a3 + 16) = v23;
  v32 = 0;
  v31 = 0uLL;
  *&v27 = &v31;
  std::vector<quasar::PhoneticMatchDecoderStat>::__destroy_vector::operator()[abi:ne200100](&v27);
}

void sub_1B54FF2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{
  *(v14 + 312) = v13;
  if (*(v15 - 137) < 0)
  {
    operator delete(*(v14 + 272));
  }

  *&a13 = v15 - 128;
  std::vector<quasar::PhoneticMatchDecoderStat>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void quasar::DerivedEnumerator::combineTokens(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
  if (v4 == *a1)
  {
    goto LABEL_19;
  }

  v7 = 0;
  v8 = v5 <= 1 ? 1 : 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
  v9 = (v3 + 24);
  v10 = -1;
  v11 = -1;
  do
  {
    v13 = *v9;
    v9 += 10;
    v12 = v13;
    if (v11 == -1 && v12 == 0)
    {
      v11 = v7;
    }

    if (!v12)
    {
      v10 = v7;
    }

    ++v7;
  }

  while (v8 != v7);
  if (v11 == -1 || v10 == -1)
  {
LABEL_19:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;

    std::vector<quasar::DerivedEnumerator::Token>::__init_with_size[abi:ne200100]<quasar::DerivedEnumerator::Token*,quasar::DerivedEnumerator::Token*>(a2, v3, v4, v5);
  }

  else
  {
    std::vector<int>::vector[abi:ne200100](v42, v5);
    v16 = a1[1] - *a1;
    v17 = 0xCCCCCCCCCCCCCCCDLL * (v16 >> 3);
    if (v16)
    {
      v18 = 0;
      v19 = v42[0];
      v20 = v11;
      if (v17 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v17;
      }

      v22 = (*a1 + 24);
      do
      {
        if (v18 > v20)
        {
          if (*v22)
          {
            v23 = v11;
          }

          else
          {
            v23 = v18;
          }

          if (*v22 == 1)
          {
            v11 = -1;
          }

          else
          {
            v11 = v23;
          }
        }

        v19[v18++] = v11;
        v22 += 10;
      }

      while (v21 != v18);
    }

    std::vector<int>::vector[abi:ne200100](__p, v17);
    v24 = *a1;
    v25 = a1[1];
    v26 = 0xCCCCCCCCCCCCCCCDLL * ((v25 - *a1) >> 3);
    if (v26 >= 1)
    {
      v27 = v26 & 0x7FFFFFFF;
      v28 = v10;
      v29 = __p[0] - 4;
      v30 = v24 + 10 * v27 - 4;
      do
      {
        if (v27 <= v28)
        {
          v31 = v27 - 1;
          if (*v30)
          {
            v31 = v10;
          }

          if (*v30 == 1)
          {
            v10 = -1;
          }

          else
          {
            v10 = v31;
          }
        }

        *&v29[4 * v27--] = v10;
        v30 -= 10;
      }

      while ((v27 + 1) > 1);
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    if (v25 != v24)
    {
      v32 = 0;
      v33 = 0;
      while (1)
      {
        v34 = v42[0];
        v35 = *(v42[0] + v33);
        if (v35 != -1)
        {
          v36 = __p[0];
          v37 = *(__p[0] + v33);
          if (v37 != -1 && v35 != v37)
          {
            *(v42[0] + v33) = -1;
            v36[v33] = -1;
          }
        }

        if (!v33)
        {
          goto LABEL_62;
        }

        v39 = v34[v33];
        if (v39 == -1 && *(__p[0] + v33) == -1)
        {
          break;
        }

        v40 = v34[v33 - 1];
        if (v40 == -1 && *(__p[0] + v33 - 1) == -1)
        {
          break;
        }

        if (v40 != v39 && *(__p[0] + v33 - 1) != *(__p[0] + v33))
        {
          v24 = (v24 + v32);
          goto LABEL_62;
        }

        quasar::DerivedEnumerator::Token::append((a2[1] - 40), (v24 + v32));
LABEL_63:
        ++v33;
        v24 = *a1;
        v32 += 40;
        if (0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) <= v33)
        {
          goto LABEL_64;
        }
      }

      v24 = (v24 + 40 * v33);
LABEL_62:
      std::vector<quasar::DerivedEnumerator::Token>::push_back[abi:ne200100](a2, v24);
      goto LABEL_63;
    }

LABEL_64:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v42[0])
    {
      v42[1] = v42[0];
      operator delete(v42[0]);
    }
  }
}

void sub_1B54FF6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::DerivedEnumerator::Token>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<quasar::DerivedEnumerator::Token>::__emplace_back_slow_path<quasar::DerivedEnumerator::Token const&>(a1, a2);
  }

  else
  {
    std::vector<quasar::DerivedEnumerator::Token>::__construct_one_at_end[abi:ne200100]<quasar::DerivedEnumerator::Token const&>(a1, a2);
    result = v3 + 40;
  }

  *(a1 + 8) = result;
  return result;
}

quasar::DerivedEnumerator::Token *quasar::DerivedEnumerator::Token::append(quasar::DerivedEnumerator::Token *this, const Token *data)
{
  v2 = data;
  size = data->tokenName.__rep_.__l.__size_;
  if (*(&data->tokenName.__rep_.__l + 23) >= 0)
  {
    v5 = *(&data->tokenName.__rep_.__l + 23);
  }

  else
  {
    data = data->tokenName.__rep_.__l.__data_;
    v5 = size;
  }

  std::string::append(this, data->tokenName.__rep_.__s.__data_, v5);
  *(this + 28) = vadd_s32(*(this + 28), *&v2->var1);
  *(this + 9) += HIDWORD(v2[1].tokenName.__rep_.__l.__data_);
  v6 = *(this + 6);
  if (!v6)
  {
    goto LABEL_9;
  }

  var0 = v2->var0;
  if (!var0)
  {
    v6 = 0;
    goto LABEL_9;
  }

  if (v6 != var0)
  {
    v6 = 2;
LABEL_9:
    *(this + 6) = v6;
  }

  return this;
}

uint64_t quasar::DerivedEnumerator::processOpenPunctuation(quasar::DerivedEnumerator::Token *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1) - *a1;
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0xCCCCCCCCCCCCCCCDLL * (v2 >> 3);
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  for (i = (v1 - 16); i[13] < 1; i += 10)
  {
    if (v5 == ++v3)
    {
      return 0;
    }
  }

  do
  {
    v9 = v3;
    if (v3-- < 1)
    {
      LODWORD(v3) = 0;
      goto LABEL_14;
    }

    v8 = *i;
    i -= 10;
  }

  while (v8 == 1);
  LODWORD(v3) = v3 + 1;
LABEL_14:
  v11 = v3;
  if (v4 <= v3)
  {
    v7 = 0;
  }

  else
  {
    LODWORD(v7) = 0;
    v12 = (v1 + 40 * (v9 & ~(v9 >> 63)) + 24);
    v3 = v3;
    do
    {
      v13 = *v12;
      v12 += 10;
      if (v13)
      {
        v7 = v7;
      }

      else
      {
        v7 = (v7 + 1);
      }

      ++v3;
    }

    while (v4 > v3);
  }

  std::vector<quasar::DerivedEnumerator::Token>::resize(a1, v11);
  return v7;
}

void std::vector<quasar::DerivedEnumerator::Token>::resize(quasar::DerivedEnumerator::Token *a1, unint64_t a2)
{
  v3 = *(a1 + 1);
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<quasar::DerivedEnumerator::Token>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 40 * a2;
    while (v3 != v7)
    {
      v8 = *(v3 - 17);
      v3 -= 5;
      if (v8 < 0)
      {
        operator delete(*v3);
      }
    }

    *(a1 + 1) = v7;
  }
}

void *quasar::DerivedEnumerator::SpokenTokens::SpokenTokens(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[3] = 0;
  v3 = (a1 + 3);
  a1[4] = 0;
  a1[5] = 0;
  v5 = *a1;
  v4 = a1[1];
  if (v4 != *a1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 24;
    do
    {
      if (!*(v5 + v8))
      {
        v9 = a1[5];
        if (v6 >= v9)
        {
          v10 = *v3;
          v11 = v6 - *v3;
          v12 = v11 >> 2;
          v13 = (v11 >> 2) + 1;
          if (v13 >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v14 = v9 - v10;
          if (v14 >> 1 > v13)
          {
            v13 = v14 >> 1;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v15 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(v3, v15);
          }

          *(4 * v12) = v7;
          v6 = (4 * v12 + 4);
          memcpy(0, v10, v11);
          v16 = a1[3];
          a1[3] = 0;
          a1[4] = v6;
          a1[5] = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          *v6 = v7;
          v6 += 4;
        }

        a1[4] = v6;
        v5 = *a1;
        v4 = a1[1];
      }

      ++v7;
      v8 += 40;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 3) > v7);
  }

  return a1;
}

void sub_1B54FFAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = *v11;
  if (*v11)
  {
    *(v10 + 32) = v13;
    operator delete(v13);
  }

  a10 = v10;
  std::vector<quasar::PhoneticMatchDecoderStat>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void quasar::DerivedEnumerator::SpokenTokens::slice(quasar::DerivedEnumerator::SpokenTokens *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  if ((a2 & 0x80000000) == 0)
  {
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    a3 = ((*(this + 4) - *(this + 3)) >> 2) + a3;
    if ((a2 & 0x80000000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_7;
  }

  a2 = ((*(this + 4) - *(this + 3)) >> 2) + a2;
  if ((a3 & 0x80000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((a2 & 0x80000000) != 0)
  {
    goto LABEL_25;
  }

LABEL_7:
  v6 = *(this + 3);
  v7 = (*(this + 4) - v6) >> 2;
  if (a2 >= v7 || a3 < 1 || a3 > v7 || a2 >= a3)
  {
LABEL_25:
    v17 = a2;
    v18 = a3;
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
    v24 = 0u;
    v25 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Index error: [", 14);
    v20 = MEMORY[0x1B8C84C00](v19, v17);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", ", 2);
    v22 = MEMORY[0x1B8C84C00](v21, v18);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v22, ")");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  v11 = *(v6 + 4 * a2);
  v12 = *(v6 + 4 * a3 - 4);
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  if (SBYTE7(v24) < 0)
  {
    std::string::__init_copy_ctor_external(a4, __p[0], __p[1]);
    v14 = SBYTE7(v24);
    a4[1].__r_.__value_.__r.__words[0] = 0;
    a4[1].__r_.__value_.__l.__size_ = 0;
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&a4->__r_.__value_.__l.__data_ = *__p;
    v13 = v24;
    a4[1].__r_.__value_.__r.__words[0] = 0;
    a4[1].__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = v13;
  }

  if (v11 <= v12)
  {
    v15 = 40 * v11;
    v16 = v12 - v11 + 1;
    do
    {
      quasar::DerivedEnumerator::Token::append(a4, (*this + v15));
      v15 += 40;
      --v16;
    }

    while (v16);
  }
}

void quasar::DerivedEnumerator::preprocessWord(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    while (*v7 != 64)
    {
      ++v7;
      if (!--v6)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    quasar::getWordBoundarySeparatedString(a2, v21);
    quasar::DerivedEnumerator::createTokens(v21, a1 + 80, v15);
    quasar::DerivedEnumerator::combineTokens(v15, v20);
    __p.__r_.__value_.__r.__words[0] = v15;
    std::vector<quasar::PhoneticMatchDecoderStat>::__destroy_vector::operator()[abi:ne200100](&__p);
    v8 = quasar::DerivedEnumerator::processOpenPunctuation(v20);
    if (*(a2 + 47) >= 0)
    {
      v9 = *(a2 + 47);
    }

    else
    {
      v9 = *(a2 + 32);
    }

    v10 = v18;
    std::string::basic_string[abi:ne200100](v18, v9 + 8);
    if (v19 < 0)
    {
      v10 = v18[0];
    }

    if (v9)
    {
      if (*(a2 + 47) >= 0)
      {
        v11 = (a2 + 24);
      }

      else
      {
        v11 = *(a2 + 24);
      }

      memmove(v10, v11, v9);
    }

    strcpy(v10 + v9, "-derived");
    quasar::DerivedEnumerator::SpokenTokens::SpokenTokens(v15, v20);
    if (v8 >= 1)
    {
      v12 = (v17 - v16) >> 2;
      if (v12 >= 1)
      {
        quasar::DerivedEnumerator::SpokenTokens::slice(v15, 0, v12, &__p);
        quasar::addDerivedWord(&__p, v18, a3, *(a2 + 48));
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    v13 = v16;
    if (((v17 - v16) >> 2) > 1)
    {
      (*(**(a1 + 272) + 16))(*(a1 + 272), v15, v18, a3, *(a2 + 48));
      v13 = v16;
    }

    if (v13)
    {
      v17 = v13;
      operator delete(v13);
    }

    __p.__r_.__value_.__r.__words[0] = v15;
    std::vector<quasar::PhoneticMatchDecoderStat>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    v15[0] = v20;
    std::vector<quasar::PhoneticMatchDecoderStat>::__destroy_vector::operator()[abi:ne200100](v15);
    v15[0] = v21;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v15);
  }
}

void sub_1B54FFF14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  quasar::DerivedEnumerator::SpokenTokens::~SpokenTokens(&a17);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  a17 = v28 - 96;
  std::vector<quasar::PhoneticMatchDecoderStat>::__destroy_vector::operator()[abi:ne200100](&a17);
  a17 = v28 - 72;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

uint64_t quasar::addDerivedWord(uint64_t result, uint64_t a2, uint64_t *a3, float a4)
{
  v6 = a4;
  if (*(result + 32) > 2 || (*(result + 28) - 2) <= 2)
  {
    v5 = a3[1];
    if (v5 >= a3[2])
    {
      result = std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string const&,std::string const&,float &>(a3, result, a2, &v6);
    }

    else
    {
      std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string const&,std::string const&,float &>(a3, a3[1], result, a2, &v6);
      result = v5 + 80;
      a3[1] = v5 + 80;
    }

    a3[1] = result;
  }

  return result;
}

void quasar::DerivedEnumerator::preprocess(uint64_t a1, uint64_t *a2)
{
  v28[0] = 0;
  v28[1] = 0;
  v27 = v28;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = *a2 + 24;
    do
    {
      std::pair<std::string,quasar::LmeDataFactoryBase::Word>::pair[abi:ne200100]<true,0>(&v21, v5, (v5 - 24));
      std::__tree<std::__value_type<std::string,quasar::LmeDataFactoryBase::Word>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::LmeDataFactoryBase::Word>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::LmeDataFactoryBase::Word>>>::__emplace_unique_key_args<std::string,std::pair<std::string,quasar::LmeDataFactoryBase::Word>>(&v27, &v21);
      v7 = v6;
      std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(v26, *(&v26[0] + 1));
      if (SBYTE7(v25) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v23) < 0)
      {
        operator delete(*(&v22 + 1));
      }

      if (SBYTE7(v22) < 0)
      {
        operator delete(v21);
      }

      if ((v7 & 1) == 0)
      {
        memset(v26, 0, sizeof(v26));
        *__p = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v21);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "Tag with multiple words: ", 26);
        v13 = *(v5 + 23);
        if (v13 >= 0)
        {
          v14 = v5;
        }

        else
        {
          v14 = *v5;
        }

        if (v13 >= 0)
        {
          v15 = *(v5 + 23);
        }

        else
        {
          v15 = *(v5 + 8);
        }

        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " for ", 7);
        v18 = quasar::operator<<(v17, v5 - 24);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "", 1);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v21);
      }

      v8 = v5 + 56;
      v5 += 80;
    }

    while (v8 != v4);
  }

  std::string::basic_string[abi:ne200100]<0>(&v21, "\\contact-first-phonetic");
  if (v28 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v27, &v21))
  {
    std::string::basic_string[abi:ne200100]<0>(v19, "\\contact-last-phonetic");
    v9 = v28 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v27, v19);
    if (v20 < 0)
    {
      operator delete(v19[0]);
    }
  }

  else
  {
    v9 = 0;
  }

  if (SBYTE7(v22) < 0)
  {
    operator delete(v21);
    if (!v9)
    {
      goto LABEL_27;
    }
  }

  else if (!v9)
  {
    goto LABEL_27;
  }

  std::string::basic_string[abi:ne200100]<0>(&v21, "\\contact-first");
  v10 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v27, &v21);
  if (SBYTE7(v22) < 0)
  {
    operator delete(v21);
  }

  if (v28 != v10)
  {
    quasar::DerivedEnumerator::preprocessWord(a1, (v10 + 7), a2);
  }

  std::string::basic_string[abi:ne200100]<0>(&v21, "\\contact-last");
  v11 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v27, &v21);
  if (SBYTE7(v22) < 0)
  {
    operator delete(v21);
  }

  if (v28 != v11)
  {
    quasar::DerivedEnumerator::preprocessWord(a1, (v11 + 7), a2);
  }

LABEL_27:
  std::__tree<std::__value_type<std::string,quasar::LmeDataFactoryBase::Word>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::LmeDataFactoryBase::Word>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::LmeDataFactoryBase::Word>>>::destroy(&v27, v28[0]);
}

void sub_1B5500338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::pair<std::string,quasar::LmeDataFactoryBase::Word>::~pair(va);
  JUMPOUT(0x1B5500344);
}

uint64_t quasar::DerivedEnumerator::addDerivedEnumerations(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(a3 + 23) >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = *(a3 + 8);
  }

  result = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a4, a2);
  v9 = result;
  if (v7)
  {
    result = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a4, a3);
    if (a4 + 8 != v9 && a4 + 8 != result)
    {
      v10 = *(v9 + 56);
      for (i = *(v9 + 64); v10 != i; v10 += 5)
      {
        v11 = *(result + 56);
        if (v11 != *(result + 64))
        {
          std::to_string(&v45, *(a1 + 280) * *(v10 + 12));
          if (*(v10 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v46, *v10, *(v10 + 1));
          }

          else
          {
            v12 = *v10;
            v46.__r_.__value_.__r.__words[2] = *(v10 + 2);
            *&v46.__r_.__value_.__l.__data_ = v12;
          }

          if (*(v11 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v47, *v11, *(v11 + 1));
          }

          else
          {
            v13 = *v11;
            v47.__r_.__value_.__r.__words[2] = *(v11 + 2);
            *&v47.__r_.__value_.__l.__data_ = v13;
          }

          v43 = &v45;
          v44 = 3;
          if (quasar::gLogLevel >= 6)
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
            v21 = " ";
            v22 = 1;
            quasar::join<std::initializer_list<std::string>>(&v43, &v21);
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
              v15 = v25;
            }

            else
            {
              v15 = v24;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, p_p, v15);
            if (v25 < 0)
            {
              operator delete(__p);
            }

            quasar::QuasarTraceMessage::~QuasarTraceMessage(&v26);
          }

          std::__tree<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>::__emplace_unique_impl<std::initializer_list<std::string>>();
        }
      }
    }
  }

  else if (a4 + 8 != result)
  {
    v16 = *(result + 56);
    if (v16 != *(result + 64))
    {
      std::to_string(&v45, *(a1 + 280) * *(v16 + 12));
      if (*(v16 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v46, *v16, *(v16 + 1));
      }

      else
      {
        v17 = *v16;
        v46.__r_.__value_.__r.__words[2] = *(v16 + 2);
        *&v46.__r_.__value_.__l.__data_ = v17;
      }

      v43 = &v45;
      v44 = 2;
      if (quasar::gLogLevel >= 6)
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
        v21 = " ";
        v22 = 1;
        quasar::join<std::initializer_list<std::string>>(&v43, &v21);
        if ((v25 & 0x80u) == 0)
        {
          v18 = &__p;
        }

        else
        {
          v18 = __p;
        }

        if ((v25 & 0x80u) == 0)
        {
          v19 = v25;
        }

        else
        {
          v19 = v24;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, v18, v19);
        if (v25 < 0)
        {
          operator delete(__p);
        }

        quasar::QuasarTraceMessage::~QuasarTraceMessage(&v26);
      }

      std::__tree<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>::__emplace_unique_impl<std::initializer_list<std::string>>();
    }
  }

  return result;
}

void sub_1B55006F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (*(v20 - 153) < 0)
  {
    operator delete(*(v20 - 176));
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::join<std::initializer_list<std::string>>(uint64_t *a1, uint64_t *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  quasar::joinToStream<std::initializer_list<std::string>>(&v7, a1, a2);
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

void sub_1B5500994(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B8C85200](v2 + 128);
  _Unwind_Resume(a1);
}

void quasar::DerivedEnumerator::addEnumerations(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (quasar::gLogLevel >= 6)
  {
    v6 = *a2;
    v7 = a2[1];
    if (*a2 != v7)
    {
      do
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "-derived");
        v8 = quasar::endsWith((v6 + 24), __p);
        if (SBYTE7(v18) < 0)
        {
          operator delete(__p[0]);
        }

        v9 = quasar::gLogLevel < 6 || v8;
        if ((v9 & 1) == 0)
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
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          quasar::operator<<(__p, v6);
          quasar::QuasarTraceMessage::~QuasarTraceMessage(__p);
        }

        v6 += 80;
      }

      while (v6 != v7);
    }
  }

  quasar::SimpleNameEnumerator::addEnumerations(a1, a2, a3);
  __p[1] = 0;
  *&v18 = 0;
  __p[0] = &__p[1];
  v10 = *a2;
  v11 = a2[1];
  if (*a2 != v11)
  {
    do
    {
      v34 = v10 + 24;
      v12 = std::__tree<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(__p, (v10 + 24));
      std::vector<quasar::LmeDataFactoryBase::Word>::push_back[abi:ne200100]((v12 + 56), v10);
      v10 += 80;
    }

    while (v10 != v11);
  }

  v13 = (*(**(a1 + 272) + 24))(*(a1 + 272));
  v14 = *v13;
  v15 = *(v13 + 8);
  while (v14 != v15)
  {
    v16 = v14 + 3;
    quasar::DerivedEnumerator::addDerivedEnumerations(a1, v14, (v14 + 3), __p);
    v14 = v16 + 3;
  }

  std::__tree<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::LmeDataFactoryBase::Word>>>>::destroy(__p, __p[1]);
}

void quasar::DerivedEnumerator::~DerivedEnumerator(quasar::DerivedEnumerator *this)
{
  quasar::DerivedEnumerator::~DerivedEnumerator(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D18E90;
  v2 = *(this + 34);
  *(this + 34) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::~wstring_convert(this + 80);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  *this = &unk_1F2D31F98;
  v3 = (this + 32);
  std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  quasar::NameEnumerator::~NameEnumerator(this);
}

uint64_t std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string const&,std::string const&,float &>(uint64_t *a1, uint64_t a2, uint64_t a3, float *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x333333333333333)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v8 = 0x333333333333333;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>>(a1, v8);
  }

  v15 = 0;
  v16 = 80 * v4;
  std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string const&,std::string const&,float &>(a1, 80 * v4, a2, a3, a4);
  v17 = 80 * v4 + 80;
  v9 = a1[1];
  v10 = 80 * v4 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(&v15);
  return v14;
}

void sub_1B5500D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string const&,std::string const&,float &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a3, *(a3 + 8));
  }

  else
  {
    v9 = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  quasar::LmeDataFactoryBase::Word::Word(a2, &v9, &__p, *a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1B5500E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::DerivedEnumerator::SpokenTokens::~SpokenTokens(quasar::DerivedEnumerator::SpokenTokens *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = this;
  std::vector<quasar::PhoneticMatchDecoderStat>::__destroy_vector::operator()[abi:ne200100](&v3);
}

std::string *std::pair<std::string,quasar::LmeDataFactoryBase::Word>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, __int128 *a3)
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

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v7 = *(a3 + 24);
    this[2].__r_.__value_.__r.__words[2] = *(a3 + 5);
    *&this[2].__r_.__value_.__l.__data_ = v7;
  }

  LODWORD(this[3].__r_.__value_.__l.__data_) = *(a3 + 12);
  std::map<std::pair<quasar::PronType,std::string>,float>::map[abi:ne200100](&this[3].__r_.__value_.__l.__size_, a3 + 56);
  return this;
}

void sub_1B5500F50(_Unwind_Exception *exception_object)
{
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

uint64_t std::pair<std::string,quasar::LmeDataFactoryBase::Word>::~pair(uint64_t a1)
{
  std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(a1 + 80, *(a1 + 88));
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

quasar::EnLikeAlgorithm *quasar::EnLikeAlgorithm::EnLikeAlgorithm(quasar::EnLikeAlgorithm *this)
{
  v10 = *MEMORY[0x1E69E9840];
  *this = &unk_1F2D18EF0;
  v2 = (this + 8);
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[23],char const(&)[1],0>(v6, "\\contact-first-derived", "");
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[22],char const(&)[1],0>(v7, "\\contact-last-derived", "");
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[23],char const(&)[14],0>(v8, "\\contact-first-derived", "\\contact-last");
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[15],char const(&)[22],0>(v9, "\\contact-first", "\\contact-last-derived");
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string> const*,std::pair<std::string,std::string> const*>(v2, v6, &v10, 4uLL);
  for (i = 0; i != -192; i -= 48)
  {
    v4 = &v6[i];
    if (v9[i + 47] < 0)
    {
      operator delete(v4[21]);
    }

    if (*(v4 + 167) < 0)
    {
      operator delete(v4[18]);
    }
  }

  return this;
}

void sub_1B550120C(_Unwind_Exception *a1)
{
  v3 = v1 + 144;
  v4 = -192;
  do
  {
    v3 = std::pair<std::string,std::string>::~pair(v3) - 48;
    v4 += 48;
  }

  while (v4);
  _Unwind_Resume(a1);
}

void quasar::EnLikeAlgorithm::~EnLikeAlgorithm(quasar::EnLikeAlgorithm *this)
{
  *this = &unk_1F2D18EF0;
  v1 = (this + 8);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_1F2D18EF0;
  v2 = (this + 8);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x1B8C85350](this, 0xA1C4030951706);
}

void quasar::EnLikeAlgorithm::addDerivedWords(int a1, quasar::DerivedEnumerator::SpokenTokens *this, float a3, uint64_t a4, uint64_t *a5)
{
  quasar::DerivedEnumerator::SpokenTokens::slice(this, 0, 1, &__p);
  quasar::addDerivedWord(&__p, a4, a5, a3);
  quasar::DerivedEnumerator::SpokenTokens::slice(this, 1, (*(this + 4) - *(this + 3)) >> 2, &v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v9;
  v12 = v10;
  quasar::addDerivedWord(&__p, a4, a5, a3);
  if (((*(this + 4) - *(this + 3)) >> 2) >= 3)
  {
    quasar::DerivedEnumerator::SpokenTokens::slice(this, 0, 0xFFFFFFFFLL, &v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v9;
    v12 = v10;
    quasar::addDerivedWord(&__p, a4, a5, a3);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B5501458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[23],char const(&)[1],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B55014BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[22],char const(&)[1],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B5501510(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[23],char const(&)[14],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B5501564(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[15],char const(&)[22],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B55015B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string> const*,std::pair<std::string,std::string> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::string,std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B550163C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string> const*,std::pair<std::string,std::string> const*,std::pair<std::string,std::string>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::pair<std::string,std::string>::pair[abi:ne200100](v4, v6);
      v6 += 3;
      v4 = v11 + 2;
      v11 += 2;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

quasar::ZhLikeAlgorithm *quasar::ZhLikeAlgorithm::ZhLikeAlgorithm(quasar::ZhLikeAlgorithm *this)
{
  v7 = *MEMORY[0x1E69E9840];
  *this = &unk_1F2D18F38;
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[23],char const(&)[1],0>(v5, "\\contact-first-derived", "");
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[22],char const(&)[1],0>(v6, "\\contact-last-derived", "");
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string> const*,std::pair<std::string,std::string> const*>(this + 8, v5, &v7, 2uLL);
  for (i = 0; i != -96; i -= 48)
  {
    v3 = &v5[i];
    if (v6[i + 47] < 0)
    {
      operator delete(v3[9]);
    }

    if (*(v3 + 71) < 0)
    {
      operator delete(v3[6]);
    }
  }

  return this;
}

void sub_1B5501804(_Unwind_Exception *a1)
{
  v3 = v1 + 48;
  v4 = -96;
  do
  {
    v3 = std::pair<std::string,std::string>::~pair(v3) - 48;
    v4 += 48;
  }

  while (v4);
  _Unwind_Resume(a1);
}

void quasar::ZhLikeAlgorithm::~ZhLikeAlgorithm(quasar::ZhLikeAlgorithm *this)
{
  *this = &unk_1F2D18F38;
  v1 = (this + 8);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_1F2D18F38;
  v2 = (this + 8);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x1B8C85350](this, 0xA1C4030951706);
}

void quasar::ZhLikeAlgorithm::addDerivedWords(int a1, quasar::DerivedEnumerator::SpokenTokens *this, float a3, uint64_t a4, uint64_t *a5)
{
  v9 = 1;
  do
  {
    if (v9 >= ((*(this + 4) - *(this + 3)) >> 2))
    {
      break;
    }

    quasar::DerivedEnumerator::SpokenTokens::slice(this, 0, v9, &__p);
    quasar::addDerivedWord(&__p, a4, a5, a3);
    v10 = v16;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v9 = (v9 + 1);
  }

  while (v10 < 4);
  v11 = -1;
  v12 = 1;
  do
  {
    v13 = (*(this + 4) - *(this + 3)) >> 2;
    if (v12 >= v13)
    {
      break;
    }

    quasar::DerivedEnumerator::SpokenTokens::slice(this, (v11 + v13), v13, &__p);
    quasar::addDerivedWord(&__p, a4, a5, a3);
    v14 = v16;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    --v11;
    ++v12;
  }

  while (v14 < 4);
}

void sub_1B5501A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::DerivedEnumerator::Token>::__emplace_back_slow_path<std::string const&,quasar::DerivedEnumerator::TokenType &,int &,int &,int &>(uint64_t a1, __int128 *a2, int *a3, int *a4, int *a5, int *a6)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v7 = v6 + 1;
  if (v6 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v7)
  {
    v7 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v10 = 0x666666666666666;
  }

  else
  {
    v10 = v7;
  }

  v20 = a1;
  if (v10)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::DerivedEnumerator::Token>>(a1, v10);
  }

  v17 = 0;
  v18 = 40 * v6;
  std::allocator<quasar::DerivedEnumerator::Token>::construct[abi:ne200100]<quasar::DerivedEnumerator::Token,std::string const&,quasar::DerivedEnumerator::TokenType &,int &,int &,int &>(a1, (40 * v6), a2, a3, a4, a5, a6);
  v19 = 40 * v6 + 40;
  v11 = *(a1 + 8);
  v12 = 40 * v6 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::DerivedEnumerator::Token>,quasar::DerivedEnumerator::Token*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<quasar::PhoneticMatchDecoderStat>::~__split_buffer(&v17);
  return v16;
}

void sub_1B5501B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::PhoneticMatchDecoderStat>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::DerivedEnumerator::Token>::construct[abi:ne200100]<quasar::DerivedEnumerator::Token,std::string const&,quasar::DerivedEnumerator::TokenType &,int &,int &,int &>(int a1, std::string *this, __int128 *a3, int *a4, int *a5, int *a6, int *a7)
{
  v8 = *a4;
  v9 = *a5;
  v10 = *a6;
  v11 = *a7;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a3, *(a3 + 1));
  }

  else
  {
    v12 = *a3;
    this->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this->__r_.__value_.__l.__data_ = v12;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = v8;
  HIDWORD(this[1].__r_.__value_.__r.__words[0]) = v9;
  LODWORD(this[1].__r_.__value_.__r.__words[1]) = v10;
  HIDWORD(this[1].__r_.__value_.__r.__words[1]) = v11;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::DerivedEnumerator::Token>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::DerivedEnumerator::Token>,quasar::DerivedEnumerator::Token*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 24);
      v6 = (v6 + 40);
      a4 += 40;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 40);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::DerivedEnumerator::Token>,quasar::DerivedEnumerator::Token*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::DerivedEnumerator::Token>,quasar::DerivedEnumerator::Token*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>,kaldi::quasar::ConfusionNetworkArcElement<std::string>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::vector<quasar::DerivedEnumerator::Token>::__init_with_size[abi:ne200100]<quasar::DerivedEnumerator::Token*,quasar::DerivedEnumerator::Token*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::DerivedEnumerator::Token>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5501DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::PhoneticMatchDecoderStat>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::DerivedEnumerator::Token>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::DerivedEnumerator::Token>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::DerivedEnumerator::Token>,quasar::DerivedEnumerator::Token*,quasar::DerivedEnumerator::Token*,quasar::DerivedEnumerator::Token*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      *&v4[1].__r_.__value_.__l.__data_ = *(v6 + 24);
      v6 = (v6 + 40);
      v4 = (v8 + 40);
      v13 = (v8 + 40);
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::DerivedEnumerator::Token>,quasar::DerivedEnumerator::Token*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

__n128 std::vector<quasar::DerivedEnumerator::Token>::__construct_one_at_end[abi:ne200100]<quasar::DerivedEnumerator::Token const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  result = *(a2 + 24);
  *(v4 + 24) = result;
  *(a1 + 8) = v4 + 40;
  return result;
}

uint64_t std::vector<quasar::DerivedEnumerator::Token>::__emplace_back_slow_path<quasar::DerivedEnumerator::Token const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::DerivedEnumerator::Token>>(a1, v6);
  }

  v7 = 40 * v2;
  v17 = 0;
  v18 = v7;
  v19 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
    v9 = v18;
    v10 = v19;
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
    v9 = v7;
    v10 = v7;
  }

  *(v7 + 24) = *(a2 + 24);
  *&v19 = v10 + 40;
  v11 = *(a1 + 8);
  v12 = v9 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::DerivedEnumerator::Token>,quasar::DerivedEnumerator::Token*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<quasar::PhoneticMatchDecoderStat>::~__split_buffer(&v17);
  return v16;
}

void sub_1B55020B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::PhoneticMatchDecoderStat>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

quasar::DerivedEnumerator::Token *std::vector<quasar::DerivedEnumerator::Token>::__append(quasar::DerivedEnumerator::Token *result, unint64_t a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = (v5 + 40 * a2);
      v11 = 40 * a2;
      do
      {
        result = quasar::DerivedEnumerator::Token::Token(v5);
        v5 = (v5 + 40);
        v11 -= 40;
      }

      while (v11);
      v5 = v10;
    }

    *(v3 + 8) = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    v23 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::DerivedEnumerator::Token>>(result, v9);
    }

    v12 = 40 * v6;
    v20 = 0;
    v21 = v12;
    v22 = v12;
    v13 = 5 * a2;
    v14 = (v12 + 40 * a2);
    v15 = 8 * v13;
    do
    {
      quasar::DerivedEnumerator::Token::Token(v12);
      v12 += 40;
      v15 -= 40;
    }

    while (v15);
    *&v22 = v14;
    v16 = *(v3 + 8);
    v17 = v21 + *v3 - v16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::DerivedEnumerator::Token>,quasar::DerivedEnumerator::Token*>(v3, *v3, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = *(v3 + 16);
    *(v3 + 8) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return std::__split_buffer<quasar::PhoneticMatchDecoderStat>::~__split_buffer(&v20);
  }

  return result;
}

void sub_1B5502238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::PhoneticMatchDecoderStat>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

quasar::DerivedEnumerator::Token *quasar::DerivedEnumerator::Token::Token(quasar::DerivedEnumerator::Token *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  if (SHIBYTE(v5) < 0)
  {
    std::string::__init_copy_ctor_external(this, __p[0], __p[1]);
    v2 = SHIBYTE(v5);
    *(this + 24) = xmmword_1B5B037A0;
    if (v2 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *this = *__p;
    *(this + 2) = v5;
    *(this + 24) = xmmword_1B5B037A0;
  }

  return this;
}

void sub_1B55022F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<std::string,quasar::LmeDataFactoryBase::Word>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::LmeDataFactoryBase::Word>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::LmeDataFactoryBase::Word>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,quasar::LmeDataFactoryBase::Word>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::LmeDataFactoryBase::Word>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::LmeDataFactoryBase::Word>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,quasar::LmeDataFactoryBase::Word>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::LmeDataFactoryBase::Word>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::LmeDataFactoryBase::Word>>>::destroy(a1, *(a2 + 1));
    std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy((a2 + 112), *(a2 + 15));
    if (a2[103] < 0)
    {
      operator delete(*(a2 + 10));
    }

    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,quasar::LmeDataFactoryBase::Word>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::LmeDataFactoryBase::Word>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::LmeDataFactoryBase::Word>>>::__emplace_unique_key_args<std::string,std::pair<std::string,quasar::LmeDataFactoryBase::Word>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::pair<std::string const,quasar::LmeDataFactoryBase::Word>::pair[abi:ne200100]<std::string,quasar::LmeDataFactoryBase::Word,0>(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v3 = *(a2 + 24);
  *(result + 40) = *(a2 + 5);
  *(result + 24) = v3;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v4 = a2[3];
  *(result + 64) = *(a2 + 8);
  *(result + 48) = v4;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  v5 = *(a2 + 18);
  *(result + 80) = *(a2 + 10);
  v6 = a2 + 11;
  v7 = *(a2 + 11);
  *(result + 72) = v5;
  *(result + 88) = v7;
  v8 = result + 88;
  v9 = *(a2 + 12);
  *(result + 96) = v9;
  if (v9)
  {
    *(v7 + 16) = v8;
    *(a2 + 10) = v6;
    *v6 = 0;
    *(a2 + 12) = 0;
  }

  else
  {
    *(result + 80) = v8;
  }

  return result;
}

void *quasar::joinToStream<std::initializer_list<std::string>>(void *result, uint64_t *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v5 = result;
    v6 = *a2;
    v7 = 24 * v3;
    v8 = 1;
    do
    {
      if ((v8 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, *a3, a3[1]);
      }

      v9 = *(v6 + 23);
      if (v9 >= 0)
      {
        v10 = v6;
      }

      else
      {
        v10 = *v6;
      }

      if (v9 >= 0)
      {
        v11 = *(v6 + 23);
      }

      else
      {
        v11 = *(v6 + 8);
      }

      result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v10, v11);
      v8 = 0;
      v6 += 24;
      v7 -= 24;
    }

    while (v7);
  }

  return result;
}

void sub_1B55025EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **__p, uint64_t a10)
{
  if (__p)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::vector<std::string>,void *>>>::operator()[abi:ne200100](&a10, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5502694(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::vector<std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t TEnvManager::TEnvManager(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *a1 = &unk_1F2D24588;
  *(a1 + 8) = a3;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "");
  *a1 = &unk_1F2D18F80;
  *(a1 + 48) = *a2;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t TEnvManager::open(uint64_t this)
{
  if (*(this + 40) != 1)
  {
    tknPrintf("Error: loading from file is not supported.\n");
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    TException::TException(v5, __p);
    v5[0].__vftable = &unk_1F2D18FF0;
    if (v6 >= 0)
    {
      v1 = &v5[1];
    }

    else
    {
      v1 = v5[1].__vftable;
    }

    conditionalAssert(v1, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/envmgr.cpp", 47);
    TException::~TException(v5);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v5, "");
    TException::TException(exception, v5);
    *exception = &unk_1F2D18FF0;
  }

  return this;
}

void sub_1B5502858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void *TEnvManager::getVar(TEnvManager *this, const char *a2, char *a3, unint64_t a4)
{
  if (((*(*this + 32))(this) & 1) == 0)
  {
    (*(*this + 16))(this);
  }

  return SDEnv_GetData(this + 48, a2, a3, a4);
}

void TEnvManager::~TEnvManager(void **this)
{
  *this = &unk_1F2D24588;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_1F2D24588;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D18F80;
  off_1F2D18F98(this);
  *this = &unk_1F2D24588;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void TIOException::~TIOException(std::exception *this)
{
  TException::~TException(this);

  JUMPOUT(0x1B8C85350);
}

void MBRDecoder::MBRDecoder(uint64_t a1, int a2)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 176) = 0;
  *a1 = a2;
  operator new();
}

void sub_1B5502ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  MEMORY[0x1B8C85350](v19, 0xA1C40BD48D6D6);
  v21 = *v18;
  if (*v18)
  {
    v15[21] = v21;
    operator delete(v21);
  }

  v22 = v15[17];
  if (v22)
  {
    v15[18] = v22;
    operator delete(v22);
  }

  v23 = *v17;
  if (*v17)
  {
    v15[15] = v23;
    operator delete(v23);
  }

  v24 = v15[11];
  if (v24)
  {
    v15[12] = v24;
    operator delete(v24);
  }

  std::vector<std::set<std::vector<int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v25 = *v16;
  if (*v16)
  {
    v15[3] = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void fst::Relabel<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 112))(a1);
  v7 = (*(*a1 + 120))(a1);

  fst::Relabel<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(a1, v6, a2, 1, v7, a3, 1);
}

void MBRDecoder::_alpha_normalize(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 8) + 72) - *(*(a2 + 8) + 64);
  if ((v4 >> 3) >= 1)
  {
    v5 = 0;
    v6 = (v4 >> 3) & 0x7FFFFFFF;
    do
    {
      v15 = &unk_1F2D04D48;
      v18 = 0;
      fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::MutateCheck(a2);
      v7 = *(a2 + 8);
      v8 = *(*(v7 + 64) + 8 * v5);
      v16 = v8;
      v17 = v7 + 8;
      for (i = v18; ; i = ++v18)
      {
        v11 = v8 + 24;
        v10 = *(v8 + 24);
        if (i >= (*(v11 + 8) - v10) >> 4)
        {
          break;
        }

        v14 = *(v10 + 16 * i);
        v14.n128_f32[2] = v14.n128_f32[2] * *(a1 + 12);
        fst::MutableArcIterator<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::SetValue(&v15, &v14);
        v8 = v16;
      }

      ++v5;
    }

    while (v5 != v6);
  }

  fst::Push<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::ReweightType)1>(a2, *(a1 + 48), 1);
  v12 = (*(*(*(a1 + 48) + 8) + 72) - *(*(*(a1 + 48) + 8) + 64)) >> 3;
  if (v12 >= 1)
  {
    v13 = 0;
    do
    {
      LODWORD(v15) = (*(**(a1 + 48) + 32))(*(a1 + 48), v13);
      v14.n128_u32[0] = 2139095040;
      if (*&v15 != INFINITY)
      {
        (*(**(a1 + 48) + 184))(*(a1 + 48), v13, 0.0);
      }

      v13 = (v13 + 1);
    }

    while (v12 != v13);
  }
}

void std::vector<std::set<std::vector<int>>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::set<std::vector<int>>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      do
      {
        v8 = v3 - 24;
        std::__tree<std::vector<int>>::destroy(v3 - 24, *(v3 - 16));
        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void MBRDecoder::build_decoder(MBRDecoder *this)
{
  v2 = *(this + 6);
  v3 = *(this + 7);
  v4 = 0;
  fst::ArcMap<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::WeightConvertMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(v2, v3);
  MBRDecoder::count_ngrams();
}

void sub_1B55033CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5503BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(&a9);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(&__p);
  fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(&a11);
  _Unwind_Resume(a1);
}

void MBRDecoder::extract_ngrams(unsigned int *a1, int a2, uint64_t *a3)
{
  v6 = a3[1];
  v7 = *a3;
  v8 = v6 - *a3;
  if (v6 != *a3 && (v8 & 0x200000000) == 0)
  {
    v9 = (v8 >> 2) & 0x7FFFFFFF;
    v10 = v9 + 1;
    do
    {
      v11 = (v6 - v7) >> 2;
      if (v11 > v9)
      {
        v12 = v10;
        v13 = v9;
        do
        {
          v14 = *(a1 + 8) + 24 * v11 + 24 * ~v13;
          __p = 0;
          v27 = 0;
          v28 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(&__p, v7 + 4 * v13, v6, (v6 - (v7 + 4 * v13)) >> 2);
          std::__tree<std::vector<int>>::__emplace_unique_key_args<std::vector<int>,std::vector<int>>(v14, &__p);
          if (__p)
          {
            v27 = __p;
            operator delete(__p);
          }

          v13 = v12;
          v7 = *a3;
          v6 = a3[1];
          v11 = (v6 - *a3) >> 2;
          v15 = v11 > v12++;
        }

        while (v15);
      }

      --v10;
      v15 = v9-- <= 0;
    }

    while (!v15);
  }

  if (*a1 <= ((v6 - v7) >> 2))
  {
    v16 = v6 - (v7 + 4);
    if (v6 != v7 + 4)
    {
      memmove(v7, (v7 + 4), v6 - (v7 + 4));
    }

    a3[1] = v7 + v16;
  }

  v17 = *(*(*(*(a1 + 7) + 8) + 64) + 8 * a2);
  v19 = *(v17 + 24);
  v18 = *(v17 + 32);
  if (v18 == v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(v17 + 24);
  }

  if (v18 != v19)
  {
    if (((v18 - v19) >> 4) <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = (v18 - v19) >> 4;
    }

    do
    {
      __p = 0;
      v27 = 0;
      v28 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *a3, a3[1], (a3[1] - *a3) >> 2);
      std::vector<int>::push_back[abi:ne200100](&__p, v20);
      v22 = v20[3];
      v23 = 0;
      v24 = 0;
      v25 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v23, __p, v27, (v27 - __p) >> 2);
      MBRDecoder::extract_ngrams(a1, v22, &v23);
      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      if (__p)
      {
        v27 = __p;
        operator delete(__p);
      }

      v20 += 4;
      --v21;
    }

    while (v21);
  }
}

void sub_1B5503E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MBRDecoder::build_ngram_cd_fsts(MBRDecoder *this)
{
  v29 = 0;
  if (*(this + 9) != *(this + 8))
  {
    v2 = 0;
    do
    {
      v3 = *(*(this + 11) + 8 * v2);
      (*(*v3 + 200))(v3);
      v4 = *(*(this + 11) + 8 * v29);
      (*(*v4 + 176))(v4, 0);
      v5 = 0;
      v6 = *(this + 8);
      do
      {
        v7 = v5;
        v8 = (v6 + 24 * v5);
        v9 = *v8;
        if (*v8 != v8 + 1)
        {
          do
          {
            v10 = v9[4];
            v11 = v9[5];
            memset(&v28, 0, sizeof(v28));
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v28, v10, v11, (v11 - v10) >> 2);
            v12 = *(*(this + 11) + 8 * v29);
            v13 = (*(*v12 + 24))(v12);
            __p = 0;
            v26 = 0;
            v27 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_, (v28.__r_.__value_.__l.__size_ - v28.__r_.__value_.__r.__words[0]) >> 2);
            MBRDecoder::add_ngram(this, v12, v13, &__p, v9 + 4, v7 == v29);
            if (__p)
            {
              v26 = __p;
              operator delete(__p);
            }

            if (v28.__r_.__value_.__r.__words[0])
            {
              v28.__r_.__value_.__l.__size_ = v28.__r_.__value_.__r.__words[0];
              operator delete(v28.__r_.__value_.__l.__data_);
            }

            v14 = v9[1];
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
                v15 = v9[2];
                v16 = *v15 == v9;
                v9 = v15;
              }

              while (!v16);
            }

            v6 = *(this + 8);
            v9 = v15;
          }

          while (v15 != (v6 + 24 * v7 + 8));
        }

        v5 = v7 + 1;
      }

      while (v7 + 1 <= v29);
      MBRDecoder::connect_ngram_cd_fst(this, *(*(this + 11) + 8 * v29), v29);
      to_string<unsigned int>(&v29);
      v17 = std::string::insert(&v24, 0, "mapper-cd-");
      v18 = *&v17->__r_.__value_.__l.__data_;
      v28.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v28.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      v19 = std::string::append(&v28, ".fst");
      v20 = v19->__r_.__value_.__r.__words[0];
      v21 = SHIBYTE(v19->__r_.__value_.__r.__words[2]);
      v19->__r_.__value_.__r.__words[0] = 0;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      v22 = *(*(this + 11) + 8 * v29);
      (*(*v22 + 280))(v22, *(this + 5));
      v23 = *(*(this + 11) + 8 * v29);
      (*(*v23 + 288))(v23, *(this + 5));
      if (v21 < 0)
      {
        operator delete(v20);
      }

      v2 = ++v29;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(this + 9) - *(this + 8)) >> 3) > v29);
  }
}

void sub_1B55041EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void MBRDecoder::build_right_pathcounters(MBRDecoder *this)
{
  v31 = 0;
  if (*(this + 9) != *(this + 8))
  {
    v2 = 0;
    do
    {
      v3 = *(*(this + 14) + 8 * v2);
      (*(*v3 + 200))(v3);
      v4 = *(*(this + 14) + 8 * v31);
      (*(*v4 + 176))(v4, 0);
      v5 = *(*(this + 14) + 8 * v31);
      *&__p.__r_.__value_.__l.__data_ = xmmword_1B5B03860;
      (*(*v5 + 208))(v5, 0, &__p);
      v6 = v31;
      v7 = (*(this + 8) + 24 * v31);
      v8 = *v7;
      if (*v7 != v7 + 1)
      {
        do
        {
          v9 = *(*(this + 14) + 8 * v6);
          v10 = (*(*v9 + 200))(v9);
          v11 = *(*(this + 14) + 8 * v31);
          v12 = (*(*v11 + 200))(v11);
          v13 = *(this + 5);
          MBRDecoder::_vec_to_string(this, v8 + 4, &__p);
          v14 = (*(*v13 + 96))(v13, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v15 = *(*(this + 14) + 8 * v31);
          LODWORD(__p.__r_.__value_.__l.__data_) = v14;
          *(__p.__r_.__value_.__r.__words + 4) = v14;
          HIDWORD(__p.__r_.__value_.__r.__words[1]) = v10;
          (*(*v15 + 208))(v15, 0, &__p);
          v16 = *(*(this + 14) + 8 * v31);
          (*(*v16 + 184))(v16, v10, 0.0);
          v17 = *(*(this + 14) + 8 * v31);
          __p.__r_.__value_.__r.__words[0] = 2;
          LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
          HIDWORD(__p.__r_.__value_.__r.__words[1]) = v10;
          (*(*v17 + 208))(v17, v10, &__p);
          v18 = *(*(this + 14) + 8 * v31);
          __p.__r_.__value_.__r.__words[0] = v14;
          LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
          HIDWORD(__p.__r_.__value_.__r.__words[1]) = v12;
          (*(*v18 + 208))(v18, v10, &__p);
          v19 = v8[1];
          if (v19)
          {
            do
            {
              v20 = v19;
              v19 = *v19;
            }

            while (v19);
          }

          else
          {
            do
            {
              v20 = v8[2];
              v21 = *v20 == v8;
              v8 = v20;
            }

            while (!v21);
          }

          v6 = v31;
          v8 = v20;
        }

        while (v20 != (*(this + 8) + 24 * v31 + 8));
      }

      to_string<unsigned int>(&v31);
      v22 = std::string::insert(&v29, 0, "rpathcounter-");
      v23 = *&v22->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      v24 = std::string::append(&__p, ".fst");
      v25 = v24->__r_.__value_.__r.__words[0];
      v26 = SHIBYTE(v24->__r_.__value_.__r.__words[2]);
      v24->__r_.__value_.__r.__words[0] = 0;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      v27 = *(*(this + 14) + 8 * v31);
      (*(*v27 + 280))(v27, *(this + 5));
      v28 = *(*(this + 14) + 8 * v31);
      (*(*v28 + 288))(v28, *(this + 5));
      if (v26 < 0)
      {
        operator delete(v25);
      }

      v2 = ++v31;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(this + 9) - *(this + 8)) >> 3) > v31);
  }
}

void sub_1B55046B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MBRDecoder::build_decoders(MBRDecoder *this)
{
  fst::ArcSort<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(*(this + 6));
  (*(**(this + 6) + 280))(*(this + 6), *(this + 5));
  result = (*(**(this + 6) + 288))();
  v9 = 0;
  if (*this >= 1)
  {
    fst::ArcSort<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ILabelCompare<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(**(this + 11));
    (*(**(*(this + 11) + 8 * v9) + 280))();
    (*(**(*(this + 11) + 8 * v9) + 288))();
    v3 = *(*(this + 11) + 8 * v9);
    v4 = *(this + 6);
    v5 = *(*(this + 17) + 8 * v9);
    v8.__r_.__value_.__s.__data_[0] = 1;
    HIDWORD(v8.__r_.__value_.__r.__words[0]) = 0;
    fst::Compose<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(v4, v3, v5, &v8);
    v6 = *(*(this + 17) + 8 * v9);
    LODWORD(v8.__r_.__value_.__l.__data_) = 2;
    fst::ArcMap<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ProjectMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(v6, &v8);
    v7 = (*(*v6 + 120))(v6);
    (*(*v6 + 280))(v6, v7);
    fst::RmEpsilon<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(*(*(this + 17) + 8 * v9));
  }

  return result;
}

void sub_1B5504AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MBRDecoder::decode(MBRDecoder *this)
{
  v2 = *(this + 6);
  v3 = *(*(v2 + 8) + 72) - *(*(v2 + 8) + 64);
  if ((v3 >> 3) >= 1)
  {
    v4 = 0;
    v5 = (v3 >> 3) & 0x7FFFFFFF;
    do
    {
      v6 = *(this + 6);
      v26 = &unk_1F2D04D48;
      v29 = 0;
      fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::MutateCheck(v6);
      v7 = *(v6 + 8);
      v8 = *(*(v7 + 64) + 8 * v4);
      v27 = v8;
      v28 = v7 + 8;
      for (i = v29; ; i = ++v29)
      {
        v11 = v8 + 24;
        v10 = *(v8 + 24);
        if (i >= (*(v11 + 8) - v10) >> 4)
        {
          break;
        }

        v25 = *(v10 + 16 * i);
        v25.n128_u32[2] = **(this + 2);
        fst::MutableArcIterator<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::SetValue(&v26, &v25);
        v8 = v27;
      }

      ++v4;
    }

    while (v4 != v5);
    v2 = *(this + 6);
  }

  fst::ArcSort<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(v2);
  v12 = *(this + 6);
  v13 = **(this + 11);
  v14 = **(this + 20);
  LOBYTE(v26) = 1;
  HIDWORD(v26) = 0;
  fst::Compose<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(v12, v13, v14, &v26);
  v15 = **(this + 20);
  LODWORD(v26) = 1;
  fst::ArcMap<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ProjectMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(v15, &v26);
  v16 = (*(*v15 + 112))(v15);
  (*(*v15 + 288))(v15, v16);
  fst::ArcSort<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(**(this + 20));
  if (*this > 1)
  {
    v17 = 0;
    do
    {
      v18 = (*(this + 20) + 8 * v17);
      v19 = *(*(this + 11) + 8 * v17 + 8);
      v20 = *v18;
      v21 = v18[1];
      LOBYTE(v26) = 1;
      HIDWORD(v26) = 0;
      fst::Compose<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(v20, v19, v21, &v26);
      v22 = *(*(this + 20) + 8 * v17 + 8);
      LODWORD(v26) = 1;
      fst::ArcMap<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ProjectMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(v22, &v26);
      v23 = (*(*v22 + 112))(v22);
      (*(*v22 + 288))(v22, v23);
      fst::ArcSort<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(*(*(this + 20) + 8 * v17 + 8));
      v24 = v17 + 2;
      ++v17;
    }

    while (v24 < *this);
  }
}

void fst::ArcSort<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(uint64_t a1)
{
  v1[0] = a1;
  v1[1] = &v4;
  *__p = 0u;
  v3 = 0u;
  fst::StateMap<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcSortMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(a1, v1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1B5504DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::Compose<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 4);
  if (v4 <= 1)
  {
    if (!v4)
    {
      fst::ComposeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::CreateBase(result, a2);
    }

    if (v4 == 1)
    {
      fst::ComposeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::CreateBase2<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>();
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        fst::ComposeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::CreateBase2<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>();
      case 3:
        fst::ComposeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::CreateBase2<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>();
      case 4:
        fst::ComposeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::CreateBase2<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>();
    }
  }

  if (*a4 == 1)
  {
    fst::Connect<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(a3);
  }

  return result;
}

uint64_t fst::Push<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::ReweightType)1>(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 3) == 1)
  {
    (*(*a2 + 168))(a2, a1);

    fst::Push<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(a2, 1);
  }

  if ((a3 & 2) != 0)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::VectorFst();
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

void sub_1B55054A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::~ImplToFst(&a19);
  fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ImplToFst(&__p);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::~ImplToFst((v29 - 128));
  __p = (v29 - 112);
  std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void sub_1B5505558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  fst::LogMessage::~LogMessage(va);
  JUMPOUT(0x1B5505564);
}

void fst::ArcSort<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ILabelCompare<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(uint64_t a1)
{
  v1[0] = a1;
  v1[1] = &v4;
  *__p = 0u;
  v3 = 0u;
  fst::StateMap<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcSortMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ILabelCompare<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(a1, v1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1B55055C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::RmEpsilon<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::EpsilonArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(v1, a1);
}

void sub_1B5505690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  fst::AutoQueue<int>::~AutoQueue(va);
  v7 = *(v5 - 72);
  if (v7)
  {
    *(v5 - 64) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t to_string<int>(unsigned int *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  MEMORY[0x1B8C84C00](&v5, *a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x1E69E54D8];
  v2 = *(MEMORY[0x1E69E54D8] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v5 = v2;
  v6 = MEMORY[0x1E69E5548] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v9);
}

void sub_1B5505848(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void sub_1B5505F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  if (v39 < 0)
  {
    operator delete(v38);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a38)
  {
    free(a38);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ImplToFst((v40 - 144));
  _Unwind_Resume(a1);
}

void sub_1B5506114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MBRDecoder::_vec_to_string(uint64_t a1@<X0>, void *a2@<X1>, std::string *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a3, "");
  if (a2[1] != *a2)
  {
    v6 = 1;
    do
    {
      (*(**(a1 + 40) + 88))(__p);
      if ((v11 & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if ((v11 & 0x80u) == 0)
      {
        v8 = v11;
      }

      else
      {
        v8 = __p[1];
      }

      std::string::append(a3, v7, v8);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      v9 = v6++;
    }

    while (v9 < (a2[1] - *a2) >> 2);
  }
}

void sub_1B5506210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t to_string<unsigned int>(unsigned int *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  MEMORY[0x1B8C84C10](&v5, *a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x1E69E54D8];
  v2 = *(MEMORY[0x1E69E54D8] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v5 = v2;
  v6 = MEMORY[0x1E69E5548] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v9);
}

void sub_1B55063D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void MBRDecoder::add_ngram(uint64_t a1, void *a2, uint64_t a3, void **a4, void *a5, uint64_t a6)
{
  if (a4[1] != *a4)
  {
    v9 = a3;
    v12 = *(*(*(a2[1] + 64) + 8 * a3) + 32) - *(*(*(a2[1] + 64) + 8 * a3) + 24);
    v13 = v12 ? *(*(*(a2[1] + 64) + 8 * a3) + 24) : 0;
    if (!v12)
    {
      goto LABEL_17;
    }

    v34 = a3;
    v14 = 0;
    v15 = v12 >> 4;
    v16 = v15 <= 1 ? 1 : v15;
    do
    {
      v17 = *a4;
      if (*v13 == **a4)
      {
        v18 = v13[3];
        v19 = a4[1];
        v20 = v19 - (v17 + 4);
        if (v19 != v17 + 4)
        {
          memmove(*a4, v17 + 4, v19 - (v17 + 4));
        }

        v21 = *a4;
        a4[1] = &v17[v20];
        v41 = 0;
        v42 = 0;
        __p = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v21, &v17[v20], (&v17[v20] - v21) >> 2);
        MBRDecoder::add_ngram(a1, a2, v18, &__p, a5, a6);
        if (__p)
        {
          v41 = __p;
          operator delete(__p);
        }

        v14 = 1;
      }

      v13 += 4;
      --v16;
    }

    while (v16);
    v9 = v34;
    if ((v14 & 1) == 0)
    {
LABEL_17:
      v22 = (*(*a2 + 200))(a2);
      v23 = v22;
      v24 = *a4;
      v25 = a4[1] - *a4;
      if (v25 == 4)
      {
        if (a6)
        {
          v26 = *v24;
          v27 = *(a1 + 40);
          MBRDecoder::_vec_to_string(a1, a5, &v38);
          v28 = (*(*v27 + 32))(v27, &v38);
          v39[0] = v26;
          v39[1] = v28;
          v39[2] = 0;
          v39[3] = v23;
          (*(*a2 + 208))(a2, v9, v39);
          if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v38.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v38.__r_.__value_.__r.__words[0] = *v24;
          LODWORD(v38.__r_.__value_.__r.__words[1]) = 0;
          HIDWORD(v38.__r_.__value_.__r.__words[1]) = v22;
          (*(*a2 + 208))(a2, v9, &v38);
        }

        (*(*a2 + 184))(a2, v23, 0.0);
      }

      else if (v25 >= 5)
      {
        v38.__r_.__value_.__r.__words[0] = *v24;
        LODWORD(v38.__r_.__value_.__r.__words[1]) = 0;
        HIDWORD(v38.__r_.__value_.__r.__words[1]) = v22;
        (*(*a2 + 208))(a2, v9, &v38);
        (*(*a2 + 184))(a2, v23, 0.0);
        v30 = *a4;
        v29 = a4[1];
        v31 = (*a4 + 4);
        v32 = v29 - v31;
        if (v29 != v31)
        {
          memmove(*a4, v31, v29 - v31);
        }

        v33 = *a4;
        a4[1] = &v30[v32];
        v36 = 0;
        v37 = 0;
        v35 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v35, v33, &v30[v32], (&v30[v32] - v33) >> 2);
        MBRDecoder::add_ngram(a1, a2, v23, &v35, a5, a6);
        if (v35)
        {
          v36 = v35;
          operator delete(v35);
        }
      }
    }
  }
}

void sub_1B5506748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MBRDecoder::connect_ngram_cd_fst(uint64_t a1, unint64_t a2, int a3)
{
  v3 = (*(a1 + 64) + 24 * a3);
  v4 = *v3;
  if (*v3 != v3 + 1)
  {
    do
    {
      v41 = 0;
      v42 = 0;
      v43 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v41, v4[4], v4[5], (v4[5] - v4[4]) >> 2);
      v8 = (*(*a2 + 24))(a2);
      __p = 0;
      v39 = 0;
      v40 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v41, v42, (v42 - v41) >> 2);
      MBRDecoder::_get_arc(a1, a2, v8, &__p);
      v10 = v9;
      if (__p)
      {
        v39 = __p;
        operator delete(__p);
      }

      v11 = v41;
      v12 = v42 - (v41 + 4);
      if (v42 != v41 + 4)
      {
        memmove(v41, v41 + 4, v42 - (v41 + 4));
      }

      v42 = &v11[v12];
      v13 = *(a1 + 64);
      v14 = *v13;
      if (*v13 != v13 + 1)
      {
        v15 = HIDWORD(v10);
        do
        {
          MBRDecoder::_vec_to_string(a1, &v41, &v35);
          if (v14[5] == v14[4])
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          (*(**(a1 + 40) + 88))(v33);
          if ((v34 & 0x80u) == 0)
          {
            v16 = v33;
          }

          else
          {
            v16 = v33[0];
          }

          if ((v34 & 0x80u) == 0)
          {
            v17 = v34;
          }

          else
          {
            v17 = v33[1];
          }

          v18 = std::string::append(&v35, v16, v17);
          v19 = *&v18->__r_.__value_.__l.__data_;
          v37 = v18->__r_.__value_.__r.__words[2];
          *v36 = v19;
          v18->__r_.__value_.__l.__size_ = 0;
          v18->__r_.__value_.__r.__words[2] = 0;
          v18->__r_.__value_.__r.__words[0] = 0;
          if (v34 < 0)
          {
            operator delete(v33[0]);
          }

          if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v35.__r_.__value_.__l.__data_);
          }

          if ((*(**(a1 + 40) + 96))(*(a1 + 40), v36) != -1)
          {
            v20 = v14[4];
            if (v14[5] == v20)
            {
              std::vector<int>::__throw_out_of_range[abi:ne200100]();
            }

            std::vector<int>::push_back[abi:ne200100](&v41, v20);
            v21 = (*(*a2 + 24))(a2);
            v30 = 0;
            v31 = 0;
            v32 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v30, v41, v42, (v42 - v41) >> 2);
            arc = MBRDecoder::_get_arc(a1, a2, v21, &v30);
            v24 = v23;
            if (v30)
            {
              v31 = v30;
              operator delete(v30);
            }

            LODWORD(v35.__r_.__value_.__l.__data_) = v24;
            LODWORD(v33[0]) = 2139095040;
            if (*&v24 != INFINITY)
            {
              v35.__r_.__value_.__r.__words[0] = arc;
              LODWORD(v35.__r_.__value_.__r.__words[1]) = 0;
              HIDWORD(v35.__r_.__value_.__r.__words[1]) = HIDWORD(v24);
              (*(*a2 + 208))(a2, v15, &v35, *&v24);
            }

            v42 -= 4;
          }

          if (SHIBYTE(v37) < 0)
          {
            operator delete(v36[0]);
          }

          v25 = v14[1];
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = v14[2];
              v27 = *v26 == v14;
              v14 = v26;
            }

            while (!v27);
          }

          v14 = v26;
        }

        while (v26 != (*(a1 + 64) + 8));
      }

      if (v41)
      {
        v42 = v41;
        operator delete(v41);
      }

      v28 = v4[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v4[2];
          v27 = *v29 == v4;
          v4 = v29;
        }

        while (!v27);
      }

      v4 = v29;
    }

    while (v29 != (*(a1 + 64) + 24 * a3 + 8));
  }
}

void sub_1B5506B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  v34 = *(v32 - 112);
  if (v34)
  {
    *(v32 - 104) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(exception_object);
}

unint64_t MBRDecoder::_get_arc(uint64_t a1, unint64_t a2, int a3, char **a4)
{
  v4 = a2;
  v6 = *a4;
  v5 = a4[1];
  v7 = v5 - *a4;
  if (v7 == 4)
  {
    v8 = *(*(*(a2 + 8) + 64) + 8 * a3);
    v10 = *(v8 + 24);
    v9 = *(v8 + 32);
    v12 = v9 - v10;
    v11 = v9 == v10;
    if (v9 == v10)
    {
      v13 = 0;
    }

    else
    {
      v13 = v10;
    }

    if (!v11)
    {
      v14 = v12 >> 4;
      if ((v12 >> 4) <= 1)
      {
        v14 = 1;
      }

      v15 = v13 + 8;
      while (1)
      {
        v4 = *(v15 - 8);
        if (*v6 == v4)
        {
          break;
        }

        v15 += 16;
        if (!--v14)
        {
          goto LABEL_18;
        }
      }

      v21 = HIDWORD(v4);
      return v4 | (v21 << 32);
    }

LABEL_18:
    LODWORD(v4) = 0;
    LODWORD(v21) = 0;
    return v4 | (v21 << 32);
  }

  if (v7 < 5)
  {
    goto LABEL_18;
  }

  v16 = *(*(*(*(a2 + 8) + 64) + 8 * a3) + 24);
  v17 = *(*(*(*(a2 + 8) + 64) + 8 * a3) + 32) - v16;
  if (!v17)
  {
    goto LABEL_18;
  }

  v20 = v17 >> 4;
  if ((v17 >> 4) <= 1)
  {
    v20 = 1;
  }

  while (*v16 != *v6)
  {
    v16 += 4;
    if (!--v20)
    {
      goto LABEL_18;
    }
  }

  v23 = v16[3];
  v24 = v5 - (v6 + 4);
  if (v5 == v6 + 4)
  {
    v25 = *a4;
  }

  else
  {
    memmove(*a4, v6 + 4, v5 - (v6 + 4));
    v25 = *a4;
  }

  a4[1] = &v6[v24];
  v28 = 0;
  v29 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v25, &v6[v24], (&v6[v24] - v25) >> 2);
  arc = MBRDecoder::_get_arc(a1, v4, v23, &__p);
  LODWORD(v4) = arc;
  v21 = HIDWORD(arc);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  return v4 | (v21 << 32);
}

void sub_1B5506D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::Relabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 112))(a1);
  v7 = (*(*a1 + 120))(a1);

  fst::Relabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, v6, a2, 1, v7, a3, 1);
}

void fst::RmEpsilon<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(v1, a1);
}

void sub_1B5506EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  fst::AutoQueue<int>::~AutoQueue(va);
  v7 = *(v5 - 72);
  if (v7)
  {
    *(v5 - 64) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::Minimize<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1)
{
  v2 = (*(*a1 + 64))(a1, 0x300010000, 1);
  if ((v2 & 0x10000) == 0)
  {
    fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::VectorFst();
  }

  if ((v2 & 0x100000000) != 0)
  {
    fst::Push<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, 0);
  }

  return fst::AcceptorMinimize<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1);
}

void sub_1B55074F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  fst::EncodeMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::~EncodeMapper(va);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::~ImplToFst((v11 - 72));
  _Unwind_Resume(a1);
}

void *fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D19018;
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

uint64_t fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
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

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      v2 = (*(*a1 + 64))(a1);
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

float fst::ComposeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Final(uint64_t *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasFinal(a1, a2) & 1) == 0)
  {
    v4 = (*(*a1 + 72))(a1, a2);
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(a1[15], a2);
    *MutableState = v4;
    *(MutableState + 12) |= 9u;
  }

  v6 = a1[15];
  if (*(v6 + 76) == a2)
  {
    v7 = v6 + 80;
  }

  else
  {
    v7 = *(v6 + 8) + 8 * a2 + 8;
  }

  return **v7;
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::NumArcs(void *a1, uint64_t a2)
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

  return (*(*v5 + 32) - *(*v5 + 24)) >> 4;
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::NumInputEpsilons(void *a1, uint64_t a2)
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

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::NumOutputEpsilons(void *a1, uint64_t a2)
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

void *fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D190E0;
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

uint64_t fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
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

uint64_t fst::DeterminizeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Start(uint64_t a1)
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

float fst::DeterminizeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Final(uint64_t *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasFinal(a1, a2) & 1) == 0)
  {
    v4 = (*(*a1 + 64))(a1, a2);
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(a1[15], a2);
    *MutableState = v4;
    *(MutableState + 12) |= 9u;
  }

  v6 = a1[15];
  if (*(v6 + 76) == a2)
  {
    v7 = v6 + 80;
  }

  else
  {
    v7 = *(v6 + 8) + 8 * a2 + 8;
  }

  return **v7;
}

uint64_t fst::DeterminizeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::NumArcs(void *a1, uint64_t a2)
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

  return (*(*v5 + 32) - *(*v5 + 24)) >> 4;
}

uint64_t fst::DeterminizeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::NumInputEpsilons(void *a1, uint64_t a2)
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

uint64_t fst::DeterminizeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::NumOutputEpsilons(void *a1, uint64_t a2)
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

void std::vector<std::set<std::vector<int>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 24;
        std::__tree<std::vector<int>>::destroy((v4 - 24), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::vector<int>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::vector<int>>::destroy(a1, *a2);
    std::__tree<std::vector<int>>::destroy(a1, a2[1]);
    v4 = a2[4];
    if (v4)
    {
      a2[5] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void fst::Relabel<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
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
  fst::Relabel<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(a1, &v66, &v63);
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

void sub_1B5508620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35)
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

uint64_t fst::Relabel<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  memset(v38, 0, sizeof(v38));
  v39 = 1065353216;
  v7 = *a2;
  if (a2[1] != *a2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(v7 + v8 + 4);
      *&v36[0] = v7 + v8;
      *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v38, (v7 + v8)) + 5) = v10;
      ++v9;
      v7 = *a2;
      v8 += 8;
    }

    while (v9 < (a2[1] - *a2) >> 3);
  }

  memset(v36, 0, sizeof(v36));
  v37 = 1065353216;
  v11 = *a3;
  if (a3[1] != *a3)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = *(v11 + v12 + 4);
      v33 = v11 + v12;
      *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v36, (v11 + v12)) + 5) = v14;
      ++v13;
      v11 = *a3;
      v12 += 8;
    }

    while (v13 < (a3[1] - *a3) >> 3);
  }

  v35 = 0;
  (*(*a1 + 128))(a1, &v33);
  while (1)
  {
    if (!v33)
    {
      if (v35 >= v34)
      {
        goto LABEL_45;
      }

LABEL_13:
      v15 = v35;
      goto LABEL_14;
    }

    if ((*(*v33 + 16))(v33))
    {
      break;
    }

    if (!v33)
    {
      goto LABEL_13;
    }

    v15 = (*(*v33 + 24))();
LABEL_14:
    (*(*a1 + 296))(a1, v15, &v32);
    while (((*(*v32 + 24))(v32) & 1) == 0)
    {
      v31 = *(*(*v32 + 32))(v32);
      v16 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v38, &v31);
      if (v16)
      {
        if (*(v16 + 5) == -1)
        {
          if (FLAGS_fst_error_fatal == 1)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
          }

          v18 = fst::LogMessage::LogMessage(&v30, __p);
          v19 = fst::cerr(v18);
          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Input symbol id ", 16);
          v23 = MEMORY[0x1B8C84C00](v22, v31);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " missing from target vocabulary", 31);
          goto LABEL_36;
        }

        LODWORD(v31) = *(v16 + 5);
      }

      v17 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v36, &v31 + 1);
      if (v17)
      {
        if (*(v17 + 5) == -1)
        {
          if (FLAGS_fst_error_fatal == 1)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
          }

          v20 = fst::LogMessage::LogMessage(&v30, __p);
          v21 = fst::cerr(v20);
          v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Output symbol id ", 17);
          v25 = MEMORY[0x1B8C84C00](v24, DWORD1(v31));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " missing from target vocabulary", 31);
LABEL_36:
          fst::LogMessage::~LogMessage(&v30);
          if (v29 < 0)
          {
            operator delete(__p[0]);
          }

          (*(*a1 + 192))(a1, 4, 4);
          if (v32)
          {
            (*(*v32 + 8))(v32);
          }

          if (v33)
          {
            (*(*v33 + 8))(v33);
          }

          goto LABEL_42;
        }

        DWORD1(v31) = *(v17 + 5);
      }

      (*(*v32 + 88))(v32, &v31);
      (*(*v32 + 40))(v32);
    }

    if (v32)
    {
      (*(*v32 + 8))(v32);
    }

    if (v33)
    {
      (*(*v33 + 32))(v33);
    }

    else
    {
      ++v35;
    }
  }

  if (v33)
  {
    (*(*v33 + 8))();
  }

LABEL_45:
  v27 = fst::RelabelProperties(v6);
  (*(*a1 + 192))(a1, v27, 0x3FFFFFFF0007);
LABEL_42:
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v36);
  return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v38);
}

void sub_1B5508CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a25);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a31);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::set<std::vector<int>>>::__append(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v5 + 24 * a2;
      v11 = 24 * a2;
      v12 = (v5 + 8);
      do
      {
        *v12 = 0;
        v12[1] = 0;
        *(v12 - 1) = v12;
        v12 += 3;
        v11 -= 24;
      }

      while (v11);
    }

    else
    {
      v10 = result[1];
    }

    result[1] = v10;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
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

    v23 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan::Alternative>>(result, v9);
    }

    v13 = 24 * v6;
    v20 = 0;
    v21 = 24 * v6;
    *(&v22 + 1) = 0;
    v14 = 24 * a2;
    v15 = (24 * v6 + 8);
    do
    {
      *v15 = 0;
      v15[1] = 0;
      *(v15 - 1) = v15;
      v15 += 3;
      v14 -= 24;
    }

    while (v14);
    *&v22 = v13 + 24 * a2;
    v16 = result[1];
    v17 = v13 + *result - v16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::set<std::vector<int>>>,std::set<std::vector<int>>*>(result, *result, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = v3[2];
    *(v3 + 1) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return std::__split_buffer<std::set<std::vector<int>>>::~__split_buffer(&v20);
  }

  return result;
}

void sub_1B5508F50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::set<std::vector<int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::set<std::vector<int>>>,std::set<std::vector<int>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v15 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = (a4 + v6);
      *v7 = *(a2 + v6);
      v8 = (a2 + v6 + 8);
      v9 = *v8;
      *(a4 + v6 + 8) = *v8;
      v10 = a4 + v6 + 8;
      v11 = *(a2 + v6 + 16);
      v7[2] = v11;
      if (v11)
      {
        *(v9 + 16) = v10;
        *(a2 + v6) = v8;
        *v8 = 0;
        *(a2 + v6 + 16) = 0;
      }

      else
      {
        *v7 = v10;
      }

      v6 += 24;
    }

    while (a2 + v6 != a3);
    v16 = a4 + v6;
    v14 = 1;
    while (v5 != a3)
    {
      std::__tree<std::vector<int>>::destroy(v5, *(v5 + 8));
      v5 += 24;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::set<std::vector<int>>>,std::set<std::vector<int>>*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::set<std::vector<int>>>,std::set<std::vector<int>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::set<std::vector<int>>>,std::set<std::vector<int>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::set<std::vector<int>>>,std::set<std::vector<int>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 24;
      std::__tree<std::vector<int>>::destroy(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **std::__split_buffer<std::set<std::vector<int>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::set<std::vector<int>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::set<std::vector<int>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::__tree<std::vector<int>>::destroy(i - 24, *(i - 16));
  }
}

uint64_t fst::ArcMap<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::WeightConvertMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 224))(a2);
  v4 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v4);
  v5 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v5);
  v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  result = (*(*a1 + 24))(a1);
  if (result == -1)
  {
    if ((v6 & 4) != 0)
    {
      v13 = *(*a2 + 192);

      return v13(a2, 4, 4);
    }

    return result;
  }

  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v8 = fst::CountStates<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(a1) != 0;
    (*(*a2 + 248))(a2, v8);
  }

  LODWORD(v17) = 0;
  (*(*a1 + 128))(a1, &v15);
  while (!v15)
  {
    if (v17 >= v16)
    {
      goto LABEL_14;
    }

LABEL_9:
    (*(*a2 + 200))(a2);
    if (v15)
    {
      (*(*v15 + 32))(v15);
    }

    else
    {
      LODWORD(v17) = v17 + 1;
    }
  }

  if (!(*(*v15 + 16))(v15))
  {
    goto LABEL_9;
  }

  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

LABEL_14:
  v22 = 0;
  (*(*a1 + 128))(a1, &v20);
  while (2)
  {
    if (!v20)
    {
      if (v22 >= v21)
      {
        goto LABEL_42;
      }

      goto LABEL_20;
    }

    if (!(*(*v20 + 16))(v20))
    {
      if (v20)
      {
        v9 = (*(*v20 + 24))();
        goto LABEL_21;
      }

LABEL_20:
      v9 = v22;
LABEL_21:
      if (v9 == (*(*a1 + 24))(a1))
      {
        (*(*a2 + 176))(a2, v9);
      }

      v10 = (*(*a1 + 40))(a1, v9);
      (*(*a2 + 256))(a2, v9, v10);
      v19 = 0;
      (*(*a1 + 136))(a1, v9, &v15);
LABEL_24:
      if (v15)
      {
        if ((*(*v15 + 24))(v15))
        {
          if (v15)
          {
            (*(*v15 + 8))();
            goto LABEL_37;
          }

LABEL_35:
          if (v18)
          {
            --*v18;
          }

LABEL_37:
          (*(*a1 + 32))(a1, v9);
          (*(*a2 + 184))(a2, v9);
          if (v20)
          {
            (*(*v20 + 32))(v20);
          }

          else
          {
            ++v22;
          }

          continue;
        }

        if (v15)
        {
          v11 = (*(*v15 + 32))();
          goto LABEL_30;
        }
      }

      else if (v19 >= v17)
      {
        goto LABEL_35;
      }

      v11 = (v16 + 16 * v19);
LABEL_30:
      v14 = *v11;
      (*(*a2 + 208))(a2, v9, &v14);
      if (v15)
      {
        (*(*v15 + 40))(v15);
      }

      else
      {
        ++v19;
      }

      goto LABEL_24;
    }

    break;
  }

  if (v20)
  {
    (*(*v20 + 8))();
  }

LABEL_42:
  v12 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  return (*(*a2 + 192))(a2, v12 | v6, 0x3FFFFFFF0007);
}

void sub_1B55098A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::StateMap<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcSortMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, void *a2)
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
        v8 = fst::ArcSortMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::SetState(a2, v7);
        (*(*a1 + 240))(a1, v7, v8);
        for (i = a2[5]; ; a2[5] = i)
        {
          v10 = a2[2];
          if (i >= (a2[3] - v10) >> 4)
          {
            break;
          }

          (*(*a1 + 208))(a1, v7, v10 + 16 * i);
          i = a2[5] + 1;
        }

        (*(**a2 + 32))(*a2, v7);
        (*(*a1 + 184))(a1, v7);
        v7 = (v7 + 1);
      }

      while (v7 < (*(*a1 + 160))(a1));
    }

    v11 = *(*a1 + 192);

    return v11(a1, v5 & 0x3FFF0FFF0007 | (((v5 >> 16) & 1) << 28) | 0x40000000, 0x3FFFFFFF0007);
  }

  return result;
}

double fst::ArcSortMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::SetState(void *a1, uint64_t a2)
{
  a1[5] = 0;
  v4 = a1 + 2;
  a1[3] = a1[2];
  v5 = (*(**a1 + 40))(*a1);
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::reserve(v4, v5);
  v6 = *a1;
  v16 = 0;
  (*(*v6 + 136))(v6, a2, v14);
  while (1)
  {
    if (!v14[0])
    {
      if (v16 >= v14[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v8 = (v14[1] + 16 * v16);
      goto LABEL_8;
    }

    if ((*(*v14[0] + 24))(v14[0]))
    {
      break;
    }

    if (!v14[0])
    {
      goto LABEL_7;
    }

    v8 = (*(*v14[0] + 32))();
LABEL_8:
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](v4, v8);
    if (v14[0])
    {
      (*(*v14[0] + 40))(v14[0]);
    }

    else
    {
      ++v16;
    }
  }

  if (v14[0])
  {
    (*(*v14[0] + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (v15)
  {
    --*v15;
  }

LABEL_15:
  v9 = a1[2];
  v10 = a1[3];
  v11 = 126 - 2 * __clz(v10 - v9);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  *&result = std::__introsort<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,false>(v9, v10, v14, v12, 1, v7).n128_u64[0];
  return result;
}

void sub_1B5509DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

void fst::Connect<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(uint64_t a1)
{
  memset(v4, 0, sizeof(v4));
  v2 = 0;
  memset(v3, 0, sizeof(v3));
  v1[0] = 0;
  v1[1] = v4;
  v1[2] = v3;
  v1[3] = &v2;
  fst::DfsVisit<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::SccVisitor<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(a1, v1);
}

void sub_1B5509F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v14 = *(v12 - 80);
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(v11 + 24);
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void fst::ComposeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::CreateBase(uint64_t a1, uint64_t a2)
{
  v2 = fst::LookAheadMatchType<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      fst::ComposeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::CreateBase2<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>();
    }

    fst::ComposeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::CreateBase2<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>();
  }

  fst::ComposeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::CreateBase2<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>();
}

void fst::ComposeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ComposeFst(void *a1)
{
  fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::LookAheadMatchType<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(uint64_t a1, uint64_t a2)
{
  fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::LookAheadMatcher(v6, a1, 1);
  fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::LookAheadMatcher(v5, a2, 0);
  v3 = fst::LookAheadMatchType<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(v6, v5);
  if (v5[0])
  {
    (*(*v5[0] + 8))(v5[0]);
  }

  if (v6[0])
  {
    (*(*v6[0] + 8))(v6[0]);
  }

  return v3;
}

void sub_1B550A2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a9)
  {
    fst::LookAheadMatchType<fst::ArcTpl<fst::LogWeightTpl<float>,int>>();
  }

  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::LookAheadMatchType<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(void *a1, void *a2)
{
  v4 = (*(**a1 + 24))(*a1, 0);
  v5 = (*(**a2 + 24))(*a2, 0);
  if (v4 == 1 && ((*(**a1 + 48))() & 0x20) != 0)
  {
    return 1;
  }

  if (!v5 && ((*(**a2 + 48))() & 0x10) != 0)
  {
    return 0;
  }

  if (((*(**a1 + 48))() & 0x20) == 0 || (v6 = *a1, v7 = *(**a1 + 24), v8 = 1, v7(v6, 1) != 1))
  {
    if (((*(**a2 + 48))() & 0x10) == 0 || (*(**a2 + 24))(*a2, 1))
    {
      return 3;
    }

    return 0;
  }

  return v8;
}

uint64_t fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::LookAheadMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*a2 + 144))(a2, a3);
  *a1 = v4;
  if (!v4)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  return a1;
}

void fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::SortedMatcher(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = &unk_1F2D19270;
  *(a1 + 8) = (*(*a2 + 88))(a2, 0);
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  *(a1 + 36) = a4;
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_1B5AE3080;
  *(a1 + 74) = 0;
  fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::MemoryPool((a1 + 80), 1);
}

void sub_1B550A6FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~MemoryPool((v18 + 80));
  _Unwind_Resume(a1);
}

void fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~SortedMatcher(void *a1)
{
  fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~SortedMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Type(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 == 3)
  {
    return 3;
  }

  if (v2)
  {
    v6 = 0x40000000;
  }

  else
  {
    v6 = 0x10000000;
  }

  v7 = *(a1 + 8);
  if (v2)
  {
    v8 = 3221225472;
  }

  else
  {
    v8 = 805306368;
  }

  v9 = (*(*v7 + 64))(v7, v8, a2);
  if ((v9 & v6) != 0)
  {
    return *(a1 + 32);
  }

  v10 = 0x80000000;
  if (!v2)
  {
    v10 = 0x20000000;
  }

  if ((v9 & v10) != 0)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 74))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t fst::MatcherBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Final_(uint64_t a1)
{
  v1 = *(*(*(*a1 + 32))(a1) + 32);

  return v1();
}

void fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D19318;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D19318;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D19358;
  a1[1] = 48 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B550AB1C(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D19358;
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

void *fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~SortedMatcher(void *a1)
{
  *a1 = &unk_1F2D19270;
  v2 = a1[3];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    else
    {
      v3 = v2[3];
      if (v3)
      {
        --*v3;
      }
    }

    v2[5] = a1[17];
    a1[17] = v2;
  }

  v4 = a1[1];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  a1[10] = &unk_1F2D19318;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Link>::~MemoryArena(a1 + 11);
  quasar::Bitmap::~Bitmap((a1 + 10));
  return a1;
}

void fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::SortedMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D19270;
  *(a1 + 8) = (*(**(a2 + 8) + 88))(*(a2 + 8), a3);
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 74) = *(a2 + 74);
  fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::MemoryPool((a1 + 80), 1);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::SetState(uint64_t result, uint64_t a2)
{
  if (*(result + 16) != a2)
  {
    v3 = result;
    *(result + 16) = a2;
    if (*(result + 32) == 3)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      v4 = fst::LogMessage::LogMessage(&v11, __p);
      v5 = fst::cerr(v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "SortedMatcher: bad match type", 29);
      fst::LogMessage::~LogMessage(&v11);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      *(v3 + 74) = 1;
    }

    v6 = *(v3 + 24);
    if (v6)
    {
      fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Reinit(v6, *(v3 + 8), a2);
      v7 = *(v3 + 24);
    }

    else
    {
      v7 = *(v3 + 136);
      if (v7)
      {
        *(v3 + 136) = v7[5];
      }

      else
      {
        v7 = fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Link>::Allocate((v3 + 88), 1);
        v7[5] = 0;
      }

      v8 = *(v3 + 8);
      v7[4] = 0;
      (*(*v8 + 136))(v8, a2, v7);
      *(v3 + 24) = v7;
    }

    if (*v7)
    {
      (*(**v7 + 80))(*v7, 16, 16);
    }

    result = (*(**(v3 + 8) + 40))(*(v3 + 8), a2);
    *(v3 + 48) = result;
    *(v3 + 68) = a2;
  }

  return result;
}

void sub_1B550AFC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Reinit(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (!v6)
  {
    goto LABEL_5;
  }

  result = (*(*v6 + 16))(v6, a3);
  if (result)
  {
    return result;
  }

  if (*a1)
  {
    (*(**a1 + 8))(*a1);
  }

  else
  {
LABEL_5:
    v8 = a1[3];
    if (v8)
    {
      --*v8;
    }
  }

  a1[4] = 0;
  v9 = *(*a2 + 136);

  return v9(a2, a3, a1);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Find(uint64_t a1, int a2)
{
  *(a1 + 73) = 1;
  if (*(a1 + 74) == 1)
  {
    v3 = 0;
    *(a1 + 72) = 0;
    *(a1 + 40) = -1;
  }

  else
  {
    *(a1 + 72) = a2 == 0;
    if (a2 == -1)
    {
      v4 = 0;
    }

    else
    {
      v4 = a2;
    }

    *(a1 + 40) = v4;
    if (fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Search(a1))
    {
      v3 = 1;
    }

    else
    {
      v3 = *(a1 + 72);
    }
  }

  return v3 & 1;
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Search(uint64_t a1)
{
  v2 = **(a1 + 24);
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    (*(*v2 + 80))(v2, v3, 15);
  }

  if (*(a1 + 40) < *(a1 + 36))
  {
    v4 = *(a1 + 24);
    if (*v4)
    {
      (*(**v4 + 56))(*v4);
    }

    else
    {
      v4[4] = 0;
    }

    while (1)
    {
      v19 = *(a1 + 24);
      if (*v19)
      {
        if ((*(**v19 + 24))(*v19))
        {
          return 0;
        }
      }

      else if (v19[4] >= v19[2])
      {
        return 0;
      }

      v20 = *(a1 + 24);
      v21 = *v20;
      if (*(a1 + 32))
      {
        v22 = v21 ? (*(*v21 + 32))(v21) : v20[1] + 16 * v20[4];
        v23 = (v22 + 4);
      }

      else
      {
        v23 = (v21 ? (*(*v21 + 32))(v21) : v20[1] + 16 * v20[4]);
      }

      v24 = *(a1 + 40);
      v25 = *v23 <= v24 ? 0 : 7;
      if (*v23 == v24)
      {
        v25 = 1;
      }

      if (v25)
      {
        break;
      }

      v26 = *(a1 + 24);
      if (*v26)
      {
        (*(**v26 + 40))(*v26);
      }

      else
      {
        ++v26[4];
      }
    }

    return v25 == 1;
  }

  v5 = *(a1 + 48);
  if (!v5)
  {
    v6 = 0;
LABEL_68:
    v28 = *(a1 + 24);
    result = *v28;
    if (!*v28)
    {
      v28[4] = v6;
      return result;
    }

    (*(*result + 64))(result, v6);
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = (v6 + v5) >> 1;
    v8 = *(a1 + 24);
    if (*v8)
    {
      (*(**v8 + 64))(*v8, (v6 + v5) >> 1);
    }

    else
    {
      v8[4] = v7;
    }

    v9 = *(a1 + 24);
    v10 = *v9;
    if (*(a1 + 32))
    {
      v11 = v10 ? (*(*v10 + 32))(v10) : v9[1] + 16 * v9[4];
      v12 = (v11 + 4);
    }

    else
    {
      v12 = (v10 ? (*(*v10 + 32))(v10) : v9[1] + 16 * v9[4]);
    }

    v13 = *(a1 + 40);
    if (*v12 <= v13)
    {
      break;
    }

    v5 = (v6 + v5) >> 1;
LABEL_25:
    if (v6 >= v5)
    {
      goto LABEL_68;
    }
  }

  if (*v12 < v13)
  {
    v6 = v7 + 1;
    goto LABEL_25;
  }

  while (v7 > v6)
  {
    v14 = *(a1 + 24);
    --v7;
    if (*v14)
    {
      (*(**v14 + 64))(*v14, v7);
    }

    else
    {
      v14[4] = v7;
    }

    v15 = *(a1 + 24);
    v16 = *v15;
    if (*(a1 + 32))
    {
      if (v16)
      {
        v17 = (*(*v16 + 32))(v16);
      }

      else
      {
        v17 = v15[1] + 16 * v15[4];
      }

      v18 = (v17 + 4);
    }

    else if (v16)
    {
      v18 = (*(*v16 + 32))(v16);
    }

    else
    {
      v18 = (v15[1] + 16 * v15[4]);
    }

    if (*v18 != *(a1 + 40))
    {
      v29 = *(a1 + 24);
      v30 = v7 + 1;
      if (*v29)
      {
        (*(**v29 + 64))(*v29, v30);
      }

      else
      {
        v29[4] = v30;
      }

      return 1;
    }
  }

  return 1;
}

BOOL fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Done(uint64_t a1)
{
  if (*(a1 + 72))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (*v3)
  {
    if ((*(**v3 + 24))(*v3))
    {
      return 1;
    }
  }

  else if (v3[4] >= v3[2])
  {
    return 1;
  }

  if (*(a1 + 73) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = **(a1 + 24);
  if (v5)
  {
    if (v4)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    (*(*v5 + 80))(v5, v6, 15);
    v4 = *(a1 + 32);
  }

  v7 = *(a1 + 24);
  v8 = *v7;
  if (v4)
  {
    if (v8)
    {
      v9 = (*(*v8 + 32))(v8);
    }

    else
    {
      v9 = v7[1] + 16 * v7[4];
    }

    v10 = (v9 + 4);
  }

  else if (v8)
  {
    v10 = (*(*v8 + 32))(v8);
  }

  else
  {
    v10 = (v7[1] + 16 * v7[4]);
  }

  return *v10 != *(a1 + 40);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Value(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    return a1 + 56;
  }

  v3 = *(a1 + 24);
  if (!*v3)
  {
    return v3[1] + 16 * v3[4];
  }

  (*(**v3 + 80))(*v3, 15, 15);
  v3 = *(a1 + 24);
  if (!*v3)
  {
    return v3[1] + 16 * v3[4];
  }

  v4 = *(**v3 + 32);

  return v4();
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Next(uint64_t result)
{
  if (*(result + 72) == 1)
  {
    *(result + 72) = 0;
  }

  else
  {
    v1 = *(result + 24);
    result = *v1;
    if (*v1)
    {
      return (*(*result + 40))();
    }

    else
    {
      ++v1[4];
    }
  }

  return result;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::ComposeFstImplBase(a1, a2, a3, a4) = &unk_1F2D19398;
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

void sub_1B550BB3C(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::ComposeFstImplBase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::CacheBaseImpl(a1, a4);
  *v7 = &unk_1F2D19440;
  fst::ComposeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::InitBase(v7, a2, a3);
  return a1;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(uint64_t a1)
{
  if (((*(***(a1 + 144) + 48))(**(a1 + 144)) & 1) != 0 && (*(***(a1 + 144) + 24))(**(a1 + 144), 1) != 1)
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

  else if (((*(***(a1 + 152) + 48))(**(a1 + 152)) & 1) != 0 && (*(***(a1 + 152) + 24))(**(a1 + 152), 1))
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
    v4 = (*(***(a1 + 144) + 24))(**(a1 + 144), 0);
    v5 = (*(***(a1 + 152) + 24))(**(a1 + 152), 0);
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
    if ((*(***(a1 + 144) + 24))(**(a1 + 144), 1) == 1)
    {
      goto LABEL_36;
    }

    if (!(*(***(a1 + 152) + 24))(**(a1 + 152), 1))
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