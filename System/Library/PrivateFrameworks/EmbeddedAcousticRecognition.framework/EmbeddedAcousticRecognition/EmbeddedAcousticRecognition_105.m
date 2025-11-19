void kaldi::AutoRegressiveBeamSearchDecoder::MergeLogLikelihoods(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  v4 = *a2;
  v5 = a3;
  v6 = 4 * a4;
  v7 = *(*a2 + v6);
  if (*(a1 + 4) == 1)
  {
    v8 = *(v4 + 4 * a3);
    if (v7 <= v8)
    {
      v9 = *(v4 + 4 * a3);
    }

    else
    {
      v9 = *(*a2 + 4 * a4);
    }

    v11 = v8 == INFINITY || v7 == INFINITY;
    v12 = NAN;
    if (!v11)
    {
      v12 = v9;
    }
  }

  else
  {
    v13 = *(v4 + 4 * a3);
    v14 = -v13;
    if (v7 != -INFINITY)
    {
      v15 = -v7;
      if (v13 == -INFINITY)
      {
        v14 = -v7;
      }

      else if (v7 >= v13)
      {
        v17 = expf(-(v7 - v13));
        v14 = v15 - logf(v17 + 1.0);
      }

      else
      {
        v16 = expf(-(v13 - v7));
        v14 = v14 - logf(v16 + 1.0);
      }
    }

    v12 = -v14;
  }

  *(v4 + v6) = v12;
  *(v4 + 4 * v5) = -8388609;
}

float *kaldi::AutoRegressiveBeamSearchDecoder::HypInfo::Update(float *this, float a2, float a3, int a4)
{
  v9 = a4;
  this[1] = a2;
  this[2] = a3;
  if ((a4 & 0x80000000) == 0)
  {
    v4 = this;
    v5 = *(this + 4) + 1;
    *(this + 3) = a4;
    *(this + 4) = v5;
    v6 = *(this + 3);
    *(this + 3) = ((a4 - 1640531527) + (v6 << 6) + (v6 >> 2)) ^ v6;
    *(this + 4) = v6;
    v7 = *this;
    if (v7 >= 1)
    {
      v8 = *(this + 10);
      if (v8 >= v7)
      {
        ++*(this + 9);
        *(this + 10) = v8 - 1;
        std::deque<int>::__maybe_remove_front_spare[abi:ne200100]((this + 10), 1);
      }

      return std::deque<int>::push_back(v4 + 5, &v9);
    }
  }

  return this;
}

uint64_t std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::__emplace_back_slow_path<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo const&>(a1, a2);
  }

  else
  {
    v5 = *a2;
    v6 = *(a2 + 16);
    *(v4 + 32) = *(a2 + 32);
    *v4 = v5;
    *(v4 + 16) = v6;
    std::deque<int>::deque(v4 + 40, (a2 + 40));
    *(v4 + 88) = *(a2 + 88);
    result = v4 + 96;
    *(a1 + 8) = v4 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>::__init_with_size[abi:ne200100]<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>*,std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::TextTokenizer::TokenString>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B57EB540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<fst::IntervalSet<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>,std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>*,std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>*,std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      std::vector<kaldi::AutoRegressiveBeamSearchDecoder::Token>::__init_with_size[abi:ne200100]<kaldi::AutoRegressiveBeamSearchDecoder::Token*,kaldi::AutoRegressiveBeamSearchDecoder::Token*>(v4, *v6, *(v6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 8) - *v6) >> 2));
      *(v4 + 24) = *(v6 + 24);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>,std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>,std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<fst::IntervalSet<int>>,fst::IntervalSet<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::vector<kaldi::AutoRegressiveBeamSearchDecoder::Token>::__init_with_size[abi:ne200100]<kaldi::AutoRegressiveBeamSearchDecoder::Token*,kaldi::AutoRegressiveBeamSearchDecoder::Token*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B57EB6C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<kaldi::AutoRegressiveBeamSearchDecoder::Token>::__assign_with_size[abi:ne200100]<kaldi::AutoRegressiveBeamSearchDecoder::Token*,kaldi::AutoRegressiveBeamSearchDecoder::Token*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 2) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x1555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0x1555555555555555;
      }

      else
      {
        v11 = v10;
      }

      std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 2) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

uint64_t std::deque<int>::deque(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v4 = a2[4];
  v5 = a2[1];
  v6 = a2[2];
  v7 = (v5 + 8 * (v4 >> 10));
  if (v6 == v5)
  {
    v8 = 0;
    v11 = 0;
    v10 = (v5 + 8 * ((a2[5] + v4) >> 10));
  }

  else
  {
    v8 = &(*v7)[4 * (v4 & 0x3FF)];
    v9 = a2[5] + v4;
    v10 = (v5 + 8 * (v9 >> 10));
    v11 = (*v10 + 4 * (v9 & 0x3FF));
  }

  std::deque<int>::__append<std::__deque_iterator<int,int const*,int const&,int const* const*,long,1024l>,0>(a1, v7, v8, v10, v11);
  return a1;
}

void *std::deque<int>::__append<std::__deque_iterator<int,int const*,int const&,int const* const*,long,1024l>,0>(void *a1, char **a2, char *a3, char *a4, char *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&a5[-*a4] >> 2) + ((a4 - a2) << 7) - ((a3 - *a2) >> 2);
  }

  return std::deque<int>::__append_with_size[abi:ne200100]<std::__deque_iterator<int,int const*,int const&,int const* const*,long,1024l>>(a1, a2, a3, v5);
}

void *std::deque<int>::__append_with_size[abi:ne200100]<std::__deque_iterator<int,int const*,int const&,int const* const*,long,1024l>>(void *a1, char **a2, char *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((v9 - v8) << 7) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    std::deque<int>::__add_back_capacity(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 >> 10));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 4 * (v11 & 0x3FF);
    v15 = v14;
  }

  v25[0] = v13;
  v25[1] = v15;
  result = std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>::operator+[abi:ne200100](v25, a4);
  if (v14 != v17)
  {
    v18 = a1[5];
    do
    {
      if (v13 == result)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 4096;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = *a2;
        v21 = v14;
        do
        {
          v22 = *a3;
          a3 += 4;
          *v21++ = v22;
          if (a3 - v20 == 4096)
          {
            v23 = a2[1];
            ++a2;
            v20 = v23;
            a3 = v23;
          }
        }

        while (v21 != v19);
      }

      v18 += (v19 - v14) >> 2;
      if (v13 == result)
      {
        break;
      }

      v24 = v13[1];
      ++v13;
      v14 = v24;
    }

    while (v24 != v17);
    a1[5] = v18;
  }

  return result;
}

void *std::deque<int>::__add_back_capacity(void *result, unint64_t a2)
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

  if ((v4 & 0x3FF) != 0)
  {
    v5 = (v4 >> 10) + 1;
  }

  else
  {
    v5 = v4 >> 10;
  }

  v6 = result[4];
  if (v5 >= v6 >> 10)
  {
    v7 = v6 >> 10;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 10)
  {
    for (result[4] = v6 - (v7 << 10); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = std::__split_buffer<int *>::emplace_back<int *>(v2, v16);
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
        std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(result, v12);
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

    for (result[4] -= v7 << 10; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = std::__split_buffer<int *>::emplace_back<int *>(v2, v16);
    }
  }

  return result;
}

void sub_1B57EBCFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<kaldi::AutoRegressiveBeamSearchDecoder::Token>::__init_with_size[abi:ne200100]<kaldi::AutoRegressiveBeamSearchDecoder::Token const*,kaldi::AutoRegressiveBeamSearchDecoder::Token const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B57EBDD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::__assign_with_size[abi:ne200100]<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo const*,kaldi::AutoRegressiveBeamSearchDecoder::HypInfo const*>(uint64_t result, __int128 *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((*(result + 16) - *result) >> 5) < a4)
  {
    std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::__vdeallocate(result);
    if (a4 <= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((v7[2] - *v7) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v7[2] - *v7) >> 5) >= 0x155555555555555)
      {
        v10 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::__vallocate[abi:ne200100](v7, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(result + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 5) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        v15 = *v6;
        v16 = v6[1];
        v8[4] = *(v6 + 4);
        *v8 = v15;
        *(v8 + 1) = v16;
        result = std::deque<int>::operator=(v8 + 5, v6 + 5);
        *(v8 + 88) = *(v6 + 88);
        v8 += 12;
        v6 += 6;
      }

      while (v6 != a3);
      v11 = v7[1];
    }

    for (; v11 != v8; v11 -= 96)
    {
      result = std::deque<int>::~deque[abi:ne200100]((v11 - 56));
    }

    v7[1] = v8;
  }

  else
  {
    v12 = a2 + v11 - v8;
    if (v11 != v8)
    {
      do
      {
        v13 = *v6;
        v14 = v6[1];
        v8[4] = *(v6 + 4);
        *v8 = v13;
        *(v8 + 1) = v14;
        std::deque<int>::operator=(v8 + 5, v6 + 5);
        *(v8 + 88) = *(v6 + 88);
        v6 += 6;
        v8 += 12;
      }

      while (v6 != v12);
      v11 = v7[1];
    }

    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>,kaldi::AutoRegressiveBeamSearchDecoder::HypInfo const*,kaldi::AutoRegressiveBeamSearchDecoder::HypInfo const*,kaldi::AutoRegressiveBeamSearchDecoder::HypInfo*>(v7, v12, a3, v11);
    v7[1] = result;
  }

  return result;
}

void std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 96;
        std::deque<int>::~deque[abi:ne200100](v3 - 7);
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>,kaldi::AutoRegressiveBeamSearchDecoder::HypInfo const*,kaldi::AutoRegressiveBeamSearchDecoder::HypInfo const*,kaldi::AutoRegressiveBeamSearchDecoder::HypInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      v10 = *(a2 + v7);
      v11 = *(a2 + v7 + 16);
      *(v9 + 32) = *(a2 + v7 + 32);
      *v9 = v10;
      *(v9 + 16) = v11;
      std::deque<int>::deque(a4 + v7 + 40, (a2 + v7 + 40));
      *(v9 + 88) = *(a2 + v7 + 88);
      v7 += 96;
    }

    while (v8 + 96 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1B57EC0F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 56);
    do
    {
      v5 = (std::deque<int>::~deque[abi:ne200100](v5) - 96);
      v4 += 96;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

void *std::deque<int>::operator=(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v4 = a2[4];
    v5 = a2[1];
    v6 = a2[2];
    v7 = (v5 + 8 * (v4 >> 10));
    if (v6 == v5)
    {
      v8 = 0;
      v11 = 0;
      v10 = (v5 + 8 * ((a2[5] + v4) >> 10));
    }

    else
    {
      v8 = &(*v7)[4 * (v4 & 0x3FF)];
      v9 = a2[5] + v4;
      v10 = (v5 + 8 * (v9 >> 10));
      v11 = (*v10 + 4 * (v9 & 0x3FF));
    }

    std::deque<int>::assign<std::__deque_iterator<int,int const*,int const&,int const* const*,long,1024l>,0>(a1, v7, v8, v10, v11);
  }

  return a1;
}

void *std::deque<int>::assign<std::__deque_iterator<int,int const*,int const&,int const* const*,long,1024l>,0>(void *a1, char **a2, char *a3, char *a4, char *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&a5[-*a4] >> 2) + ((a4 - a2) << 7) - ((a3 - *a2) >> 2);
  }

  return std::deque<int>::__assign_with_size_random_access[abi:ne200100]<std::__deque_iterator<int,int const*,int const&,int const* const*,long,1024l>>(a1, a2, a3, v5);
}

void *std::deque<int>::__assign_with_size_random_access[abi:ne200100]<std::__deque_iterator<int,int const*,int const&,int const* const*,long,1024l>>(void *a1, char **a2, char *a3, unint64_t a4)
{
  v20 = a2;
  v21 = a3;
  v7 = a1[5];
  if (v7 >= a4)
  {
    v14 = a1[1];
    v15 = (v14 + 8 * (a1[4] >> 10));
    if (a1[2] == v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = *v15 + 4 * (a1[4] & 0x3FFLL);
    }

    v22[0] = a2;
    v22[1] = a3;
    v18 = std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>::operator+[abi:ne200100](v22, a4);
    v23 = v15;
    v24 = v16;
    std::__for_each_segment[abi:ne200100]<std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>>>(a2, a3, v18, v19, &v23);
    return std::deque<int>::__erase_to_end(a1, v23, v24);
  }

  else
  {
    v9 = std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>::operator+[abi:ne200100](&v20, v7);
    v10 = v8;
    v11 = a1[1];
    if (a1[2] == v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(v11 + 8 * (a1[4] >> 10)) + 4 * (a1[4] & 0x3FFLL);
    }

    v23 = (v11 + 8 * (a1[4] >> 10));
    v24 = v12;
    std::__for_each_segment[abi:ne200100]<std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>>>(v20, v21, v9, v8, &v23);
    return std::deque<int>::__append_with_size[abi:ne200100]<std::__deque_iterator<int,int const*,int const&,int const* const*,long,1024l>>(a1, v9, v10, a4 - a1[5]);
  }
}

uint64_t std::deque<int>::__erase_to_end(uint64_t result, char *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = v4 + *(result + 40);
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = (v6 + 8 * (v5 >> 10));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 4 * (v5 & 0x3FF);
  }

  if (v9 != a3)
  {
    v10 = ((v9 - *v8) >> 2) + ((v8 - a2) << 7);
    v11 = a3 - *a2;
    v12 = v10 - (v11 >> 2);
    if (v12 >= 1)
    {
      v13 = (v6 + 8 * (v4 >> 10));
      if (v7 == v6)
      {
        v14 = 0;
      }

      else
      {
        v14 = *v13 + 4 * (*(result + 32) & 0x3FFLL);
      }

      v16[0] = v13;
      v16[1] = v14;
      if (a3 == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = (v11 >> 2) + ((a2 - v13) << 7) - ((v14 - *v13) >> 2);
      }

      std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>::operator+[abi:ne200100](v16, v15);
      v3[5] -= v12;
      do
      {
        result = std::deque<int>::__maybe_remove_back_spare[abi:ne200100](v3, 1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 24);
      std::vector<fst::IntervalSet<int>>::__destroy_vector::operator()[abi:ne200100](&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__tree<std::__value_type<std::pair<BOOL,int>,int>,std::__map_value_compare<std::pair<BOOL,int>,std::__value_type<std::pair<BOOL,int>,int>,std::less<std::pair<BOOL,int>>,true>,std::allocator<std::__value_type<std::pair<BOOL,int>,int>>>::__emplace_unique_key_args<std::pair<BOOL,int>,std::piecewise_construct_t const&,std::tuple<std::pair<BOOL,int>&&>,std::tuple<>>(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<BOOL,int>,int>,std::__map_value_compare<std::pair<BOOL,int>,std::__value_type<std::pair<BOOL,int>,int>,std::less<std::pair<BOOL,int>>,true>,std::allocator<std::__value_type<std::pair<BOOL,int>,int>>>::__find_equal<std::pair<BOOL,int>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<std::pair<BOOL,int>,int>,std::__map_value_compare<std::pair<BOOL,int>,std::__value_type<std::pair<BOOL,int>,int>,std::less<std::pair<BOOL,int>>,true>,std::allocator<std::__value_type<std::pair<BOOL,int>,int>>>::__find_equal<std::pair<BOOL,int>>(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 1);
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 28);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 8);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 3;
    std::vector<fst::IntervalSet<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t *std::__tree<std::__value_type<std::pair<BOOL,int>,int>,std::__map_value_compare<std::pair<BOOL,int>,std::__value_type<std::pair<BOOL,int>,int>,std::less<std::pair<BOOL,int>>,true>,std::allocator<std::__value_type<std::pair<BOOL,int>,int>>>::find<std::pair<BOOL,int>>(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = v2;
  do
  {
    v8 = *(v3 + 28);
    if (v8 >= v5)
    {
      if (v5 >= v8)
      {
        if (*(v3 + 8) >= v6)
        {
          v7 = v3;
        }

        v3 += *(v3 + 8) < v6;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v9 = *(v7 + 28);
  if (v5 < v9 || v9 >= v5 && v6 < *(v7 + 8))
  {
    return v2;
  }

  return v7;
}

int *std::__stable_sort<std::_ClassicAlgPolicy,kaldi::AutoRegressiveBeamSearchDecoder::PruneHyps(std::vector<float> const&)::$_1 &,std::__wrap_iter<int *>>(int *result, int *a2, uint64_t **a3, unint64_t a4, int *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v8 = result;
    if (a4 == 2)
    {
      v9 = *(a2 - 1);
      v10 = *result;
      if (*(**a3 + 4 * v9) > *(**a3 + 4 * v10))
      {
        *result = v9;
        *(a2 - 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v22 = a5;
      v23 = a4 >> 1;
      v24 = &result[a4 >> 1];
      v25 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::AutoRegressiveBeamSearchDecoder::PruneHyps(std::vector<float> const&)::$_1 &,std::__wrap_iter<int *>>(result, v24, a3, v25, a5);
        v26 = &v22[v23];
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::AutoRegressiveBeamSearchDecoder::PruneHyps(std::vector<float> const&)::$_1 &,std::__wrap_iter<int *>>(&v8[4 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v26);
        v27 = &v22[a4];
        v28 = *a3;
        v29 = v26;
        while (v29 != v27)
        {
          v30 = *v29;
          v31 = *(*v28 + 4 * v30);
          v32 = *(*v28 + 4 * *v22);
          if (v31 <= v32)
          {
            LODWORD(v30) = *v22;
          }

          v22 += v31 <= v32;
          v29 += v31 > v32;
          *v8 = v30;
          v8 += 4;
          if (v22 == v26)
          {
            while (v29 != v27)
            {
              v34 = *v29++;
              *v8 = v34;
              v8 += 4;
            }

            return result;
          }
        }

        while (v22 != v26)
        {
          v33 = *v22++;
          *v8 = v33;
          v8 += 4;
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,kaldi::AutoRegressiveBeamSearchDecoder::PruneHyps(std::vector<float> const&)::$_1 &,std::__wrap_iter<int *>>(result, v24, a3, v25, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,kaldi::AutoRegressiveBeamSearchDecoder::PruneHyps(std::vector<float> const&)::$_1 &,std::__wrap_iter<int *>>(&v8[4 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v22, a6);

        return std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::BeamSearchDecoder::ComputeTopIndices(std::vector<float> const&)::$_1 &,std::__wrap_iter<int *>>(v8, &v8[4 * (a4 >> 1)], a2, a3, a4 >> 1, a4 - (a4 >> 1), v22, a6);
      }
    }

    else if (result != a2)
    {
      v12 = result + 1;
      if (result + 1 != a2)
      {
        v13 = 0;
        v14 = **a3;
        v15 = result;
        do
        {
          v16 = *v15;
          v15 = v12;
          v17 = *v12;
          v18 = *(v14 + 4 * v17);
          if (v18 > *(v14 + 4 * v16))
          {
            v19 = v13;
            while (1)
            {
              *(result + v19 + 4) = v16;
              if (!v19)
              {
                break;
              }

              v16 = *(result + v19 - 4);
              v19 -= 4;
              if (v18 <= *(v14 + 4 * v16))
              {
                v20 = (result + v19 + 4);
                goto LABEL_16;
              }
            }

            v20 = result;
LABEL_16:
            *v20 = v17;
          }

          v12 = v15 + 1;
          v13 += 4;
        }

        while (v15 + 1 != a2);
      }
    }
  }

  return result;
}

int *std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::AutoRegressiveBeamSearchDecoder::PruneHyps(std::vector<float> const&)::$_1 &,std::__wrap_iter<int *>>(int *result, int *a2, uint64_t **a3, unint64_t a4, int *a5)
{
  if (a4)
  {
    v5 = a5;
    v7 = result;
    if (a4 == 1)
    {
LABEL_8:
      *v5 = *v7;
      return result;
    }

    if (a4 == 2)
    {
      v10 = *(a2 - 1);
      v11 = **a3;
      v12 = *(v11 + 4 * v10);
      v13 = *(v11 + 4 * *result);
      if (v12 <= v13)
      {
        LODWORD(v10) = *result;
      }

      *a5 = v10;
      v5 = a5 + 1;
      if (v12 <= v13)
      {
        v7 = a2 - 1;
      }

      goto LABEL_8;
    }

    if (a4 > 8)
    {
      v25 = &result[a4 >> 1];
      std::__stable_sort<std::_ClassicAlgPolicy,kaldi::AutoRegressiveBeamSearchDecoder::PruneHyps(std::vector<float> const&)::$_1 &,std::__wrap_iter<int *>>(result, v25, a3, a4 >> 1, a5, a4 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,kaldi::AutoRegressiveBeamSearchDecoder::PruneHyps(std::vector<float> const&)::$_1 &,std::__wrap_iter<int *>>(&v7[a4 >> 1], a2, a3, a4 - (a4 >> 1), &v5[a4 >> 1], a4 - (a4 >> 1));
      v26 = *a3;
      v27 = &v7[a4 >> 1];
      while (v27 != a2)
      {
        v28 = *v27;
        v29 = *(*v26 + 4 * v28);
        v30 = *(*v26 + 4 * *v7);
        if (v29 <= v30)
        {
          LODWORD(v28) = *v7;
        }

        v27 += v29 > v30;
        v7 += v29 <= v30;
        *v5++ = v28;
        if (v7 == v25)
        {
          while (v27 != a2)
          {
            v32 = *v27++;
            *v5++ = v32;
          }

          return result;
        }
      }

      while (v7 != v25)
      {
        v31 = *v7++;
        *v5++ = v31;
      }
    }

    else if (result != a2)
    {
      v14 = result + 1;
      *a5 = *result;
      if (result + 1 != a2)
      {
        v15 = 0;
        v16 = **a3;
        v17 = a5;
        v18 = a5;
        do
        {
          v20 = *v18++;
          v19 = v20;
          v21 = *v14;
          if (*(v16 + 4 * v21) <= *(v16 + 4 * v20))
          {
            *v18 = v21;
          }

          else
          {
            v17[1] = v19;
            v22 = a5;
            if (v17 != a5)
            {
              v23 = v15;
              while (1)
              {
                v22 = (a5 + v23);
                v24 = *(a5 + v23 - 4);
                if (*(v16 + 4 * *v14) <= *(v16 + 4 * v24))
                {
                  break;
                }

                *v22 = v24;
                v23 -= 4;
                if (!v23)
                {
                  v22 = a5;
                  break;
                }
              }
            }

            *v22 = *v14;
          }

          ++v14;
          v15 += 4;
          v17 = v18;
        }

        while (v14 != a2);
      }
    }
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::deque<int>,unsigned long>,std::__unordered_map_hasher<std::deque<int>,std::__hash_value_type<std::deque<int>,unsigned long>,kaldi::AutoRegressiveBeamSearchDecoder::DequeHash,std::equal_to<std::deque<int>>,true>,std::__unordered_map_equal<std::deque<int>,std::__hash_value_type<std::deque<int>,unsigned long>,std::equal_to<std::deque<int>>,kaldi::AutoRegressiveBeamSearchDecoder::DequeHash,true>,std::allocator<std::__hash_value_type<std::deque<int>,unsigned long>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::deque<int>,unsigned long>,std::__unordered_map_hasher<std::deque<int>,std::__hash_value_type<std::deque<int>,unsigned long>,kaldi::AutoRegressiveBeamSearchDecoder::DequeHash,std::equal_to<std::deque<int>>,true>,std::__unordered_map_equal<std::deque<int>,std::__hash_value_type<std::deque<int>,unsigned long>,std::equal_to<std::deque<int>>,kaldi::AutoRegressiveBeamSearchDecoder::DequeHash,true>,std::allocator<std::__hash_value_type<std::deque<int>,unsigned long>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::deque<int>,unsigned long>,std::__unordered_map_hasher<std::deque<int>,std::__hash_value_type<std::deque<int>,unsigned long>,kaldi::AutoRegressiveBeamSearchDecoder::DequeHash,std::equal_to<std::deque<int>>,true>,std::__unordered_map_equal<std::deque<int>,std::__hash_value_type<std::deque<int>,unsigned long>,std::equal_to<std::deque<int>>,kaldi::AutoRegressiveBeamSearchDecoder::DequeHash,true>,std::allocator<std::__hash_value_type<std::deque<int>,unsigned long>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::deque<int>::~deque[abi:ne200100](v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::__emplace_back_slow_path<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>>(a1, v6);
  }

  v7 = 96 * v2;
  v16 = 0;
  v17 = v7;
  v18 = v7;
  v8 = *a2;
  v9 = a2[1];
  *(v7 + 32) = *(a2 + 4);
  *v7 = v8;
  *(v7 + 16) = v9;
  std::deque<int>::deque(v7 + 40, a2 + 5);
  *(v7 + 88) = *(a2 + 88);
  *&v18 = v18 + 96;
  v10 = *(a1 + 8);
  v11 = v17 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>,kaldi::AutoRegressiveBeamSearchDecoder::HypInfo*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::~__split_buffer(&v16);
  return v15;
}

void sub_1B57ECF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>,kaldi::AutoRegressiveBeamSearchDecoder::HypInfo*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      *(a4 + 32) = *(v6 + 4);
      *a4 = v7;
      *(a4 + 16) = v8;
      *(a4 + 40) = *(v6 + 5);
      *(a4 + 48) = *(v6 + 6);
      *(a4 + 56) = *(v6 + 7);
      v9 = *(v6 + 9);
      *(a4 + 64) = *(v6 + 8);
      *(v6 + 56) = 0uLL;
      *(v6 + 40) = 0uLL;
      *(a4 + 72) = v9;
      *(a4 + 80) = *(v6 + 10);
      *(v6 + 9) = 0;
      *(v6 + 10) = 0;
      *(a4 + 88) = *(v6 + 88);
      v6 += 6;
      a4 += 96;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      result = std::deque<int>::~deque[abi:ne200100](v5 + 5);
      v5 += 6;
    }
  }

  return result;
}

uint64_t std::__split_buffer<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    std::deque<int>::~deque[abi:ne200100]((i - 56));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::deque<int>,unsigned long>,std::__unordered_map_hasher<std::deque<int>,std::__hash_value_type<std::deque<int>,unsigned long>,kaldi::AutoRegressiveBeamSearchDecoder::DequeHash,std::equal_to<std::deque<int>>,true>,std::__unordered_map_equal<std::deque<int>,std::__hash_value_type<std::deque<int>,unsigned long>,std::equal_to<std::deque<int>>,kaldi::AutoRegressiveBeamSearchDecoder::DequeHash,true>,std::allocator<std::__hash_value_type<std::deque<int>,unsigned long>>>::find<std::deque<int>>(void *a1, void *a2)
{
  v4 = kaldi::AutoRegressiveBeamSearchDecoder::DequeHash::operator()(a1, a2);
  v5 = a1[1];
  if (!v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v5 <= v4)
    {
      v8 = v4 % v5;
    }
  }

  else
  {
    v8 = (v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  result = *v9;
  if (*v9)
  {
    v11 = a2[5];
    v12 = a2[1];
    do
    {
      v13 = result[1];
      if (v13 == v6)
      {
        if (result[7] == v11)
        {
          v14 = result[6];
          v15 = result[3];
          v16 = (v15 + 8 * (v14 >> 10));
          if (result[4] == v15)
          {
            v17 = 0;
            v18 = 0;
          }

          else
          {
            v17 = (*v16 + 4 * (result[6] & 0x3FFLL));
            v18 = *(v15 + (((v14 + v11) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v14 + v11) & 0x3FF);
          }

          if (a2[2] == v12)
          {
            v19 = 0;
          }

          else
          {
            v19 = (*(v12 + 8 * (a2[4] >> 10)) + 4 * (a2[4] & 0x3FFLL));
          }

          if (v17 == v18)
          {
            return result;
          }

          v20 = (v12 + 8 * (a2[4] >> 10));
          while (*v17 == *v19)
          {
            if ((++v17 - *v16) == 4096)
            {
              v21 = v16[1];
              ++v16;
              v17 = v21;
            }

            if ((++v19 - *v20) == 4096)
            {
              v22 = v20[1];
              ++v20;
              v19 = v22;
            }

            if (v17 == v18)
            {
              return result;
            }
          }
        }
      }

      else
      {
        if (v7.u32[0] > 1uLL)
        {
          if (v13 >= v5)
          {
            v13 %= v5;
          }
        }

        else
        {
          v13 &= v5 - 1;
        }

        if (v13 != v8)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t kaldi::AutoRegressiveBeamSearchDecoder::DequeHash::operator()(uint64_t a1, void *a2)
{
  result = a2[5];
  v3 = a2[1];
  if (a2[2] != v3)
  {
    v4 = a2[4];
    v5 = (v3 + 8 * (v4 >> 10));
    v6 = *v5;
    v7 = &(*v5)[4 * (v4 & 0x3FF)];
    for (i = *(v3 + (((v4 + result) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v4 + result) & 0x3FF); v7 != i; result = ((result << 6) + (result >> 2) - 1640531527 + v9) ^ result)
    {
      v10 = *v7;
      v7 += 4;
      v9 = v10;
      if (v7 - v6 == 4096)
      {
        v11 = v5[1];
        ++v5;
        v6 = v11;
        v7 = v11;
      }
    }
  }

  return result;
}

uint64_t std::vector<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain>::__emplace_back_slow_path<int &,int &,float &>(uint64_t *a1, _DWORD *a2, int *a3, int *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v8 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v5;
  }

  v21 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v8);
  }

  v9 = 24 * v4;
  v18 = 0;
  v19 = v9;
  v20 = 24 * v4;
  v10 = *a3;
  v11 = *a4;
  v22[0] = *a2;
  v22[1] = v10;
  v22[2] = v11;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = 0;
  std::vector<kaldi::AutoRegressiveBeamSearchDecoder::Token>::__init_with_size[abi:ne200100]<kaldi::AutoRegressiveBeamSearchDecoder::Token const*,kaldi::AutoRegressiveBeamSearchDecoder::Token const*>(24 * v4, v22, &v23, 1uLL);
  *&v20 = v20 + 24;
  v12 = a1[1];
  v13 = (v19 + *a1 - v12);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain>,kaldi::AutoRegressiveBeamSearchDecoder::TokenChain*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<std::vector<int>>::~__split_buffer(&v18);
  return v17;
}

void sub_1B57ED3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain>,kaldi::AutoRegressiveBeamSearchDecoder::TokenChain*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v6 += 24;
      a4 += 3;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v7;
        operator delete(v7);
      }

      v5 += 24;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain>,kaldi::AutoRegressiveBeamSearchDecoder::TokenChain*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain>,kaldi::AutoRegressiveBeamSearchDecoder::TokenChain*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::deque<int>,unsigned long>,std::__unordered_map_hasher<std::deque<int>,std::__hash_value_type<std::deque<int>,unsigned long>,kaldi::AutoRegressiveBeamSearchDecoder::DequeHash,std::equal_to<std::deque<int>>,true>,std::__unordered_map_equal<std::deque<int>,std::__hash_value_type<std::deque<int>,unsigned long>,std::equal_to<std::deque<int>>,kaldi::AutoRegressiveBeamSearchDecoder::DequeHash,true>,std::allocator<std::__hash_value_type<std::deque<int>,unsigned long>>>::__emplace_unique_key_args<std::deque<int>,std::piecewise_construct_t const&,std::tuple<std::deque<int> const&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = kaldi::AutoRegressiveBeamSearchDecoder::DequeHash::operator()(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!v6)
  {
    goto LABEL_34;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v6 <= v4)
    {
      v8 = v4 % v6;
    }
  }

  else
  {
    v8 = (v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_34:
    std::__hash_table<std::__hash_value_type<std::deque<int>,unsigned long>,std::__unordered_map_hasher<std::deque<int>,std::__hash_value_type<std::deque<int>,unsigned long>,kaldi::AutoRegressiveBeamSearchDecoder::DequeHash,std::equal_to<std::deque<int>>,true>,std::__unordered_map_equal<std::deque<int>,std::__hash_value_type<std::deque<int>,unsigned long>,std::equal_to<std::deque<int>>,kaldi::AutoRegressiveBeamSearchDecoder::DequeHash,true>,std::allocator<std::__hash_value_type<std::deque<int>,unsigned long>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::deque<int> const&>,std::tuple<>>();
  }

  v11 = a2[5];
  v12 = a2[1];
  while (1)
  {
    v13 = v10[1];
    if (v13 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v13 >= v6)
      {
        v13 %= v6;
      }
    }

    else
    {
      v13 &= v6 - 1;
    }

    if (v13 != v8)
    {
      goto LABEL_34;
    }

LABEL_19:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_34;
    }
  }

  if (v10[7] != v11)
  {
    goto LABEL_19;
  }

  v14 = v10[6];
  v15 = v10[3];
  v16 = (v15 + 8 * (v14 >> 10));
  if (v10[4] == v15)
  {
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v17 = (*v16 + 4 * (v10[6] & 0x3FFLL));
    v18 = *(v15 + (((v14 + v11) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v14 + v11) & 0x3FF);
  }

  if (a2[2] == v12)
  {
    v19 = 0;
  }

  else
  {
    v19 = (*(v12 + 8 * (a2[4] >> 10)) + 4 * (a2[4] & 0x3FFLL));
  }

  if (v17 != v18)
  {
    v20 = (v12 + 8 * (a2[4] >> 10));
    while (*v17 == *v19)
    {
      if ((++v17 - *v16) == 4096)
      {
        v21 = v16[1];
        ++v16;
        v17 = v21;
      }

      if ((++v19 - *v20) == 4096)
      {
        v22 = v20[1];
        ++v20;
        v19 = v22;
      }

      if (v17 == v18)
      {
        return v10;
      }
    }

    goto LABEL_19;
  }

  return v10;
}

void sub_1B57ED7F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::deque<int>,unsigned long>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::deque<int>,unsigned long>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::deque<int>,unsigned long>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::deque<int>,unsigned long>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::deque<int>::~deque[abi:ne200100](v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

float std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>::__construct_one_at_end[abi:ne200100]<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain const&,float &>(uint64_t a1, uint64_t *a2, float *a3)
{
  v5 = *(a1 + 8);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  std::vector<kaldi::AutoRegressiveBeamSearchDecoder::Token>::__init_with_size[abi:ne200100]<kaldi::AutoRegressiveBeamSearchDecoder::Token*,kaldi::AutoRegressiveBeamSearchDecoder::Token*>(v5, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2));
  result = *a3;
  *(v5 + 24) = *a3;
  *(a1 + 8) = v5 + 32;
  return result;
}

uint64_t std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>::__emplace_back_slow_path<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain const&,float &>(uint64_t *a1, uint64_t *a2, _DWORD *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - *a1;
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

  v20 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TextTokenizer::TokenString>>(a1, v9);
  }

  v10 = 32 * v3;
  v17 = 0;
  v18 = v10;
  v19 = v10;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  std::vector<kaldi::AutoRegressiveBeamSearchDecoder::Token>::__init_with_size[abi:ne200100]<kaldi::AutoRegressiveBeamSearchDecoder::Token*,kaldi::AutoRegressiveBeamSearchDecoder::Token*>(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2));
  *(v10 + 24) = *a3;
  *&v19 = v19 + 32;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>,std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<fst::IntervalSet<int>>::~__split_buffer(&v17);
  return v16;
}

void sub_1B57EDA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::IntervalSet<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>,std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(a4 + 24) = *(v6 + 24);
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>,std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>::__assign_with_size[abi:ne200100]<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float> const*,std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float> const*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    std::vector<fst::IntervalSet<int>>::__vdeallocate(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<quasar::TextTokenizer::TokenString>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - v8;
  if (a4 <= (v12 - v8) >> 5)
  {
    if (a2 != a3)
    {
      do
      {
        std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>::operator=[abi:ne200100](v8, v6);
        v6 += 32;
        v8 += 32;
      }

      while (v6 != a3);
      v12 = a1[1];
    }

    if (v12 != v8)
    {
      v16 = v12;
      do
      {
        v18 = *(v16 - 32);
        v16 -= 32;
        v17 = v18;
        if (v18)
        {
          *(v12 - 24) = v17;
          operator delete(v17);
        }

        v12 = v16;
      }

      while (v16 != v8);
    }

    a1[1] = v8;
  }

  else
  {
    if (v12 != v8)
    {
      v14 = v12 - v8;
      v15 = a2;
      do
      {
        std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>::operator=[abi:ne200100](v8, v15);
        v15 += 32;
        v8 += 32;
        v14 -= 32;
      }

      while (v14);
      v12 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>,std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float> const*,std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float> const*,std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>*>(a1, v6 + v13, a3, v12);
  }
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>,std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float> const*,std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float> const*,std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      std::vector<kaldi::AutoRegressiveBeamSearchDecoder::Token>::__init_with_size[abi:ne200100]<kaldi::AutoRegressiveBeamSearchDecoder::Token*,kaldi::AutoRegressiveBeamSearchDecoder::Token*>(v4, *v6, *(v6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 8) - *v6) >> 2));
      *(v4 + 24) = *(v6 + 24);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>,std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    std::vector<kaldi::AutoRegressiveBeamSearchDecoder::Token>::__assign_with_size[abi:ne200100]<kaldi::AutoRegressiveBeamSearchDecoder::Token*,kaldi::AutoRegressiveBeamSearchDecoder::Token*>(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2));
  }

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>::__emplace_back_slow_path<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float &>(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 4 > v4)
  {
    v4 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TextTokenizer::TokenString>>(a1, v8);
  }

  v9 = 32 * v3;
  v16 = 0;
  v17 = v9;
  *(&v18 + 1) = 0;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = *a2;
  *(v9 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v9 + 24) = *a3;
  *&v18 = 32 * v3 + 32;
  v10 = a1[1];
  v11 = 32 * v3 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>,std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<fst::IntervalSet<int>>::~__split_buffer(&v16);
  return v15;
}

void sub_1B57EDF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::IntervalSet<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void quasar::GlobalTranslatorFactory::createTranslatorFactory(uint64_t a1, int a2, char a3, char a4)
{
  v7 = a2;
  v6 = a3;
  v5 = a4;
  if (quasar::gLogLevel >= 5)
  {
    memset(v4, 0, sizeof(v4));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "creating PDecTranslatorFactory", 30);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v4);
  }

  std::allocate_shared[abi:ne200100]<quasar::GlobalPDecTranslatorFactory,std::allocator<quasar::GlobalPDecTranslatorFactory>,quasar::SystemConfig const&,int &,BOOL &,BOOL &,std::shared_ptr<quasar::ContextProvider> &,0>();
}

void quasar::GlobalTranslatorFactory::createTranslatorFactory(uint64_t *a1, int a2, char a3, uint64_t a4)
{
  v4 = *a1;
  if (a1[1] - v4 == 1560)
  {
    v6 = *(a4 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    quasar::GlobalTranslatorFactory::createTranslatorFactory(v4, a2, 1, a3);
  }

  std::allocate_shared[abi:ne200100]<quasar::GlobalHotfixTranslatorFactory,std::allocator<quasar::GlobalHotfixTranslatorFactory>,std::vector<quasar::SystemConfig> const&,int &,BOOL &,std::shared_ptr<quasar::ContextProvider> &,0>();
}

void sub_1B57EE09C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<quasar::GlobalPDecTranslatorFactory>::__shared_ptr_emplace[abi:ne200100]<quasar::SystemConfig const&,int &,BOOL &,BOOL &,std::shared_ptr<quasar::ContextProvider> &,std::allocator<quasar::GlobalPDecTranslatorFactory>,0>(void *a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, unsigned __int8 *a5, uint64_t *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D31E10;
  std::allocator<quasar::GlobalPDecTranslatorFactory>::construct[abi:ne200100]<quasar::GlobalPDecTranslatorFactory,quasar::SystemConfig const&,int &,BOOL &,BOOL &,std::shared_ptr<quasar::ContextProvider> &>(&v8, (a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

void std::__shared_ptr_emplace<quasar::GlobalPDecTranslatorFactory>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D31E10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::GlobalPDecTranslatorFactory>::construct[abi:ne200100]<quasar::GlobalPDecTranslatorFactory,quasar::SystemConfig const&,int &,BOOL &,BOOL &,std::shared_ptr<quasar::ContextProvider> &>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned __int8 *a5, unsigned __int8 *a6, uint64_t *a7)
{
  v8 = *a4;
  v9 = *a5;
  v10 = *a6;
  v11 = a7[1];
  v12 = *a7;
  v13 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::GlobalPDecTranslatorFactory::GlobalPDecTranslatorFactory(a2, a3, v8, v9, v10, &v12);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_1B57EE2D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<quasar::GlobalHotfixTranslatorFactory>::__shared_ptr_emplace[abi:ne200100]<std::vector<quasar::SystemConfig> const&,int &,BOOL &,std::shared_ptr<quasar::ContextProvider> &,std::allocator<quasar::GlobalHotfixTranslatorFactory>,0>(void *a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D31E60;
  std::allocator<quasar::GlobalHotfixTranslatorFactory>::construct[abi:ne200100]<quasar::GlobalHotfixTranslatorFactory,std::vector<quasar::SystemConfig> const&,int &,BOOL &,std::shared_ptr<quasar::ContextProvider> &>(&v7, (a1 + 3), a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<quasar::GlobalHotfixTranslatorFactory>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D31E60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::GlobalHotfixTranslatorFactory>::construct[abi:ne200100]<quasar::GlobalHotfixTranslatorFactory,std::vector<quasar::SystemConfig> const&,int &,BOOL &,std::shared_ptr<quasar::ContextProvider> &>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned __int8 *a5, uint64_t *a6)
{
  v7 = *a4;
  v8 = *a5;
  v9 = a6[1];
  v10 = *a6;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::GlobalHotfixTranslatorFactory::GlobalHotfixTranslatorFactory(a2, a3, v7, v8, &v10);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1B57EE4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

char *srilm_ts_strerror(int a1)
{
  v2 = errBuffTLS();
  v3 = *v2;
  if (!*v2)
  {
    v4 = v2;
    v3 = malloc_type_calloc(0x100uLL, 1uLL, 0x100004077774924uLL);
    *v4 = v3;
  }

  strerror_r(a1, v3, 0x100uLL);
  return v3;
}

void srilm_tserror_freeThread()
{
  v0 = errBuffTLS();
  if (*v0)
  {
    free(*v0);
    *v0 = 0;
  }
}

void quasar::lm::arpa2fst::kaldi_fork::ArpaLmCompiler::~ArpaLmCompiler(quasar::lm::arpa2fst::kaldi_fork::ArpaLmCompiler *this)
{
  *this = &unk_1F2D31EB0;
  v2 = *(this + 13);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  quasar::lm::arpa2fst::kaldi_fork::ArpaFileParser::~ArpaFileParser(this);
}

{
  quasar::lm::arpa2fst::kaldi_fork::ArpaLmCompiler::~ArpaLmCompiler(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::lm::arpa2fst::kaldi_fork::ArpaLmCompiler::HeaderAvailable(quasar::lm::arpa2fst::kaldi_fork::ArpaLmCompiler *this)
{
  if (*(this + 13))
  {
    quasar::lm::LogMessage::LogMessage(&v3, 5, "HeaderAvailable", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-kaldi/arpa-lm-compiler.cpp", 312);
    quasar::rescoring::AdapterModel::getFeaturizer(&v3);
    quasar::lm::LogMessage::~LogMessage(&v3);
  }

  else
  {
    quasar::lm::nullstream(this);
  }

  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 112))(v2);
  }

  operator new();
}

void sub_1B57EECDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  operator delete(v13);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v12);
  MEMORY[0x1B8C85350](v11, v10);
  _Unwind_Resume(a1);
}

void quasar::lm::arpa2fst::kaldi_fork::ArpaLmCompiler::ConsumeNGram(quasar::lm::arpa2fst::kaldi_fork::ArpaFileParser *this, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1] - *a2;
  if (v4)
  {
    v5 = 0;
    if ((v4 >> 2) <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 >> 2;
    }

    while (!v5 || *(v3 + 4 * v5) != *(this + 2))
    {
      v7 = v5 + 1;
      if (v4 >> 2 > (v5 + 1) && *(v3 + 4 * v5) == *(this + 3))
      {
        break;
      }

      ++v5;
      if (v6 == v7)
      {
        goto LABEL_10;
      }
    }

    if (quasar::lm::arpa2fst::kaldi_fork::ArpaFileParser::ShouldWarn(this))
    {
      quasar::lm::LogMessage::LogMessage(v15, 3, "ConsumeNGram", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-kaldi/arpa-lm-compiler.cpp", 339);
      Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(v15);
      quasar::lm::arpa2fst::kaldi_fork::ArpaFileParser::LineReference(__p, this);
      if ((v14 & 0x80u) == 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v11 = v14;
      }

      else
      {
        v11 = __p[1];
      }

      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, v10, v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " skipped: n-gram has invalid BOS/EOS placement", 46);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      quasar::lm::LogMessage::~LogMessage(v15);
    }
  }

  else
  {
LABEL_10:
    v8 = *(**(this + 13) + 16);

    v8();
  }
}

void quasar::lm::arpa2fst::kaldi_fork::ArpaLmCompiler::RemoveRedundantStates(quasar::lm::arpa2fst::kaldi_fork::ArpaLmCompiler *this)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(this + 24);
  if (v1)
  {
    v3 = (*(**(this + 14) + 160))(*(this + 14));
    if (v3 >= 1)
    {
      v4 = 0;
      do
      {
        if ((*(**(this + 14) + 40))(*(this + 14), v4) == 1)
        {
          LODWORD(v13) = (*(**(this + 14) + 32))(*(this + 14), v4);
          v12.n128_u32[0] = 2139095040;
          if (*&v13 == INFINITY)
          {
            v5 = *(this + 14);
            v13 = &unk_1F2D04CD8;
            v16 = 0;
            fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(v5);
            v6 = *(v5 + 8);
            v14 = *(*(v6 + 64) + 8 * v4);
            v15 = (v6 + 8);
            v12 = *(*(v14 + 24) + 16 * v16);
            if (v12.n128_u32[0] == v1)
            {
              v12.n128_u32[0] = 0;
              fst::MutableArcIterator<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::SetValue(&v13, &v12);
            }
          }
        }

        ++v4;
      }

      while (v3 != v4);
    }

    quasar::lm::arpa2fst::kaldi_fork::fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,quasar::lm::arpa2fst::kaldi_fork::fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEpsLocalClass(&v13, *(this + 14));
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }

    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }

    quasar::lm::LogMessage::LogMessage(&v13, 2, "RemoveRedundantStates", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-kaldi/arpa-lm-compiler.cpp", 384);
    Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(&v13);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "Reduced num-states from ", 24);
    v9 = MEMORY[0x1B8C84C00](v8, v3);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " to ", 4);
    v11 = (*(**(this + 14) + 160))(*(this + 14));
    MEMORY[0x1B8C84C00](v10, v11);
    quasar::lm::LogMessage::~LogMessage(&v13);
  }
}

void sub_1B57EF160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::lm::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void quasar::lm::arpa2fst::kaldi_fork::ArpaLmCompiler::Check(quasar::lm::arpa2fst::kaldi_fork::ArpaLmCompiler *this)
{
  if ((*(**(this + 14) + 24))(*(this + 14)) == -1)
  {
    quasar::lm::LogMessage::LogMessage(v9, 5, "Check", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-kaldi/arpa-lm-compiler.cpp", 390);
    Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(v9);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "Arpa file did not contain the beginning-of-sentence symbol ", 59);
    (*(**(this + 4) + 88))(__p);
    if ((v8 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v8 & 0x80u) == 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v4, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ".", 1);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    quasar::lm::LogMessage::~LogMessage(v9);
  }
}

void quasar::lm::arpa2fst::kaldi_fork::ArpaLmCompiler::ReadComplete(quasar::lm::arpa2fst::kaldi_fork::ArpaLmCompiler *this)
{
  if (*(this + 121) == 1)
  {
    (*(**(this + 14) + 280))(*(this + 14), *(this + 4));
    (*(**(this + 14) + 288))();
  }

  if (*(this + 120) == 1)
  {
    quasar::lm::arpa2fst::kaldi_fork::ArpaLmCompiler::RemoveRedundantStates(this);
  }

  quasar::lm::arpa2fst::kaldi_fork::ArpaLmCompiler::Check(this);
}

void *quasar::lm::arpa2fst::kaldi_fork::ArpaLmCompilerImpl<quasar::lm::arpa2fst::kaldi_fork::anonymous namespace::OptimizedHistKey>::~ArpaLmCompilerImpl(void *a1)
{
  *a1 = &unk_1F2D31F08;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((a1 + 5));
  return a1;
}

void quasar::lm::arpa2fst::kaldi_fork::ArpaLmCompilerImpl<quasar::lm::arpa2fst::kaldi_fork::anonymous namespace::OptimizedHistKey>::~ArpaLmCompilerImpl(void *a1)
{
  *a1 = &unk_1F2D31F08;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((a1 + 5));

  JUMPOUT(0x1B8C85350);
}

void quasar::lm::arpa2fst::kaldi_fork::ArpaLmCompilerImpl<quasar::lm::arpa2fst::kaldi_fork::anonymous namespace::OptimizedHistKey>::ConsumeNGram(uint64_t a1, int **a2, int a3)
{
  v6 = *a2;
  v7 = a2[1];
  v50 = 0;
  if (v7 - 1 != v6)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *v6++;
      v8 |= v10 << v9;
      v9 += 21;
    }

    while (v6 != v7 - 1);
    v50 = v8;
  }

  v11 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>((a1 + 40), &v50);
  if (!v11)
  {
    if (quasar::lm::arpa2fst::kaldi_fork::ArpaFileParser::ShouldWarn(*(a1 + 8)))
    {
      quasar::lm::LogMessage::LogMessage(v49, 3, "ConsumeNGram", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-kaldi/arpa-lm-compiler.cpp", 218);
      Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(v49);
      quasar::lm::arpa2fst::kaldi_fork::ArpaFileParser::LineReference(&__p, *(a1 + 8));
      if ((v48 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v48 & 0x80u) == 0)
      {
        v22 = v48;
      }

      else
      {
        v22 = v47;
      }

      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, p_p, v22);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " skipped: no parent (n-1)-gram exists", 37);
      if (v48 < 0)
      {
        operator delete(__p);
      }

      quasar::lm::LogMessage::~LogMessage(v49);
    }

    return;
  }

  v12 = *(v11 + 6);
  v13 = *(v7 - 1);
  v14 = *(a2 + 6);
  if (v13)
  {
    v15 = v13 == *(a1 + 32);
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    quasar::lm::LogMessage::LogMessage(&__p, 5, "ConsumeNGram", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-kaldi/arpa-lm-compiler.cpp", 227);
    v16 = quasar::rescoring::AdapterModel::getFeaturizer(&__p);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " <eps> or disambiguation symbol ", 32);
    v18 = MEMORY[0x1B8C84C00](v17, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "found in the ARPA file. ", 24);
    quasar::lm::LogMessage::~LogMessage(&__p);
  }

  v19 = -v14;
  if (v13 == *(a1 + 28))
  {
    if (!*(a1 + 32))
    {
      LODWORD(v32) = *(a1 + 36);
      goto LABEL_55;
    }

    (*(**(a1 + 16) + 184))(*(a1 + 16), v12, v19);
    return;
  }

  v24 = 0;
  if (a3)
  {
    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  v26 = a2[1];
  v27 = &(*a2)[v25];
  if (v27 != v26)
  {
    v24 = 0;
    v28 = 0;
    do
    {
      v29 = *v27++;
      v24 |= v29 << v28;
      v28 += 21;
    }

    while (v27 != v26);
  }

  v30 = *(a2 + 7);
  v51 = v24;
  v31 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>((a1 + 40), &v51);
  if (v31)
  {
    LODWORD(v32) = *(v31 + 6);
    goto LABEL_55;
  }

  v32 = (*(**(a1 + 16) + 200))(*(a1 + 16));
  v33 = *(a1 + 48);
  if (!*&v33)
  {
    goto LABEL_51;
  }

  v34 = vcnt_s8(v33);
  v34.i16[0] = vaddlv_u8(v34);
  if (v34.u32[0] > 1uLL)
  {
    v35 = v24;
    if (*&v33 <= v24)
    {
      v35 = v24 % *&v33;
    }
  }

  else
  {
    v35 = (*&v33 - 1) & v24;
  }

  v36 = *(*(a1 + 40) + 8 * v35);
  if (!v36 || (v37 = *v36) == 0)
  {
LABEL_51:
    operator new();
  }

  while (1)
  {
    v38 = v37[1];
    if (v38 == v24)
    {
      break;
    }

    if (v34.u32[0] > 1uLL)
    {
      if (v38 >= *&v33)
      {
        v38 %= *&v33;
      }
    }

    else
    {
      v38 &= *&v33 - 1;
    }

    if (v38 != v35)
    {
      goto LABEL_51;
    }

LABEL_50:
    v37 = *v37;
    if (!v37)
    {
      goto LABEL_51;
    }
  }

  if (v37[2] != v24)
  {
    goto LABEL_50;
  }

  v39 = -v30;
  *(v37 + 6) = v32;
  for (i = v24 >> 21; ; i >>= 21)
  {
    v49[0] = i;
    v41 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>((a1 + 40), v49);
    if (v41)
    {
      break;
    }
  }

  v42 = *(a1 + 16);
  v43 = *(v41 + 6);
  __p = *(a1 + 32);
  v47 = __PAIR64__(v43, LODWORD(v39));
  (*(*v42 + 208))(v42, v32, &__p);
LABEL_55:
  if (v13 == *(a1 + 24))
  {
    v44 = **(a1 + 16);
    if (*(a1 + 32))
    {
      (*(v44 + 176))();
      return;
    }

    v12 = (*(v44 + 200))();
    (*(**(a1 + 16) + 176))(*(a1 + 16), v12);
    v19 = 0.0;
  }

  v45 = *(a1 + 16);
  LODWORD(__p) = v13;
  HIDWORD(__p) = v13;
  v47 = __PAIR64__(v32, LODWORD(v19));
  (*(*v45 + 208))(v45, v12, &__p);
}

void std::__hash_table<std::__hash_value_type<quasar::lm::arpa2fst::kaldi_fork::anonymous namespace::OptimizedHistKey,int>,std::__unordered_map_hasher<quasar::lm::arpa2fst::kaldi_fork::anonymous namespace::OptimizedHistKey,std::__hash_value_type<quasar::lm::arpa2fst::kaldi_fork::anonymous namespace::OptimizedHistKey,int>,quasar::lm::arpa2fst::kaldi_fork::anonymous namespace::OptimizedHistKey::HashType,std::equal_to<quasar::lm::arpa2fst::kaldi_fork::anonymous namespace::OptimizedHistKey>,true>,std::__unordered_map_equal<quasar::lm::arpa2fst::kaldi_fork::anonymous namespace::OptimizedHistKey,std::__hash_value_type<quasar::lm::arpa2fst::kaldi_fork::anonymous namespace::OptimizedHistKey,int>,std::equal_to<quasar::lm::arpa2fst::kaldi_fork::anonymous namespace::OptimizedHistKey>,quasar::lm::arpa2fst::kaldi_fork::anonymous namespace::OptimizedHistKey::HashType,true>,std::allocator<std::__hash_value_type<quasar::lm::arpa2fst::kaldi_fork::anonymous namespace::OptimizedHistKey,int>>>::__rehash_unique[abi:ne200100](uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t std::unordered_map<quasar::lm::arpa2fst::kaldi_fork::anonymous namespace::GeneralHistKey,int,quasar::lm::arpa2fst::kaldi_fork::anonymous namespace::GeneralHistKey::HashType,std::equal_to<quasar::lm::arpa2fst::kaldi_fork::anonymous namespace::GeneralHistKey>,std::allocator<std::pair<quasar::lm::arpa2fst::kaldi_fork::anonymous namespace::GeneralHistKey const,int>>>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[2];
      if (v4)
      {
        v2[3] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void *quasar::lm::arpa2fst::kaldi_fork::ArpaLmCompilerImpl<quasar::lm::arpa2fst::kaldi_fork::anonymous namespace::GeneralHistKey>::~ArpaLmCompilerImpl(void *a1)
{
  *a1 = &unk_1F2D31F58;
  return a1;
}

void quasar::lm::arpa2fst::kaldi_fork::ArpaLmCompilerImpl<quasar::lm::arpa2fst::kaldi_fork::anonymous namespace::GeneralHistKey>::~ArpaLmCompilerImpl(void *a1)
{
  *a1 = &unk_1F2D31F58;

  JUMPOUT(0x1B8C85350);
}

void quasar::lm::arpa2fst::kaldi_fork::ArpaLmCompilerImpl<quasar::lm::arpa2fst::kaldi_fork::anonymous namespace::GeneralHistKey>::ConsumeNGram(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *a2;
  v7 = *(a2 + 8) - 4;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v58, v6, v7, (v7 - v6) >> 2);
  v8 = std::__hash_table<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>>>::find<std::vector<int>>((a1 + 40), &v58);
  if (!v8)
  {
    if (quasar::lm::arpa2fst::kaldi_fork::ArpaFileParser::ShouldWarn(*(a1 + 8)))
    {
      quasar::lm::LogMessage::LogMessage(&v61, 3, "ConsumeNGram", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-kaldi/arpa-lm-compiler.cpp", 218);
      Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(&v61);
      quasar::lm::arpa2fst::kaldi_fork::ArpaFileParser::LineReference(&__p, *(a1 + 8));
      if (v64 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v64 >= 0)
      {
        v19 = HIBYTE(v64);
      }

      else
      {
        v19 = v64;
      }

      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, p_p, v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " skipped: no parent (n-1)-gram exists", 37);
      if (SHIBYTE(v64) < 0)
      {
        operator delete(__p);
      }

      quasar::lm::LogMessage::~LogMessage(&v61);
    }

    goto LABEL_66;
  }

  v9 = *(v8 + 10);
  v10 = *(*(a2 + 8) - 4);
  v11 = *(a2 + 24);
  if (v10)
  {
    v12 = v10 == *(a1 + 32);
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    quasar::lm::LogMessage::LogMessage(&__p, 5, "ConsumeNGram", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-kaldi/arpa-lm-compiler.cpp", 227);
    v13 = quasar::rescoring::AdapterModel::getFeaturizer(&__p);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " <eps> or disambiguation symbol ", 32);
    v15 = MEMORY[0x1B8C84C00](v14, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "found in the ARPA file. ", 24);
    quasar::lm::LogMessage::~LogMessage(&__p);
  }

  v16 = -v11;
  if (v10 == *(a1 + 28))
  {
    if (!*(a1 + 32))
    {
      v26 = *(a1 + 36);
      goto LABEL_61;
    }

    (*(**(a1 + 16) + 184))(*(a1 + 16), v9, v16);
    goto LABEL_66;
  }

  v21 = 4;
  if (!a3)
  {
    v21 = 0;
  }

  v22 = *(a2 + 8);
  v23 = v21 + *a2;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v55, v23, v22, (v22 - v23) >> 2);
  v24 = *(a2 + 28);
  v25 = std::__hash_table<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>>>::find<std::vector<int>>((a1 + 40), &v55);
  if (v25)
  {
    v26 = *(v25 + 10);
    goto LABEL_59;
  }

  v27 = (*(**(a1 + 16) + 200))(*(a1 + 16));
  v29 = v55;
  v28 = v56;
  if (v55 == v56)
  {
    v30 = 0;
  }

  else
  {
    v30 = 0;
    v31 = v55;
    do
    {
      v32 = *v31++;
      v30 = v32 + 7853 * v30;
    }

    while (v31 != v56);
  }

  v33 = *(a1 + 48);
  if (!*&v33)
  {
    goto LABEL_50;
  }

  v52 = v27;
  v34 = vcnt_s8(v33);
  v34.i16[0] = vaddlv_u8(v34);
  v35 = v34.u32[0];
  if (v34.u32[0] > 1uLL)
  {
    v36 = v30;
    if (v30 >= *&v33)
    {
      v36 = v30 % *&v33;
    }
  }

  else
  {
    v36 = (*&v33 - 1) & v30;
  }

  v37 = *(*(a1 + 40) + 8 * v36);
  if (!v37 || (v53 = v36, (v38 = *v37) == 0))
  {
LABEL_50:
    operator new();
  }

  v51 = v9;
  v39 = v56 - v55;
  while (1)
  {
    v40 = v38[1];
    if (v40 == v30)
    {
      break;
    }

    if (v35 > 1)
    {
      if (v40 >= *&v33)
      {
        v40 %= *&v33;
      }
    }

    else
    {
      v40 &= *&v33 - 1;
    }

    if (v40 != v53)
    {
      goto LABEL_50;
    }

LABEL_49:
    v38 = *v38;
    if (!v38)
    {
      goto LABEL_50;
    }
  }

  v41 = v38[2];
  if (v38[3] - v41 != v39)
  {
    goto LABEL_49;
  }

  v42 = v35;
  v43 = memcmp(v41, v29, v28 - v29);
  v35 = v42;
  if (v43)
  {
    goto LABEL_49;
  }

  v9 = v51;
  v26 = v52;
  *(v38 + 10) = v52;
  v62 = 0uLL;
  v61 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v61, v29 + 4, v28, (v28 - (v29 + 4)) >> 2);
  v44 = std::__hash_table<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>>>::find<std::vector<int>>((a1 + 40), &v61);
  if (!v44)
  {
    v46 = v61;
    v45 = v62;
    do
    {
      __p = 0;
      v64 = 0uLL;
      std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&__p, v46 + 4, v45, (v45 - (v46 + 4)) >> 2);
      if (v61)
      {
        *&v62 = v61;
        operator delete(v61);
      }

      v46 = __p;
      v61 = __p;
      v54 = v64;
      v62 = v64;
      v44 = std::__hash_table<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>>>::find<std::vector<int>>((a1 + 40), &v61);
      v45 = v54;
    }

    while (!v44);
    v9 = v51;
  }

  v47 = *(a1 + 16);
  v48 = *(v44 + 10);
  __p = *(a1 + 32);
  *&v64 = -v24;
  DWORD1(v64) = v48;
  (*(*v47 + 208))(v47, v52, &__p);
  if (v61)
  {
    *&v62 = v61;
    operator delete(v61);
  }

LABEL_59:
  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

LABEL_61:
  if (v10 == *(a1 + 24))
  {
    v49 = **(a1 + 16);
    if (*(a1 + 32))
    {
      (*(v49 + 176))();
      goto LABEL_66;
    }

    v9 = (*(v49 + 200))();
    v16 = 0.0;
    (*(**(a1 + 16) + 176))(*(a1 + 16), v9);
  }

  v50 = *(a1 + 16);
  LODWORD(__p) = v10;
  HIDWORD(__p) = v10;
  *&v64 = __PAIR64__(v26, LODWORD(v16));
  (*(*v50 + 208))(v50, v9, &__p);
LABEL_66:
  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }
}

void sub_1B57F0428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<quasar::lm::arpa2fst::kaldi_fork::anonymous namespace::GeneralHistKey,int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<quasar::lm::arpa2fst::kaldi_fork::anonymous namespace::GeneralHistKey,int>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[2];
      if (v3)
      {
        v2[3] = v3;
        operator delete(v3);
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *quasar::lm::arpa2fst::kaldi_fork::fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,quasar::lm::arpa2fst::kaldi_fork::fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEpsLocalClass(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  if ((*(*a2 + 24))(a2) != -1)
  {
    *(a1 + 2) = (*(**a1 + 200))();
    quasar::lm::arpa2fst::kaldi_fork::fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,quasar::lm::arpa2fst::kaldi_fork::fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::InitNumArcs(a1);
    v4 = (*(**a1 + 160))();
    if (v4 >= 1)
    {
      v5 = 0;
      do
      {
        for (i = 0; i < (*(**a1 + 40))(*a1, v5); ++i)
        {
          quasar::lm::arpa2fst::kaldi_fork::fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,quasar::lm::arpa2fst::kaldi_fork::fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEps(a1, v5, i);
        }

        v5 = (v5 + 1);
      }

      while (v5 != v4);
    }

    fst::Connect<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a2);
  }

  return a1;
}

void sub_1B57F0680(_Unwind_Exception *exception_object)
{
  v4 = v1[5];
  if (v4)
  {
    v1[6] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::lm::arpa2fst::kaldi_fork::fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,quasar::lm::arpa2fst::kaldi_fork::fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::InitNumArcs(void *a1)
{
  v2 = (*(**a1 + 160))(*a1);
  std::vector<int>::resize((a1 + 2), v2);
  std::vector<int>::resize((a1 + 5), v2);
  result = (*(**a1 + 24))();
  ++*(a1[2] + 4 * result);
  if (v2 < 1)
  {
    return result;
  }

  for (i = 0; i != v2; ++i)
  {
    LODWORD(v9[0]) = (*(**a1 + 32))(*a1, i);
    v12 = 2139095040;
    if (*v9 != INFINITY)
    {
      ++*(a1[5] + 4 * i);
    }

    v5 = *a1;
    v11 = 0;
    (*(*v5 + 136))(v5, i, v9);
    while (1)
    {
      result = v9[0];
      if (!v9[0])
      {
        if (v11 >= v9[2])
        {
          goto LABEL_17;
        }

LABEL_11:
        v8 = 0;
        v7 = v9[1] + 16 * v11;
        goto LABEL_12;
      }

      v6 = (*(*v9[0] + 24))(v9[0]);
      result = v9[0];
      if (v6)
      {
        break;
      }

      if (!v9[0])
      {
        goto LABEL_11;
      }

      v7 = (*(*v9[0] + 32))();
      v8 = v9[0];
LABEL_12:
      ++*(a1[2] + 4 * *(v7 + 12));
      ++*(a1[5] + 4 * i);
      if (v8)
      {
        (*(*v8 + 40))(v8);
      }

      else
      {
        ++v11;
      }
    }

    if (v9[0])
    {
      result = (*(*v9[0] + 8))();
      continue;
    }

LABEL_17:
    if (v10)
    {
      --*v10;
    }
  }

  return result;
}

void sub_1B57F0944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>();
  }

  else
  {
    quasar::InverseTextNormalizer::getNumTokens((v9 + 24));
  }

  _Unwind_Resume(a1);
}

void quasar::lm::arpa2fst::kaldi_fork::fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,quasar::lm::arpa2fst::kaldi_fork::fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEps(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v15 = 0;
  (*(*v6 + 136))(v6, a2, v13);
  if (!v13[0])
  {
    v15 = a3;
    v8 = a3;
LABEL_7:
    v7 = *(v13[1] + 16 * v8);
    goto LABEL_8;
  }

  (*(*v13[0] + 64))(v13[0], a3);
  if (!v13[0])
  {
    v8 = v15;
    goto LABEL_7;
  }

  v7 = *(*(*v13[0] + 32))(v13[0]);
  if (v13[0])
  {
    v12 = v7;
    (*(*v13[0] + 8))(v13[0]);
    v7 = v12;
    goto LABEL_10;
  }

LABEL_8:
  if (v14)
  {
    --*v14;
  }

LABEL_10:
  if (HIDWORD(v7) != a2 && *(a1 + 2) != HIDWORD(v7))
  {
    v10 = *(a1[5] + 4 * (*(&v7 + 1) >> 32));
    if (*(a1[2] + 4 * (*(&v7 + 1) >> 32)) != 1 || v10 < 2)
    {
      if (v10 == 1)
      {
        quasar::lm::arpa2fst::kaldi_fork::fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,quasar::lm::arpa2fst::kaldi_fork::fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEpsPattern2(a1, a2, a3, v7, *(&v7 + 1));
      }
    }

    else
    {
      quasar::lm::arpa2fst::kaldi_fork::fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,quasar::lm::arpa2fst::kaldi_fork::fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEpsPattern1(a1, a2, a3, v7, *(&v7 + 1));
    }
  }
}

void sub_1B57F0B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a12);
  }

  _Unwind_Resume(a1);
}

void quasar::lm::arpa2fst::kaldi_fork::fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,quasar::lm::arpa2fst::kaldi_fork::fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEpsPattern1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v45 = a5;
  v9 = HIDWORD(a5);
  v41 = 0;
  v42 = 0;
  v43 = 0;
  (*(**a1 + 296))();
  v10 = a5 >> 32;
  v11 = INFINITY;
  v12 = INFINITY;
  while (!(*(*v40 + 24))(v40))
  {
    v39 = *(*(*v40 + 32))(v40);
    if (HIDWORD(v39) != *(a1 + 2))
    {
      if (fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::CanCombineArcs(a1, &v44, &v39, &v38))
      {
        v14 = NAN;
        v13.n128_u32[0] = -8388608;
        if (v12 != -INFINITY)
        {
          v13.n128_u32[0] = DWORD2(v39);
          v14 = NAN;
          if (*(&v39 + 2) != -INFINITY)
          {
            if (v12 >= *(&v39 + 2))
            {
              v14 = *(&v39 + 2);
            }

            else
            {
              v14 = v12;
            }
          }
        }

        --*(a1[5] + 4 * v10);
        --*(a1[2] + 4 * SHIDWORD(v39));
        HIDWORD(v39) = *(a1 + 2);
        (*(*v40 + 88))(v40, &v39, v13);
        std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](&v41, &v38);
        v15 = v11;
      }

      else
      {
        v15 = NAN;
        v14 = v12;
        if (v11 != -INFINITY)
        {
          v15 = NAN;
          v14 = v12;
          if (*(&v39 + 2) != -INFINITY)
          {
            if (v11 >= *(&v39 + 2))
            {
              v15 = *(&v39 + 2);
            }

            else
            {
              v15 = v11;
            }

            v14 = v12;
          }
        }
      }

      v11 = v15;
      v12 = v14;
    }

    (*(*v40 + 40))(v40);
  }

  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  v16.n128_f32[0] = (*(**a1 + 32))(*a1, v9);
  LODWORD(v39) = v16.n128_u32[0];
  LODWORD(v38) = 2139095040;
  if (v16.n128_f32[0] != INFINITY)
  {
    if (v44)
    {
      if (v11 >= v16.n128_f32[0])
      {
        v27 = v16.n128_f32[0];
      }

      else
      {
        v27 = v11;
      }

      if (v16.n128_f32[0] == -INFINITY || v11 == -INFINITY)
      {
        v11 = NAN;
      }

      else
      {
        v11 = v27;
      }
    }

    else
    {
      v17 = NAN;
      if (*&v45 != -INFINITY && v16.n128_f32[0] != -INFINITY)
      {
        if (*&v45 == INFINITY || v16.n128_f32[0] == INFINITY)
        {
          v17 = INFINITY;
        }

        else
        {
          v17 = v16.n128_f32[0] + *&v45;
        }
      }

      if (v12 >= v16.n128_f32[0])
      {
        v19 = v16.n128_f32[0];
      }

      else
      {
        v19 = v12;
      }

      if (v16.n128_f32[0] == -INFINITY || v12 == -INFINITY)
      {
        v12 = NAN;
      }

      else
      {
        v12 = v19;
      }

      LODWORD(v39) = (*(**a1 + 32))(*a1, a2);
      LODWORD(v38) = 2139095040;
      if (*&v39 == INFINITY)
      {
        ++*(a1[5] + 4 * a2);
      }

      v22 = *a1;
      v23.n128_f32[0] = (*(**a1 + 32))(*a1, a2);
      if (v23.n128_f32[0] >= v17)
      {
        v24 = v17;
      }

      else
      {
        v24 = v23.n128_f32[0];
      }

      v26 = v17 == -INFINITY || v23.n128_f32[0] == -INFINITY;
      v23.n128_u32[0] = 2143289344;
      if (!v26)
      {
        v23.n128_f32[0] = v24;
      }

      (*(*v22 + 184))(v22, a2, v23);
      --*(a1[5] + 4 * v10);
      (*(**a1 + 184))(*a1, v9, INFINITY);
    }
  }

  *&v39 = v12;
  LODWORD(v38) = 2139095040;
  v16.n128_f32[0] = v12;
  if (v12 != INFINITY)
  {
    *&v39 = v11;
    LODWORD(v38) = 2139095040;
    v16.n128_f32[0] = v11;
    if (v11 == INFINITY)
    {
      --*(a1[5] + 4 * a2);
      --*(a1[2] + 4 * SHIDWORD(v45));
      HIDWORD(v45) = *(a1 + 2);
      (*(**a1 + 296))(v16);
      (*(*v39 + 64))(v39, a3);
      (*(*v39 + 88))(v39, &v44);
      if (v39)
      {
        (*(*v39 + 8))(v39);
      }
    }

    else
    {
      if (v12 >= v11)
      {
        v30 = v11;
      }

      else
      {
        v30 = v12;
      }

      v32 = v11 == -INFINITY || v12 == -INFINITY;
      v33 = NAN;
      if (v32)
      {
        v34 = NAN;
      }

      else
      {
        v34 = v30;
      }

      if (v11 != -INFINITY && v12 != -INFINITY && (LODWORD(v30) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v33 = INFINITY;
        if (v11 != INFINITY)
        {
          v33 = v11 - v34;
        }
      }

      quasar::lm::arpa2fst::kaldi_fork::fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,quasar::lm::arpa2fst::kaldi_fork::fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::Reweight(a1, a2, a3, v33);
    }
  }

  v35 = v41;
  if (v42 != v41)
  {
    v36 = 0;
    v37 = 0;
    do
    {
      ++*(a1[5] + 4 * a2);
      ++*(a1[2] + 4 * *&v35[v36 + 12]);
      (*(**a1 + 208))(*a1, a2, v16);
      ++v37;
      v35 = v41;
      v36 += 16;
    }

    while (v37 < (v42 - v41) >> 4);
  }

  if (v35)
  {
    v42 = v35;
    operator delete(v35);
  }
}

void sub_1B57F1210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::lm::arpa2fst::kaldi_fork::fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,quasar::lm::arpa2fst::kaldi_fork::fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEpsPattern2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *&a5;
  v27 = a4;
  v28 = a5;
  v10 = a5 >> 32;
  v11 = *(a1[2] + 4 * (a5 >> 32));
  v12 = HIDWORD(a5);
  v13 = (*(**a1 + 32))(*a1, HIDWORD(a5));
  v25[0] = v13;
  v23[0] = 2139095040;
  if (v13 != INFINITY)
  {
    if (a4)
    {
      return;
    }

    v14 = NAN;
    if (v5 != -INFINITY && v13 != -INFINITY)
    {
      v15 = v5 == INFINITY || v13 == INFINITY;
      v16 = v13 + v5;
      if (v15)
      {
        v14 = INFINITY;
      }

      else
      {
        v14 = v16;
      }
    }

    v25[0] = (*(**a1 + 32))(*a1, a2);
    v23[0] = 2139095040;
    if (v25[0] == INFINITY)
    {
      ++*(a1[5] + 4 * a2);
    }

    v17 = *a1;
    v18.n128_f32[0] = (*(**a1 + 32))(*a1, a2);
    if (v18.n128_f32[0] >= v14)
    {
      v19 = v14;
    }

    else
    {
      v19 = v18.n128_f32[0];
    }

    v21 = v14 == -INFINITY || v18.n128_f32[0] == -INFINITY;
    v18.n128_u32[0] = 2143289344;
    if (!v21)
    {
      v18.n128_f32[0] = v19;
    }

    (*(*v17 + 184))(v17, a2, v18);
    if (v11 == 1)
    {
      --*(a1[5] + 4 * v10);
      (*(**a1 + 184))(*a1, v12, INFINITY);
    }

    goto LABEL_36;
  }

  (*(**a1 + 296))(*a1, v12, &v26);
  while (*((*(*v26 + 32))(v26) + 12) == *(a1 + 2))
  {
    (*(*v26 + 40))(v26);
  }

  *v25 = *(*(*v26 + 32))(v26);
  CanCombineArcs = fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::CanCombineArcs(a1, &v27, v25, v23);
  if (CanCombineArcs)
  {
    if (v11 == 1)
    {
      --*(a1[5] + 4 * v10);
      --*(a1[2] + 4 * SLODWORD(v25[3]));
      v25[3] = *(a1 + 2);
      (*(*v26 + 88))(v26, v25);
    }

    ++*(a1[5] + 4 * a2);
    ++*(a1[2] + 4 * v24);
    (*(**a1 + 208))(*a1, a2, v23);
  }

  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  if (CanCombineArcs)
  {
LABEL_36:
    --*(a1[5] + 4 * a2);
    --*(a1[2] + 4 * v10);
    HIDWORD(v28) = *(a1 + 2);
    (*(**a1 + 296))(*a1);
    (*(**v25 + 64))(*v25, a3);
    (*(**v25 + 88))(*v25, &v27);
    if (*v25)
    {
      (*(**v25 + 8))(*v25);
    }
  }
}

void sub_1B57F1784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::lm::arpa2fst::kaldi_fork::fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,quasar::lm::arpa2fst::kaldi_fork::fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::Reweight(void *a1, uint64_t a2, uint64_t a3, float a4)
{
  (*(**a1 + 296))(*a1, a2, &v18);
  (*(*v18 + 64))(v18, a3);
  v7 = *(*(*v18 + 32))(v18);
  v17 = v7;
  v7.n128_u32[0] = v7.n128_u32[2];
  v8 = NAN;
  if (v7.n128_f32[2] != -INFINITY && a4 != -INFINITY)
  {
    v8 = INFINITY;
    v9 = v17.n128_f32[2] == INFINITY || a4 == INFINITY;
    v7.n128_f32[0] = a4 + v17.n128_f32[2];
    if (!v9)
    {
      v8 = a4 + v17.n128_f32[2];
    }
  }

  v17.n128_f32[2] = v8;
  (*(*v18 + 88))(v18, &v17, v7);
  (*(**a1 + 296))(*a1, v17.n128_u32[3], &v16);
  while (!(*(*v16 + 24))(v16))
  {
    *v15 = *(*(*v16 + 32))(v16);
    if (LODWORD(v15[3]) != *(a1 + 2))
    {
      v10 = NAN;
      if (v15[2] != -INFINITY)
      {
        v11 = v15[2] - a4;
        if (v15[2] == INFINITY)
        {
          v11 = INFINITY;
        }

        if ((LODWORD(a4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v10 = v11;
        }
      }

      v15[2] = v10;
      (*(*v16 + 88))(v16, v15);
    }

    (*(*v16 + 40))(v16);
  }

  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v12 = (*(**a1 + 32))(*a1, v17.n128_u32[3]);
  v15[0] = v12;
  LODWORD(v16) = 2139095040;
  if (v12 != INFINITY)
  {
    v13 = NAN;
    if (v12 != -INFINITY && (LODWORD(a4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      v13 = INFINITY;
      if (v12 != INFINITY)
      {
        v13 = v12 - a4;
      }
    }

    (*(**a1 + 184))(*a1, v17.n128_u32[3], v13);
  }

  result = v18;
  if (v18)
  {
    return (*(*v18 + 8))(v18);
  }

  return result;
}

void sub_1B57F1B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B57F1F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v31 = v30;

  _Unwind_Resume(a1);
}

void quasar::SimpleNameEnumerator::addSimpleEnumerations(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  quasar::NameEnumerator::addSpecEnumerations(a1, (a1 + 32), a3, 0, &v24);
  v5 = v24;
  for (i = v25; v5 != i; v5 += 3)
  {
    if (*v5 != v5[1])
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      std::to_string(&__p, *(*v5 + 12));
      v7 = v22;
      if (v22 >= v23)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3);
        v10 = v9 + 1;
        if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v23 - v21) >> 3) > v10)
        {
          v10 = 0x5555555555555556 * ((v23 - v21) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v23 - v21) >> 3) >= 0x555555555555555)
        {
          v11 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v11 = v10;
        }

        v27.__end_cap_.__value_ = &v21;
        if (v11)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v21, v11);
        }

        v12 = 8 * ((v22 - v21) >> 3);
        v13 = *&__p.__r_.__value_.__l.__data_;
        *(v12 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v12 = v13;
        memset(&__p, 0, sizeof(__p));
        v14 = 24 * v9 + 24;
        v15 = (24 * v9 - (v22 - v21));
        memcpy((v12 - (v22 - v21)), v21, v22 - v21);
        v16 = v21;
        v17 = v23;
        v21 = v15;
        v22 = v14;
        v23 = 0;
        v27.__end_ = v16;
        v27.__end_cap_.__value_ = v17;
        v27.__first_ = v16;
        v27.__begin_ = v16;
        std::__split_buffer<std::string>::~__split_buffer(&v27);
        v22 = v14;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v8 = *&__p.__r_.__value_.__l.__data_;
        *(v22 + 2) = *(&__p.__r_.__value_.__l + 2);
        *v7 = v8;
        v22 = v7 + 24;
      }

      v18 = *v5;
      v19 = v5[1];
      while (v18 != v19)
      {
        std::vector<std::string>::push_back[abi:ne200100](&v21, v18);
        v18 += 5;
      }

      std::__tree<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>::__emplace_unique_key_args<std::vector<std::string>,std::vector<std::string> const&>(a4, &v21);
      v27.__first_ = &v21;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v27);
    }
  }

  v27.__first_ = &v24;
  std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__destroy_vector::operator()[abi:ne200100](&v27);
}

void sub_1B57F23F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char *a15, uint64_t a16, uint64_t a17, char a18)
{
  a15 = &a18;
  std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void *quasar::SimpleNameEnumerator::SimpleNameEnumerator(void *a1, __int128 *a2, quasar::PTree *a3)
{
  v5 = quasar::NameEnumerator::NameEnumerator(a1, a2);
  *v5 = &unk_1F2D31F98;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v6 = quasar::PTree::begin(a3);
  if (v6 != quasar::PTree::end(a3))
  {
    v9 = 1;
    LOWORD(__p) = 58;
    quasar::split(v6, &__p, 0, &v10);
  }

  return a1;
}

void sub_1B57F25A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  quasar::NameEnumerator::~NameEnumerator(v19);
  _Unwind_Resume(a1);
}

BOOL quasar::artifact::Artifact::isValid()
{
  archive_read_new();
  archive_read_set_format();
  if (archive_read_open_filename() || (v7 = 0, archive_read_next_header()))
  {
    v0 = 0;
  }

  else
  {
    do
    {
      v2 = archive_entry_pathname();
      std::string::basic_string[abi:ne200100]<0>(&v5, v2);
      if (v6 < 0)
      {
        v0 = *(&v5 + 1) == 15 && *v5 == 0x6E695F7465737361 && *(v5 + 7) == 0x6E6F736A2E6F666ELL;
        operator delete(v5);
      }

      else
      {
        v0 = v6 == 15 && v5 == 0x6E695F7465737361 && *(&v5 + 7) == 0x6E6F736A2E6F666ELL;
      }
    }

    while (!archive_read_next_header() && !v0);
  }

  archive_read_close();
  archive_read_free();
  return v0;
}

uint64_t quasar::artifact::Artifact::Artifact(uint64_t a1, const void ***a2, const void ***a3, const void ***a4)
{
  v13 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F2D31FE8;
  v8 = (a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(v11, "version");
  std::string::basic_string[abi:ne200100]<0>(v12, "locale");
  std::set<std::string>::set[abi:ne200100](v8, v11, 2);
  for (i = 0; i != -6; i -= 3)
  {
    if (v12[i * 8 + 23] < 0)
    {
      operator delete(v11[i + 3]);
    }
  }

  std::set<std::string>::set[abi:ne200100]((a1 + 32), a3);
  std::set<std::string>::set[abi:ne200100]((a1 + 56), a2);
  std::map<std::string,std::vector<std::string>>::map[abi:ne200100]((a1 + 80), a4);
  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 200) = 0;
  *(a1 + 256) = 0;
  *(a1 + 248) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = a1 + 248;
  return a1;
}

void sub_1B57F298C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::__tree<std::string>::destroy((v15 + 7), v15[8]);
  std::__tree<std::string>::destroy((v15 + 4), v15[5]);
  std::__tree<std::string>::destroy(v16, v15[2]);
  _Unwind_Resume(a1);
}

uint64_t quasar::artifact::Artifact::Artifact(uint64_t a1, const void ***a2, const void ***a3, const void ***a4, uint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F2D31FE8;
  v10 = (a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(v14, "version");
  std::string::basic_string[abi:ne200100]<0>(v15, "locale");
  std::set<std::string>::set[abi:ne200100](v10, v14, 2);
  for (i = 0; i != -6; i -= 3)
  {
    if (v15[i * 8 + 23] < 0)
    {
      operator delete(v14[i + 3]);
    }
  }

  std::set<std::string>::set[abi:ne200100]((a1 + 32), a3);
  std::set<std::string>::set[abi:ne200100]((a1 + 56), a2);
  std::map<std::string,std::vector<std::string>>::map[abi:ne200100]((a1 + 80), a4);
  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 168) = 0;
  *(a1 + 184) = 0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 208), *a5, *(a5 + 8));
  }

  else
  {
    v12 = *a5;
    *(a1 + 224) = *(a5 + 16);
    *(a1 + 208) = v12;
  }

  *(a1 + 232) = 0;
  *(a1 + 248) = 0;
  *(a1 + 240) = a1 + 248;
  *(a1 + 256) = 0;
  quasar::artifact::Artifact::read(a1, a5, 1);
  return a1;
}

void sub_1B57F2BE8(_Unwind_Exception *a1)
{
  std::__tree<std::string>::destroy(v6, *(v1 + 184));
  std::__tree<std::string>::destroy(v5, *(v1 + 160));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v4, *(v1 + 136));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v3, *(v1 + 112));
  std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(v1 + 80, *(v1 + 88));
  std::__tree<std::string>::destroy(v1 + 56, *(v1 + 64));
  std::__tree<std::string>::destroy(v1 + 32, *(v1 + 40));
  std::__tree<std::string>::destroy(v2, *(v1 + 16));
  _Unwind_Resume(a1);
}

void sub_1B57F2C90()
{
  v1 = (v0 + 47);
  v2 = -48;
  v3 = (v0 + 47);
  while (1)
  {
    v4 = *v3;
    v3 -= 24;
    if (v4 < 0)
    {
      operator delete(*(v1 - 23));
    }

    v1 = v3;
    v2 += 24;
    if (!v2)
    {
      JUMPOUT(0x1B57F2C88);
    }
  }
}

void sub_1B57F2CC0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B57F2C88);
}

void quasar::artifact::Artifact::read(uint64_t a1, uint64_t a2, int a3)
{
  quasar::artifact::ArchiveReader::ArchiveReader(v31, a2);
  v5 = *(a1 + 232);
  if (v5)
  {
    if (v32 != v5 && quasar::gLogLevel >= 1)
    {
      v29 = 0u;
      v30 = 0u;
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
      *v14 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Artifact file was changed before being loaded", 45);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(v14);
    }
  }

  else
  {
    *(a1 + 232) = v32;
  }

  while (quasar::artifact::ArchiveReader::readNextEntry(v31, 3))
  {
    v7 = archive_entry_pathname();
    std::string::basic_string[abi:ne200100]<0>(v14, v7);
    if (SBYTE7(v15) < 0)
    {
      if (v14[1] != 15)
      {
        goto LABEL_18;
      }

      v8 = v14[0];
    }

    else
    {
      if (SBYTE7(v15) != 15)
      {
        goto LABEL_18;
      }

      v8 = v14;
    }

    v9 = *v8;
    v10 = *(v8 + 7);
    if (v9 == 0x6E695F7465737361 && v10 == 0x6E6F736A2E6F666ELL)
    {
      quasar::artifact::ArchiveReader::readFile(__p, v31);
      quasar::artifact::Artifact::assetJsonStringToMetadata(a1, __p);
    }

LABEL_18:
    if (a1 + 248 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 240, v14))
    {
      if (a3)
      {
        quasar::lm::InsertOrDie<std::set<std::string>>(a1 + 152, v14);
      }

      else if (a1 + 136 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 128, v14))
      {
        quasar::artifact::ArchiveReader::readFile(__p, v31);
        quasar::artifact::Artifact::setContent(a1, v14, __p, 0);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    if (SBYTE7(v15) < 0)
    {
      operator delete(v14[0]);
    }
  }

  (*(*a1 + 32))(a1);
  if ((a3 & 1) == 0)
  {
    *(a1 + 200) = 1;
  }

  quasar::artifact::ArchiveReader::~ArchiveReader(v31);
}

void sub_1B57F2F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a16);
  quasar::artifact::ArchiveReader::~ArchiveReader((v21 - 88));
  _Unwind_Resume(a1);
}

char *quasar::artifact::Artifact::getVersion(quasar::artifact::Artifact *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "version");
  v2 = quasar::lm::FindOrDie<std::map<std::string,std::string>>(this + 104, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1B57F2FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *quasar::lm::FindOrDie<std::map<std::string,std::string>>(uint64_t a1, uint64_t a2)
{
  v4 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1, a2);
  v5 = v4;
  if ((a1 + 8) == v4)
  {
    quasar::lm::LogMessage::LogMessage(v12, 5, "FindOrDie", "../libquasar/liblm/include/lm/stl_utils.h", 104);
    Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(v12);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "missing key ", 12);
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (v8 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
    quasar::lm::LogMessage::~LogMessage(v12);
  }

  else
  {
    quasar::lm::nullstream(v4);
  }

  return v5 + 56;
}

void quasar::artifact::Artifact::getLocale(quasar::artifact::Artifact *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v7, "locale");
  v4 = quasar::lm::FindOrDie<std::map<std::string,std::string>>(this + 104, v7);
  std::string::basic_string[abi:ne200100]<0>(__p, "_");
  quasar::Locale::fromInternalShortIdentifier(v4, __p, a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_1B57F3140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

BOOL quasar::artifact::Artifact::setInfo(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = quasar::artifact::Artifact::checkSupportsInfo(a1, a2);
  if (v6)
  {
    quasar::lm::InsertOrDie<std::map<std::string,std::string>>(a1 + 104, a2, a3);
  }

  return v6;
}

BOOL quasar::artifact::Artifact::checkSupportsInfo(uint64_t a1, uint64_t a2)
{
  v4 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 32, a2);
  v5 = a1 + 40;
  if (v5 == v4 && quasar::gLogLevel >= 1)
  {
    memset(v13, 0, sizeof(v13));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Not able to set metadata. Unsupported key ", 43);
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (v8 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = *(a2 + 8);
    }

    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "", 1);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(v13);
  }

  return v5 != v4;
}

void quasar::artifact::Artifact::getInfo(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (quasar::artifact::Artifact::checkSupportsInfo(a1, a2))
  {
    v6 = quasar::lm::FindOrDie<std::map<std::string,std::string>>(a1 + 104, a2);
    if (v6[23] < 0)
    {
      v8 = *v6;
      v9 = *(v6 + 1);

      std::string::__init_copy_ctor_external(a3, v8, v9);
    }

    else
    {
      v7 = *v6;
      a3->__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&a3->__r_.__value_.__l.__data_ = v7;
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a3, "");
  }
}

BOOL quasar::artifact::Artifact::setContent(uint64_t a1, const void **a2, __int128 *a3, int a4)
{
  v8 = quasar::artifact::Artifact::checkSupportsContent(a1, a2);
  if (v8)
  {
    if (a4)
    {
      quasar::artifact::Artifact::clearContent(a1, a2);
    }

    quasar::lm::InsertOrDie<std::map<std::string,std::string>>(a1 + 128, a2, a3);
    if (a1 + 160 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 152, a2))
    {
      quasar::lm::InsertOrDie<std::set<std::string>>(a1 + 152, a2);
    }

    std::__tree<std::string>::__erase_unique<std::string>((a1 + 240), a2);
  }

  return v8;
}

BOOL quasar::artifact::Artifact::checkSupportsContent(uint64_t a1, uint64_t a2)
{
  v4 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 56, a2);
  v5 = a1 + 64;
  if (v5 == v4 && quasar::gLogLevel >= 1)
  {
    memset(v13, 0, sizeof(v13));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Not able to set info. Unsupported key ", 39);
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (v8 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = *(a2 + 8);
    }

    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "", 1);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(v13);
  }

  return v5 != v4;
}

uint64_t quasar::artifact::Artifact::clearContent(uint64_t a1, const void **a2)
{
  result = quasar::artifact::Artifact::checkSupportsContent(a1, a2);
  if (result)
  {
    if (a1 + 160 != std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 152, a2) && a1 + 136 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 128, a2) && a1 + 248 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 240, a2))
    {
      quasar::lm::InsertOrDie<std::set<std::string>>(a1 + 240, a2);
      v5 = std::__tree<std::string>::__erase_unique<std::string>((a1 + 152), a2);
    }

    else
    {
      result = std::__tree<std::string>::__erase_unique<std::string>((a1 + 152), a2);
      if (!result)
      {
        return result;
      }

      v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__erase_unique<std::string>((a1 + 128), a2);
    }

    return v5 != 0;
  }

  return result;
}

void sub_1B57F3708(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(std::string const&)>::~__value_func[abi:ne200100](va);
  MEMORY[0x1B8C85350](v3, v2);
  _Unwind_Resume(a1);
}

void quasar::artifact::Artifact::setContentFromInputStream(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *a3 + *(**a3 - 24);
  *(v3 + 8) &= ~0x1000u;
  quasar::artifact::Artifact::openContentForWriting();
}

void sub_1B57F3800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    quasar::artifact::Artifact::setContentFromInputStream(a11);
  }

  _Unwind_Resume(exception_object);
}

void quasar::artifact::Artifact::getContentAsString(uint64_t a1@<X0>, const void **a2@<X1>, std::string *a3@<X8>)
{
  if (a1 + 160 != std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 152, a2) && a1 + 136 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 128, a2) && a1 + 248 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 240, a2))
  {
    quasar::artifact::ArchiveReader::ArchiveReader(v9, a1 + 208);
    if (v9[2] != *(a1 + 232) && quasar::gLogLevel >= 1)
    {
      memset(v8, 0, sizeof(v8));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Artifact file was changed before being loaded", 45);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(v8);
    }

    if (quasar::artifact::ArchiveReader::seek(v9, a2))
    {
      quasar::artifact::ArchiveReader::readFile(a3, v9);
      quasar::artifact::ArchiveReader::~ArchiveReader(v9);
      return;
    }

    quasar::artifact::ArchiveReader::~ArchiveReader(v9);
  }

  v6 = quasar::lm::FindOrDie<std::map<std::string,std::string>>(a1 + 128, a2);
  if (v6[23] < 0)
  {
    std::string::__init_copy_ctor_external(a3, *v6, *(v6 + 1));
  }

  else
  {
    v7 = *v6;
    a3->__r_.__value_.__r.__words[2] = *(v6 + 2);
    *&a3->__r_.__value_.__l.__data_ = v7;
  }
}

void sub_1B57F3A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a9);
  quasar::artifact::ArchiveReader::~ArchiveReader((v9 - 56));
  _Unwind_Resume(a1);
}

uint64_t quasar::artifact::ArchiveReader::seek(quasar::artifact::ArchiveReader *a1, uint64_t a2)
{
  v3 = a1;
  while (quasar::artifact::ArchiveReader::readNextEntry(a1, 3))
  {
    v4 = archive_entry_pathname();
    v5 = strlen(v4);
    v6 = v5;
    v7 = *(a2 + 23);
    if (v7 < 0)
    {
      if (v5 != *(a2 + 8))
      {
        goto LABEL_10;
      }

      if (v5 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v8 = *a2;
    }

    else
    {
      v8 = a2;
      if (v6 != v7)
      {
        goto LABEL_10;
      }
    }

    if (!memcmp(v8, v4, v6))
    {
      return 1;
    }

LABEL_10:
    a1 = v3;
  }

  if (quasar::gLogLevel >= 1)
  {
    memset(v18, 0, sizeof(v18));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Failed to find archive entry named ", 35);
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
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ": ", 2);
    v15 = archive_error_string();
    v16 = strlen(v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(v18);
  }

  return 0;
}

uint64_t quasar::artifact::ArchiveReader::readFile(quasar::artifact::ArchiveReader *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  v10 = *MEMORY[0x1E69E9840];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  while (quasar::artifact::ArchiveReader::readData(v1, v9, 0x1000uLL, 3))
  {
    std::ostream::write();
  }

  std::stringbuf::str();
  v4[0] = *MEMORY[0x1E69E54D8];
  v2 = *(MEMORY[0x1E69E54D8] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v4[2] = v2;
  v5 = MEMORY[0x1E69E5548] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v6);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v8);
}

void quasar::artifact::Artifact::getContentAsStream(uint64_t a1, const void **a2)
{
  if (a1 + 160 != std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 152, a2) && a1 + 136 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 128, a2) && a1 + 248 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 240, a2))
  {
    std::allocate_shared[abi:ne200100]<quasar::artifact::ArchiveReader,std::allocator<quasar::artifact::ArchiveReader>,std::string const&,0>();
  }

  quasar::artifact::Artifact::getContentAsString(a1, a2, &__p);
  operator new();
}

void sub_1B57F3F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  MEMORY[0x1B8C85350](v16, 0x10B1C40DC54C11BLL);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v19 = *(v17 - 56);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::artifact::Artifact::write(quasar::artifact::Artifact *a1)
{
  if ((*(*a1 + 32))(a1))
  {
    quasar::artifact::Artifact::metadataToAssetJsonString(a1);
  }

  if (quasar::gLogLevel >= 1)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v4 = 0u;
    v5 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Invalid artifact", 16);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(__p);
  }

  return 0;
}

void sub_1B57F4688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::__shared_weak_count *a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  quasar::artifact::ArchiveWriter::~ArchiveWriter(&a23);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

void quasar::artifact::Artifact::metadataToAssetJsonString(quasar::artifact::Artifact *this)
{
  quasar::PTree::PTree(v19);
  v2 = *(this + 13);
  if (v2 != (this + 112))
  {
    do
    {
      std::pair<std::string,std::string>::pair[abi:ne200100]<std::string const,std::string,0>(&v16, v2 + 2);
      quasar::PTree::PTree(&__p, &v17);
      quasar::PTree::putChild(v19, &v16, &__p, 1);
      quasar::PTree::~PTree(&__p);
      if (v18 < 0)
      {
        operator delete(v17);
      }

      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      v3 = *(v2 + 1);
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = *(v2 + 2);
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (this + 112));
  }

  quasar::PTree::PTree(&v16);
  v6 = *(this + 22);
  if (v6 != (this + 184))
  {
    do
    {
      quasar::PTree::PTree(&__p, v6 + 32);
      quasar::PTree::addChild(&v16, &__p);
      quasar::PTree::~PTree(&__p);
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
          v5 = *v8 == v6;
          v6 = v8;
        }

        while (!v5);
      }

      v6 = v8;
    }

    while (v8 != (this + 184));
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "supported_locales");
  quasar::PTree::putChild(v19, &__p, &v16, 1);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  quasar::PTree::PTree(v15);
  v9 = *(this + 19);
  v10 = this + 160;
  if (v9 != v10)
  {
    do
    {
      quasar::PTree::PTree(&__p, v9 + 32);
      quasar::PTree::addChild(v15, &__p);
      quasar::PTree::~PTree(&__p);
      v11 = *(v9 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v9 + 2);
          v5 = *v12 == v9;
          v9 = v12;
        }

        while (!v5);
      }

      v9 = v12;
    }

    while (v12 != v10);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "content-list");
  quasar::PTree::putChild(v19, &__p, v15, 1);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
  quasar::PTree::writeJson();
}

void sub_1B57F4AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  quasar::PTree::~PTree((v15 - 240));
  quasar::PTree::~PTree((v15 - 176));
  quasar::PTree::~PTree((v15 - 112));
  _Unwind_Resume(a1);
}

void quasar::artifact::Artifact::sync(quasar::artifact::Artifact *this)
{
  if ((*(this + 231) & 0x8000000000000000) != 0)
  {
    if (!*(this + 27))
    {
      return;
    }
  }

  else if (!*(this + 231))
  {
    return;
  }

  if ((*(this + 200) & 1) == 0)
  {
    quasar::artifact::Artifact::read(this, this + 208, 0);
  }
}

uint64_t quasar::artifact::ArchiveWriter::write(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  archive_entry_new();
  archive_entry_set_pathname();
  archive_entry_set_size();
  archive_entry_set_filetype();
  archive_entry_set_perm();
  v8 = archive_write_header();
  archive_entry_free();
  if (v8 != -20 && v8 != 0)
  {
    if (v8 == -10 && a4 >= 1)
    {
      quasar::artifact::ArchiveWriter::write(a1, a2, a3, (a4 - 1));
    }

    if (quasar::gLogLevel < 1)
    {
      return 0;
    }

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
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "Failed to write header for ", 27);
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = *(a2 + 8);
    }

    goto LABEL_25;
  }

  if ((archive_write_data() & 0x8000000000000000) == 0)
  {
    return 1;
  }

  if (quasar::gLogLevel >= 1)
  {
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
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "Unable to write ", 16);
    v15 = *(a2 + 23);
    if (v15 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v15 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = *(a2 + 8);
    }

LABEL_25:
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " to archive: ", 13);
    v18 = archive_error_string();
    v19 = strlen(v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v18, v19);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(&v20);
  }

  return 0;
}

uint64_t quasar::artifact::ArchiveReader::readNextEntry(quasar::artifact::ArchiveReader *this, int a2)
{
  v11 = 0;
  next_header = archive_read_next_header();
  if (next_header < 0)
  {
    if (next_header != -20)
    {
      if (next_header == -10 && a2 >= 1)
      {
        return quasar::artifact::ArchiveReader::readNextEntry(this, a2 - 1);
      }

      goto LABEL_11;
    }

    return v11;
  }

  if (next_header != 1)
  {
    if (next_header)
    {
LABEL_11:
      if (quasar::gLogLevel >= 1)
      {
        memset(v10, 0, sizeof(v10));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Error while trying to read next entry from open archive: ", 57);
        v8 = archive_error_string();
        v9 = strlen(v8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(v10);
      }

      return 0;
    }

    return v11;
  }

  return 0;
}

uint64_t quasar::artifact::ArchiveWriter::write(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v36 = *MEMORY[0x1E69E9840];
  archive_entry_new();
  archive_entry_set_pathname();
  archive_entry_set_filetype();
  archive_entry_set_perm();
  archive_entry_set_size();
  v11 = archive_write_header();
  archive_entry_free();
  if (v11 == -20 || v11 == 0)
  {
    while (1)
    {
      v13 = *(*v5 + *(**v5 - 24) + 32);
      if ((v13 & 2) != 0)
      {
        break;
      }

      std::istream::read();
      if (archive_write_data() < 0)
      {
        if (quasar::gLogLevel >= 1)
        {
          memset(v32, 0, sizeof(v32));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v32);
          v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Failed to write ", 16);
          v15 = *(v9 + 23);
          if (v15 >= 0)
          {
            v16 = v9;
          }

          else
          {
            v16 = *v9;
          }

          if (v15 >= 0)
          {
            v17 = *(v9 + 23);
          }

          else
          {
            v17 = *(v9 + 8);
          }

          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " to archive: ", 13);
          v20 = archive_error_string();
          v21 = strlen(v20);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
          quasar::QuasarErrorMessage::~QuasarErrorMessage(v32);
        }

        return (v13 >> 1) & 1;
      }
    }

    return (v13 >> 1) & 1;
  }

  else
  {
    if (v11 == -10 && v3 >= 1)
    {
      v23 = v5[1];
      v33 = *v5;
      v34 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      quasar::artifact::ArchiveWriter::write(v10, v9, v7, &v33, (v3 - 1));
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }
    }

    if (quasar::gLogLevel >= 1)
    {
      memset(v35, 0, 272);
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v35);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "Failed to write header for ", 27);
      v25 = *(v9 + 23);
      if (v25 >= 0)
      {
        v26 = v9;
      }

      else
      {
        v26 = *v9;
      }

      if (v25 >= 0)
      {
        v27 = *(v9 + 23);
      }

      else
      {
        v27 = *(v9 + 8);
      }

      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " to archive: ", 13);
      v30 = archive_error_string();
      v31 = strlen(v30);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v30, v31);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(v35);
    }

    return 0;
  }
}

void sub_1B57F5278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44, char a45)
{
  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a44);
  }

  _Unwind_Resume(exception_object);
}

void quasar::artifact::Artifact::assetJsonStringToMetadata(uint64_t a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v7);
  quasar::PTree::PTree(&v6);
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v4, v5);
  quasar::PTree::readJson();
}

void sub_1B57F55E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  quasar::PTree::~PTree(&a9);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t quasar::artifact::Artifact::check(quasar::artifact::Artifact *this)
{
  v2 = *(this + 1);
  v3 = (this + 16);
  if (v2 == (this + 16))
  {
LABEL_10:
    quasar::artifact::Artifact::getLocale(this, v36);
    std::string::basic_string[abi:ne200100]<0>(&__p, "-");
    quasar::Locale::toInternalLongIdentifier(v36, &v35);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(*(&v37 + 1));
    }

    if (SBYTE7(v37) < 0)
    {
      operator delete(v36[0]);
    }

    size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v35.__r_.__value_.__l.__size_;
    }

    if (!size || (this + 184) == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(this + 176, &v35.__r_.__value_.__l.__data_))
    {
      if (quasar::gLogLevel >= 1)
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
        v40 = 0u;
        v38 = 0u;
        v39 = 0u;
        *v36 = 0u;
        v37 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v36);
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Supported locale ", 18);
        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v35;
        }

        else
        {
          v18 = v35.__r_.__value_.__r.__words[0];
        }

        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v19 = v35.__r_.__value_.__l.__size_;
        }

        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v18, v19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " not present", 13);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(v36);
      }
    }

    else
    {
      v9 = *(this + 16);
      v10 = this + 136;
      if (v9 == (this + 136))
      {
LABEL_39:
        v16 = 1;
        goto LABEL_70;
      }

      while (1)
      {
        std::pair<std::string,std::string>::pair[abi:ne200100]<std::string const,std::string,0>(&__p, v9 + 2);
        if (!quasar::artifact::Artifact::checkSupportsContent(this, &__p))
        {
          break;
        }

        if ((this + 88) != std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(this + 80, &__p.__r_.__value_.__l.__data_))
        {
          v11 = quasar::lm::FindOrDie<std::map<std::string,std::string>>(this + 80, &__p);
          v12 = *v11;
          v13 = *(v11 + 1);
          while (v12 != v13)
          {
            if ((this + 112) == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(this + 104, v12) && v10 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(this + 128, v12) && (this + 160) == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(this + 152, v12))
            {
              if (quasar::gLogLevel >= 1)
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
                v40 = 0u;
                v38 = 0u;
                v39 = 0u;
                *v36 = 0u;
                v37 = 0u;
                kaldi::KaldiWarnMessage::KaldiWarnMessage(v36);
                v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Required dependent key ", 24);
                v27 = *(v12 + 23);
                if (v27 >= 0)
                {
                  v28 = v12;
                }

                else
                {
                  v28 = *v12;
                }

                if (v27 >= 0)
                {
                  v29 = *(v12 + 23);
                }

                else
                {
                  v29 = v12[1];
                }

                v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " missing from artifact", 23);
                quasar::QuasarErrorMessage::~QuasarErrorMessage(v36);
              }

              goto LABEL_65;
            }

            v12 += 3;
          }
        }

        if (v34 < 0)
        {
          operator delete(v33);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v14 = *(v9 + 1);
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
            v15 = *(v9 + 2);
            v7 = *v15 == v9;
            v9 = v15;
          }

          while (!v7);
        }

        v9 = v15;
        if (v15 == v10)
        {
          goto LABEL_39;
        }
      }

LABEL_65:
      if (v34 < 0)
      {
        operator delete(v33);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v16 = 0;
LABEL_70:
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    return v16;
  }

  v4 = this + 112;
  while (v4 != std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(this + 104, v2 + 4))
  {
    v5 = v2[1];
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
        v6 = v2[2];
        v7 = *v6 == v2;
        v2 = v6;
      }

      while (!v7);
    }

    v2 = v6;
    if (v6 == v3)
    {
      goto LABEL_10;
    }
  }

  if (quasar::gLogLevel >= 1)
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
    v40 = 0u;
    v38 = 0u;
    v39 = 0u;
    *v36 = 0u;
    v37 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v36);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Required key ", 14);
    v22 = *(v2 + 55);
    if (v22 >= 0)
    {
      v23 = (v2 + 4);
    }

    else
    {
      v23 = v2[4];
    }

    if (v22 >= 0)
    {
      v24 = *(v2 + 55);
    }

    else
    {
      v24 = v2[5];
    }

    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " not found in artifact", 23);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(v36);
  }

  return 0;
}

void sub_1B57F5A54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  std::pair<std::string,std::string>::~pair(&a10);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::artifact::Artifact::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120) != *(a2 + 120))
  {
    return 0;
  }

  v15 = v2;
  v16 = v3;
  result = std::equal[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(*(a1 + 104), (a1 + 112), *(a2 + 104));
  if (!result)
  {
    return result;
  }

  if (*(a1 + 192) == *(a2 + 192))
  {
    v7 = *(a1 + 176);
    if (v7 == (a1 + 184))
    {
LABEL_18:
      if (*(a1 + 144) == *(a2 + 144))
      {
        return std::equal[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(*(a1 + 128), (a1 + 136), *(a2 + 128));
      }
    }

    else
    {
      v8 = *(a2 + 176);
      while (std::equal_to<std::string>::operator()[abi:ne200100](&v14, v7 + 4, v8 + 4))
      {
        v9 = v7[1];
        v10 = v7;
        if (v9)
        {
          do
          {
            v7 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v7 = v10[2];
            v11 = *v7 == v10;
            v10 = v7;
          }

          while (!v11);
        }

        v12 = v8[1];
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
            v13 = v8[2];
            v11 = *v13 == v8;
            v8 = v13;
          }

          while (!v11);
        }

        v8 = v13;
        if (v7 == (a1 + 184))
        {
          goto LABEL_18;
        }
      }
    }
  }

  return 0;
}

void *quasar::artifact::ArchiveReader::ArchiveReader(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D32030;
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  stat(v4, &v16);
  a1[2] = v16.st_mtimespec.tv_sec;
  a1[1] = archive_read_new();
  archive_read_set_format();
  if (archive_read_open_filename())
  {
    v5 = quasar::gLogLevel < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    memset(v15, 0, sizeof(v15));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Error while trying to open archive at ", 38);
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

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " for reading: ", 14);
    v12 = archive_error_string();
    v13 = strlen(v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, v13);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(v15);
  }

  return a1;
}

void quasar::artifact::ArchiveReader::~ArchiveReader(quasar::artifact::ArchiveReader *this)
{
  quasar::artifact::ArchiveReader::~ArchiveReader(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D32030;
  archive_read_free();
}

uint64_t quasar::artifact::ArchiveReader::readData(quasar::artifact::ArchiveReader *this, void *a2, unint64_t a3, int a4)
{
  v4 = a4 + 1;
  while (1)
  {
    data = archive_read_data();
    v6 = data;
    if (data != -10)
    {
      break;
    }

    if (--v4 <= 0)
    {
      goto LABEL_6;
    }
  }

  if (data != -30)
  {
    return v6;
  }

LABEL_6:
  if (quasar::gLogLevel >= 1)
  {
    memset(v11, 0, sizeof(v11));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Error while trying to read data from open archive: ", 51);
    v8 = archive_error_string();
    v9 = strlen(v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(v11);
  }

  return v6;
}

void *quasar::artifact::ArchiveWriter::ArchiveWriter(void *a1)
{
  *a1 = &unk_1F2D32060;
  a1[1] = archive_write_new();
  if (archive_write_set_format_zip())
  {
    if (quasar::gLogLevel >= 1)
    {
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
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v13);
      v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Unable to configure archive as ZIP: ", 36);
      v3 = archive_error_string();
      v4 = strlen(v3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
LABEL_12:
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v13);
    }
  }

  else if (archive_write_set_options())
  {
    if (quasar::gLogLevel >= 1)
    {
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
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v13);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Unable to configure archive options: ", 37);
      v6 = archive_error_string();
      v7 = strlen(v6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
      goto LABEL_12;
    }
  }

  else
  {
    if (archive_write_open_filename())
    {
      v8 = quasar::gLogLevel < 1;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
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
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v13);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Unable to open archive: ", 24);
      v10 = archive_error_string();
      v11 = strlen(v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
      goto LABEL_12;
    }
  }

  return a1;
}

void quasar::artifact::ArchiveWriter::~ArchiveWriter(quasar::artifact::ArchiveWriter *this)
{
  quasar::artifact::ArchiveWriter::~ArchiveWriter(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D32060;
  archive_write_free();
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<std::string const,std::string,0>(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_1B57F62B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void virtual thunk tostd::ostringstream::~ostringstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1->__locale_ = (MEMORY[0x1E69E5570] + 24);
  v1[14].__locale_ = (MEMORY[0x1E69E5570] + 64);
  v1[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
  if (SHIBYTE(v1[11].__locale_) < 0)
  {
    operator delete(v1[9].__locale_);
  }

  v1[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(v1 + 2);
  std::ostream::~ostream();

  JUMPOUT(0x1B8C85200);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1->__locale_ = (MEMORY[0x1E69E5570] + 24);
  v1[14].__locale_ = (MEMORY[0x1E69E5570] + 64);
  v1[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
  if (SHIBYTE(v1[11].__locale_) < 0)
  {
    operator delete(v1[9].__locale_);
  }

  v1[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(v1 + 2);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&v1[14]);

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::artifact::ArtifactOutputStream::ArtifactOutputStream(uint64_t a1, uint64_t a2)
{
  *(a1 + 200) = 0;
  *(a1 + 152) = MEMORY[0x1E69E5590] + 16;
  std::ostringstream::basic_ostringstream[abi:ne200100](a1, &off_1F2D32158);
  *a1 = &unk_1F2D32118;
  *(a1 + 152) = &unk_1F2D32140;
  *(a1 + 112) = 0;
  std::__function::__value_func<BOOL ()(std::string const&)>::__value_func[abi:ne200100](a1 + 120, a2);
  return a1;
}

void sub_1B57F6470(_Unwind_Exception *a1)
{
  std::ostringstream::~ostringstream(v2, (v3 + 8));
  MEMORY[0x1B8C85200](v1);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<quasar::artifact::Artifact::openContentForWriting(std::string const&,BOOL)::$_0,std::allocator<quasar::artifact::Artifact::openContentForWriting(std::string const&,BOOL)::$_0>,BOOL ()(std::string const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D32090;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 25) = 0;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<quasar::artifact::Artifact::openContentForWriting(std::string const&,BOOL)::$_0,std::allocator<quasar::artifact::Artifact::openContentForWriting(std::string const&,BOOL)::$_0>,BOOL ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[3];
  v5 = a2[1];
  *a1 = v5;
  *(a1 + *(v5 - 24)) = a2[2];
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, a1 + 1);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  v7 = *a2;
  *a1 = *a2;
  *(a1 + *(v7 - 24)) = a2[3];
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void std::ostringstream::~ostringstream(uint64_t a1)
{
  *a1 = MEMORY[0x1E69E5570] + 24;
  v2 = a1 + 112;
  *(a1 + 112) = MEMORY[0x1E69E5570] + 64;
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](v2);

  JUMPOUT(0x1B8C85350);
}

void quasar::artifact::ArtifactOutputStream::~ArtifactOutputStream(std::locale *this)
{
  MEMORY[0x1B8C85200](v1 + 152);
}

{
  MEMORY[0x1B8C85200](v1 + 152);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toquasar::artifact::ArtifactOutputStream::~ArtifactOutputStream(quasar::artifact::ArtifactOutputStream *this)
{

  JUMPOUT(0x1B8C85200);
}

{
  quasar::artifact::ArtifactOutputStream::~ArtifactOutputStream((this + *(*this - 24)));
}

uint64_t std::__function::__value_func<BOOL ()(std::string const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void quasar::artifact::ArtifactOutputStream::~ArtifactOutputStream(std::locale *this, std::locale::__imp **a2)
{
  v4 = *a2;
  this->__locale_ = *a2;
  *(&this->__locale_ + *(v4 - 3)) = a2[5];
  if ((this[14].__locale_ & 1) == 0)
  {
    quasar::artifact::ArtifactOutputStream::close(this);
  }

  std::__function::__value_func<BOOL ()(std::string const&)>::~__value_func[abi:ne200100](&this[15]);
  v5 = a2[1];
  this->__locale_ = v5;
  *(&this->__locale_ + *(v5 - 3)) = a2[4];
  this[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
  if (SHIBYTE(this[11].__locale_) < 0)
  {
    operator delete(this[9].__locale_);
  }

  this[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 2);

  std::ostream::~ostream();
}

void quasar::artifact::ArtifactOutputStream::close(quasar::artifact::ArtifactOutputStream *this)
{
  std::stringbuf::str();
  v2 = *(this + 18);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = (*(*v2 + 48))(v2, __p);
  v4 = v3;
  if (SBYTE7(v6) < 0)
  {
    operator delete(__p[0]);
    if (v4)
    {
      goto LABEL_9;
    }
  }

  else if (v3)
  {
    goto LABEL_9;
  }

  if (quasar::gLogLevel >= 1)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Something went wrong while writing content.", 43);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(__p);
  }

  std::ios_base::clear((this + *(*this - 24)), *(this + *(*this - 24) + 32) | 4);
LABEL_9:
  *(this + 112) = 1;
}

void *std::__shared_ptr_emplace<quasar::artifact::ArchiveReader>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::artifact::ArchiveReader>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D32248;
  quasar::artifact::ArchiveReader::ArchiveReader(a1 + 3, a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::artifact::ArchiveReader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D32248;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::artifact::ArtifactInputStreamBuffer>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<quasar::artifact::ArchiveReader> &,std::allocator<quasar::artifact::ArtifactInputStreamBuffer>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D32298;
  std::allocator<quasar::artifact::ArtifactInputStreamBuffer>::construct[abi:ne200100]<quasar::artifact::ArtifactInputStreamBuffer,std::shared_ptr<quasar::artifact::ArchiveReader> &>(&v4, (a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::artifact::ArtifactInputStreamBuffer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D32298;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::artifact::ArtifactInputStreamBuffer>::construct[abi:ne200100]<quasar::artifact::ArtifactInputStreamBuffer,std::shared_ptr<quasar::artifact::ArchiveReader> &>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  v4 = *a3;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::artifact::ArtifactInputStreamBuffer::ArtifactInputStreamBuffer(a2, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t quasar::artifact::ArtifactInputStreamBuffer::ArtifactInputStreamBuffer(uint64_t a1, void *a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1B8C850B0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_1F2D322E8;
  v4 = a2[1];
  *(a1 + 4160) = *a2;
  *(a1 + 4168) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 4176) = 0uLL;
  return a1;
}

void quasar::artifact::ArtifactInputStreamBuffer::~ArtifactInputStreamBuffer(std::locale *this)
{
  this->__locale_ = &unk_1F2D322E8;
  locale = this[521].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  this->__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 1);
}

{
  this->__locale_ = &unk_1F2D322E8;
  locale = this[521].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  this->__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 1);

  JUMPOUT(0x1B8C85350);
}

double quasar::artifact::ArtifactInputStreamBuffer::seekoff@<D0>(quasar::artifact::ArtifactInputStreamBuffer *this@<X0>, std::ios_base::seekdir a2@<W2>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v5 = -1;
  if (a2 == cur)
  {
    v6 = a3;
    if ((a3 & 0x8000000000000000) == 0)
    {
      while (1)
      {
        v9 = *(this + 2);
        v8 = *(this + 3);
        if (v6 <= v8 - v9)
        {
          break;
        }

        v6 = v6 - v8 + v9;
        if ((*(*this + 72))(this) == -1)
        {
          v5 = *(this + 523) + *(this + 3) - *(this + 2);
          goto LABEL_7;
        }
      }

      v10 = v8 + v6;
      v11 = this + *(this + 522) + 64;
      *(this + 2) = this + 64;
      *(this + 3) = v10;
      *(this + 4) = v11;
      v5 = v10 - (this + 64) + *(this + 523);
    }
  }

LABEL_7:
  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 128) = v5;
  return result;
}

uint64_t quasar::artifact::ArtifactInputStreamBuffer::underflow(quasar::artifact::ArchiveReader **this)
{
  v2 = (this + 8);
  Data = quasar::artifact::ArchiveReader::readData(this[520], this + 8, 0x1000uLL, 3);
  if (Data < 1)
  {
    return 0xFFFFFFFFLL;
  }

  this[523] = (this[522] + this[523]);
  this[522] = Data;
  this[2] = v2;
  this[3] = v2;
  this[4] = (v2 + Data);
  return *(this + 64);
}

uint64_t quasar::artifact::ArtifactInputStream::ArtifactInputStream(uint64_t a1, uint64_t a2)
{
  *(a1 + 80) = 0;
  v4 = *a2;
  *a1 = &unk_1F2D323F8;
  *(a1 + 8) = 0;
  *(a1 + 32) = &unk_1F2D32420;
  std::ios_base::init((a1 + 32), v4);
  *(a1 + 168) = 0;
  *(a1 + 176) = -1;
  *a1 = &unk_1F2D32388;
  *(a1 + 32) = &unk_1F2D323B0;
  v5 = *(a2 + 8);
  *(a1 + 16) = *a2;
  *(a1 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void quasar::artifact::ArtifactInputStream::~ArtifactInputStream(quasar::artifact::ArtifactInputStream *this)
{
  *this = &unk_1F2D32388;
  v1 = this + 32;
  *(this + 4) = &unk_1F2D323B0;
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::istream::~istream();
  MEMORY[0x1B8C85200](v1);
}

{
  *this = &unk_1F2D32388;
  v1 = this + 32;
  *(this + 4) = &unk_1F2D323B0;
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::istream::~istream();
  MEMORY[0x1B8C85200](v1);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toquasar::artifact::ArtifactInputStream::~ArtifactInputStream(quasar::artifact::ArtifactInputStream *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_1F2D32388;
  v1[4] = &unk_1F2D323B0;
  v2 = v1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::istream::~istream();

  JUMPOUT(0x1B8C85200);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_1F2D32388;
  v1[4] = &unk_1F2D323B0;
  v2 = v1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::istream::~istream();
  MEMORY[0x1B8C85200](v1 + 4);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::artifact::ArchiveReader>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<quasar::artifact::ArchiveReader>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D32248;
  quasar::artifact::ArchiveReader::ArchiveReader(a1 + 3, a2);
  return a1;
}

void *std::__shared_ptr_emplace<quasar::artifact::ArtifactInputStream>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<quasar::artifact::ArtifactInputStreamBuffer> &,std::allocator<quasar::artifact::ArtifactInputStream>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D32458;
  std::allocator<quasar::artifact::ArtifactInputStream>::construct[abi:ne200100]<quasar::artifact::ArtifactInputStream,std::shared_ptr<quasar::artifact::ArtifactInputStreamBuffer> &>(&v4, (a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::artifact::ArtifactInputStream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D32458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::artifact::ArtifactInputStream>::construct[abi:ne200100]<quasar::artifact::ArtifactInputStream,std::shared_ptr<quasar::artifact::ArtifactInputStreamBuffer> &>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  v4 = *a3;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::artifact::ArtifactInputStream::ArtifactInputStream(a2, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1B57F7A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::equal[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(void *a1, void *a2, void *a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  v6 = a1;
  while (1)
  {
    v7 = *(v6 + 55);
    if (v7 >= 0)
    {
      v8 = *(v6 + 55);
    }

    else
    {
      v8 = v6[5];
    }

    v9 = *(a3 + 55);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = a3[5];
    }

    if (v8 != v9)
    {
      break;
    }

    v11 = v7 >= 0 ? v6 + 4 : v6[4];
    v12 = v10 >= 0 ? a3 + 4 : a3[4];
    if (memcmp(v11, v12, v8))
    {
      break;
    }

    v13 = *(v6 + 79);
    if (v13 >= 0)
    {
      v14 = *(v6 + 79);
    }

    else
    {
      v14 = v6[8];
    }

    v15 = *(a3 + 79);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = a3[8];
    }

    if (v14 != v15)
    {
      break;
    }

    v17 = v13 >= 0 ? v6 + 7 : v6[7];
    v18 = v16 >= 0 ? a3 + 7 : a3[7];
    if (memcmp(v17, v18, v14))
    {
      break;
    }

    v19 = v6[1];
    v20 = v6;
    if (v19)
    {
      do
      {
        v6 = v19;
        v19 = *v19;
      }

      while (v19);
    }

    else
    {
      do
      {
        v6 = v20[2];
        v21 = *v6 == v20;
        v20 = v6;
      }

      while (!v21);
    }

    v22 = a3[1];
    if (v22)
    {
      do
      {
        v23 = v22;
        v22 = *v22;
      }

      while (v22);
    }

    else
    {
      do
      {
        v23 = a3[2];
        v21 = *v23 == a3;
        a3 = v23;
      }

      while (!v21);
    }

    a3 = v23;
    if (v6 == a2)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1B57F80BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v41 - 129) < 0)
  {
    operator delete(*(v41 - 152));
  }

  sdapi::SdapiUtil::LocaleInfo::~LocaleInfo(&a28);
  std::__tree<std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>>>::destroy(v41 - 128, *(v41 - 120));

  if (a2 == 1)
  {
    v44 = __cxa_begin_catch(a1);
    v45 = EARLogger::QuasarOSLogger(v44);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      [_EARFormatter initWithLanguage:withSdapiConfig:quasarConfig:];
    }

    __cxa_end_catch();
    JUMPOUT(0x1B57F7E34);
  }

  _Unwind_Resume(a1);
}

void sub_1B57F8688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (a2 == 1)
  {
    v59 = __cxa_begin_catch(a1);
    v60 = EARLogger::QuasarOSLogger(v59);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      [_EARFormatter initWithQuasarConfig:overrideConfigFiles:supportEmojiRecognition:language:skipPathsExistCheck:];
    }

    __cxa_end_catch();
    JUMPOUT(0x1B57F852CLL);
  }

  quasar::SystemConfig::~SystemConfig(&a53);
  _Block_object_dispose((v57 - 152), 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a53);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__17(__n128 *a1, __n128 *a2)
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

void sub_1B57F88FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B57F8CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a2 == 1)
  {
    v42 = __cxa_begin_catch(a1);
    v43 = EARLogger::QuasarOSLogger(v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      [_EARFormatter initNcsWithModelRoot:];
    }

    __cxa_end_catch();
    JUMPOUT(0x1B57F8B90);
  }

  _Unwind_Resume(a1);
}

void sub_1B57F981C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  quasar::FormatWordsHelperInput::~FormatWordsHelperInput(&a72);

  _Unwind_Resume(a1);
}

void sub_1B57F9BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void sub_1B57FA918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, void *a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, void *__p, uint64_t a55, uint64_t a56, uint64_t a57, char *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  a58 = &a39;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a58);

  _Block_object_dispose(&a48, 8);
  if (__p)
  {
    a55 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__49(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B57FAF74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1B57FB4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B57FBB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  a27 = &a21;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a27);
  a27 = &a24;
  std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&a27);

  a27 = &a63;
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](&a27);
  a27 = &a66;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a27);
  a27 = v68 - 256;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a27);

  _Unwind_Resume(a1);
}

void sub_1B57FC1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43)
{
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a43);

  _Unwind_Resume(a1);
}

void sub_1B57FC3DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t **__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  a15 = &a18;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a15);
  a18 = v20 - 56;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a18);

  _Unwind_Resume(a1);
}

void sub_1B57FC6F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, char ***__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char **a21, uint64_t a22, uint64_t a23, char *a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  __p = &a21;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  a21 = &a24;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a21);
  a24 = &a27;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a24);

  _Unwind_Resume(a1);
}

void sub_1B57FCB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  a11 = &a64;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a11);

  _Unwind_Resume(a1);
}

void sub_1B57FD094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t ***a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t **a42, uint64_t a43, uint64_t a44, uint64_t *a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  a34 = &a42;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a34);
  a42 = &a45;
  std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&a42);
  a45 = &a48;
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](&a45);
  a48 = v54 - 256;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a48);
  *(v54 - 256) = v54 - 232;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100]((v54 - 256));
  *(v54 - 232) = v54 - 208;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100]((v54 - 232));
  *(v54 - 208) = v54 - 184;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100]((v54 - 208));
  *(v54 - 184) = v54 - 160;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100]((v54 - 184));
  *(v54 - 160) = v54 - 136;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100]((v54 - 160));
  *(v54 - 136) = v54 - 112;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100]((v54 - 136));

  _Unwind_Resume(a1);
}

void sub_1B57FD3FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char **__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char *a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  __p = &a19;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  a19 = &a23;
  std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&a19);
  a19 = &a26;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a19);

  _Unwind_Resume(a1);
}

void sub_1B57FDA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, char ****__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char ***a18, uint64_t a19, uint64_t a20, char **a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  __p = &a18;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&__p);
  a18 = &a21;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a18);
  a21 = &a25;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a21);
  a25 = &a29;
  std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = (v30 - 112);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a25);

  _Unwind_Resume(a1);
}

void sub_1B57FDD30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char **__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char *a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  *(v24 - 56) = &a10;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100]((v24 - 56));
  __p = &a19;
  std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  a19 = &a22;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a19);

  _Unwind_Resume(a1);
}

quasar::FormatWordsHelperInput *quasar::FormatWordsHelperInput::FormatWordsHelperInput(quasar::FormatWordsHelperInput *this)
{
  v7 = *MEMORY[0x1E69E9840];
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 151) = 0;
  std::string::basic_string[abi:ne200100]<0>(v5, "hey");
  std::string::basic_string[abi:ne200100]<0>(v6, "Siri");
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(this + 176, v5, &v7, 2uLL);
  for (i = 0; i != -6; i -= 3)
  {
    if (v6[i * 8 + 23] < 0)
    {
      operator delete(v5[i + 3]);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "¿");
  std::string::basic_string[abi:ne200100]<0>(v6, "¡");
  std::unordered_set<std::string>::unordered_set(this + 200, v5, 2);
  for (j = 0; j != -6; j -= 3)
  {
    if (v6[j * 8 + 23] < 0)
    {
      operator delete(v5[j + 3]);
    }
  }

  return this;
}

void sub_1B57FDFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v23 = &a21;
  v24 = -48;
  v25 = &a21;
  while (1)
  {
    v26 = *v25;
    v25 -= 24;
    if (v26 < 0)
    {
      operator delete(*(v23 - 23));
    }

    v23 = v25;
    v24 += 24;
    if (!v24)
    {
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
      v27 = *(v21 + 168);
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      if (*(v21 + 151) < 0)
      {
        operator delete(*(v21 + 128));
      }

      if (*(v21 + 127) < 0)
      {
        operator delete(*(v21 + 104));
      }

      __p = (v21 + 80);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
      __p = (v21 + 56);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
      __p = (v21 + 32);
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
      std::__function::__value_func<std::vector<quasar::Token> ()(std::vector<quasar::Token> const&)>::~__value_func[abi:ne200100](v21);
      _Unwind_Resume(a1);
    }
  }
}

quasar::FormatWordsHelperInput *quasar::FormatWordsHelperInput::FormatWordsHelperInput(quasar::FormatWordsHelperInput *this, const quasar::FormatWordsHelperInput *a2)
{
  v4 = std::__function::__value_func<std::vector<quasar::Token> ()(std::vector<quasar::Token> const&)>::__value_func[abi:ne200100](this, a2);
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>((v4 + 4), *(a2 + 4), *(a2 + 5), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 5) - *(a2 + 4)) >> 5));
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 56, *(a2 + 7), *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *(a2 + 7)) >> 3));
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 80, *(a2 + 10), *(a2 + 11), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 11) - *(a2 + 10)) >> 3));
  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external((this + 104), *(a2 + 13), *(a2 + 14));
  }

  else
  {
    v5 = *(a2 + 104);
    *(this + 15) = *(a2 + 15);
    *(this + 104) = v5;
  }

  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external((this + 128), *(a2 + 16), *(a2 + 17));
  }

  else
  {
    v6 = *(a2 + 8);
    *(this + 18) = *(a2 + 18);
    *(this + 8) = v6;
  }

  v7 = *(a2 + 76);
  *(this + 154) = *(a2 + 154);
  *(this + 76) = v7;
  *(this + 20) = *(a2 + 20);
  v8 = *(a2 + 21);
  *(this + 21) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 176, *(a2 + 22), *(a2 + 23), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 23) - *(a2 + 22)) >> 3));
  std::unordered_set<std::string>::unordered_set(this + 200, a2 + 200);
  return this;
}

void sub_1B57FE26C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 127) < 0)
  {
    operator delete(*(v2 + 104));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](va);
  std::__function::__value_func<std::vector<quasar::Token> ()(std::vector<quasar::Token> const&)>::~__value_func[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void quasar::FormatWordsHelperInput::~FormatWordsHelperInput(quasar::FormatWordsHelperInput *this)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 200);
  v3 = (this + 176);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 21);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  v3 = (this + 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 56);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 32);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__function::__value_func<std::vector<quasar::Token> ()(std::vector<quasar::Token> const&)>::~__value_func[abi:ne200100](this);
}

void sub_1B57FE59C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::tennessee::TennesseeTokenizer::createTennesseeTokenizer(uint64_t a1, __int16 a2)
{
  v3 = 0u;
  v2 = &v3;
  v4 = 1;
  v5 = 1024;
  v6 = 0;
  v7 = 0;
  v8 = 5489;
  if ((a2 & 0x100) != 0)
  {
    HIBYTE(v6) = a2;
  }

  quasar::tennessee::TennesseeTokenizer::createTennesseeTokenizer();
}

void sub_1B57FE7BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    quasar::tennessee::TennesseeTokenizer::createTennesseeTokenizer(a11);
  }

  _Unwind_Resume(exception_object);
}

void quasar::tennessee::createTennesseeOptions(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  *a2 = a2 + 8;
  *(a2 + 24) = 1;
  *(a2 + 32) = 1024;
  *(a2 + 36) = 0;
  *(a2 + 38) = 0;
  *(a2 + 40) = 5489;
  *(a2 + 40) = time(0);
  std::string::basic_string[abi:ne200100]<0>(__p, "text-proc.tennessee.rng-seed");
  quasar::SystemConfig::hasParam(a1, __p);
}

void sub_1B57FEB60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v34 - 64) = &unk_1F2CFAA28;
  if (*(v34 - 33) < 0)
  {
    operator delete(*(v34 - 56));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B57FECC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL quasar::tennessee::TennesseeTokenizer::tokenize(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  (*(**(a1 + 8) + 16))(*(a1 + 8), a2, &v15);
  v4 = v15;
  v5 = v16;
  if (v15 == v16)
  {
    v9 = 0;
  }

  else
  {
    do
    {
      v6 = *(v4 + 8);
      if (v6)
      {
        memset(v13, 0, sizeof(v13));
        v7 = *(v4 + 16);
        v8 = 24 * v6;
        do
        {
          memset(&v11, 0, sizeof(v11));
          std::string::operator=(&v11, v7);
          v12 = 0;
          std::vector<quasar::TextTokenizer::Token>::push_back[abi:ne200100](v13, &v11);
          if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v11.__r_.__value_.__l.__data_);
          }

          ++v7;
          v8 -= 24;
        }

        while (v8);
        v14 = 0;
        std::vector<quasar::TextTokenizer::TokenString>::push_back[abi:ne200100](a3, v13);
        v11.__r_.__value_.__r.__words[0] = v13;
        std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v11);
      }

      v4 += 24;
    }

    while (v4 != v5);
    v9 = *a3 != a3[1];
  }

  v13[0] = &v15;
  std::vector<quasar::tennessee::ImmutableVector<std::string>>::__destroy_vector::operator()[abi:ne200100](v13);
  return v9;
}

void sub_1B57FEEAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  a17 = &a21;
  std::vector<quasar::tennessee::ImmutableVector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void quasar::tennessee::TennesseeTokenizer::~TennesseeTokenizer(quasar::tennessee::TennesseeTokenizer *this)
{
  v2 = *(this + 1);
  *this = &unk_1F2D32548;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  quasar::Bitmap::~Bitmap(this);
}

{
  v2 = *(this + 1);
  *this = &unk_1F2D32548;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  quasar::Bitmap::~Bitmap(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineTransducerGraphSearchDecoder::OnlineTransducerGraphSearchDecoder(uint64_t a1, __int128 *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = quasar::Decoder::Decoder(a1, a2);
  *v2 = &unk_1F2D32588;
  *(v2 + 456) = 0x40000000;
  *(v2 + 460) = 1;
  std::string::basic_string[abi:ne200100]<0>((v2 + 464), "");
  _ZNSt3__115allocate_sharedB8ne200100IN6quasar34OnlineTransducerGraphSearchDecoder23LmeCreationDependenciesENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B57FF390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v26 = &a21;
  v27 = -48;
  v28 = &a21;
  while (1)
  {
    v29 = *v28;
    v28 -= 24;
    if (v29 < 0)
    {
      operator delete(*(v26 - 23));
    }

    v26 = v28;
    v27 += 24;
    if (!v27)
    {
      kaldi::quasar::DynamicClassTagDict::~DynamicClassTagDict((v21 + 1776));
      if (*(v21 + 1775) < 0)
      {
        operator delete(*(v21 + 1752));
      }

      if (*(v21 + 1751) < 0)
      {
        operator delete(*(v21 + 1728));
      }

      if (*(v21 + 1727) < 0)
      {
        operator delete(*v24);
      }

      if (*(v21 + 1695) < 0)
      {
        operator delete(*(v21 + 1672));
      }

      if (*(v21 + 1671) < 0)
      {
        operator delete(*(v21 + 1648));
      }

      if (*(v21 + 1647) < 0)
      {
        operator delete(*(v21 + 1624));
      }

      if (*(v21 + 1623) < 0)
      {
        operator delete(*(v21 + 1600));
      }

      if (*(v21 + 1599) < 0)
      {
        operator delete(*(v21 + 1576));
      }

      if (*(v21 + 1575) < 0)
      {
        operator delete(*(v21 + 1552));
      }

      if (*(v21 + 1551) < 0)
      {
        operator delete(*(v21 + 1528));
      }

      if (*(v21 + 1527) < 0)
      {
        operator delete(*(v21 + 1504));
      }

      if (*(v21 + 1503) < 0)
      {
        operator delete(*(v21 + 1480));
      }

      v30 = *(v21 + 1464);
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      v31 = *(v21 + 1448);
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      v32 = (v21 + 1424);
      v33 = *(v21 + 1432);
      *(v21 + 1432) = 0;
      if (v33)
      {
        MEMORY[0x1B8C85350](v33, 0x1000C408195852FLL);
      }

      v34 = *v32;
      *v32 = 0;
      if (v34)
      {
        MEMORY[0x1B8C85350](v34, 0x1000C40605AC02ELL);
      }

      std::unique_ptr<kaldi::quasar::CELabelEncoderNet>::reset[abi:ne200100]((v21 + 1256), 0);
      std::unique_ptr<kaldi::quasar::CEJointPredictorNet>::reset[abi:ne200100]((v21 + 1248), 0);
      std::unique_ptr<kaldi::quasar::CELabelEncoderNet>::reset[abi:ne200100]((v21 + 1240), 0);
      std::unique_ptr<kaldi::quasar::CEAcousticEncoderNet>::reset[abi:ne200100]((v21 + 1232), 0);
      if (*(v21 + 1231) < 0)
      {
        operator delete(*(v21 + 1208));
      }

      if (*(v21 + 1207) < 0)
      {
        operator delete(*(v21 + 1184));
      }

      if (*(v21 + 1183) < 0)
      {
        operator delete(*(v21 + 1160));
      }

      if (*(v21 + 1159) < 0)
      {
        operator delete(*(v21 + 1136));
      }

      if (*(v21 + 1135) < 0)
      {
        operator delete(*(v21 + 1112));
      }

      if (*(v21 + 1111) < 0)
      {
        operator delete(*(v21 + 1088));
      }

      if (*(v21 + 1087) < 0)
      {
        operator delete(*(v21 + 1064));
      }

      quasar::OnlineTransducerGraphSearchDecoder::DecoderCreationDependencies::~DecoderCreationDependencies(v23);
      v35 = *(v21 + 872);
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      std::__tree<int>::destroy(v21 + 840, *(v21 + 848));
      std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(v21 + 816, *(v21 + 824));
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v21 + 776);
      if (*(v21 + 775) < 0)
      {
        operator delete(*(v21 + 752));
      }

      if (*(v21 + 751) < 0)
      {
        operator delete(*(v21 + 728));
      }

      if (*(v21 + 727) < 0)
      {
        operator delete(*(v21 + 704));
      }

      if (*(v21 + 703) < 0)
      {
        operator delete(*(v21 + 680));
      }

      if (*(v21 + 679) < 0)
      {
        operator delete(*(v21 + 656));
      }

      if (*(v21 + 655) < 0)
      {
        operator delete(*(v21 + 632));
      }

      if (*(v21 + 631) < 0)
      {
        operator delete(*(v21 + 608));
      }

      std::__tree<std::string>::destroy(v21 + 584, *(v21 + 592));
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v21 + 544);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v22);
      v36 = *(v21 + 496);
      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      if (*(v21 + 487) < 0)
      {
        operator delete(*(v21 + 464));
      }

      quasar::Decoder::~Decoder(v21);
      _Unwind_Resume(a1);
    }
  }
}

void quasar::OnlineTransducerGraphSearchDecoder::~OnlineTransducerGraphSearchDecoder(quasar::OnlineTransducerGraphSearchDecoder *this)
{
  *this = &unk_1F2D32588;
  v2 = *(this + 281);
  if (v2)
  {
    *(this + 282) = v2;
    operator delete(v2);
  }

  v3 = *(this + 280);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 278);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 276);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 274);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(this + 2183) < 0)
  {
    operator delete(*(this + 270));
  }

  if (*(this + 2159) < 0)
  {
    operator delete(*(this + 267));
  }

  v20 = (this + 2104);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v20);
  v7 = *(this + 260);
  if (v7)
  {
    *(this + 261) = v7;
    operator delete(v7);
  }

  v20 = (this + 2056);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v20);
  v8 = *(this + 254);
  if (v8)
  {
    *(this + 255) = v8;
    operator delete(v8);
  }

  v9 = *(this + 251);
  if (v9)
  {
    *(this + 252) = v9;
    operator delete(v9);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 1984, *(this + 249));
  v10 = *(this + 247);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(this + 245);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 1904);
  v12 = *(this + 235);
  *(this + 235) = 0;
  if (v12)
  {
    MEMORY[0x1B8C85310](v12, 0x1000C8052888210);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 1840);
  v13 = *(this + 227);
  if (v13)
  {
    *(this + 228) = v13;
    operator delete(v13);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 1776);
  if (*(this + 1775) < 0)
  {
    operator delete(*(this + 219));
  }

  if (*(this + 1751) < 0)
  {
    operator delete(*(this + 216));
  }

  if (*(this + 1727) < 0)
  {
    operator delete(*(this + 213));
  }

  if (*(this + 1695) < 0)
  {
    operator delete(*(this + 209));
  }

  if (*(this + 1671) < 0)
  {
    operator delete(*(this + 206));
  }

  if (*(this + 1647) < 0)
  {
    operator delete(*(this + 203));
  }

  if (*(this + 1623) < 0)
  {
    operator delete(*(this + 200));
  }

  if (*(this + 1599) < 0)
  {
    operator delete(*(this + 197));
  }

  if (*(this + 1575) < 0)
  {
    operator delete(*(this + 194));
  }

  if (*(this + 1551) < 0)
  {
    operator delete(*(this + 191));
  }

  if (*(this + 1527) < 0)
  {
    operator delete(*(this + 188));
  }

  if (*(this + 1503) < 0)
  {
    operator delete(*(this + 185));
  }

  v14 = *(this + 183);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *(this + 181);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = *(this + 179);
  *(this + 179) = 0;
  if (v16)
  {
    MEMORY[0x1B8C85350](v16, 0x1000C408195852FLL);
  }

  v17 = *(this + 178);
  *(this + 178) = 0;
  if (v17)
  {
    MEMORY[0x1B8C85350](v17, 0x1000C40605AC02ELL);
  }

  std::unique_ptr<kaldi::quasar::CELabelEncoderNet>::reset[abi:ne200100](this + 157, 0);
  std::unique_ptr<kaldi::quasar::CEJointPredictorNet>::reset[abi:ne200100](this + 156, 0);
  std::unique_ptr<kaldi::quasar::CELabelEncoderNet>::reset[abi:ne200100](this + 155, 0);
  std::unique_ptr<kaldi::quasar::CEAcousticEncoderNet>::reset[abi:ne200100](this + 154, 0);
  if (*(this + 1231) < 0)
  {
    operator delete(*(this + 151));
  }

  if (*(this + 1207) < 0)
  {
    operator delete(*(this + 148));
  }

  if (*(this + 1183) < 0)
  {
    operator delete(*(this + 145));
  }

  if (*(this + 1159) < 0)
  {
    operator delete(*(this + 142));
  }

  if (*(this + 1135) < 0)
  {
    operator delete(*(this + 139));
  }

  if (*(this + 1111) < 0)
  {
    operator delete(*(this + 136));
  }

  if (*(this + 1087) < 0)
  {
    operator delete(*(this + 133));
  }

  quasar::OnlineTransducerGraphSearchDecoder::DecoderCreationDependencies::~DecoderCreationDependencies((this + 904));
  v18 = *(this + 109);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  std::__tree<int>::destroy(this + 840, *(this + 106));
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 816, *(this + 103));
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 776);
  if (*(this + 775) < 0)
  {
    operator delete(*(this + 94));
  }

  if (*(this + 751) < 0)
  {
    operator delete(*(this + 91));
  }

  if (*(this + 727) < 0)
  {
    operator delete(*(this + 88));
  }

  if (*(this + 703) < 0)
  {
    operator delete(*(this + 85));
  }

  if (*(this + 679) < 0)
  {
    operator delete(*(this + 82));
  }

  if (*(this + 655) < 0)
  {
    operator delete(*(this + 79));
  }

  if (*(this + 631) < 0)
  {
    operator delete(*(this + 76));
  }

  std::__tree<std::string>::destroy(this + 584, *(this + 74));
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 544);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 504);
  v19 = *(this + 62);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (*(this + 487) < 0)
  {
    operator delete(*(this + 58));
  }

  quasar::Decoder::~Decoder(this);
}

{
  quasar::OnlineTransducerGraphSearchDecoder::~OnlineTransducerGraphSearchDecoder(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::OnlineTransducerGraphSearchDecoder::registerParams(quasar::QsrTextSymbolTable **this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "transducer-graph-search-decoder");
  quasar::SystemConfig::enforceMinVersion(a2, 250, 0, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  kaldi::quasar::AutoRegressiveGraphSearchDecoderConfig::Register((this + 158), a2);
  kaldi::EndPointerOptions::Register((this + 170), a2);
  kaldi::UtteranceDetectorOptions::Register((this + 172), a2);
  kaldi::quasar::TransducerAutoRegressiveDecodableOptions::Register(this + 1388, a2);
  quasar::QsrTextSymbolTable::Register(this[180], a2, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  std::string::basic_string[abi:ne200100]<0>(__p, "acoustic-encoder-model-file");
  std::string::basic_string[abi:ne200100]<0>(v5, "Transducer acoustic encoder (TF/Espresso/CoreML graph)");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 133), v5, 1, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "label-encoder-model-file");
  std::string::basic_string[abi:ne200100]<0>(v5, "Transducer label encoder (TF/Espresso/CoreML graph)");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 136), v5, 1, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "joint-predictor-model-file");
  std::string::basic_string[abi:ne200100]<0>(v5, "Transducer joint predictor (TF/Espresso/CoreML graph)");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 139), v5, 1, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "nnlm-model-file");
  std::string::basic_string[abi:ne200100]<0>(v5, "Subword neural network language model (TF/Espresso/CoreML graph)");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 142), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "token-syms-file");
  std::string::basic_string[abi:ne200100]<0>(v5, "Token symbol table file");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 145), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "unk-word-symbol");
  std::string::basic_string[abi:ne200100]<0>(v5, "Unknown word symbol");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 148), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "token-word-start-symbol");
  std::string::basic_string[abi:ne200100]<0>(v5, "First token word symbol in word symbol table");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 151), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "chunk-size");
  std::string::basic_string[abi:ne200100]<0>(v5, "Number of acoustic encoder output frames to compute per chunk.");
  quasar::SystemConfig::Register<int>(a2, __p, (this + 177), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "print-best-path-lattice");
  std::string::basic_string[abi:ne200100]<0>(v5, "Print best path lattice for debugging");
  quasar::SystemConfig::Register<BOOL>(a2, __p, this + 2133, v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "reference-rspecifier");
  std::string::basic_string[abi:ne200100]<0>(v5, "Reference transcripts for debugging with oracle decoding");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 267), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "phonetic-reference-rspecifier");
  std::string::basic_string[abi:ne200100]<0>(v5, "Phonetic reference transcripts for debugging with oracle decoding");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 270), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fst-file");
  std::string::basic_string[abi:ne200100]<0>(v5, "HCLG FST filename");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 185), v5, 1, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "g-fst-file");
  std::string::basic_string[abi:ne200100]<0>(v5, "Grammar FST filename");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 191), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "inv-g-fst-file");
  std::string::basic_string[abi:ne200100]<0>(v5, "Inverted Grammar FST filename (overrides uninverted)");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 188), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "big-g-fst-file-list");
  std::string::basic_string[abi:ne200100]<0>(v5, "list of BigGrammar FST filename, use comma to separate multiple ones");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 194), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "big-g-fst-weight-list");
  std::string::basic_string[abi:ne200100]<0>(v5, "the interpolation weights for the FST LMs, use comma to separate multiple ones");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 203), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "max-total-extra-weight");
  std::string::basic_string[abi:ne200100]<0>(v5, "Max first pass weight for limiting total weight of all extra LMs in the first pass - all-app LM and possibly one more app specific LM");
  quasar::SystemConfig::Register<float>(a2, __p, (this + 266), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "big-g-nnet-file-list");
  std::string::basic_string[abi:ne200100]<0>(v5, "list of BigGrammar NNLM filename, use comma to separate multiple ones");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 197), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "nnet-map-file-ext");
  std::string::basic_string[abi:ne200100]<0>(v5, "the file extension name of the corresponding NNLM word map file");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 200), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "big-g-nnet-weight-list");
  std::string::basic_string[abi:ne200100]<0>(v5, "the interpolation weights for the NNLMs, use comma to separate multiple ones");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 206), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "nnlm-nce-norm-factor-list");
  std::string::basic_string[abi:ne200100]<0>(v5, "the normalization factor for NCE trained NNLMs, use comma to separate multiple ones");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 209), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "rnnlm-max-context-size");
  std::string::basic_string[abi:ne200100]<0>(v5, "maximal context for RNN style LM, no-op for other style of LMs");
  quasar::SystemConfig::Register<int>(a2, __p, (this + 236), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "enable-state-access-recording");
  std::string::basic_string[abi:ne200100]<0>(v5, "Record which states in each FST are accessed, to allow for efficient reordering");
  quasar::SystemConfig::Register<BOOL>(a2, __p, this + 2132, v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "rejected-left-context-tokens");
  std::string::basic_string[abi:ne200100]<0>(v5, "List of tokens that don't work with left context. The decoder will reset the left context when it encounters one of these tokens.");
  quasar::SystemConfig::Register<std::unordered_set<std::string>>(a2, __p, (this + 238), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "enable-memory-map");
  std::string::basic_string[abi:ne200100]<0>(v5, "Map FST/NNLM models into memory (requires aligned models)");
  quasar::SystemConfig::Register<BOOL>(a2, __p, this + 1892, v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "inter-utterance-left-context-max-size");
  std::string::basic_string[abi:ne200100]<0>(v5, "Maximum size for inter-utterance left context");
  quasar::SystemConfig::Register<unsigned int>(a2, __p, (this + 243), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "cache-size");
  std::string::basic_string[abi:ne200100]<0>(v5, "Cache size for lazy replace operation");
  quasar::SystemConfig::Register<unsigned int>(a2, __p, (this + 57), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "enable-lme");
  std::string::basic_string[abi:ne200100]<0>(v5, "Enable LME");
  quasar::SystemConfig::Register<BOOL>(a2, __p, this + 460, v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "supported-lme-template-list");
  std::string::basic_string[abi:ne200100]<0>(v5, "Comma-delimited LME template names");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 58), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "classLM-fst-file-list");
  std::string::basic_string[abi:ne200100]<0>(v5, "list of classLM FST filenames, use comma to separate multiple ones");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 76), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "classLM-template-list");
  std::string::basic_string[abi:ne200100]<0>(v5, "list of classLM templates, in the same order as the classLM-fst-file-list");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 79), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "classLM-nnlm-file-list");
  std::string::basic_string[abi:ne200100]<0>(v5, "list of class Nnlm filenames, use comma to separate multiple ones");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 88), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "classLM-nnlm-template-list");
  std::string::basic_string[abi:ne200100]<0>(v5, "list of classNNLM templates");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 82), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "classLM-nnlm-scale-list");
  std::string::basic_string[abi:ne200100]<0>(v5, "list of classNNLM scales");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 85), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "classLM-start-name-list");
  std::string::basic_string[abi:ne200100]<0>(v5, "list of classLM start names, in the same order as the classLM-fst-file-list");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 91), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "classLM-end-name-list");
  std::string::basic_string[abi:ne200100]<0>(v5, "list of classLM end names, in the same order as the classLM-fst-file-list");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 94), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "dynamic-class-lm-emission");
  std::string::basic_string[abi:ne200100]<0>(v5, "If true, enable dynamic classLm emission");
  quasar::SystemConfig::Register<BOOL>(a2, __p, (this + 212), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "dynamic-class-lm-tag-list");
  std::string::basic_string[abi:ne200100]<0>(v5, "THe dynamic class tags list separated by comma");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 213), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "dynamic-class-lm-smallG-file");
  std::string::basic_string[abi:ne200100]<0>(v5, "The prior for correspoding classLm tags. Each line should contain two columns, tag and log prob");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 219), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "static-class-lm-tag-list");
  std::string::basic_string[abi:ne200100]<0>(v5, "The static tags lit separated by comma. Add this will improve dynamic emission's latency");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 216), v5, 0, 250, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  MEMORY[0x1B8C84820](this + 200, "wordmap");
  *(this + 2132) = 0;
  *(this + 1892) = 0;
  *(this + 472) = 7;
  *(this + 1696) = 0;
  *(this + 532) = 1065353216;
  *(this + 486) = 4;
  MEMORY[0x1B8C84820](this + 76, "");
  return MEMORY[0x1B8C84820](this + 79, "");
}

void sub_1B5800CE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::AutoRegressiveGraphSearchDecoderConfig::Register(uint64_t a1, uint64_t a2)
{
  fst::DeterminizeLatticePrunedOptions::Register(a1 + 44, a2);
  std::string::basic_string[abi:ne200100]<0>(v6, "beam");
  std::string::basic_string[abi:ne200100]<0>(__p, "Decoding beam.");
  (*(*a2 + 24))(a2, v6, a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-active");
  std::string::basic_string[abi:ne200100]<0>(__p, "Decoder max active states.");
  (*(*a2 + 8))(a2, v6, a1 + 4, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "min-active");
  std::string::basic_string[abi:ne200100]<0>(__p, "Decoder minimum #active states.");
  (*(*a2 + 8))(a2, v6, a1 + 8, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "lattice-beam");
  std::string::basic_string[abi:ne200100]<0>(__p, "Lattice generation beam");
  (*(*a2 + 24))(a2, v6, a1 + 12, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "prune-interval");
  std::string::basic_string[abi:ne200100]<0>(__p, "Interval (in frames) at which to prune tokens");
  (*(*a2 + 8))(a2, v6, a1 + 16, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "beam-delta");
  std::string::basic_string[abi:ne200100]<0>(__p, "Increment used in decoding-- this parameter is obscure and relates to a speedup in the way the max-active constraint is applied.  Larger is more accurate.");
  (*(*a2 + 24))(a2, v6, a1 + 20, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "hash-ratio");
  std::string::basic_string[abi:ne200100]<0>(__p, "Setting used in decoder to control hash behavior");
  (*(*a2 + 24))(a2, v6, a1 + 24, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "word-ins-penalty");
  std::string::basic_string[abi:ne200100]<0>(__p, "Word insertion penalty applied to each word");
  (*(*a2 + 24))(a2, v6, a1 + 28, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "graph-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "Scaling factor for graph scores");
  (*(*a2 + 24))(a2, v6, a1 + 32, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "acoustic-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "Scaling factor for acoustic scores");
  (*(*a2 + 24))(a2, v6, a1 + 36, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "small-lm-prune-beam-diff");
  std::string::basic_string[abi:ne200100]<0>(__p, "Pruning threshold for small LM before checking with big LM; smaller prunes more aggressively");
  (*(*a2 + 24))(a2, v6, a1 + 68, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-steps");
  std::string::basic_string[abi:ne200100]<0>(__p, "Max number of decoder steps. Inactive if negative (default).");
  (*(*a2 + 8))(a2, v6, a1 + 80, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-total-tokens");
  std::string::basic_string[abi:ne200100]<0>(__p, "Max total allocated tokens at any time.");
  (*(*a2 + 8))(a2, v6, a1 + 84, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-total-forward-links");
  std::string::basic_string[abi:ne200100]<0>(__p, "Max total allocated forward links at any time.");
  (*(*a2 + 8))(a2, v6, a1 + 88, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B58014E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5803414(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B58035D0);
}

void sub_1B5803498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  STACK[0x230] = &a35;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x230]);
  JUMPOUT(0x1B58034ACLL);
}

void sub_1B5803504(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  JUMPOUT(0x1B580356CLL);
}

void sub_1B5803564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  STACK[0x230] = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x230]);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  STACK[0x230] = &a24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x230]);
  std::__function::__value_func<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::~__value_func[abi:ne200100](v28 - 136);
  *(v28 - 136) = &a28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v28 - 136));
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void quasar::OnlineTransducerGraphSearchDecoder::loadDynamicClassTagDict(quasar::OnlineTransducerGraphSearchDecoder *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  v117 = *MEMORY[0x1E69E9840];
  memset(v98, 0, sizeof(v98));
  v99 = 1065353216;
  memset(v96, 0, sizeof(v96));
  v97 = 1065353216;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  kaldi::SplitStringToVector((v1 + 1704), ",", 1, &v93);
  kaldi::SplitStringToVector((v1 + 1728), ",", 1, &v90);
  memset(v88, 0, sizeof(v88));
  v89 = 1065353216;
  v2 = *(v1 + 1775);
  if (v2 < 0)
  {
    v2 = *(v1 + 1760);
  }

  if (!v2)
  {
    v115 = 0uLL;
    v116 = 0uLL;
    v113 = 0uLL;
    v114 = 0uLL;
    v111 = 0uLL;
    v112 = 0uLL;
    v109 = 0uLL;
    v110 = 0uLL;
    v107 = 0uLL;
    v108 = 0uLL;
    v105 = 0uLL;
    v106 = 0uLL;
    v103 = 0uLL;
    v104 = 0uLL;
    v101 = 0uLL;
    v102 = 0uLL;
    __s = 0uLL;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__s);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__s, "The dyanamic classlm tag prior file name is empty", 49);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&__s);
  }

  kaldi::Input::Input(v87, v1 + 1752, 0);
  v3 = kaldi::Input::Stream(v87);
  v4 = *v3;
  if (*(v3 + *(*v3 - 24) + 32))
  {
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    __s = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__s);
    v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__s, "SymbolTable::ReadText: Can't open dyanamic classlm tag file ", 60);
    v61 = *(v1 + 1775);
    if (v61 >= 0)
    {
      v62 = v1 + 1752;
    }

    else
    {
      v62 = *(v1 + 1752);
    }

    if (v61 >= 0)
    {
      v63 = *(v1 + 1775);
    }

    else
    {
      v63 = *(v1 + 1760);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, v62, v63);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&__s);
  }

  v5 = *MEMORY[0x1E69E54E0];
  v6 = *(MEMORY[0x1E69E54E0] + 24);
  while (1)
  {
    std::ios_base::getloc((v3 + *(v4 - 24)));
    v7 = std::locale::use_facet(v70, MEMORY[0x1E69E5318]);
    (v7->__vftable[2].~facet_0)(v7, 10);
    std::locale::~locale(v70);
    v8 = std::istream::getline();
    if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
    {
      break;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, &__s);
    std::istringstream::basic_istringstream[abi:ne200100](v70, &__p, 8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    memset(&__p, 0, sizeof(__p));
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v70, &__p);
    v9 = quasar::QsrTextSymbolTable::Find(*(v1 + 1440), &__p);
    v68 = 0;
    MEMORY[0x1B8C84AD0](v70, &v68);
    v10 = v68;
    v67 = v9;
    v64 = &v67;
    *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v88, &v67) + 5) = v10;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v70[0].__locale_ = v5;
    *(&v70[0].__locale_ + *(v5 - 3)) = v6;
    *&v71 = MEMORY[0x1E69E5548] + 16;
    if (SBYTE7(v76) < 0)
    {
      operator delete(v75);
    }

    *&v71 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&v71 + 1);
    std::istream::~istream();
    MEMORY[0x1B8C85200](&v77 + 8);
    v4 = *v3;
  }

  if (v94 == v93)
  {
LABEL_82:
    if (v91 != v90)
    {
      v39 = 0;
      if (0xAAAAAAAAAAAAAAABLL * ((v91 - v90) >> 3) <= 1)
      {
        v40 = 1;
      }

      else
      {
        v40 = 0xAAAAAAAAAAAAAAABLL * ((v91 - v90) >> 3);
      }

      do
      {
        v41 = quasar::QsrTextSymbolTable::Find(*(v1 + 1440), v90 + v39);
        if (v41 == -1)
        {
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          *v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          *&v70[0].__locale_ = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v70);
          v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, "Could not find ", 16);
          v48 = *(v93 + v39 + 23);
          if (v48 >= 0)
          {
            v49 = v93 + v39;
          }

          else
          {
            v49 = *(v93 + v39);
          }

          if (v48 >= 0)
          {
            v50 = *(v93 + v39 + 23);
          }

          else
          {
            v50 = *(v93 + v39 + 8);
          }

          v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v49, v50);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, " in base symbol table", 22);
          quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v70);
        }

        LODWORD(v70[0].__locale_) = v41;
        std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v96, v70);
        v39 += 24;
        --v40;
      }

      while (v40);
    }

    kaldi::quasar::DynamicClassTagDict::DynamicClassTagDict(v70, v98, v88, v96);
  }

  v11 = 0;
  if (0xAAAAAAAAAAAAAAABLL * ((v94 - v93) >> 3) <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v94 - v93) >> 3);
  }

  while (1)
  {
    v13 = quasar::QsrTextSymbolTable::Find(*(v1 + 1440), v93 + v11);
    if (v13 == -1)
    {
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      *v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      *&v70[0].__locale_ = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v70);
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, "Could not find ", 16);
      v43 = *(v93 + v11 + 23);
      if (v43 >= 0)
      {
        v44 = v93 + v11;
      }

      else
      {
        v44 = *(v93 + v11);
      }

      if (v43 >= 0)
      {
        v45 = *(v93 + v11 + 23);
      }

      else
      {
        v45 = *(v93 + v11 + 8);
      }

      v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v44, v45);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, " in base symbol table", 22);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v70);
    }

    v14 = (v93 + v11);
    if (*(v93 + v11 + 23) >= 0)
    {
      v15 = *(v93 + v11 + 23);
    }

    else
    {
      v15 = *(v93 + v11 + 8);
    }

    std::string::basic_string[abi:ne200100](&__p, v15 + 6);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v15)
    {
      if (v14[23] >= 0)
      {
        v17 = v14;
      }

      else
      {
        v17 = *v14;
      }

      memmove(p_p, v17, v15);
    }

    strcpy(p_p + v15, "-start");
    v18 = (v93 + v11);
    if (*(v93 + v11 + 23) >= 0)
    {
      v19 = *(v93 + v11 + 23);
    }

    else
    {
      v19 = *(v93 + v11 + 8);
    }

    std::string::basic_string[abi:ne200100](&v64, v19 + 4);
    if ((v66 & 0x80u) == 0)
    {
      v20 = &v64;
    }

    else
    {
      v20 = v64;
    }

    if (v19)
    {
      if (v18[23] >= 0)
      {
        v21 = v18;
      }

      else
      {
        v21 = *v18;
      }

      memmove(v20, v21, v19);
    }

    strcpy(v20 + v19, "-end");
    v22 = v13 + 1;
    quasar::QsrTextSymbolTable::Find(*(v1 + 1440), v70);
    v23 = SBYTE7(v71);
    if ((SBYTE7(v71) & 0x80u) == 0)
    {
      locale = BYTE7(v71);
    }

    else
    {
      locale = v70[1].__locale_;
    }

    v25 = v66;
    if ((v66 & 0x80u) != 0)
    {
      v25 = v65;
    }

    if (locale == v25)
    {
      if ((SBYTE7(v71) & 0x80u) == 0)
      {
        v26 = v70;
      }

      else
      {
        v26 = v70[0].__locale_;
      }

      if ((v66 & 0x80u) == 0)
      {
        v27 = &v64;
      }

      else
      {
        v27 = v64;
      }

      v28 = memcmp(v26, v27, locale) != 0;
      if (v23 < 0)
      {
LABEL_57:
        operator delete(v70[0].__locale_);
        if (!v28)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }
    }

    else
    {
      v28 = 1;
      if (SBYTE7(v71) < 0)
      {
        goto LABEL_57;
      }
    }

    if (!v28)
    {
      goto LABEL_59;
    }

LABEL_58:
    v29 = quasar::QsrTextSymbolTable::Find(*(v1 + 1440), &v64);
    v22 = v29;
    if (v29 == -1)
    {
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      *v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      *&v70[0].__locale_ = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v70);
      v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, "Could not find ", 16);
      if ((v66 & 0x80u) == 0)
      {
        v53 = &v64;
      }

      else
      {
        v53 = v64;
      }

      if ((v66 & 0x80u) == 0)
      {
        v54 = v66;
      }

      else
      {
        v54 = v65;
      }

      v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, v53, v54);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, " in base symbol table", 22);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v70);
    }

LABEL_59:
    v30 = v13 + 2;
    quasar::QsrTextSymbolTable::Find(*(v1 + 1440), v70);
    v31 = SBYTE7(v71);
    if ((SBYTE7(v71) & 0x80u) == 0)
    {
      v32 = BYTE7(v71);
    }

    else
    {
      v32 = v70[1].__locale_;
    }

    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (v32 == size)
    {
      if ((SBYTE7(v71) & 0x80u) == 0)
      {
        v34 = v70;
      }

      else
      {
        v34 = v70[0].__locale_;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = &__p;
      }

      else
      {
        v35 = __p.__r_.__value_.__r.__words[0];
      }

      v36 = memcmp(v34, v35, v32) != 0;
      if ((v31 & 0x80000000) == 0)
      {
LABEL_72:
        if (v36)
        {
          goto LABEL_76;
        }

        goto LABEL_77;
      }
    }

    else
    {
      v36 = 1;
      if ((SBYTE7(v71) & 0x80000000) == 0)
      {
        goto LABEL_72;
      }
    }

    operator delete(v70[0].__locale_);
    if (v36)
    {
LABEL_76:
      v37 = quasar::QsrTextSymbolTable::Find(*(v1 + 1440), &__p);
      v30 = v37;
      if (v37 == -1)
      {
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        *v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        *&v70[0].__locale_ = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v70);
        v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, "Could not find ", 16);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v57 = &__p;
        }

        else
        {
          v57 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v58 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v58 = __p.__r_.__value_.__l.__size_;
        }

        v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, v57, v58);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, " in base symbol table", 22);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v70);
      }
    }

LABEL_77:
    v68 = v13;
    v70[0].__locale_ = &v68;
    v38 = std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v98, &v68);
    *(v38 + 5) = v30;
    *(v38 + 6) = v22;
    if (v66 < 0)
    {
      operator delete(v64);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v11 += 24;
    if (!--v12)
    {
      goto LABEL_82;
    }
  }
}

void sub_1B5804110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, int a59, __int16 a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  kaldi::Input::~Input(&a58);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a60);
  STACK[0x220] = &a66;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x220]);
  STACK[0x220] = &a69;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x220]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a72);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a73);
  _Unwind_Resume(a1);
}

void sub_1B5804128(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B58041E4);
}

void sub_1B580413C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::istringstream::~istringstream(&a20, MEMORY[0x1E69E54E0]);
  MEMORY[0x1B8C85200](v72 + 120);
  kaldi::Input::~Input(&a55);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a56);
  STACK[0x220] = &a62;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x220]);
  STACK[0x220] = &a65;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x220]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a68);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a72);
  _Unwind_Resume(a1);
}

void sub_1B5804190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::locale a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::locale::~locale(&a17);
  kaldi::Input::~Input(&a52);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a53);
  STACK[0x220] = &a59;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x220]);
  STACK[0x220] = &a62;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x220]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a65);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a71);
  _Unwind_Resume(a1);
}

void quasar::OnlineTransducerGraphSearchDecoder::findClassLmSymbols(quasar::OnlineTransducerGraphSearchDecoder *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v112 = 0;
  v113 = 0;
  v114 = 0;
  memset(&v111, 0, sizeof(v111));
  kaldi::SplitStringToVector((this + 656), ",", 1, &v112);
  kaldi::SplitStringToFloats<float>(this + 680, ",", 1, &v111);
  if (v111.__end_ == v111.__begin_)
  {
    v3 = v112;
    v4 = v113;
  }

  else
  {
    v3 = v112;
    v4 = v113;
    if (0xAAAAAAAAAAAAAAABLL * ((v113 - v112) >> 3) != v111.__end_ - v111.__begin_)
    {
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Could not match classLM scale number", 36);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }
  }

  if (v4 != v3)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = (v3 + v5);
      if (*(v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v93, *v7, *(v7 + 1));
      }

      else
      {
        v8 = *v7;
        v93.__r_.__value_.__r.__words[2] = *(v7 + 2);
        *&v93.__r_.__value_.__l.__data_ = v8;
      }

      v92 = quasar::QsrTextSymbolTable::Find(*(this + 180), &v93);
      if (v111.__end_ == v111.__begin_)
      {
        v9 = 1.0;
      }

      else
      {
        v9 = v111.__begin_[v6];
      }

      v89 = &v92;
      *(std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 840, &v92) + 8) = v9;
      if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v93.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v93.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&v89, size + 6);
      if (v91 >= 0)
      {
        v11 = &v89;
      }

      else
      {
        v11 = v89;
      }

      if (size)
      {
        if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &v93;
        }

        else
        {
          v12 = v93.__r_.__value_.__r.__words[0];
        }

        memmove(v11, v12, size);
      }

      strcpy(v11 + size, "-start");
      if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = v93.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&v86, v13 + 4);
      if (v88 >= 0)
      {
        v14 = &v86;
      }

      else
      {
        v14 = v86;
      }

      if (v13)
      {
        if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &v93;
        }

        else
        {
          v15 = v93.__r_.__value_.__r.__words[0];
        }

        memmove(v14, v15, v13);
      }

      strcpy(v14 + v13, "-end");
      v16 = v92 + 1;
      quasar::QsrTextSymbolTable::Find(*(this + 180), __p);
      v17 = SBYTE7(v95);
      if ((SBYTE7(v95) & 0x80u) == 0)
      {
        v18 = BYTE7(v95);
      }

      else
      {
        v18 = __p[1];
      }

      v19 = HIBYTE(v88);
      if (v88 < 0)
      {
        v19 = v87;
      }

      if (v18 == v19)
      {
        if ((SBYTE7(v95) & 0x80u) == 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0];
        }

        if (v88 >= 0)
        {
          v21 = &v86;
        }

        else
        {
          v21 = v86;
        }

        v22 = memcmp(v20, v21, v18) != 0;
        if (v17 < 0)
        {
LABEL_51:
          operator delete(__p[0]);
          if (!v22)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        }
      }

      else
      {
        v22 = 1;
        if (SBYTE7(v95) < 0)
        {
          goto LABEL_51;
        }
      }

      if (!v22)
      {
        goto LABEL_53;
      }

LABEL_52:
      v16 = quasar::QsrTextSymbolTable::Find(*(this + 180), &v86);
      if (v16 == -1)
      {
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Could not find ", 16);
        if (v88 >= 0)
        {
          v58 = &v86;
        }

        else
        {
          v58 = v86;
        }

        if (v88 >= 0)
        {
          v59 = HIBYTE(v88);
        }

        else
        {
          v59 = v87;
        }

        v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, v58, v59);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, " in base symbol table", 22);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
      }

LABEL_53:
      v23 = v92 + 2;
      quasar::QsrTextSymbolTable::Find(*(this + 180), __p);
      v24 = SBYTE7(v95);
      if ((SBYTE7(v95) & 0x80u) == 0)
      {
        v25 = BYTE7(v95);
      }

      else
      {
        v25 = __p[1];
      }

      v26 = HIBYTE(v91);
      if (v91 < 0)
      {
        v26 = v90;
      }

      if (v25 == v26)
      {
        if ((SBYTE7(v95) & 0x80u) == 0)
        {
          v27 = __p;
        }

        else
        {
          v27 = __p[0];
        }

        if (v91 >= 0)
        {
          v28 = &v89;
        }

        else
        {
          v28 = v89;
        }

        v29 = memcmp(v27, v28, v25) != 0;
        if ((v24 & 0x80000000) == 0)
        {
LABEL_66:
          if (v29)
          {
            goto LABEL_70;
          }

          goto LABEL_71;
        }
      }

      else
      {
        v29 = 1;
        if ((SBYTE7(v95) & 0x80000000) == 0)
        {
          goto LABEL_66;
        }
      }

      operator delete(__p[0]);
      if (v29)
      {
LABEL_70:
        v23 = quasar::QsrTextSymbolTable::Find(*(this + 180), &v89);
        if (v23 == -1)
        {
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Could not find ", 16);
          if (v91 >= 0)
          {
            v62 = &v89;
          }

          else
          {
            v62 = v89;
          }

          if (v91 >= 0)
          {
            v63 = HIBYTE(v91);
          }

          else
          {
            v63 = v90;
          }

          v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, v62, v63);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, " in base symbol table", 22);
          quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
        }
      }

LABEL_71:
      v115 = &v92;
      v30 = std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a2, &v92);
      *(v30 + 5) = v23;
      *(v30 + 6) = v16;
      if (SHIBYTE(v88) < 0)
      {
        operator delete(v86);
      }

      if (SHIBYTE(v91) < 0)
      {
        operator delete(v89);
      }

      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v93.__r_.__value_.__l.__data_);
      }

      ++v6;
      v3 = v112;
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v113 - v112) >> 3) > v6);
  }

  if ((*(this + 655) & 0x8000000000000000) != 0)
  {
    if (!*(this + 80))
    {
      goto LABEL_135;
    }
  }

  else if (!*(this + 655))
  {
    goto LABEL_135;
  }

  if ((*(this + 751) & 0x8000000000000000) != 0)
  {
    if (!*(this + 92))
    {
      goto LABEL_135;
    }
  }

  else if (!*(this + 751))
  {
    goto LABEL_135;
  }

  if ((*(this + 775) & 0x8000000000000000) != 0)
  {
    if (!*(this + 95))
    {
      goto LABEL_135;
    }

    goto LABEL_90;
  }

  if (*(this + 775))
  {
LABEL_90:
    memset(&v93, 0, sizeof(v93));
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    kaldi::SplitStringToVector((this + 632), ",", 1, &v93);
    kaldi::SplitStringToVector((this + 728), ",", 1, &v89);
    kaldi::SplitStringToVector((this + 752), ",", 1, &v86);
    v31 = 0xAAAAAAAAAAAAAAABLL * ((v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]) >> 3);
    if (v90 - v89 != v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0] || v87 - v86 != v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0])
    {
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, " Expected number of classLM symbols for base/start/end match: ", 62);
      v81 = MEMORY[0x1B8C84C30](v80, v31);
      v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, " ", 1);
      v83 = MEMORY[0x1B8C84C30](v82, 0xAAAAAAAAAAAAAAABLL * ((v90 - v89) >> 3));
      v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, " ", 1);
      MEMORY[0x1B8C84C30](v84, 0xAAAAAAAAAAAAAAABLL * ((v87 - v86) >> 3));
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }

    if (v93.__r_.__value_.__l.__size_ == v93.__r_.__value_.__r.__words[0])
    {
LABEL_134:
      __p[0] = &v86;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
      __p[0] = &v89;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
      __p[0] = &v93;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
      goto LABEL_135;
    }

    v32 = 0;
    if (v31 <= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = 0xAAAAAAAAAAAAAAABLL * ((v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]) >> 3);
    }

    while (1)
    {
      v34 = quasar::QsrTextSymbolTable::Find(*(this + 180), v93.__r_.__value_.__r.__words[0] + v32);
      v35 = v34;
      if (v34 == -1)
      {
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Could not find ", 16);
        v66 = *(v93.__r_.__value_.__r.__words[0] + v32 + 23);
        if (v66 >= 0)
        {
          v67 = v93.__r_.__value_.__r.__words[0] + v32;
        }

        else
        {
          v67 = *(v93.__r_.__value_.__r.__words[0] + v32);
        }

        if (v66 >= 0)
        {
          v68 = *(v93.__r_.__value_.__r.__words[0] + v32 + 23);
        }

        else
        {
          v68 = *(v93.__r_.__value_.__r.__words[0] + v32 + 8);
        }

        v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, v67, v68);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, " in base symbol table", 22);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
      }

      v36 = v34 + 1;
      quasar::QsrTextSymbolTable::Find(*(this + 180), __p);
      v37 = v86 + v32;
      v38 = SBYTE7(v95);
      if ((SBYTE7(v95) & 0x80u) == 0)
      {
        v39 = BYTE7(v95);
      }

      else
      {
        v39 = __p[1];
      }

      v40 = v37[23];
      v41 = v40;
      if ((v40 & 0x80u) != 0)
      {
        v40 = *(v37 + 1);
      }

      if (v39 == v40)
      {
        if ((SBYTE7(v95) & 0x80u) == 0)
        {
          v42 = __p;
        }

        else
        {
          v42 = __p[0];
        }

        if (v41 >= 0)
        {
          v43 = v86 + v32;
        }

        else
        {
          v43 = *v37;
        }

        v44 = memcmp(v42, v43, v39) != 0;
        if (v38 < 0)
        {
LABEL_113:
          operator delete(__p[0]);
          if (!v44)
          {
            goto LABEL_115;
          }

          goto LABEL_114;
        }
      }

      else
      {
        v44 = 1;
        if (SBYTE7(v95) < 0)
        {
          goto LABEL_113;
        }
      }

      if (!v44)
      {
        goto LABEL_115;
      }

LABEL_114:
      v45 = quasar::QsrTextSymbolTable::Find(*(this + 180), v86 + v32);
      v36 = v45;
      if (v45 == -1)
      {
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Could not find ", 16);
        v71 = *(v86 + v32 + 23);
        if (v71 >= 0)
        {
          v72 = v86 + v32;
        }

        else
        {
          v72 = *(v86 + v32);
        }

        if (v71 >= 0)
        {
          v73 = *(v86 + v32 + 23);
        }

        else
        {
          v73 = *(v86 + v32 + 8);
        }

        v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, v72, v73);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, " in base symbol table", 22);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
      }

LABEL_115:
      v46 = v35 + 2;
      quasar::QsrTextSymbolTable::Find(*(this + 180), __p);
      v47 = v89 + v32;
      v48 = SBYTE7(v95);
      if ((SBYTE7(v95) & 0x80u) == 0)
      {
        v49 = BYTE7(v95);
      }

      else
      {
        v49 = __p[1];
      }

      v50 = v47[23];
      v51 = v50;
      if ((v50 & 0x80u) != 0)
      {
        v50 = *(v47 + 1);
      }

      if (v49 == v50)
      {
        if ((SBYTE7(v95) & 0x80u) == 0)
        {
          v52 = __p;
        }

        else
        {
          v52 = __p[0];
        }

        if (v51 >= 0)
        {
          v53 = v89 + v32;
        }

        else
        {
          v53 = *v47;
        }

        v54 = memcmp(v52, v53, v49) != 0;
        if ((v48 & 0x80000000) == 0)
        {
LABEL_128:
          if (v54)
          {
            goto LABEL_132;
          }

          goto LABEL_133;
        }
      }

      else
      {
        v54 = 1;
        if ((SBYTE7(v95) & 0x80000000) == 0)
        {
          goto LABEL_128;
        }
      }

      operator delete(__p[0]);
      if (v54)
      {
LABEL_132:
        v55 = quasar::QsrTextSymbolTable::Find(*(this + 180), v89 + v32);
        v46 = v55;
        if (v55 == -1)
        {
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Could not find ", 16);
          v76 = *(v89 + v32 + 23);
          if (v76 >= 0)
          {
            v77 = v89 + v32;
          }

          else
          {
            v77 = *(v89 + v32);
          }

          if (v76 >= 0)
          {
            v78 = *(v89 + v32 + 23);
          }

          else
          {
            v78 = *(v89 + v32 + 8);
          }

          v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, v77, v78);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, " in base symbol table", 22);
          quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
        }
      }

LABEL_133:
      LODWORD(__p[0]) = v35;
      v115 = __p;
      v56 = std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a2, __p);
      *(v56 + 5) = v46;
      *(v56 + 6) = v36;
      v32 += 24;
      if (!--v33)
      {
        goto LABEL_134;
      }
    }
  }

LABEL_135:
  if (v111.__begin_)
  {
    v111.__end_ = v111.__begin_;
    operator delete(v111.__begin_);
  }

  __p[0] = &v112;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}