void sub_1B53EEAA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

void *std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B53EEB90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t fst::LatticeStringRepository<int>::Successor(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *a1;
  *v3 = a2;
  *(v3 + 2) = a3;
  v4 = std::__hash_table<fst::LatticeStringRepository<int>::Entry const*,fst::LatticeStringRepository<int>::EntryKey,fst::LatticeStringRepository<int>::EntryEqual,std::allocator<fst::LatticeStringRepository<int>::Entry const*>>::__emplace_unique_key_args<fst::LatticeStringRepository<int>::Entry const*,fst::LatticeStringRepository<int>::Entry const* const&>((a1 + 8), a1);
  if (v5)
  {
    operator new();
  }

  return v4[2];
}

uint64_t fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Compare(int a1, float *a2, uint64_t *a3, float *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *a2 + a2[1];
  v7 = *a4;
  v8 = *a4 + a4[1];
  if (v6 < v8)
  {
    return 1;
  }

  if (v6 > v8)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 < v7)
  {
    return 1;
  }

  if (v5 > v7)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a5;
  if (a3 == a5)
  {
    return 0;
  }

  memset(&__p, 0, sizeof(__p));
  memset(&v18, 0, sizeof(v18));
  fst::LatticeStringRepository<int>::ConvertToVector(a1 + 280, a3, &__p);
  fst::LatticeStringRepository<int>::ConvertToVector(a1 + 280, v9, &v18);
  begin = __p.__begin_;
  v13 = (__p.__end_ - __p.__begin_) >> 2;
  v14 = (v18.__end_ - v18.__begin_) >> 2;
  if (v13 > v14)
  {
    goto LABEL_10;
  }

  if (v13 < v14)
  {
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  v15 = *__p.__begin_;
  v16 = *v18.__begin_;
  if (*__p.__begin_ >= *v18.__begin_)
  {
    v17 = 1;
    while (v15 <= v16)
    {
      if ((((__p.__end_ - __p.__begin_) >> 2) & 0x7FFFFFFF) == v17)
      {
        goto LABEL_14;
      }

      v15 = __p.__begin_[v17];
      v16 = v18.__begin_[v17++];
      if (v15 < v16)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_13;
  }

LABEL_10:
  v9 = 0xFFFFFFFFLL;
LABEL_14:
  if (v18.__begin_)
  {
    v18.__end_ = v18.__begin_;
    operator delete(v18.__begin_);
    begin = __p.__begin_;
  }

  if (begin)
  {
    __p.__end_ = begin;
    operator delete(begin);
  }

  return v9;
}

void sub_1B53EEDF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void *std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B53EEEF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::__emplace_back_slow_path<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element const&>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = *(a2 + 16);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::__unordered_map_hasher<int,std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>>::__emplace_unique_key_args<int,std::pair<int const,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> const&>(void *a1, int *a2)
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

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> &,std::__wrap_iter<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = result + 24 * (v4 >> 1);
    v7 = a2 - 24;
    v8 = *(a2 - 24);
    if (*v6 > v8)
    {
      v11 = *(a2 - 20);
      v12 = *(a2 - 12);
      v9 = *(a2 - 8);
      do
      {
        v10 = v7;
        v7 = v6;
        *v10 = *v6;
        *(v10 + 16) = *(v6 + 16);
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = result + 24 * v5;
      }

      while (*v6 > v8);
      *v7 = v8;
      *(v7 + 4) = v11;
      *(v7 + 12) = v12;
      *(v7 + 16) = v9;
    }
  }

  return result;
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> &,std::__wrap_iter<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element*>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1 + 24 * v3 + 24;
    v5 = (2 * v3) | 1;
    v6 = 2 * v3 + 2;
    if (v6 < a3)
    {
      v7 = *(v4 + 24);
      v8 = *v4 <= v7;
      if (*v4 <= v7)
      {
        v9 = 0;
      }

      else
      {
        v9 = 24;
      }

      v4 += v9;
      if (!v8)
      {
        v5 = v6;
      }
    }

    *a1 = *v4;
    *(a1 + 16) = *(v4 + 16);
    a1 = v4;
    v3 = v5;
  }

  while (v5 <= (a3 - 2) / 2);
  return v4;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::__unordered_map_hasher<int,std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
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

void *std::__hash_table<fst::LatticeStringRepository<int>::Entry const*,fst::LatticeStringRepository<int>::EntryKey,fst::LatticeStringRepository<int>::EntryEqual,std::allocator<fst::LatticeStringRepository<int>::Entry const*>>::__emplace_unique_key_args<fst::LatticeStringRepository<int>::Entry const*,fst::LatticeStringRepository<int>::Entry const* const&>(void *a1, uint64_t **a2)
{
  v2 = *(*a2 + 2);
  v3 = **a2;
  v4 = v2 + 49109 * v3;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_19;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v2 + 49109 * v3;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_19;
    }

LABEL_18:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  v11 = v9[2];
  if (*v11 != v3 || *(v11 + 8) != v2)
  {
    goto LABEL_18;
  }

  return v9;
}

void fst::LatticeStringRepository<int>::ConvertToVector(int a1, uint64_t *a2, std::vector<unsigned int> *this)
{
  if (a2)
  {
    v4 = a2;
    v5 = 0;
    v6 = v4;
    do
    {
      ++v5;
      v6 = *v6;
    }

    while (v6);
    std::vector<int>::resize(this, v5);
    v7 = this->__end_ - 1;
    do
    {
      *v7-- = *(v4 + 2);
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    std::vector<int>::resize(this, 0);
  }
}

uint64_t *std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      *(v5 + 16) = *(v2 + 16);
      v2 += 24;
      v5 += 24;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v6 = result[1];
  result[1] = a2[2];
  a2[2] = v6;
  v7 = result[2];
  result[2] = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

uint64_t std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::__emplace_back_slow_path<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v14 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>(a1, v6);
  }

  v7 = 24 * v2;
  __p = 0;
  v11 = v7;
  v13 = 0;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  v12 = 24 * v2 + 24;
  std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 = (v12 - v11 - 24) % 0x18uLL + v11;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_1B53EF9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::IsIsymbolOrFinal(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 256);
  v5 = *(a1 + 264) - v4;
  if (v5 <= a2)
  {
    __x[0] = 0;
    std::vector<char>::__append((a1 + 256), (a2 + 1) - v5, __x);
    v4 = *(a1 + 256);
  }

  v6 = *(v4 + a2);
  if (v6 == 1)
  {
    return 0;
  }

  if (v6 == 2)
  {
    return 1;
  }

  *(v4 + a2) = 1;
  (*(**(a1 + 32) + 32))(__x);
  v22 = *__x;
  v21 = *&__x[4];
  v20 = 2139095040;
  v19 = INFINITY;
  v7.n128_u32[0] = *__x;
  if (*__x != INFINITY || (v7.n128_f32[0] = v21, v21 != v19))
  {
    *(*(a1 + 256) + a2) = 2;
  }

  v8 = *(a1 + 32);
  v18 = 0;
  (*(*v8 + 136))(v8, a2, __x, v7);
  while (*__x)
  {
    if ((*(**__x + 24))(*__x))
    {
      goto LABEL_23;
    }

    if (!*__x)
    {
      goto LABEL_14;
    }

    v10 = (*(**__x + 32))(*__x);
LABEL_15:
    if (*v10)
    {
      v11 = *(v10 + 12);
      v22 = *(v10 + 8);
      v21 = v11;
      v20 = 2139095040;
      v19 = INFINITY;
      v9.n128_f32[0] = v22;
      if (v22 != INFINITY || (v9.n128_f32[0] = v21, v21 != v19))
      {
        v13 = 0;
        *(*(a1 + 256) + a2) = 2;
        goto LABEL_24;
      }
    }

    if (*__x)
    {
      (*(**__x + 40))(*__x);
    }

    else
    {
      ++v18;
    }
  }

  if (v18 < v16)
  {
LABEL_14:
    v10 = v15 + 20 * v18;
    goto LABEL_15;
  }

LABEL_23:
  v13 = 1;
LABEL_24:
  if (*__x)
  {
    (*(**__x + 8))(*__x, v9);
  }

  else if (v17)
  {
    --*v17;
  }

  if (v13)
  {
    return fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::IsIsymbolOrFinal(a1, a2);
  }

  return 1;
}

void sub_1B53EFCA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::IsIsymbolOrFinal(va);
  _Unwind_Resume(a1);
}

void std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    v16 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>(a1, v9);
    }

    __p = 0;
    v13 = 24 * v6;
    v15 = 0;
    v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero((24 * v6), v11);
    v14 = 24 * v6 + v11;
    std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::__swap_out_circular_buffer(a1, &__p);
    if (v14 != v13)
    {
      v14 = (v14 - v13 - 24) % 0x18 + v13;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_1B53EFE80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::__init_with_size[abi:ne200100]<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B53EFF38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__hash_table<std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,int>,std::__unordered_map_hasher<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,int>,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetKey,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetEqual,true>,std::__unordered_map_equal<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,int>,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetEqual,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetKey,false>,std::allocator<std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,int>>>::__emplace_unique_key_args<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,std::piecewise_construct_t const&,std::tuple<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*&&>,std::tuple<>>(uint64_t a1, uint64_t **a2)
{
  v4 = **a2;
  v5 = (*a2)[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v6 = *v4 + v6 * v7 + *(v4 + 1);
      v7 *= 23531;
      v4 += 6;
    }

    while (v4 != v5);
  }

  v8 = *(a1 + 8);
  if (!*&v8)
  {
    goto LABEL_23;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v6)
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
      goto LABEL_23;
    }

LABEL_22:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  if ((fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetEqual::operator()((a1 + 36), v13[2], *a2) & 1) == 0)
  {
    goto LABEL_22;
  }

  return v13;
}

uint64_t fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetEqual::operator()(float *a1, unint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = *a3;
  if (v3 - *a2 != a3[1] - *a3)
  {
    return 0;
  }

  while (v4 < v3)
  {
    if (*v4 != *v5 || *(v4 + 8) != *(v5 + 8))
    {
      return 0;
    }

    v6 = *(v4 + 16);
    v7 = *(v4 + 20);
    v8 = *(v5 + 16);
    v9 = *(v5 + 20);
    v10 = v6 == v8 && v7 == v9;
    if (!v10 && vabds_f32(v6 + v7, v8 + v9) > *a1)
    {
      return 0;
    }

    v4 += 24;
    v5 += 24;
  }

  return 1;
}

uint64_t std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TempArc,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TempArc>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TempArc,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TempArc>>::__emplace_back_slow_path<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TempArc const&>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    *(v3 + 20) = *(a2 + 20);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TempArc,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TempArc>>::__emplace_back_slow_path<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TempArc const&>(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
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

  v16 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TempArc>>(a1, v7);
  }

  v8 = 32 * v2;
  __p = 0;
  v13 = v8;
  v15 = 0;
  v9 = *a2;
  *(v8 + 16) = *(a2 + 4);
  *v8 = v9;
  *(v8 + 20) = *(a2 + 20);
  v14 = 32 * v2 + 32;
  std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TempArc,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TempArc>>::__swap_out_circular_buffer(a1, &__p);
  v10 = a1[1];
  if (v14 != v13)
  {
    v14 += (v13 - v14 + 31) & 0xFFFFFFFFFFFFFFE0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_1B53F03C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TempArc,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TempArc>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      v6 = *v2;
      *(v5 + 16) = *(v2 + 4);
      *v5 = v6;
      *(v5 + 20) = *(v2 + 20);
      v2 += 2;
      v5 += 32;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TempArc>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::__emplace_back_slow_path<std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> const&>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

void fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::MakeSubsetUnique(int a1, float **a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = *a2;
    do
    {
      if (v3 != v7)
      {
        *v7 = *v3;
        *(v7 + 2) = *(v3 + 2);
      }

      if (v3 + 6 == v4)
      {
        v3 += 6;
      }

      else
      {
        v8 = v3 + 10;
        while (*(v8 - 4) == *v7)
        {
          if (fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Compare(a1, v8, *(v8 - 1), v7 + 4, *(v7 + 1)) == 1)
          {
            *(v7 + 1) = *(v8 - 1);
            *(v7 + 2) = *v8;
          }

          v9 = v8 + 6;
          v10 = v8 + 2;
          v8 += 6;
          if (v10 == v4)
          {
            v3 = v9 - 4;
            goto LABEL_14;
          }
        }

        v3 = v8 - 4;
      }

LABEL_14:
      v7 += 6;
      ++v6;
    }

    while (v3 != v4);
  }

  std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::resize(a2, v6);
}

uint64_t std::vector<std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::__emplace_back_slow_path<std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
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

  v15 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>>(a1, v7);
  }

  v8 = 32 * v2;
  __p = 0;
  v12 = v8;
  v14 = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 24) = *(a2 + 24);
  v13 = 32 * v2 + 32;
  std::vector<std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 31) & 0xFFFFFFFFFFFFFFE0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_1B53F071C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      *(v5 + 8) = *(v2 + 8);
      *(v5 + 24) = *(v2 + 24);
      v2 += 32;
      v5 += 32;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v6 = result[1];
  result[1] = a2[2];
  a2[2] = v6;
  v7 = result[2];
  result[2] = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,false>(int *a1, int *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 5;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v21 = *(a2 - 8);
        v22 = *v9;
        if (v21 < *v9 || v21 <= v22 && *(a2 - 6) < v9[2])
        {
          *v9 = v21;
          *(a2 - 8) = v22;
          v25 = *(v9 + 2);
          v23 = *(v9 + 3);
          *(v9 + 2) = *(a2 - 6);
          *(v9 + 3) = *(a2 - 1);
          *(a2 - 6) = v25;
          *(a2 - 1) = v23;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,0>(v9, (v9 + 8), (v9 + 16), (a2 - 8));
      return;
    }

    if (v12 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,0>(v9, (v9 + 8), (v9 + 16), (v9 + 24), a2 - 8);
      return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *>(v9, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *>(v9, a2, a2, a3);
      }

      return;
    }

    v13 = v12 >> 1;
    v14 = &v9[8 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,0>(&v9[8 * (v12 >> 1)], v9, a2 - 8);
      if (a5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,0>(v9, &v9[8 * (v12 >> 1)], a2 - 8);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,0>(v9 + 8, v14 - 8, a2 - 16);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,0>(v9 + 16, &v9[8 * v13 + 8], a2 - 24);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,0>(v14 - 8, v14, &v9[8 * v13 + 8]);
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      v24 = *(v9 + 2);
      *(v9 + 2) = *(v14 + 2);
      *(v14 + 2) = v24;
      v16 = *(v9 + 3);
      *(v9 + 3) = *(v14 + 3);
      *(v14 + 3) = v16;
      if (a5)
      {
        goto LABEL_19;
      }
    }

    v17 = *(v9 - 8);
    if (v17 >= *v9 && (v17 > *v9 || *(v9 - 6) >= v9[2]))
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &>(v9, a2);
      goto LABEL_24;
    }

LABEL_19:
    v18 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &>(v9, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_22;
    }

    v20 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *>(v9, v18);
    v9 = (v18 + 32);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *>(v18 + 32, a2))
    {
      a4 = -v11;
      a2 = v18;
      if (v20)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v20)
    {
LABEL_22:
      std::__introsort<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,false>(a1, v18, a3, -v11, a5 & 1);
      v9 = (v18 + 32);
LABEL_24:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,0>(v9, v9 + 8, a2 - 8);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,0>(int *a1, int *a2, int *a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 < *a1 || v3 <= v4 && a2[2] < a1[2])
  {
    v5 = *a3;
    if (*a3 < v3 || v5 <= v3 && a3[2] < a2[2])
    {
      *a1 = v5;
      *a3 = v4;
      v6 = *(a1 + 2);
      v7 = *(a1 + 3);
      *(a1 + 2) = *(a3 + 2);
      *(a1 + 3) = *(a3 + 3);
      *(a3 + 2) = v6;
      *(a3 + 3) = v7;
    }

    else
    {
      *a1 = v3;
      *a2 = v4;
      v15 = *(a1 + 2);
      v16 = a1[6];
      v17 = a1[7];
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = *(a2 + 3);
      *(a2 + 2) = v15;
      a2[6] = v16;
      a2[7] = v17;
      v18 = *a3;
      v19 = *a2;
      if (*a3 < *a2 || v18 <= v19 && a3[2] < a2[2])
      {
        *a2 = v18;
        *a3 = v19;
        v20 = *(a2 + 2);
        *(a2 + 2) = *(a3 + 2);
        *(a2 + 3) = *(a3 + 3);
        *(a3 + 2) = v20;
        a3[6] = v16;
        a3[7] = v17;
      }
    }
  }

  else
  {
    v8 = *a3;
    if (*a3 >= v3 && (v8 > v3 || a3[2] >= a2[2]))
    {
      return 0;
    }

    *a2 = v8;
    *a3 = v3;
    v9 = *(a2 + 2);
    v10 = *(a2 + 3);
    *(a2 + 2) = *(a3 + 2);
    *(a2 + 3) = *(a3 + 3);
    *(a3 + 2) = v9;
    *(a3 + 3) = v10;
    v11 = *a2;
    v12 = *a1;
    if (*a2 < *a1 || v11 <= v12 && a2[2] < a1[2])
    {
      *a1 = v11;
      *a2 = v12;
      v13 = *(a1 + 2);
      v14 = *(a1 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = *(a2 + 3);
      *(a2 + 2) = v13;
      *(a2 + 3) = v14;
    }
  }

  return 1;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,0>(a1, a2, a3);
  v9 = *a4;
  v10 = *a3;
  if (*a4 < *a3 || v9 <= v10 && *(a4 + 8) < *(a3 + 8))
  {
    *a3 = v9;
    *a4 = v10;
    result = *(a3 + 8);
    v11 = *(a3 + 24);
    *(a3 + 8) = *(a4 + 8);
    *(a3 + 24) = *(a4 + 24);
    *(a4 + 8) = result;
    *(a4 + 24) = v11;
    v12 = *a3;
    v13 = *a2;
    if (*a3 < *a2 || v12 <= v13 && *(a3 + 8) < *(a2 + 8))
    {
      *a2 = v12;
      *a3 = v13;
      result = *(a2 + 8);
      v14 = *(a2 + 24);
      *(a2 + 8) = *(a3 + 8);
      *(a2 + 24) = *(a3 + 24);
      *(a3 + 8) = result;
      *(a3 + 24) = v14;
      v15 = *a2;
      v16 = *a1;
      if (*a2 < *a1 || v15 <= v16 && *(a2 + 8) < *(a1 + 8))
      {
        *a1 = v15;
        *a2 = v16;
        result = *(a1 + 8);
        v17 = *(a1 + 24);
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 24) = *(a2 + 24);
        *(a2 + 8) = result;
        *(a2 + 24) = v17;
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,0>(a1, a2, a3, a4).n128_u64[0];
  v11 = *a5;
  v12 = *a4;
  if (*a5 < *a4 || v11 <= v12 && a5[2] < *(a4 + 8))
  {
    *a4 = v11;
    *a5 = v12;
    result = *(a4 + 8);
    v13 = *(a4 + 24);
    *(a4 + 8) = *(a5 + 2);
    *(a4 + 24) = *(a5 + 3);
    *(a5 + 2) = result;
    *(a5 + 3) = v13;
    v14 = *a4;
    v15 = *a3;
    if (*a4 < *a3 || v14 <= v15 && *(a4 + 8) < *(a3 + 8))
    {
      *a3 = v14;
      *a4 = v15;
      result = *(a3 + 8);
      v16 = *(a3 + 24);
      *(a3 + 8) = *(a4 + 8);
      *(a3 + 24) = *(a4 + 24);
      *(a4 + 8) = result;
      *(a4 + 24) = v16;
      v17 = *a3;
      v18 = *a2;
      if (*a3 < *a2 || v17 <= v18 && *(a3 + 8) < *(a2 + 8))
      {
        *a2 = v17;
        *a3 = v18;
        result = *(a2 + 8);
        v19 = *(a2 + 24);
        *(a2 + 8) = *(a3 + 8);
        *(a2 + 24) = *(a3 + 24);
        *(a3 + 8) = result;
        *(a3 + 24) = v19;
        v20 = *a2;
        v21 = *a1;
        if (*a2 < *a1 || v20 <= v21 && *(a2 + 8) < *(a1 + 8))
        {
          *a1 = v20;
          *a2 = v21;
          result = *(a1 + 8);
          v22 = *(a1 + 24);
          *(a1 + 8) = *(a2 + 8);
          *(a1 + 24) = *(a2 + 24);
          *(a2 + 8) = result;
          *(a2 + 24) = v22;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 32;
    if (result + 32 != a2)
    {
      v3 = 0;
      v4 = result;
      while (1)
      {
        v5 = v4;
        v4 = v2;
        v6 = *(v5 + 32);
        if (v6 < *v5)
        {
          break;
        }

        if (v6 <= *v5)
        {
          v7 = *(v5 + 40);
          if (v7 < *(v5 + 8))
          {
            goto LABEL_6;
          }
        }

LABEL_17:
        v2 = v4 + 32;
        v3 += 32;
        if (v4 + 32 == a2)
        {
          return result;
        }
      }

      v7 = *(v5 + 40);
LABEL_6:
      v14 = *(v5 + 52);
      v13 = *(v5 + 44);
      v8 = *(v5 + 56);
      *(v5 + 32) = *v5;
      v9 = (v5 + 8);
      *(v4 + 8) = *(v5 + 8);
      *(v4 + 24) = *(v5 + 24);
      if (v5 == result)
      {
LABEL_13:
        v5 = result;
      }

      else
      {
        v10 = v3;
        while (1)
        {
          v11 = result + v10;
          v12 = *(result + v10 - 32);
          if (v6 >= v12)
          {
            if (v6 > v12)
            {
              goto LABEL_14;
            }

            if (v7 >= *(result + v10 - 24))
            {
              break;
            }
          }

          v9 = (v5 - 24);
          v5 -= 32;
          *v11 = v12;
          *(v11 + 8) = *(v11 - 24);
          *(v11 + 24) = *(v11 - 8);
          v10 -= 32;
          if (!v10)
          {
            v9 = (result + 8);
            goto LABEL_13;
          }
        }

        v9 = (result + v10 + 8);
        v5 = result + v10;
      }

LABEL_14:
      *v5 = v6;
      *v9 = v7;
      *(v5 + 12) = v13;
      *(v5 + 20) = v14;
      *(v5 + 24) = v8;
      goto LABEL_17;
    }
  }

  return result;
}

int *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *>(int *result, int *a2)
{
  if (result != a2)
  {
    v2 = result + 8;
    if (result + 8 != a2)
    {
      for (i = result + 3; ; i += 8)
      {
        v4 = result;
        result = v2;
        v5 = v4[8];
        if (v5 < *v4)
        {
          break;
        }

        if (v5 <= *v4)
        {
          v6 = v4[10];
          if (v6 < v4[2])
          {
            goto LABEL_6;
          }
        }

LABEL_14:
        v2 = result + 8;
        if (result + 8 == a2)
        {
          return result;
        }
      }

      v6 = v4[10];
LABEL_6:
      v10 = *(v4 + 11);
      v11 = v4[13];
      v7 = *(v4 + 7);
      v8 = *v4;
      for (j = i; ; j -= 8)
      {
        j[5] = v8;
        *(j + 7) = *(j - 1);
        *(j + 11) = *(j + 3);
        v8 = *(j - 11);
        if (v5 >= v8 && (v5 > v8 || v6 >= *(j - 9)))
        {
          break;
        }
      }

      *(j - 3) = v5;
      *(j - 1) = v6;
      *j = v10;
      j[2] = v11;
      *(j + 3) = v7;
      goto LABEL_14;
    }
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &>(int *a1, int *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v18 = *(a1 + 3);
  v19 = a1[5];
  v4 = *(a2 - 8);
  if (*a1 < v4 || v2 <= v4 && v3 < *(a2 - 6))
  {
    i = a1;
    do
    {
      v7 = i[8];
      i += 8;
      v6 = v7;
    }

    while (v2 >= v7 && (v2 > v6 || v3 >= i[2]));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 8; v2 < v4 || v2 <= v4 && v3 < a2[2]; a2 -= 8)
    {
      v8 = *(a2 - 8);
      v4 = v8;
    }
  }

  v9 = *(a1 + 3);
  if (i < a2)
  {
    v10 = *i;
    v11 = *a2;
    do
    {
      *i = v11;
      *a2 = v10;
      v17 = *(i + 2);
      v12 = *(i + 3);
      *(i + 2) = *(a2 + 2);
      *(i + 3) = *(a2 + 3);
      *(a2 + 2) = v17;
      *(a2 + 3) = v12;
      do
      {
        v13 = i[8];
        i += 8;
        v10 = v13;
      }

      while (v2 >= v13 && (v2 > v10 || v3 >= i[2]));
      do
      {
        do
        {
          v14 = *(a2 - 8);
          a2 -= 8;
          v11 = v14;
          v15 = v2 <= v14;
        }

        while (v2 < v14);
      }

      while (v15 && v3 < a2[2]);
    }

    while (i < a2);
  }

  if (i - 8 != a1)
  {
    *a1 = *(i - 8);
    *(a1 + 2) = *(i - 6);
    *(a1 + 3) = *(i - 1);
  }

  *(i - 8) = v2;
  *(i - 6) = v3;
  *(i - 3) = v19;
  *(i - 5) = v18;
  *(i - 1) = v9;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &>(int *a1, _DWORD *a2)
{
  v2 = 0;
  v3 = a1[2];
  v4 = *a1;
  v22 = *(a1 + 3);
  v23 = a1[5];
  v5 = *(a1 + 3);
  while (1)
  {
    v6 = a1[v2 + 8];
    if (v6 >= v4 && (v6 > v4 || a1[v2 + 10] >= v3))
    {
      break;
    }

    v2 += 8;
  }

  v7 = &a1[v2 + 8];
  if (v2 * 4)
  {
    do
    {
      v9 = *(a2 - 8);
      a2 -= 8;
      v8 = v9;
    }

    while (v9 >= v4 && (v8 > v4 || a2[2] >= v3));
  }

  else
  {
LABEL_19:
    if (v7 < a2)
    {
      do
      {
        v11 = *(a2 - 8);
        a2 -= 8;
        v10 = v11;
        if (v11 < v4)
        {
          break;
        }

        if (v10 > v4)
        {
          goto LABEL_19;
        }
      }

      while (a2[2] >= v3 && v7 < a2);
    }
  }

  if (v7 >= a2)
  {
    v14 = v7;
  }

  else
  {
    v13 = *a2;
    v14 = v7;
    v15 = a2;
    do
    {
      *v14 = v13;
      *v15 = v6;
      v21 = *(v14 + 8);
      v16 = *(v14 + 24);
      *(v14 + 8) = *(v15 + 2);
      *(v14 + 24) = *(v15 + 3);
      *(v15 + 2) = v21;
      *(v15 + 3) = v16;
      do
      {
        do
        {
          v17 = *(v14 + 32);
          v14 += 32;
          v6 = v17;
          v18 = v17 <= v4;
        }

        while (v17 < v4);
      }

      while (v18 && *(v14 + 8) < v3);
      do
      {
        v19 = *(v15 - 8);
        v15 -= 8;
        v13 = v19;
      }

      while (v19 >= v4 && (v13 > v4 || v15[2] >= v3));
    }

    while (v14 < v15);
  }

  if ((v14 - 32) != a1)
  {
    *a1 = *(v14 - 32);
    *(a1 + 2) = *(v14 - 24);
    *(a1 + 3) = *(v14 - 8);
  }

  *(v14 - 32) = v4;
  *(v14 - 24) = v3;
  *(v14 - 12) = v23;
  *(v14 - 20) = v22;
  *(v14 - 8) = v5;
  return v14 - 32;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 5;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 32);
        v6 = *a1;
        if (v5 < *a1 || v5 <= v6 && *(a2 - 24) < *(a1 + 8))
        {
          *a1 = v5;
          *(a2 - 32) = v6;
          v7 = *(a1 + 8);
          v8 = *(a1 + 24);
          *(a1 + 8) = *(a2 - 24);
          *(a1 + 24) = *(a2 - 8);
          *(a2 - 24) = v7;
          *(a2 - 8) = v8;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,0>(a1, (a1 + 32), (a2 - 32));
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,0>(a1, a1 + 32, a1 + 64, a2 - 32);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,0>(a1, a1 + 32, a1 + 64, a1 + 96, (a2 - 32));
      return 1;
  }

LABEL_11:
  v9 = a1 + 64;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,0>(a1, (a1 + 32), (a1 + 64));
  v10 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = *v10;
    if (*v10 < *v9)
    {
      break;
    }

    if (v13 <= *v9)
    {
      v14 = *(v10 + 8);
      if (v14 < *(v9 + 8))
      {
        goto LABEL_15;
      }
    }

LABEL_26:
    v9 = v10;
    v11 += 32;
    v10 += 32;
    if (v10 == a2)
    {
      return 1;
    }
  }

  v14 = *(v10 + 8);
LABEL_15:
  v22 = *(v10 + 12);
  v23 = *(v10 + 20);
  v15 = *(v10 + 24);
  *v10 = *v9;
  v16 = (v9 + 8);
  *(v10 + 8) = *(v9 + 8);
  *(v10 + 24) = *(v9 + 24);
  v17 = v11;
  do
  {
    v18 = a1 + v17;
    v19 = *(a1 + v17 + 32);
    if (v13 >= v19)
    {
      if (v13 > v19)
      {
        v20 = a1 + v17;
        v16 = (v20 + 72);
        v9 = v20 + 64;
        goto LABEL_25;
      }

      if (v14 >= *(a1 + v17 + 40))
      {
        goto LABEL_25;
      }
    }

    v16 = (v9 - 24);
    v9 -= 32;
    *(v18 + 64) = v19;
    *(v18 + 72) = *(v18 + 40);
    *(v18 + 88) = *(v18 + 56);
    v17 -= 32;
  }

  while (v17 != -64);
  v16 = (a1 + 8);
  v9 = a1;
LABEL_25:
  *v9 = v13;
  *v16 = v14;
  *(v9 + 12) = v22;
  *(v9 + 20) = v23;
  *(v9 + 24) = v15;
  if (++v12 != 8)
  {
    goto LABEL_26;
  }

  return v10 + 32 == a2;
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 32 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *>(a1, a4, v8, v11);
        v11 -= 8;
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
        if (*v12 < *a1 || v13 <= v14 && *(v12 + 8) < *(a1 + 8))
        {
          *v12 = v14;
          *a1 = v13;
          v15 = *(v12 + 8);
          v16 = *(v12 + 24);
          *(v12 + 8) = *(a1 + 8);
          *(v12 + 24) = *(a1 + 24);
          *(a1 + 8) = v15;
          *(a1 + 24) = v16;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *>(a1, a4, v8, a1);
        }

        v12 += 32;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v17 = a2 - 32;
      do
      {
        v18 = *a1;
        v24 = *(a1 + 8);
        v20 = *(a1 + 24);
        v19 = *(a1 + 28);
        std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *>(a1, a4, v8);
        if (v17 == v21)
        {
          *v21 = v18;
          *(v21 + 8) = v24;
          *(v21 + 24) = v20;
          *(v21 + 28) = v19;
        }

        else
        {
          *v21 = *v17;
          *(v21 + 8) = *(v17 + 8);
          *(v21 + 24) = *(v17 + 24);
          *v17 = v18;
          *(v17 + 8) = v24;
          *(v17 + 24) = v20;
          *(v17 + 28) = v19;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *>(a1, v21 + 32, a4, (v21 + 32 - a1) >> 5);
        }

        v17 -= 32;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 5)
    {
      v6 = v4 >> 4;
      v7 = (v4 >> 4) + 1;
      v8 = (result + 32 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[8];
        if (*v8 < v10 || *v8 <= v10 && v8[2] < v8[10])
        {
          v8 += 8;
          v7 = v9;
        }
      }

      v11 = *v8;
      v12 = *a4;
      if (*v8 >= *a4)
      {
        if (v11 <= v12)
        {
          v13 = a4[2];
          if (v8[2] < v13)
          {
            return result;
          }
        }

        else
        {
          v13 = a4[2];
        }

        v20 = *(a4 + 3);
        v21 = a4[5];
        v14 = *(a4 + 3);
        *a4 = v11;
        *(a4 + 2) = *(v8 + 2);
        *(a4 + 3) = *(v8 + 3);
        if (v5 >= v7)
        {
          while (1)
          {
            v16 = 2 * v7;
            v7 = (2 * v7) | 1;
            v15 = (result + 32 * v7);
            v17 = v16 + 2;
            if (v17 < a3)
            {
              v18 = v15[8];
              if (*v15 < v18 || *v15 <= v18 && v15[2] < v15[10])
              {
                v15 += 8;
                v7 = v17;
              }
            }

            v19 = *v15;
            if (*v15 < v12 || v19 <= v12 && v15[2] < v13)
            {
              break;
            }

            *v8 = v19;
            *(v8 + 2) = *(v15 + 2);
            *(v8 + 3) = *(v15 + 3);
            v8 = v15;
            if (v5 < v7)
            {
              goto LABEL_14;
            }
          }
        }

        v15 = v8;
LABEL_14:
        *v15 = v12;
        v15[2] = v13;
        *(v15 + 3) = v20;
        v15[5] = v21;
        *(v15 + 3) = v14;
      }
    }
  }

  return result;
}

double std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *>(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1;
    v5 = &a1[8 * v3];
    a1 = v5 + 8;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[16];
      v9 = v5[8];
      if (v9 < v8 || v9 <= v8 && v5[10] < v5[18])
      {
        a1 = v5 + 16;
        v3 = v7;
      }
    }

    *v4 = *a1;
    *(v4 + 2) = *(a1 + 2);
    result = *(a1 + 3);
    *(v4 + 3) = result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 32 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 32);
    if (*v6 >= v8)
    {
      if (v7 > v8)
      {
        return result;
      }

      v9 = *(a2 - 24);
      if (v6[2] >= v9)
      {
        return result;
      }
    }

    else
    {
      v9 = *(a2 - 24);
    }

    v14 = *(a2 - 20);
    v15 = *(a2 - 12);
    v10 = *(a2 - 8);
    *(a2 - 32) = v7;
    *(a2 - 24) = *(v6 + 2);
    *(a2 - 8) = *(v6 + 3);
    if (v4 >= 2)
    {
      while (1)
      {
        v12 = v5 - 1;
        v5 = (v5 - 1) >> 1;
        v11 = (result + 32 * v5);
        v13 = *v11;
        if (*v11 >= v8 && (v13 > v8 || v11[2] >= v9))
        {
          break;
        }

        *v6 = v13;
        *(v6 + 2) = *(v11 + 2);
        *(v6 + 3) = *(v11 + 3);
        v6 = (result + 32 * v5);
        if (v12 <= 1)
        {
          goto LABEL_10;
        }
      }
    }

    v11 = v6;
LABEL_10:
    *v11 = v8;
    v11[2] = v9;
    *(v11 + 3) = v14;
    v11[5] = v15;
    *(v11 + 3) = v10;
  }

  return result;
}

void fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::RebuildRepository(uint64_t *a1)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v2 = *a1;
  if (a1[1] != *a1)
  {
    v3 = 0;
    do
    {
      v4 = *(v2 + 8 * v3);
      v5 = *v4;
      if (*v4 != v4[1])
      {
        do
        {
          std::vector<TVertex const*>::push_back[abi:ne200100](&v29, (v5 + 8));
          v5 += 24;
        }

        while (v5 != v4[1]);
        v2 = *a1;
        v4 = *(*a1 + 8 * v3);
      }

      v6 = v4[3];
      if (v4[4] != v6)
      {
        v7 = 0;
        v8 = 8;
        do
        {
          std::vector<TVertex const*>::push_back[abi:ne200100](&v29, (v6 + v8));
          v2 = *a1;
          ++v7;
          v6 = *(*(*a1 + 8 * v3) + 24);
          v8 += 32;
        }

        while (v7 < (*(*(*a1 + 8 * v3) + 32) - v6) >> 5);
      }

      ++v3;
    }

    while (v3 < (a1[1] - v2) >> 3);
  }

  v26 = 0uLL;
  v27 = 0;
  v9 = a1[25];
  v10 = a1[26];
  if (v9 != v10)
  {
    do
    {
      v11 = *v9;
      v28 = *v9;
      v12 = v10 - v9;
      if (v12 >= 2)
      {
        v13 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TaskCompare &,std::__wrap_iter<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Task **>>(v9, &v32, v12);
        v14 = v10 - 1;
        if (v10 - 1 == v13)
        {
          *v13 = v11;
        }

        else
        {
          *v13 = *v14;
          *v14 = v11;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TaskCompare &,std::__wrap_iter<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Task **>>(v9, (v13 + 1), &v32, v13 + 1 - v9);
        }
      }

      a1[26] -= 8;
      std::vector<TVertex *>::push_back[abi:ne200100](&v26, &v28);
      v15 = v28;
      for (i = *(v28 + 8); i != *(v15 + 16); i += 24)
      {
        std::vector<TVertex const*>::push_back[abi:ne200100](&v29, (i + 8));
      }

      v9 = a1[25];
      v10 = a1[26];
    }

    while (v9 != v10);
    v17 = v26;
    if (*(&v26 + 1) != v26)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        std::vector<TVertex *>::push_back[abi:ne200100]((a1 + 25), &v17[v18]);
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TaskCompare &,std::__wrap_iter<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Task **>>(a1[25], a1[26], &v28, (a1[26] - a1[25]) >> 3);
        ++v19;
        v17 = v26;
        v18 += 8;
      }

      while (v19 < (*(&v26 + 1) - v26) >> 3);
    }

    if (v17)
    {
      *(&v26 + 1) = v17;
      operator delete(v17);
    }
  }

  for (j = a1[22]; j; j = *j)
  {
    v21 = j[2];
    v26 = *(j + 3);
    v27 = j[5];
    for (k = *v21; k != v21[1]; k += 24)
    {
      std::vector<TVertex const*>::push_back[abi:ne200100](&v29, (k + 8));
    }

    std::vector<TVertex const*>::push_back[abi:ne200100](&v29, &v26 + 1);
  }

  v23 = 126 - 2 * __clz((v30 - v29) >> 3);
  if (v30 == v29)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::LatticeStringRepository<int>::Entry const**,false>(v29, v30, &v26, v24, 1);
  v25 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<fst::LatticeStringRepository<int>::Entry const**>,std::__wrap_iter<fst::LatticeStringRepository<int>::Entry const**>,std::__equal_to &>(v29, v30);
  if (v25 != v30)
  {
    v30 = v25;
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "Rebuilding repository.", 22);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&v26);
  }

  fst::LatticeStringRepository<int>::Rebuild((a1 + 35), &v29);
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }
}

void sub_1B53F2190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  kaldi::KaldiLogMessage::~KaldiLogMessage(&__p);
  v12 = *(v10 - 80);
  if (v12)
  {
    *(v10 - 72) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::LatticeStringRepository<int>::Rebuild(uint64_t a1, uint64_t ***a2)
{
  memset(v8, 0, sizeof(v8));
  v9 = 1065353216;
  for (i = *a2; i != a2[1]; ++i)
  {
    fst::LatticeStringRepository<int>::RebuildHelper(a1, *i, v8);
  }

  for (j = *(a1 + 24); j; j = *j)
  {
    if (!std::__hash_table<fst::LatticeStringRepository<int>::Entry const*,fst::LatticeStringRepository<int>::EntryKey,fst::LatticeStringRepository<int>::EntryEqual,std::allocator<fst::LatticeStringRepository<int>::Entry const*>>::find<fst::LatticeStringRepository<int>::Entry const*>(v8, j + 2))
    {
      v6 = j[2];
      if (v6)
      {
        MEMORY[0x1B8C85350](v6, 0x1060C40ADAFC7CALL);
      }
    }
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::swap(a1 + 8, v8);
  return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v8);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::LatticeStringRepository<int>::Entry const**,false>(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
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
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v56 = *(a2 - 1);
        v57 = *v9;
        if (v56 < *v9)
        {
          *v9 = v56;
          *(a2 - 1) = v57;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v58 = v9 + 1;
      v59 = v9[1];
      v60 = v9 + 2;
      v61 = v9[2];
      v62 = *v9;
      if (v59 >= *v9)
      {
        if (v61 >= v59)
        {
          goto LABEL_120;
        }

        *v58 = v61;
        *v60 = v59;
        v63 = v9;
        v64 = (v9 + 1);
        result = v59;
        if (v61 < v62)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v63 = v9;
        v64 = (v9 + 2);
        result = *v9;
        if (v61 >= v59)
        {
          *v9 = v59;
          v9[1] = v62;
          v63 = v9 + 1;
          v64 = (v9 + 2);
          result = v62;
          if (v61 >= v62)
          {
LABEL_120:
            v59 = v61;
            goto LABEL_121;
          }
        }

LABEL_113:
        *v63 = v61;
        *v64 = v62;
        v59 = result;
      }

LABEL_121:
      v77 = *(a2 - 1);
      if (v77 < v59)
      {
        *v60 = v77;
        *(a2 - 1) = v59;
        v78 = *v60;
        v79 = *v58;
        if (v78 < v79)
        {
          v9[1] = v78;
          v9[2] = v79;
          v80 = *v9;
          if (v78 < *v9)
          {
            *v9 = v78;
            v9[1] = v80;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {
      v47 = v9 + 1;
      v48 = v9[1];
      v50 = v9 + 2;
      v49 = v9[2];
      v51 = *v9;
      if (v48 >= *v9)
      {
        if (v49 >= v48)
        {
          v54 = *v9;
          v51 = v9[1];
        }

        else
        {
          v52 = v9;
          v53 = (v9 + 1);
          *v47 = v49;
          *v50 = v48;
          v54 = v49;
          result = v51;
          v55 = v48;
          if (v49 < v51)
          {
            goto LABEL_129;
          }

          v54 = v51;
          v51 = v49;
          v49 = v48;
        }
      }

      else
      {
        if (v49 < v48)
        {
          v52 = v9;
          v53 = (v9 + 2);
          v54 = v9[2];
          result = v9[1];
          v55 = *v9;
          goto LABEL_129;
        }

        v52 = v9 + 1;
        v53 = (v9 + 2);
        *v9 = v48;
        v9[1] = v51;
        v54 = v48;
        result = v49;
        v55 = v51;
        if (v49 >= v51)
        {
          v54 = v48;
        }

        else
        {
LABEL_129:
          *v52 = v49;
          *v53 = v51;
          v51 = result;
          v49 = v55;
        }
      }

      v82 = v9[3];
      if (v82 >= v49)
      {
        v49 = v9[3];
      }

      else
      {
        v9[2] = v82;
        v9[3] = v49;
        if (v82 < v51)
        {
          *v47 = v82;
          *v50 = v51;
          if (v82 < v54)
          {
            *v9 = v82;
            v9[1] = v54;
          }
        }
      }

      v83 = *(a2 - 1);
      if (v83 >= v49)
      {
        return result;
      }

      v9[3] = v83;
      *(a2 - 1) = v49;
      v84 = v9[2];
      v74 = v9[3];
      if (v74 >= v84)
      {
        return result;
      }

      v9[2] = v74;
      v9[3] = v84;
      v85 = v9[1];
      if (v74 >= v85)
      {
        return result;
      }

      v9[1] = v74;
      v9[2] = v85;
LABEL_141:
      v86 = *v9;
      if (v74 < *v9)
      {
        *v9 = v74;
        v9[1] = v86;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      v65 = v9 + 1;
      v67 = v9 == a2 || v65 == a2;
      if (a5)
      {
        if (!v67)
        {
          v68 = 0;
          v69 = v9;
          do
          {
            v71 = *v69;
            v70 = v69[1];
            v69 = v65;
            if (v70 < v71)
            {
              v72 = v68;
              while (1)
              {
                *(v9 + v72 + 8) = v71;
                if (!v72)
                {
                  break;
                }

                v71 = *(v9 + v72 - 8);
                v72 -= 8;
                if (v70 >= v71)
                {
                  v73 = (v9 + v72 + 8);
                  goto LABEL_99;
                }
              }

              v73 = v9;
LABEL_99:
              *v73 = v70;
            }

            v65 = v69 + 1;
            v68 += 8;
          }

          while (v69 + 1 != a2);
        }
      }

      else if (!v67)
      {
        do
        {
          v76 = *v8;
          v75 = v8[1];
          v8 = v65;
          if (v75 < v76)
          {
            do
            {
              *v65 = v76;
              v76 = *(v65 - 2);
              --v65;
            }

            while (v75 < v76);
            *v65 = v75;
          }

          v65 = v8 + 1;
        }

        while (v8 + 1 != a2);
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::LatticeStringRepository<int>::Entry const**,fst::LatticeStringRepository<int>::Entry const**>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *(a2 - 1);
    if (v12 >= 0x81)
    {
      v16 = *v13;
      v17 = *v9;
      if (*v13 >= *v9)
      {
        if (v15 < v16)
        {
          *v13 = v15;
          *(a2 - 1) = v16;
          v20 = *v9;
          if (*v13 < *v9)
          {
            *v9 = *v13;
            *v13 = v20;
          }
        }
      }

      else
      {
        if (v15 < v16)
        {
          *v9 = v15;
          goto LABEL_29;
        }

        *v9 = v16;
        *v13 = v17;
        v22 = *(a2 - 1);
        if (v22 < v17)
        {
          *v13 = v22;
LABEL_29:
          *(a2 - 1) = v17;
        }
      }

      v23 = v13 - 1;
      v24 = *(v13 - 1);
      v25 = v9[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v9[1];
          if (*v23 < v27)
          {
            v9[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 < v24)
        {
          v9[1] = v26;
          goto LABEL_43;
        }

        v9[1] = v24;
        *v23 = v25;
        v29 = *(a2 - 2);
        if (v29 < v25)
        {
          *v23 = v29;
LABEL_43:
          *(a2 - 2) = v25;
        }
      }

      v32 = v13[1];
      v30 = v13 + 1;
      v31 = v32;
      v33 = v9[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v31)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v9[2];
          if (*v30 < v35)
          {
            v9[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 < v31)
        {
          v9[2] = v34;
          goto LABEL_52;
        }

        v9[2] = v31;
        *v30 = v33;
        v36 = *(a2 - 3);
        if (v36 < v33)
        {
          *v30 = v36;
LABEL_52:
          *(a2 - 3) = v33;
        }
      }

      v37 = *v14;
      v38 = *v23;
      v39 = *v30;
      if (*v14 >= *v23)
      {
        if (v39 < v37)
        {
          *v14 = v39;
          *v30 = v37;
          v30 = v14;
          v37 = v38;
          if (v39 < v38)
          {
            goto LABEL_59;
          }

          v37 = v39;
        }
      }

      else
      {
        if (v39 >= v37)
        {
          *v23 = v37;
          *v14 = v38;
          v23 = v14;
          v37 = v39;
          if (v39 >= v38)
          {
            v37 = v38;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v23 = v39;
        *v30 = v38;
      }

LABEL_60:
      v40 = *v9;
      *v9 = v37;
      *v14 = v40;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v18 = *v9;
    v19 = *v13;
    if (*v9 < *v14)
    {
      if (v15 < v18)
      {
        *v14 = v15;
        goto LABEL_38;
      }

      *v14 = v18;
      *v9 = v19;
      v28 = *(a2 - 1);
      if (v28 < v19)
      {
        *v9 = v28;
LABEL_38:
        *(a2 - 1) = v19;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v15 >= v18)
    {
      goto LABEL_39;
    }

    *v9 = v15;
    *(a2 - 1) = v18;
    v21 = *v14;
    if (*v9 >= *v14)
    {
      goto LABEL_39;
    }

    *v14 = *v9;
    *v9 = v21;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v9 - 1) >= *v9)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeStringRepository<int>::Entry const**,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v41 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeStringRepository<int>::Entry const**,std::__less<void,void> &>(v9, a2);
    if ((v42 & 1) == 0)
    {
      goto LABEL_67;
    }

    v43 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::LatticeStringRepository<int>::Entry const**>(v9, v41);
    v9 = v41 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::LatticeStringRepository<int>::Entry const**>(v41 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v41;
      if (v43)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v43)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::LatticeStringRepository<int>::Entry const**,false>(v8, v41, a3, -v11, a5 & 1);
      v9 = v41 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v44 = *v9;
  v45 = v9[1];
  v46 = *(a2 - 1);
  if (v45 >= *v9)
  {
    if (v46 >= v45)
    {
      return result;
    }

    v9[1] = v46;
    *(a2 - 1) = v45;
    v74 = v9[1];
    goto LABEL_141;
  }

  if (v46 >= v45)
  {
    *v9 = v45;
    v9[1] = v44;
    v81 = *(a2 - 1);
    if (v81 >= v44)
    {
      return result;
    }

    v9[1] = v81;
  }

  else
  {
    *v9 = v46;
  }

  *(a2 - 1) = v44;
  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeStringRepository<int>::Entry const**,std::__less<void,void> &>(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = (a1 + 1);
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

unint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeStringRepository<int>::Entry const**,std::__less<void,void> &>(unint64_t *a1, unint64_t *a2)
{
  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = a1[++v2];
  }

  while (v4 < v3);
  v5 = &a1[v2];
  v6 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v8 = *--a2;
    }

    while (v8 >= v3);
  }

  else
  {
    do
    {
      v7 = *--a2;
    }

    while (v7 >= v3);
  }

  if (v5 < a2)
  {
    v9 = *a2;
    v10 = &a1[v2];
    v11 = a2;
    do
    {
      *v10 = v9;
      *v11 = v4;
      do
      {
        v12 = v10[1];
        ++v10;
        v4 = v12;
      }

      while (v12 < v3);
      do
      {
        v13 = *--v11;
        v9 = v13;
      }

      while (v13 >= v3);
    }

    while (v10 < v11);
    v6 = v10 - 1;
  }

  if (v6 != a1)
  {
    *a1 = *v6;
  }

  *v6 = v3;
  return v6;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::LatticeStringRepository<int>::Entry const**>(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v46 = *(a2 - 1);
          if (v46 >= v16)
          {
            return 1;
          }

          a1[1] = v46;
        }

        else
        {
          *a1 = v18;
        }

        *(a2 - 1) = v16;
        return 1;
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v33 = a1[1];
LABEL_68:
      v51 = *a1;
      if (v33 < *a1)
      {
        *a1 = v33;
        a1[1] = v51;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          goto LABEL_59;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
LABEL_59:
          v47 = a1[3];
          if (v47 >= v6)
          {
            v6 = a1[3];
          }

          else
          {
            a1[2] = v47;
            a1[3] = v6;
            if (v47 < v8)
            {
              *v4 = v47;
              *v7 = v8;
              if (v47 < v11)
              {
                *a1 = v47;
                a1[1] = v11;
              }
            }
          }

          v48 = *(a2 - 1);
          if (v48 >= v6)
          {
            return 1;
          }

          a1[3] = v48;
          *(a2 - 1) = v6;
          v49 = a1[2];
          v33 = a1[3];
          if (v33 >= v49)
          {
            return 1;
          }

          a1[2] = v33;
          a1[3] = v49;
          v50 = a1[1];
          if (v33 >= v50)
          {
            return 1;
          }

          a1[1] = v33;
          a1[2] = v50;
          goto LABEL_68;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          goto LABEL_59;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      goto LABEL_59;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
LABEL_46:
        v26 = v28;
        goto LABEL_47;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v42 = *(a2 - 1);
        if (v42 < v26)
        {
          *v27 = v42;
          *(a2 - 1) = v26;
          v43 = *v27;
          v44 = *v25;
          if (v43 < v44)
          {
            a1[1] = v43;
            a1[2] = v44;
            v45 = *a1;
            if (v43 < *a1)
            {
              *a1 = v43;
              a1[1] = v45;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
          goto LABEL_46;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v14 = *(a2 - 1);
    v15 = *a1;
    if (v14 < *a1)
    {
      *a1 = v14;
      *(a2 - 1) = v15;
    }

    return 1;
  }

LABEL_16:
  v20 = a1 + 2;
  v19 = a1[2];
  v21 = a1[1];
  v22 = *a1;
  if (v21 >= *a1)
  {
    if (v19 >= v21)
    {
      goto LABEL_29;
    }

    a1[1] = v19;
    *v20 = v21;
    v23 = a1;
    v24 = a1 + 1;
LABEL_27:
    if (v19 >= v22)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = a1;
  v24 = a1 + 2;
  if (v19 >= v21)
  {
    *a1 = v21;
    a1[1] = v22;
    v23 = a1 + 1;
    v24 = a1 + 2;
    goto LABEL_27;
  }

LABEL_28:
  *v23 = v19;
  *v24 = v22;
LABEL_29:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  for (i = 24; ; i += 8)
  {
    v37 = *v34;
    v38 = *v20;
    if (*v34 < v38)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v38;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v38 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v37 >= v38)
        {
          v41 = (a1 + v40);
          goto LABEL_37;
        }
      }

      v41 = a1;
LABEL_37:
      *v41 = v37;
      if (++v35 == 8)
      {
        break;
      }
    }

    v20 = v34++;
    if (v34 == a2)
    {
      return 1;
    }
  }

  return v34 + 1 == a2;
}

unint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::LatticeStringRepository<int>::Entry const**,fst::LatticeStringRepository<int>::Entry const**>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::LatticeStringRepository<int>::Entry const**>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 < *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::LatticeStringRepository<int>::Entry const**>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 >= v22;
            if (v23 < v22)
            {
              v18 = v21;
            }

            else
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v14 = v19;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 8) >> 3;
          v26 = v25 < 2;
          v27 = v25 - 2;
          if (!v26)
          {
            v28 = v27 >> 1;
            v29 = &a1[v28];
            v30 = *v29;
            v31 = *v18;
            if (*v29 < *v18)
            {
              do
              {
                *v18 = v30;
                v18 = v29;
                if (!v28)
                {
                  break;
                }

                v28 = (v28 - 1) >> 1;
                v29 = &a1[v28];
                v30 = *v29;
              }

              while (*v29 < v31);
              *v18 = v31;
            }
          }
        }

        v26 = v8-- <= 2;
      }

      while (!v26);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::LatticeStringRepository<int>::Entry const**>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
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
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        if (*v8 < v8[1])
        {
          v10 = v8[1];
          ++v8;
          v7 = v9;
        }
      }

      v11 = *a4;
      if (v10 >= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v12 = (2 * v7) | 1;
          v8 = (result + 8 * v12);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v12;
          }

          else
          {
            v10 = *v8;
            if (*v8 >= v8[1])
            {
              v7 = v12;
            }

            else
            {
              v10 = v8[1];
              ++v8;
            }
          }
        }

        while (v10 >= v11);
        *a4 = v11;
      }
    }
  }

  return result;
}

uint64_t *std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<fst::LatticeStringRepository<int>::Entry const**>,std::__wrap_iter<fst::LatticeStringRepository<int>::Entry const**>,std::__equal_to &>(uint64_t *a1, uint64_t *a2)
{
  result = a2;
  if (a1 != a2)
  {
    v4 = a1 + 1;
    while (v4 != a2)
    {
      v5 = *(v4 - 1);
      v6 = *v4++;
      if (v5 == v6)
      {
        v7 = v4 - 2;
        goto LABEL_7;
      }
    }

    v7 = a2;
LABEL_7:
    result = a2;
    if (v7 != a2)
    {
      v8 = v7 + 2;
      if (v7 + 2 != a2)
      {
        v9 = *v7;
        do
        {
          v10 = v9;
          v9 = *v8;
          if (v10 != *v8)
          {
            v7[1] = v9;
            ++v7;
          }

          ++v8;
        }

        while (v8 != a2);
      }

      return v7 + 1;
    }
  }

  return result;
}

void fst::LatticeStringRepository<int>::RebuildHelper(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = a2;
  if (a2)
  {
    do
    {
      if (std::__hash_table<fst::LatticeStringRepository<int>::Entry const*,fst::LatticeStringRepository<int>::EntryKey,fst::LatticeStringRepository<int>::EntryEqual,std::allocator<fst::LatticeStringRepository<int>::Entry const*>>::find<fst::LatticeStringRepository<int>::Entry const*>(a3, &v4))
      {
        break;
      }

      std::__hash_table<fst::LatticeStringRepository<int>::Entry const*,fst::LatticeStringRepository<int>::EntryKey,fst::LatticeStringRepository<int>::EntryEqual,std::allocator<fst::LatticeStringRepository<int>::Entry const*>>::__emplace_unique_key_args<fst::LatticeStringRepository<int>::Entry const*,fst::LatticeStringRepository<int>::Entry const* const&>(a3, &v4);
      v4 = *v4;
    }

    while (v4);
  }
}

void *std::__hash_table<fst::LatticeStringRepository<int>::Entry const*,fst::LatticeStringRepository<int>::EntryKey,fst::LatticeStringRepository<int>::EntryEqual,std::allocator<fst::LatticeStringRepository<int>::Entry const*>>::find<fst::LatticeStringRepository<int>::Entry const*>(void *a1, uint64_t **a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *(*a2 + 2);
  v4 = **a2;
  v5 = v3 + 49109 * v4;
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 + 49109 * v4;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        v11 = result[2];
        if (*v11 == v4 && *(v11 + 8) == v3)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
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

{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *(*a2 + 2);
  v4 = **a2;
  v5 = v3 + 49109 * v4;
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 + 49109 * v4;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v5 == v10)
      {
        v11 = result[2];
        if (*v11 == v4 && *(v11 + 8) == v3)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
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

void fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::NormalizeSubset(uint64_t a1, void *a2, float32x2_t *a3, uint64_t *a4)
{
  v6 = *a2;
  v7 = a2[1];
  if (*a2 == v7)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "empty subset", 12);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v39);
    }

    *a4 = 0;
    *a3 = vneg_f32(0x7F0000007FLL);
  }

  else
  {
    memset(&v35, 0, sizeof(v35));
    fst::LatticeStringRepository<int>::ConvertToVector(a1 + 280, *(v6 + 8), &v35);
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3);
    v12 = *(*a2 + 16);
    v11 = *(*a2 + 20);
    if (v10 >= 2)
    {
      v13 = 0;
      v14 = v10 - 1;
      do
      {
        v15 = *a2 + v13;
        v16 = *(v15 + 40);
        v17 = *(v15 + 44);
        if ((v12 + v11) >= (v16 + v17))
        {
          if ((v12 + v11) > (v16 + v17) || (v12 >= v16 ? (v18 = v12 <= v16) : (v18 = 1), !v18))
          {
            v11 = *(v15 + 44);
            v12 = *(v15 + 40);
          }
        }

        fst::LatticeStringRepository<int>::ReduceToCommonPrefix(a1 + 280, *(v15 + 32), &v35);
        v13 += 24;
        --v14;
      }

      while (v14);
    }

    *&v39[0].__locale_ = v12;
    v38 = v11;
    v37 = 2139095040;
    v36 = 2139095040;
    v19 = 0;
    v20 = v35.__end_ - v35.__begin_;
    if (v10 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v10;
    }

    v22 = *a2;
    do
    {
      v23 = *(v22 + v19 + 16) - v12;
      v24 = *(v22 + v19 + 20) - v11;
      if (v23 == -INFINITY || v24 == -INFINITY)
      {
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v39);
          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "LatticeWeightTpl::Divide, NaN or invalid number produced. ", 58);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "[dividing by zero?]  Returning zero.", 36);
          kaldi::KaldiLogMessage::~KaldiLogMessage(v39);
          v22 = *a2;
        }

        v27 = INFINITY;
        v23 = INFINITY;
      }

      else
      {
        if (v23 == INFINITY)
        {
          v27 = INFINITY;
        }

        else
        {
          v27 = *(v22 + v19 + 20) - v11;
        }

        if (v24 == INFINITY || v23 == INFINITY)
        {
          v23 = INFINITY;
        }
      }

      v29 = v22 + v19;
      *(v29 + 16) = v23;
      *(v29 + 20) = v27;
      v30 = fst::LatticeStringRepository<int>::RemovePrefix(a1 + 280, *(v29 + 8), v20);
      v22 = *a2;
      *(*a2 + v19 + 8) = v30;
      v19 += 24;
      --v21;
    }

    while (v21);
    begin = v35.__begin_;
    if (v35.__end_ == v35.__begin_)
    {
      v33 = 0;
      v34 = a4;
    }

    else
    {
      v32 = 0;
      v33 = 0;
      v34 = a4;
      do
      {
        v33 = fst::LatticeStringRepository<int>::Successor(a1 + 280, v33, begin[v32++]);
        begin = v35.__begin_;
      }

      while (v32 < v35.__end_ - v35.__begin_);
    }

    *v34 = v33;
    a3->f32[0] = v12;
    a3->f32[1] = v11;
    if (begin)
    {
      v35.__end_ = begin;
      operator delete(begin);
    }
  }
}

uint64_t fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::InitialToStateId(void *a1, uint64_t *a2, uint64_t a3, void *a4, double a5)
{
  v18[0] = a2;
  v10 = std::__hash_table<std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::__unordered_map_hasher<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetKey,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetEqual,true>,std::__unordered_map_equal<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetEqual,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetKey,false>,std::allocator<std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>>::find<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*>((a1 + 20), v18);
  if (!v10)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::__init_with_size[abi:ne200100]<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element*>(__p, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::EpsilonClosure(a1, __p);
    fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::ConvertToMinimal(a1, __p);
    fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::NormalizeSubset(a1, __p, &v16, &v15 + 1);
    fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::MinimalToStateId(a1, __p, v16.f32[0] + v16.f32[1] + a5);
  }

  v11 = v10;
  v12 = *(v10 + 10);
  *a3 = v12;
  v13 = *(v10 + 11);
  *(a3 + 4) = v13;
  *a4 = v10[4];
  *v18 = v12;
  LODWORD(__p[0]) = v13;
  if (v12 == INFINITY && *__p == INFINITY && kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Zero weight!", 12);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v18);
  }

  return *(v11 + 6);
}

void sub_1B53F39A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::LatticeStringRepository<int>::Concatenate(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (!a2)
  {
    return a3;
  }

  v4 = a2;
  if (a3)
  {
    v6 = 0;
    memset(&v13, 0, sizeof(v13));
    v7 = a3;
    do
    {
      ++v6;
      v7 = *v7;
    }

    while (v7);
    std::vector<int>::resize(&v13, v6);
    v8 = 0x3FFFFFFFFFFFFFFFLL;
    end = v13.__end_;
    do
    {
      end[v8] = *(v3 + 2);
      v3 = *v3;
      --v8;
    }

    while (v3);
    begin = v13.__begin_;
    if (end != v13.__begin_)
    {
      v11 = 0;
      do
      {
        v4 = fst::LatticeStringRepository<int>::Successor(a1, v4, begin[v11++]);
        begin = v13.__begin_;
      }

      while (v11 < v13.__end_ - v13.__begin_);
    }

    if (begin)
    {
      v13.__end_ = begin;
      operator delete(begin);
    }
  }

  return v4;
}

void sub_1B53F3AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::LatticeStringRepository<int>::ReduceToCommonPrefix(int a1, uint64_t *a2, std::vector<unsigned int> *this)
{
  if (!a2)
  {
    v7 = 0;
    v5 = this->__end_ - this->__begin_;
    goto LABEL_18;
  }

  v3 = 0;
  v4 = a2;
  do
  {
    ++v3;
    v4 = *v4;
  }

  while (v4);
  v5 = this->__end_ - this->__begin_;
  if (v3 <= v5)
  {
    v7 = v3;
    if (!v3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v6 = v3;
    do
    {
      a2 = *a2;
      --v6;
    }

    while (v6 > v5);
    v7 = this->__end_ - this->__begin_;
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  if (v5 >= v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = this->__end_ - this->__begin_;
  }

  v9 = &this->__begin_[v8 - 1];
  v10 = v8 - 1;
  do
  {
    v11 = *v9--;
    if (*(a2 + 2) != v11)
    {
      v7 = v10;
    }

    a2 = *a2;
    --v10;
  }

  while (v10 != -1);
LABEL_18:
  if (v7 != v5)
  {
    std::vector<int>::resize(this, v7);
  }
}

uint64_t fst::LatticeStringRepository<int>::RemovePrefix(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v3 = a2;
  if (a3)
  {
    v4 = a3;
    memset(&v8, 0, sizeof(v8));
    fst::LatticeStringRepository<int>::ConvertToVector(a1, a2, &v8);
    begin = v8.__begin_;
    if (v4 >= v8.__end_ - v8.__begin_)
    {
      v3 = 0;
      if (!v8.__begin_)
      {
        return v3;
      }

      goto LABEL_6;
    }

    v3 = 0;
    do
    {
      v3 = fst::LatticeStringRepository<int>::Successor(a1, v3, begin[v4++]);
      begin = v8.__begin_;
    }

    while (v4 < v8.__end_ - v8.__begin_);
    if (v8.__begin_)
    {
LABEL_6:
      v8.__end_ = begin;
      operator delete(begin);
    }
  }

  return v3;
}

void sub_1B53F3C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::MinimalToStateId(void *a1, uint64_t *a2, double a3)
{
  v11[0] = a2;
  v5 = std::__hash_table<std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::__unordered_map_hasher<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetKey,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetEqual,true>,std::__unordered_map_equal<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetEqual,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetKey,false>,std::allocator<std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>>::find<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*>((a1 + 15), v11);
  if (v5)
  {
    v6 = *(*a1 + 8 * *(v5 + 6));
    if (*(v6 + 48) + -0.1 > a3 && kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "New cost is less (check the difference is small) ", 49);
      v9 = MEMORY[0x1B8C84BE0](v8, a3);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
      MEMORY[0x1B8C84BE0](v10, *(v6 + 48));
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v11);
    }
  }

  operator new();
}

uint64_t **std::__hash_table<std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::__unordered_map_hasher<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetKey,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetEqual,true>,std::__unordered_map_equal<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetEqual,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetKey,false>,std::allocator<std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>>::find<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*>(uint64_t a1, uint64_t **a2)
{
  v4 = **a2;
  v5 = (*a2)[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v6 = *v4 + v6 * v7 + *(v4 + 1);
      v7 *= 23531;
      v4 += 6;
    }

    while (v4 != v5);
  }

  v8 = *(a1 + 8);
  if (!*&v8)
  {
    return 0;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v6)
    {
      if (fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetEqual::operator()((a1 + 36), i[2], *a2))
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

uint64_t **std::__hash_table<std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::__unordered_map_hasher<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetKey,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetEqual,true>,std::__unordered_map_equal<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetEqual,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetKey,false>,std::allocator<std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>>::__emplace_unique_key_args<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,std::piecewise_construct_t const&,std::tuple<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const* const&>,std::tuple<>>(uint64_t a1, uint64_t **a2)
{
  v4 = **a2;
  v5 = (*a2)[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v6 = *v4 + v6 * v7 + *(v4 + 1);
      v7 *= 23531;
      v4 += 6;
    }

    while (v4 != v5);
  }

  v8 = *(a1 + 8);
  if (!*&v8)
  {
    goto LABEL_23;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v6)
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
      goto LABEL_23;
    }

LABEL_22:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  if ((fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetEqual::operator()((a1 + 36), v13[2], *a2) & 1) == 0)
  {
    goto LABEL_22;
  }

  return v13;
}

uint64_t fst::DeterminizeLatticeInsertPhones<fst::LatticeWeightTpl<float>>(kaldi::TransitionModel *a1, uint64_t a2)
{
  v4 = fst::HighestNumberedInputSymbol<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a2) + 1;
  v15 = 0;
  (*(*a2 + 128))(a2, &v13);
  while (1)
  {
    if (!v13)
    {
      if (v15 >= v14)
      {
        return v4;
      }

LABEL_7:
      v5 = v15;
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

    v5 = (*(*v13 + 24))();
LABEL_8:
    if (v5 != (*(*a2 + 24))(a2))
    {
      (*(*a2 + 296))(a2, v5, &v12);
      while (!(*(*v12 + 24))(v12))
      {
        v6 = (*(*v12 + 32))(v12);
        *v9 = *v6;
        v10 = *(v6 + 8);
        v11 = *(v6 + 16);
        if (v9[1] && !kaldi::TransitionModel::TransitionIdToHmmState(a1, v9[1]) && !kaldi::TransitionModel::IsSelfLoop(a1, v9[1]))
        {
          v7 = kaldi::TransitionModel::TransitionIdToPhone(a1, v9[1]);
          if (v9[0])
          {
            v11 = (*(*a2 + 200))(a2);
            (*(*a2 + 208))(a2);
          }

          else
          {
            v9[0] = v7 + v4;
          }
        }

        (*(*v12 + 88))(v12, v9);
        (*(*v12 + 40))(v12);
      }

      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }

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

  return v4;
}

void sub_1B53F458C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::DeterminizeLatticeDeletePhones<fst::LatticeWeightTpl<float>>(int a1, uint64_t a2)
{
  v13 = 0;
  (*(*a2 + 128))(a2, &v11);
  while (1)
  {
    result = v11;
    if (!v11)
    {
      if (v13 >= v12)
      {
        return result;
      }

LABEL_7:
      v6 = v13;
      goto LABEL_8;
    }

    v5 = (*(*v11 + 16))(v11);
    result = v11;
    if (v5)
    {
      break;
    }

    if (!v11)
    {
      goto LABEL_7;
    }

    v6 = (*(*v11 + 24))();
LABEL_8:
    (*(*a2 + 296))(a2, v6, &v10);
    while (!(*(*v10 + 24))(v10))
    {
      v7 = (*(*v10 + 32))(v10);
      v8[0] = *v7;
      v8[1] = *(v7 + 8);
      v9 = *(v7 + 16);
      if (SLODWORD(v8[0]) >= a1)
      {
        LODWORD(v8[0]) = 0;
      }

      (*(*v10 + 88))(v10, v8);
      (*(*v10 + 40))(v10);
    }

    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    if (v11)
    {
      (*(*v11 + 32))(v11);
    }

    else
    {
      ++v13;
    }
  }

  if (v11)
  {
    return (*(*v11 + 8))();
  }

  return result;
}

void sub_1B53F4880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::HighestNumberedInputSymbol<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(uint64_t a1)
{
  v12 = 0;
  (*(*a1 + 128))(a1, &v10);
  v2 = 0;
  while (1)
  {
    if (!v10)
    {
      if (v12 >= v11)
      {
        return v2;
      }

LABEL_7:
      v3 = v12;
      goto LABEL_8;
    }

    if ((*(*v10 + 16))(v10))
    {
      break;
    }

    if (!v10)
    {
      goto LABEL_7;
    }

    v3 = (*(*v10 + 24))();
LABEL_8:
    v9 = 0;
    (*(*a1 + 136))(a1, v3, v7);
    while (1)
    {
      if (!v7[0])
      {
        if (v9 >= v7[2])
        {
          goto LABEL_24;
        }

LABEL_18:
        v5 = *(v7[1] + 20 * v9);
        if (v2 <= v5)
        {
          v2 = v5;
        }

        else
        {
          v2 = v2;
        }

        goto LABEL_21;
      }

      if ((*(*v7[0] + 24))(v7[0]))
      {
        break;
      }

      if (!v7[0])
      {
        goto LABEL_18;
      }

      v4 = *(*(*v7[0] + 32))();
      if (v2 <= v4)
      {
        v2 = v4;
      }

      else
      {
        v2 = v2;
      }

      if (v7[0])
      {
        (*(*v7[0] + 40))();
      }

      else
      {
LABEL_21:
        ++v9;
      }
    }

    if (v7[0])
    {
      (*(*v7[0] + 8))();
      goto LABEL_26;
    }

LABEL_24:
    if (v8)
    {
      --*v8;
    }

LABEL_26:
    if (v10)
    {
      (*(*v10 + 32))(v10);
    }

    else
    {
      ++v12;
    }
  }

  if (v10)
  {
    (*(*v10 + 8))();
  }

  return v2;
}

void sub_1B53F4B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  _Unwind_Resume(exception_object);
}

void StopNgramStats::StopNgramStats(StopNgramStats *this, Vocab *a2, SubVocab *a3, int a4)
{
  NgramCounts<unsigned long>::NgramCounts(this, a2, a4);
  *v5 = &unk_1F2D10F78;
  v5[22] = a3;
}

void *StopNgramStats::incrementCounts(void *this, unsigned int *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    v10 = v3;
    v11 = v4;
    v6 = a2;
    v7 = this;
    do
    {
      v9 = 0;
      this = Trie<unsigned int,unsigned long>::insertTrie(v7 + 20, v6, &v9);
      v8 = v6[1];
      ++v6;
      this[1] += a3;
    }

    while (v8 != -1);
  }

  return this;
}

uint64_t StopNgramStats::countSentence(StopNgramStats *this, Vocab *a2, uint64_t a3)
{
  v6 = Vocab::length(a2, a2);
  *&v14[8] = 0;
  *v14 = (v6 + 1);
  if (v6 != -1)
  {
    Array<unsigned int>::alloc();
  }

  v7 = 0;
  v8 = a2;
  v9 = 0xFFFFFFFFLL;
  do
  {
    *(*&v14[4] + 4 * v7) = *v8;
    *(*&v14[4] + 4 * (v7 + 1)) = -1;
    v10 = *(this + 39);
    if (v7 + 1 >= v10)
    {
      StopNgramStats::incrementCounts(this, (*&v14[4] + 4 * (v7 + 1 - v10)), a3);
    }

    else
    {
      StopNgramStats::incrementCounts(this, *&v14[4], a3);
    }

    if (!(*(**(this + 22) + 32))(*(this + 22), *v8))
    {
      *(*&v14[4] + 4 * v7++) = *v8;
    }

    v8 = (v8 + 4);
    --v9;
  }

  while (v9);
  *(this + 8) = *(this + 8) + 0xFFFFFFFF;
  v11 = *a2;
  if (v11 == *(*(**(this + 3) + 104))(*(this + 3)))
  {
    *(this + 8) = *(this + 8) + -1.0;
  }

  v12 = *(a2 + 4294967294);
  if (v12 == *(*(**(this + 3) + 120))(*(this + 3)))
  {
    *(this + 8) = *(this + 8) + -1.0;
  }

  *(this + 7) = *(this + 7) + 1.0;
  return v6;
}

void sub_1B53F4F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x1B8C85310](a11, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void StopNgramStats::~StopNgramStats(StopNgramStats *this)
{
  *this = &unk_1F2D12C98;
  Trie<unsigned int,unsigned long>::~Trie(this + 160);

  quasar::Bitmap::~Bitmap(this);
}

{
  *this = &unk_1F2D12C98;
  Trie<unsigned int,unsigned long>::~Trie(this + 160);
  quasar::Bitmap::~Bitmap(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::QualityEstimatorOptions::options@<X0>(quasar::QualityEstimatorOptions *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 16;
  v3[1] = this + 176;
  v3[2] = this + 336;
  v3[3] = this + 496;
  v3[4] = this + 656;
  v3[5] = this + 816;
  v3[6] = this + 976;
  v3[7] = this + 1136;
  v3[8] = this + 1296;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::OptionValueBase *>::__init_with_size[abi:ne200100]<quasar::OptionValueBase * const*,quasar::OptionValueBase * const*>(a2, v3, &v4, 9uLL);
}

void quasar::QualityEstimatorBlock::init(std::string *this)
{
  v2 = quasar::OptionValue<std::string>::value(this[1].__r_.__value_.__r.__words);
  std::string::operator=(this + 67, v2);
  v3 = quasar::OptionValue<std::string>::value(&this[7].__r_.__value_.__r.__words[2]);
  std::string::operator=(this + 68, v3);
  if ((SHIBYTE(this[67].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&this[67].__r_.__value_.__s + 23))
    {
      goto LABEL_3;
    }

LABEL_11:
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
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v10);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v10, "src-locale not present in the config");
    goto LABEL_14;
  }

  if (!this[67].__r_.__value_.__l.__size_)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((SHIBYTE(this[68].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&this[68].__r_.__value_.__s + 23))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (!this[68].__r_.__value_.__l.__size_)
  {
LABEL_13:
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
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v10);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v10, "tgt-locale not present in the config");
LABEL_14:
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v10);
  }

LABEL_5:
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v4 = quasar::OptionValue<std::string>::value(&this[14].__r_.__value_.__l.__size_);
  kaldi::SplitStringToVector(v4, ",", 1, &v7);
  if (v7 != v8)
  {
    quasar::QualityEstimatorFeature::create(v7);
  }

  if (quasar::gLogLevel > 4)
  {
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
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v10);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "QE handler contains ", 20);
    v6 = MEMORY[0x1B8C84C30](v5, (this[66].__r_.__value_.__l.__size_ - this[66].__r_.__value_.__r.__words[0]) >> 4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " features", 9);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v10);
  }

  *&v10 = &v7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
}

void quasar::QualityEstimatorBlock::addQEFeatureScoresToMetaInfo(uint64_t a1, uint64_t a2, void *a3)
{
  quasar::PTree::PTree(v19);
  quasar::PTree::PTree(v18);
  v7 = *a3;
  v5 = (a3 + 1);
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = v6[14];
      *__p = quasar::getType(v4, v8);
      std::to_string(&__p[8], v8);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 1;
      quasar::PTree::putChild(v18, (v6 + 8), __p, 1);
      quasar::PTree::~PTree(__p);
      v9 = *(v6 + 1);
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
          v10 = *(v6 + 2);
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      v6 = v10;
    }

    while (v10 != v5);
  }

  v13 = 16;
  strcpy(__p, "quality_features");
  quasar::PTree::putChild(v19, __p, v18, 1);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](__p);
  quasar::PTree::writeJson();
}

void sub_1B53F55D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  quasar::PTree::~PTree((v14 - 192));
  quasar::PTree::~PTree((v14 - 128));
  _Unwind_Resume(a1);
}

void quasar::QualityEstimatorBlock::estimateQuality(uint64_t a1@<X2>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(a1 + 8) != *a1)
  {
    quasar::TranslationPhraseInternal::convertTokensToString(v23, *a1);
    if (quasar::gLogLevel >= 5)
    {
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
      v11 = 0u;
      v12 = 0u;
      v10 = 0u;
      v8 = 0u;
      v9 = 0u;
      *__p = 0u;
      v7 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Raw hypothesis : ", 17);
      if ((v24 & 0x80u) == 0)
      {
        v3 = v23;
      }

      else
      {
        v3 = v23[0];
      }

      if ((v24 & 0x80u) == 0)
      {
        v4 = v24;
      }

      else
      {
        v4 = v23[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }

    quasar::getWordBoundarySeparatedString(v23, __p);
    quasar::QualityEstimatorBlock::cleanICUTokens(__p, v5);
  }
}

void sub_1B53F5ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  std::__tree<std::string>::destroy(&a16, a17);
  __p = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v27 - 113) < 0)
  {
    operator delete(*(v27 - 136));
  }

  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void quasar::QualityEstimatorBlock::cleanICUTokens(uint64_t *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = 0uLL;
  v4 = 0;
  kaldi::JoinVectorToString(a1, " ", 1, &v3);
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v2, "  *", 0);
}

void sub_1B53F5CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a10);
  if (*(v23 - 25) < 0)
  {
    operator delete(*(v23 - 48));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void quasar::QualityEstimatorBlock::processBody(quasar::QualityEstimatorBlock *this)
{
  Value = quasar::ProcessingInput::getValue((this + 1472));
  if (*Value == Value[1])
  {
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
    v19 = 0u;
    v20 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "empty source input received");
  }

  else
  {
    v3 = quasar::ProcessingInput::getValue((this + 1528));
    if (*v3 != v3[1])
    {
      memset(&__str, 0, sizeof(__str));
      v4 = quasar::ProcessingInput::getValue((this + 1472));
      v5 = *(*v4 + 200);
      for (i = *(*v4 + 208); v5 != i; v5 += 17)
      {
        if (*(v5 + 23) >= 0)
        {
          v7 = *(v5 + 23);
        }

        else
        {
          v7 = v5[1];
        }

        std::string::basic_string[abi:ne200100](__p, v7 + 1);
        if ((SBYTE7(v19) & 0x80u) == 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        if (v7)
        {
          if (*(v5 + 23) >= 0)
          {
            v9 = v5;
          }

          else
          {
            v9 = *v5;
          }

          memmove(v8, v9, v7);
        }

        *(v8 + v7) = 32;
        if ((SBYTE7(v19) & 0x80u) == 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        if ((SBYTE7(v19) & 0x80u) == 0)
        {
          v11 = BYTE7(v19);
        }

        else
        {
          v11 = __p[1];
        }

        std::string::append(&__str, v10, v11);
        if (SBYTE7(v19) < 0)
        {
          operator delete(__p[0]);
        }
      }

      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      std::string::basic_string(__p, &__str, 0, size - 1, v16);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      *&__str.__r_.__value_.__l.__data_ = *__p;
      __str.__r_.__value_.__r.__words[2] = v19;
      if (quasar::gLogLevel >= 5)
      {
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
        v19 = 0u;
        v20 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Raw source : ", 13);
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
          v15 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v15 = __str.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, p_str, v15);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
      }

      quasar::getWordBoundarySeparatedString(&__str, __p);
      quasar::QualityEstimatorBlock::cleanICUTokens(__p, v16);
    }

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
    v19 = 0u;
    v20 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "empty nbest input received");
  }

  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

void quasar::ConfiguredProcessingBlock<quasar::QualityEstimatorOptions>::setContextProvider(uint64_t a1, uint64_t *a2)
{
  v3 = (*(*a1 + 8))(a1);
  (**v3)(&v10);
  v4 = v10;
  v5 = v11;
  if (v10 != v11)
  {
    do
    {
      v6 = *v4;
      v7 = a2[1];
      v8 = *a2;
      v9 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      quasar::OptionValueBase::setContextProvider(v6, &v8);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = v10;
  }

  if (v4)
  {
    v11 = v4;
    operator delete(v4);
  }
}

void sub_1B53F62F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::QualityEstimatorBlock::~QualityEstimatorBlock(quasar::QualityEstimatorBlock *this)
{
  quasar::ProcessingBlock::~ProcessingBlock((v1 + 1656));
}

{
  quasar::ProcessingBlock::~ProcessingBlock((v1 + 1656));

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::QualityEstimatorBlock::inputs@<X0>(quasar::QualityEstimatorBlock *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 1472;
  v3[1] = this + 1528;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::ProcessingInput *>::__init_with_size[abi:ne200100]<quasar::ProcessingInput * const*,quasar::ProcessingInput * const*>(a2, v3, &v4, 2uLL);
}

uint64_t non-virtual thunk toquasar::QualityEstimatorBlock::inputs@<X0>(quasar::QualityEstimatorBlock *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 8;
  v3[1] = this + 64;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::ProcessingInput *>::__init_with_size[abi:ne200100]<quasar::ProcessingInput * const*,quasar::ProcessingInput * const*>(a2, v3, &v4, 2uLL);
}

void non-virtual thunk toquasar::QualityEstimatorBlock::~QualityEstimatorBlock(char **this)
{

  quasar::ProcessingBlock::~ProcessingBlock(this + 24);
}

{
  quasar::ProcessingBlock::~ProcessingBlock(this + 24);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toquasar::QualityEstimatorBlock::~QualityEstimatorBlock(quasar::QualityEstimatorBlock *this)
{
  v2 = (v1 + 1656);

  quasar::ProcessingBlock::~ProcessingBlock(v2);
}

{
  v1 = (this + *(*this - 24));
  quasar::ProcessingBlock::~ProcessingBlock(v1 + 207);

  JUMPOUT(0x1B8C85350);
}

void quasar::QualityEstimatorBlock::~QualityEstimatorBlock(quasar::QualityEstimatorBlock *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[5];
  *(this + 183) = a2[6];
  if (*(this + 1655) < 0)
  {
    operator delete(*(this + 204));
  }

  if (*(this + 1631) < 0)
  {
    operator delete(*(this + 201));
  }

  v5 = (this + 1584);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 1560);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 1551) < 0)
  {
    operator delete(*(this + 191));
  }

  v5 = (this + 1504);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 1495) < 0)
  {
    operator delete(*(this + 184));
  }

  quasar::ConfiguredProcessingBlock<quasar::QualityEstimatorOptions>::~ConfiguredProcessingBlock(this, a2 + 1);
}

uint64_t std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::pair<std::string,float>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t quasar::DumpBlockOptions::options@<X0>(quasar::DumpBlockOptions *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 16;
  v3[1] = this + 176;
  v3[2] = this + 320;
  v3[3] = this + 480;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::OptionValueBase *>::__init_with_size[abi:ne200100]<quasar::OptionValueBase * const*,quasar::OptionValueBase * const*>(a2, v3, &v4, 4uLL);
}

void quasar::DumpBlock::process(void *a1, uint64_t a2, quasar::MetaInfo::Impl ***a3)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v4 = *a3;
  v5 = a3[1];
  if (*a3 != v5)
  {
    while (*quasar::OptionValue<BOOL>::value(a1 + 23) != 1)
    {
      quasar::TranslationPhraseInternal::convertTokensToString(__p, v4);
      std::vector<std::string>::push_back[abi:ne200100](&v32, __p);
      if (SHIBYTE(v31) < 0)
      {
        v16 = __p[0];
LABEL_25:
        operator delete(v16);
      }

LABEL_26:
      if (*quasar::OptionValue<int>::value(a1 + 61))
      {
        v18 = v32;
        v17 = v33;
        v4 += 33;
        if (0xAAAAAAAAAAAAAAABLL * ((v17 - v18) >> 3) >= *quasar::OptionValue<int>::value(a1 + 61) || v4 == v5)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v4 += 33;
        if (v4 == v5)
        {
          goto LABEL_34;
        }
      }
    }

    quasar::TranslationPhraseInternal::convertTokensToString(&v28, v4);
    v6 = quasar::OptionValue<std::string>::value(a1 + 41);
    v7 = *(v6 + 23);
    if (v7 >= 0)
    {
      v8 = v6;
    }

    else
    {
      v8 = *v6;
    }

    if (v7 >= 0)
    {
      v9 = *(v6 + 23);
    }

    else
    {
      v9 = *(v6 + 8);
    }

    v10 = std::string::append(&v28, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    quasar::MetaInfo::json(v4 + 32, v26);
    if ((v27 & 0x80u) == 0)
    {
      v12 = v26;
    }

    else
    {
      v12 = v26[0];
    }

    if ((v27 & 0x80u) == 0)
    {
      v13 = v27;
    }

    else
    {
      v13 = v26[1];
    }

    v14 = std::string::append(&v29, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v31 = v14->__r_.__value_.__r.__words[2];
    *__p = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v32, __p);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    v16 = v28.__r_.__value_.__r.__words[0];
    goto LABEL_25;
  }

LABEL_34:
  __p[0] = 0;
  __p[1] = 0;
  v31 = 0;
  __p[1] = std::vector<quasar::TranslationPhraseInternal>::__emplace_back_slow_path<>(__p);
  memset(&v29, 0, sizeof(v29));
  v20 = quasar::OptionValue<std::string>::value(a1 + 3);
  if (*(v20 + 23) >= 0)
  {
    v21 = v20;
  }

  else
  {
    v21 = *v20;
  }

  kaldi::JoinVectorToString<std::string>(&v32, v21, &v29);
  v22 = __p[1];
  v23 = (__p[1] - 64);
  v24 = *(__p[1] - 7);
  if (v24 >= *(__p[1] - 6))
  {
    v25 = std::vector<quasar::TranslationTokenInternal>::__emplace_back_slow_path<std::string &>(v23, &v29);
  }

  else
  {
    std::allocator<quasar::TranslationTokenInternal>::construct[abi:ne200100]<quasar::TranslationTokenInternal,std::string &>(v23, *(__p[1] - 7), &v29);
    v25 = v24 + 136;
    *(v22 - 7) = v24 + 136;
  }

  *(v22 - 7) = v25;
  quasar::ProcessingBlock::send(a1 + *(*a1 - 24), __p, 0);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  v29.__r_.__value_.__r.__words[0] = __p;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v29);
  __p[0] = &v32;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1B53F6B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void **__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  *(v34 - 56) = v33;
  if (a26 < 0)
  {
    operator delete(__p);
  }

  __p = &a28;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&__p);
  a28 = (v35 - 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

uint64_t kaldi::JoinVectorToString<std::string>(uint64_t *a1, const char *a2, uint64_t a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v20);
  v6 = *a1;
  if (a1[1] != *a1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v6 + v7;
      v10 = *(v9 + 23);
      if (v10 >= 0)
      {
        v11 = v9;
      }

      else
      {
        v11 = *v9;
      }

      if (v10 >= 0)
      {
        v12 = *(v9 + 23);
      }

      else
      {
        v12 = *(v9 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v11, v12);
      ++v8;
      v6 = *a1;
      v13 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
      if (v8 < v13)
      {
        v14 = strlen(a2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, a2, v14);
        v6 = *a1;
        v13 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
      }

      v7 += 24;
    }

    while (v8 < v13);
  }

  std::stringbuf::str();
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v18;
  v15 = MEMORY[0x1E69E54D8];
  *(a3 + 16) = v19;
  v20[0] = *v15;
  v16 = v15[9];
  *(v20 + *(v20[0] - 24)) = v15[8];
  v21 = v16;
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v25);
}

void sub_1B53F6E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void quasar::ConfiguredProcessingBlock<quasar::DumpBlockOptions>::setContextProvider(uint64_t a1, uint64_t *a2)
{
  v3 = (*(*a1 + 8))(a1);
  (**v3)(&v10);
  v4 = v10;
  v5 = v11;
  if (v10 != v11)
  {
    do
    {
      v6 = *v4;
      v7 = a2[1];
      v8 = *a2;
      v9 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      quasar::OptionValueBase::setContextProvider(v6, &v8);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = v10;
  }

  if (v4)
  {
    v11 = v4;
    operator delete(v4);
  }
}

void sub_1B53F6F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::DumpBlock::~DumpBlock(quasar::DumpBlock *this)
{
  *this = &unk_1F2D11620;
  v1 = (this + 632);
  *(this + 79) = off_1F2D116A8;
  quasar::DumpBlockOptions::~DumpBlockOptions((this + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v1);
}

{
  *this = &unk_1F2D11620;
  v1 = (this + 632);
  *(this + 79) = off_1F2D116A8;
  quasar::DumpBlockOptions::~DumpBlockOptions((this + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v1);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toquasar::DumpBlock::~DumpBlock(quasar::DumpBlock *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_1F2D11620;
  v2 = (v1 + 79);
  v1[79] = off_1F2D116A8;
  quasar::DumpBlockOptions::~DumpBlockOptions((v1 + 1));

  quasar::ProcessingBlock::~ProcessingBlock(v2);
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_1F2D11620;
  *(v1 + 79) = off_1F2D116A8;
  quasar::DumpBlockOptions::~DumpBlockOptions((v1 + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v1 + 79);

  JUMPOUT(0x1B8C85350);
}

void quasar::DumpBlockOptions::~DumpBlockOptions(quasar::DumpBlockOptions *this)
{
  *this = &unk_1F2D114A8;
  *(this + 60) = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(this + 600, *(this + 76));
  *(this + 60) = &unk_1F2D08890;
  v2 = *(this + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 559) < 0)
  {
    operator delete(*(this + 67));
  }

  if (*(this + 535) < 0)
  {
    operator delete(*(this + 64));
  }

  if (*(this + 511) < 0)
  {
    operator delete(*(this + 61));
  }

  *(this + 40) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 456, *(this + 58));
  if (*(this + 447) < 0)
  {
    operator delete(*(this + 53));
  }

  *(this + 40) = &unk_1F2D08890;
  v3 = *(this + 52);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 399) < 0)
  {
    operator delete(*(this + 47));
  }

  if (*(this + 375) < 0)
  {
    operator delete(*(this + 44));
  }

  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
  }

  *(this + 22) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 296, *(this + 38));
  *(this + 22) = &unk_1F2D08890;
  v4 = *(this + 34);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  *(this + 2) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 152, *(this + 20));
  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  *(this + 2) = &unk_1F2D08890;
  v5 = *(this + 14);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

uint64_t std::vector<quasar::TranslationPhraseInternal>::__emplace_back_slow_path<>(uint64_t a1)
{
  v1 = 0xF83E0F83E0F83E1 * ((*(a1 + 8) - *a1) >> 3);
  v2 = v1 + 1;
  if ((v1 + 1) > 0xF83E0F83E0F83ELL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0xF83E0F83E0F83E1 * ((*(a1 + 16) - *a1) >> 3)) >= 0x7C1F07C1F07C1FLL)
  {
    v4 = 0xF83E0F83E0F83ELL;
  }

  else
  {
    v4 = v2;
  }

  v14 = a1;
  if (v4)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TranslationPhraseInternal>>(a1, v4);
  }

  v11 = 0;
  v12 = 264 * v1;
  quasar::TranslationPhraseInternal::TranslationPhraseInternal((264 * v1));
  v13 = (264 * v1 + 264);
  v5 = *(a1 + 8);
  v6 = 264 * v1 + *a1 - v5;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TranslationPhraseInternal>,quasar::TranslationPhraseInternal*>(a1, *a1, v5, (v12 + *a1 - v5));
  v7 = *a1;
  *a1 = v6;
  v8 = *(a1 + 16);
  v10 = v13;
  *(a1 + 8) = v13;
  *&v13 = v7;
  *(&v13 + 1) = v8;
  v11 = v7;
  v12 = v7;
  std::__split_buffer<quasar::TranslationPhraseInternal>::~__split_buffer(&v11);
  return v10;
}

void sub_1B53F75E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::TranslationPhraseInternal>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::TranslationTokenInternal>::__emplace_back_slow_path<std::string &>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v6 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TranslationTokenInternal>>(a1, v6);
  }

  v13 = 0;
  v14 = 136 * v2;
  std::allocator<quasar::TranslationTokenInternal>::construct[abi:ne200100]<quasar::TranslationTokenInternal,std::string &>(a1, (136 * v2), a2);
  v15 = 136 * v2 + 136;
  v7 = a1[1];
  v8 = 136 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TranslationTokenInternal>,quasar::TranslationTokenInternal*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::TranslationTokenInternal>::~__split_buffer(&v13);
  return v12;
}

void sub_1B53F7714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::TranslationTokenInternal>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::TranslationTokenInternal>::construct[abi:ne200100]<quasar::TranslationTokenInternal,std::string &>(int a1, std::string *this, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v4, *a3, *(a3 + 8));
  }

  else
  {
    v4 = *a3;
  }

  v5 = v4;
  memset(&v4, 0, sizeof(v4));
  v6 = 0;
  v8 = 0;
  v9 = 0;
  __p = 0;
  v10 = 3212836864;
  v11 = -1;
  quasar::TranslationTokenInternal::TranslationTokenInternal(this, &v5);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_1B53F77EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  quasar::TranslationToken::~TranslationToken(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *quasar::TranslationTokenInternal::TranslationTokenInternal(std::string *this, const quasar::TranslationToken *a2)
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

  v5 = *(a2 + 12);
  this[1].__r_.__value_.__l.__size_ = 0;
  LOWORD(this[1].__r_.__value_.__l.__data_) = v5;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__r.__words[0] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this[1].__r_.__value_.__l.__size_, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  v6 = *(a2 + 7);
  LODWORD(this[2].__r_.__value_.__r.__words[2]) = *(a2 + 16);
  this[2].__r_.__value_.__l.__size_ = v6;
  *&this[3].__r_.__value_.__l.__data_ = 0u;
  *&this[3].__r_.__value_.__r.__words[2] = 0u;
  *&this[4].__r_.__value_.__r.__words[1] = 0u;
  this[5].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__l.__size_ = -1;
  return this;
}

void sub_1B53F78B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::WriteBasicType<unsigned int>(void *a1, int a2, uint64_t a3)
{
  if (a2)
  {
    std::ostream::put();
    result = std::ostream::write();
  }

  else
  {
    v5 = MEMORY[0x1B8C84C10](a1, a3);
    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " ", 1);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Write failure in WriteBasicType.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

uint64_t std::vector<kaldi::EventMap *>::__init_with_size[abi:ne200100]<kaldi::EventMap **,kaldi::EventMap **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B53F7A04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<kaldi::EventMap *>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B53F7ADC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B53F7B54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char **std::vector<std::vector<int>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::vector<int> const*>,std::__wrap_iter<std::vector<int> const*>>(void *a1, uint64_t a2, char **a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v18 = 3 * a5;
        std::vector<std::vector<int>>::__move_range(a1, a2, a1[1], (a2 + 24 * a5));
        v17 = &a3[v18];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<int>>,std::vector<int> const*,std::vector<int> const*,std::vector<int>*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<std::vector<int>>::__move_range(a1, v5, v10, &v5[3 * a5]);
        v17 = (a3 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::vector<int> *,std::vector<int> *,std::vector<int> *>(&v27, a3, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    v30 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, v15);
    }

    v27 = 0;
    v28 = 8 * (v13 >> 3);
    v29 = v28;
    std::__split_buffer<std::vector<int>>::__construct_at_end_with_size<std::__wrap_iter<std::vector<int> const*>>(&v27, a3, a5);
    v19 = v28;
    memcpy(v29, v5, a1[1] - v5);
    v20 = *a1;
    v21 = v28;
    *&v29 = v29 + a1[1] - v5;
    a1[1] = v5;
    v22 = v5 - v20;
    v23 = (v21 - (v5 - v20));
    memcpy(v23, v20, v22);
    v24 = *a1;
    *a1 = v23;
    v25 = a1[2];
    *(a1 + 1) = v29;
    *&v29 = v24;
    *(&v29 + 1) = v25;
    v27 = v24;
    v28 = v24;
    std::__split_buffer<std::vector<int>>::~__split_buffer(&v27);
    return v19;
  }

  return v5;
}

void std::vector<std::vector<int>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(a1 + 8);
  v5 = (a2 + v4 - a4);
  v6 = v4;
  while (v5 < a3)
  {
    *v6 = 0;
    *(v6 + 1) = 0;
    *(v6 + 2) = 0;
    *v6 = *v5;
    *(v6 + 2) = *(v5 + 2);
    *v5 = 0;
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    v5 += 24;
    v6 += 24;
  }

  *(a1 + 8) = v6;
  if (v4 != a4)
  {
    v7 = (v4 - 24);
    v8 = a4 - v4;
    v9 = (a2 + v4 - 24 - a4);
    do
    {
      std::vector<int>::__move_assign(v7, v9);
      v7 -= 24;
      v9 = (v9 - 24);
      v8 += 24;
    }

    while (v8);
  }
}

uint64_t std::__split_buffer<std::vector<int>>::__construct_at_end_with_size<std::__wrap_iter<std::vector<int> const*>>(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a3)
  {
    v6 = &v4[3 * a3];
    v7 = 24 * a3;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *a2, a2[1], (a2[1] - *a2) >> 2);
      v4 += 3;
      a2 += 3;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(v3 + 16) = v4;
  return result;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<int>>,std::vector<int> const*,std::vector<int> const*,std::vector<int>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void sub_1B53F8548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a36);

  quasar::LDContext::~LDContext(v37);
  _Unwind_Resume(a1);
}

void sub_1B53F888C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  _Block_object_dispose(&a16, 8);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v24 + 48, a23);

  _Unwind_Resume(a1);
}

uint64_t std::optional<std::set<quasar::language_detector::Locale>>::operator=[abi:ne200100]<std::set<quasar::language_detector::Locale>,void>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__move_assign(a1, a2);
  }

  else
  {
    *a1 = *a2;
    v3 = a2 + 1;
    v4 = a2[1];
    *(a1 + 8) = v4;
    v5 = a1 + 8;
    v6 = a2[2];
    *(a1 + 16) = v6;
    if (v6)
    {
      *(v4 + 16) = v5;
      *a2 = v3;
      *v3 = 0;
      a2[2] = 0;
    }

    else
    {
      *a1 = v5;
    }

    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t std::optional<quasar::language_detector::Locale>::operator=[abi:ne200100]<quasar::language_detector::Locale,void>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 23) = 0;
    *a2 = 0;
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
    *(a2 + 47) = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v7;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    *(a1 + 48) = 1;
  }

  return a1;
}

std::vector<std::pair<std::string, std::string>> *std::optional<std::vector<quasar::language_detector::Locale>>::operator=[abi:ne200100]<std::vector<quasar::language_detector::Locale>,void>(std::vector<std::pair<std::string, std::string>> *this, std::vector<std::pair<std::string, std::string>> *a2)
{
  if (LOBYTE(this[1].__begin_) == 1)
  {
    std::vector<std::pair<std::string,std::string>>::__vdeallocate(this);
    *&this->__begin_ = *&a2->__begin_;
    this->__end_cap_.__value_ = a2->__end_cap_.__value_;
    a2->__begin_ = 0;
    a2->__end_ = 0;
    a2->__end_cap_.__value_ = 0;
  }

  else
  {
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
    *this = *a2;
    a2->__begin_ = 0;
    a2->__end_ = 0;
    a2->__end_cap_.__value_ = 0;
    LOBYTE(this[1].__begin_) = 1;
  }

  return this;
}

void sub_1B53F9050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void **p_p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a15 == 1)
  {
    p_p = &__p;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&p_p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::optional<quasar::language_detector::Locale>::~optional(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t std::__optional_copy_base<std::set<quasar::language_detector::Locale>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    std::set<quasar::language_detector::Locale>::set[abi:ne200100](a1, a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1B53F9758(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v1, *(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void *std::set<quasar::language_detector::Locale>::set[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<quasar::language_detector::Locale>::insert[abi:ne200100]<std::__tree_const_iterator<quasar::language_detector::Locale,std::__tree_node<quasar::language_detector::Locale,void *> *,long>>(a1, *a2, a2 + 1);
  return a1;
}

void *std::set<quasar::language_detector::Locale>::insert[abi:ne200100]<std::__tree_const_iterator<quasar::language_detector::Locale,std::__tree_node<quasar::language_detector::Locale,void *> *,long>>(void *result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<quasar::language_detector::Locale>::__emplace_hint_unique_key_args<quasar::language_detector::Locale,quasar::language_detector::Locale const&>(v5, (v5 + 1), v4 + 4);
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

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

const void *std::__tree<quasar::language_detector::Locale>::__emplace_hint_unique_key_args<quasar::language_detector::Locale,quasar::language_detector::Locale const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<quasar::language_detector::Locale>::__find_equal<quasar::language_detector::Locale>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<quasar::language_detector::Locale>::__construct_node<quasar::language_detector::Locale const&>();
  }

  return v3;
}

const void **std::__tree<quasar::language_detector::Locale>::__find_equal<quasar::language_detector::Locale>(void *a1, uint64_t a2, const void ***a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !quasar::language_detector::Locale::operator<(a5, (a2 + 32)))
  {
    if (!quasar::language_detector::Locale::operator<((a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!quasar::language_detector::Locale::operator<(a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (quasar::language_detector::Locale::operator<(v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<quasar::language_detector::Locale>::__find_equal<quasar::language_detector::Locale>(a1, a3, a5);
}

void sub_1B53F9B30(_Unwind_Exception *a1)
{
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

const void **std::__tree<quasar::language_detector::Locale>::__find_equal<quasar::language_detector::Locale>(uint64_t a1, const void ***a2, const void **a3)
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
        if (!quasar::language_detector::Locale::operator<(a3, v4 + 4))
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

      if (!quasar::language_detector::Locale::operator<(v7 + 4, a3))
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

std::string *std::__optional_copy_base<quasar::language_detector::Locale,false>::__optional_copy_base[abi:ne200100](std::string *this, __int128 *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[2].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 48) == 1)
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

    this[2].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void sub_1B53F9C78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  if (*(v1 + 48) == 1)
  {
    std::pair<std::string,std::string>::~pair(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_copy_base<std::vector<quasar::language_detector::Locale>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<std::vector<quasar::language_detector::Locale>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<quasar::language_detector::Locale>,false> const&>(a1, a2);
  return a1;
}

void sub_1B53F9CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__optional_storage_base<std::vector<quasar::language_detector::Locale>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<quasar::language_detector::Locale>,false> const&>(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<quasar::language_detector::Locale>::__init_with_size[abi:ne200100]<quasar::language_detector::Locale*,quasar::language_detector::Locale*>(result, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 4));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t std::vector<quasar::language_detector::Locale>::__init_with_size[abi:ne200100]<quasar::language_detector::Locale*,quasar::language_detector::Locale*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::string,std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B53F9DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::language_detector::Locale>,quasar::language_detector::Locale*,quasar::language_detector::Locale*,quasar::language_detector::Locale*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      if (*(v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v4 + 1, *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v8 = *(v6 + 24);
        v4[1].__r_.__value_.__r.__words[2] = *(v6 + 5);
        *&v4[1].__r_.__value_.__l.__data_ = v8;
      }

      v6 += 3;
      v4 = v13 + 2;
      v13 += 2;
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::language_detector::Locale>,quasar::language_detector::Locale*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::language_detector::Locale>,quasar::language_detector::Locale*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::__optional_copy_base<std::map<quasar::language_detector::Locale,double>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    std::map<quasar::language_detector::Locale,double>::map[abi:ne200100](a1, a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1B53F9F74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v1, *(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void *std::map<quasar::language_detector::Locale,double>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<quasar::language_detector::Locale,double>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<quasar::language_detector::Locale,double>,std::__tree_node<std::__value_type<quasar::language_detector::Locale,double>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

void *std::map<quasar::language_detector::Locale,double>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<quasar::language_detector::Locale,double>,std::__tree_node<std::__value_type<quasar::language_detector::Locale,double>,void *> *,long>>>(void *result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<quasar::language_detector::Locale,double>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,double>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,double>>>::__emplace_hint_unique_key_args<quasar::language_detector::Locale,std::pair<quasar::language_detector::Locale const,double> const&>(v5, (v5 + 1), v4 + 4);
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

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

const void *std::__tree<std::__value_type<quasar::language_detector::Locale,double>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,double>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,double>>>::__emplace_hint_unique_key_args<quasar::language_detector::Locale,std::pair<quasar::language_detector::Locale const,double> const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<quasar::language_detector::Locale>::__find_equal<quasar::language_detector::Locale>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<quasar::language_detector::Locale,double>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,double>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,double>>>::__construct_node<std::pair<quasar::language_detector::Locale const,double> const&>();
  }

  return v3;
}

void sub_1B53FA1C0(_Unwind_Exception *a1)
{
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__7(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

void ___ZN10EARHelpers15DictionaryToMapIN6quasar17language_detector6LocaleEdZ47___EARLanguageDetectorRequestContext_LDContext_E3__0Z47___EARLanguageDetectorRequestContext_LDContext_E3__1EENSt3__13mapIT_T0_NS6_4lessIS8_EENS6_9allocatorINS6_4pairIKS8_S9_EEEEEEP12NSDictionaryT1_T2__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  if (v7)
  {
    [v7 ear_toString];
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v16 = 0;
  }

  quasar::language_detector::Locale::Locale(v11, __p);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  [v6 doubleValue];
  v9 = *(*(a1 + 32) + 8);
  __p[0] = v11;
  *(std::__tree<std::__value_type<quasar::language_detector::Locale,double>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,double>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,double>>>::__emplace_unique_key_args<quasar::language_detector::Locale,std::piecewise_construct_t const&,std::tuple<quasar::language_detector::Locale const&>,std::tuple<>>(v9 + 48, v11) + 10) = v10;
  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }
}

const void *std::__tree<std::__value_type<quasar::language_detector::Locale,double>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,double>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,double>>>::__emplace_unique_key_args<quasar::language_detector::Locale,std::piecewise_construct_t const&,std::tuple<quasar::language_detector::Locale const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<quasar::language_detector::Locale>::__find_equal<quasar::language_detector::Locale>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<quasar::language_detector::Locale,double>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,double>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,double>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<quasar::language_detector::Locale const&>,std::tuple<>>();
  }

  return v2;
}

void sub_1B53FA4C4(_Unwind_Exception *a1)
{
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

const void *std::__tree<quasar::language_detector::Locale>::__emplace_unique_key_args<quasar::language_detector::Locale,quasar::language_detector::Locale>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<quasar::language_detector::Locale>::__find_equal<quasar::language_detector::Locale>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

std::__split_buffer<std::pair<std::wstring, std::wstring>>::pointer std::vector<quasar::language_detector::Locale>::__emplace_back_slow_path<quasar::language_detector::Locale>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v16.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a1, v6);
  }

  v7 = 48 * v2;
  v16.__first_ = 0;
  v16.__begin_ = v7;
  v16.__end_cap_.__value_ = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v9;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v16.__end_ = (48 * v2 + 48);
  v10 = *(a1 + 8);
  v11 = 48 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::language_detector::Locale>,quasar::language_detector::Locale*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  end = v16.__end_;
  *(a1 + 8) = *&v16.__end_;
  v16.__end_ = v12;
  v16.__end_cap_.__value_ = v13;
  v16.__first_ = v12;
  v16.__begin_ = v12;
  std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v16);
  return end;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::language_detector::Locale>,quasar::language_detector::Locale*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v7 += 48;
      a4 += 48;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](a1, v5);
      v5 += 48;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::language_detector::Locale>,quasar::language_detector::Locale*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

quasar::QsrText *quasar::QsrText::QsrText(quasar::QsrText *this)
{
  v6 = *MEMORY[0x1E69E9840];
  qmemcpy(__dst, "abfnrtv_\\~", 10);
  std::unordered_set<char>::unordered_set(this, __dst, 10);
  qmemcpy(__dst, " \n\t", 3);
  std::unordered_set<char>::unordered_set(this + 40, __dst, 3);
  *&__dst[64] = xmmword_1B5AFE0D8;
  *&__dst[80] = unk_1B5AFE0E8;
  *&__dst[96] = xmmword_1B5AFE0F8;
  *__dst = xmmword_1B5AFE098;
  *&__dst[16] = unk_1B5AFE0A8;
  *&__dst[32] = xmmword_1B5AFE0B8;
  *&__dst[48] = unk_1B5AFE0C8;
  std::unordered_map<unsigned long,char>::unordered_map(this + 80, __dst, 7);
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 1065353216;
  memcpy(__dst, &unk_1B5AFE108, sizeof(__dst));
  std::unordered_map<char32_t,char32_t>::unordered_map(this + 160, __dst, 225);
  *(this + 200) = 0;
  for (i = *(this + 12); i; i = *i)
  {
    v3 = *(i + 2);
    *__dst = i + 24;
    std::__hash_table<std::__hash_value_type<char,unsigned long>,std::__unordered_map_hasher<char,std::__hash_value_type<char,unsigned long>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,unsigned long>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,unsigned long>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(this + 15, i + 24)[3] = v3;
  }

  return this;
}

void sub_1B53FA940(_Unwind_Exception *a1)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v2);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v1 + 80);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v1 + 40);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

uint64_t quasar::QsrText::getHex(int a1, char *__str, unint64_t *a3)
{
  v5 = __str;
  if (__str[23] < 0)
  {
    v5 = *__str;
  }

  __endptr = 0;
  *a3 = strtoul(v5, &__endptr, 16);
  *__error() = 0;
  v6 = __str[23];
  if (v6 < 0)
  {
    v6 = *(__str + 1);
  }

  if (__endptr == &v5[v6] && (*a3 - 0x7FFFFFFFFFFFFFFFLL > 1 || *__error() != 34))
  {
    return 1;
  }

  if (quasar::gLogLevel >= 1)
  {
    memset(v8, 0, sizeof(v8));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Invalid or out-of-range hex value", 33);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(v8);
  }

  return 0;
}

void sub_1B53FB5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a21);
  if (a60 < 0)
  {
    operator delete(__p);
  }

  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::~wstring_convert(&STACK[0x290]);
  _Unwind_Resume(a1);
}

void sub_1B53FB6DC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, __int128 a37)
{
  if (a2 == 1)
  {
    v37 = __cxa_begin_catch(a1);
    if (quasar::gLogLevel >= 1)
    {
      v38 = v37;
      a36 = 0u;
      a37 = 0u;
      a34 = 0u;
      a35 = 0u;
      a32 = 0u;
      a33 = 0u;
      a30 = 0u;
      a31 = 0u;
      a28 = 0u;
      a29 = 0u;
      a26 = 0u;
      a27 = 0u;
      a25 = 0u;
      a23 = 0u;
      a24 = 0u;
      a21 = 0u;
      a22 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&a21);
      v39 = (*(*v38 + 16))(v38);
      v40 = strlen(v39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a21, v39, v40);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&a21);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B53FB144);
  }

  JUMPOUT(0x1B53FB6CCLL);
}

void sub_1B53FB810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  quasar::QuasarErrorMessage::~QuasarErrorMessage(va);
  __cxa_end_catch();
  JUMPOUT(0x1B53FB6CCLL);
}

void sub_1B53FB834(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B53FB6D4);
}

uint64_t quasar::QsrText::normalizeUnicode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    operator new();
  }

  MEMORY[0x1B8C84820](a3, "");
  return 1;
}

void sub_1B53FC134(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  quasar::QuasarInfoMessage::~QuasarInfoMessage(va);
  JUMPOUT(0x1B53FC140);
}

void sub_1B53FC158(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  quasar::QuasarInfoMessage::~QuasarInfoMessage(va);
  MEMORY[0x1B8C85310](v2, v3);
  JUMPOUT(0x1B53FC1B0);
}

void sub_1B53FC1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 __p, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a45 < 0)
  {
    operator delete(*(v45 + 296));
  }

  if (SBYTE7(a12) < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v48 = __cxa_begin_catch(a1);
    if (quasar::gLogLevel >= 4)
    {
      v49 = v48;
      *(v45 + 240) = 0u;
      *(v45 + 256) = 0u;
      *(v45 + 208) = 0u;
      *(v45 + 224) = 0u;
      *(v45 + 176) = 0u;
      *(v45 + 192) = 0u;
      *(v45 + 144) = 0u;
      *(v45 + 160) = 0u;
      *(v45 + 128) = 0u;
      a17 = 0u;
      a18 = 0u;
      a15 = 0u;
      a16 = 0u;
      a13 = 0u;
      a14 = 0u;
      __p = 0u;
      a12 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v50 = (*(*v49 + 16))(v49);
      v51 = strlen(v50);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, v50, v51);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&__p);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B53FBB10);
  }

  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::~wstring_convert(&v52);
  _Unwind_Resume(a1);
}

void sub_1B53FC2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::QuasarInfoMessage::~QuasarInfoMessage(va);
  __cxa_end_catch();
  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::~wstring_convert(&v4);
  _Unwind_Resume(a1);
}

void sub_1B53FC2C0(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B53FC1B8);
}

uint64_t quasar::QsrText::hatToQsrToken(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  if (quasar::QsrText::normalizeUnicode(a1, a2, v13))
  {
    v6 = quasar::QsrText::hatSubTokenToQsrToken(a1, v13, a3, 1);
  }

  else
  {
    if (quasar::gLogLevel >= 1)
    {
      memset(v12, 0, sizeof(v12));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Unicode normalization failed for :", 34);
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
      quasar::QuasarErrorMessage::~QuasarErrorMessage(v12);
    }

    v6 = 0;
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  return v6;
}

void sub_1B53FC3D4(_Unwind_Exception *exception_object)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::QsrText::hatSubTokenToQsrToken(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v58);
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  if (v7 < 1)
  {
LABEL_66:
    std::stringbuf::str();
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = v41;
    *(a3 + 16) = v42;
    quasar::QsrText::isValidToken();
  }

  v8 = 0;
  while (1)
  {
    v9 = *(a2 + 23);
    if ((v9 & 0x80u) == 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    v11 = v10[v8];
    if (v11 == 126)
    {
      v13 = "~~";
LABEL_24:
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, v13, 2);
      goto LABEL_55;
    }

    if (v11 == 95)
    {
      if ((v9 & 0x80) != 0)
      {
        if (**a2 != 47)
        {
          goto LABEL_23;
        }

        v9 = *(a2 + 8);
      }

      else if (*a2 != 47)
      {
        goto LABEL_23;
      }

      if (v10[v9 - 1] != 47)
      {
LABEL_23:
        v13 = "~_";
        goto LABEL_24;
      }

LABEL_22:
      LOBYTE(v41) = v10[v8];
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, &v41, 1);
      goto LABEL_55;
    }

    if (v11 != 94)
    {
      goto LABEL_22;
    }

    if (v8 > v7 - 3)
    {
      break;
    }

    v40 = 0;
    v12 = std::string::basic_string(&v39, a2, v8 + 1, 2uLL, &v41);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v38, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
    }

    else
    {
      v38 = v39;
    }

    Hex = quasar::QsrText::getHex(v12, &v38, &v40);
    v15 = Hex;
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
      if (v15)
      {
LABEL_28:
        if (v40 == 127 || (v40 - 1) <= 0x1E)
        {
          v22 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>((a1 + 80), &v40);
          if (v22)
          {
            v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, "~", 1);
            LOBYTE(v41) = *(v22 + 24);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, &v41, 1);
          }

          else
          {
            v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, "~U", 2);
            LOBYTE(v41) = 48;
            v25 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v24, &v41);
            v26 = *v25;
            *(v25 + *(*v25 - 24) + 24) = 8;
            *(v25 + *(v26 - 24) + 8) |= 0x4000u;
            *(v25 + *(v26 - 24) + 8) = *(v25 + *(v26 - 24) + 8) & 0xFFFFFFB5 | 8;
            MEMORY[0x1B8C84C30]();
          }

          goto LABEL_50;
        }

        if (v40)
        {
          if (v40 == 94)
          {
            v16 = "^";
            goto LABEL_48;
          }

          if (v40 == 32)
          {
            v16 = "_";
LABEL_48:
            v27 = 1;
LABEL_49:
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, v16, v27);
LABEL_50:
            v21 = 1;
            goto LABEL_51;
          }
        }

        else if (a4)
        {
          v16 = "~w00";
          v27 = 4;
          goto LABEL_49;
        }

        if (quasar::gLogLevel >= 1)
        {
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v41 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v41);
          v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v41, "Illegal use of ^ followed by value ", 35);
          v29 = MEMORY[0x1B8C84C30](v28, v40);
          v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " in HatText token ", 18);
          v30 = *(a2 + 23);
          if (v30 >= 0)
          {
            v19 = a2;
          }

          else
          {
            v19 = *a2;
          }

          if (v30 >= 0)
          {
            v20 = *(a2 + 23);
          }

          else
          {
            v20 = *(a2 + 8);
          }

LABEL_42:
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
          quasar::QuasarErrorMessage::~QuasarErrorMessage(&v41);
          goto LABEL_43;
        }

        goto LABEL_43;
      }
    }

    else if (Hex)
    {
      goto LABEL_28;
    }

    if (quasar::gLogLevel >= 1)
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v41);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v41, "Illegal occurrence of ^ in HatText token ", 41);
      v18 = *(a2 + 23);
      if (v18 >= 0)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a2;
      }

      if (v18 >= 0)
      {
        v20 = *(a2 + 23);
      }

      else
      {
        v20 = *(a2 + 8);
      }

      goto LABEL_42;
    }

LABEL_43:
    v21 = 0;
LABEL_51:
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (!v21)
    {
      goto LABEL_77;
    }

    v8 += 2;
LABEL_55:
    if (++v8 >= v7)
    {
      goto LABEL_66;
    }
  }

  if (quasar::gLogLevel >= 1)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v41);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v41, "Illegal occurrence of ^ in HatText token ", 41);
    v32 = *(a2 + 23);
    if (v32 >= 0)
    {
      v33 = a2;
    }

    else
    {
      v33 = *a2;
    }

    if (v32 >= 0)
    {
      v34 = *(a2 + 23);
    }

    else
    {
      v34 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v33, v34);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(&v41);
  }

LABEL_77:
  v58[0] = *MEMORY[0x1E69E54D8];
  v35 = *(MEMORY[0x1E69E54D8] + 72);
  *(v58 + *(v58[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v59 = v35;
  v60 = MEMORY[0x1E69E5548] + 16;
  if (v62 < 0)
  {
    operator delete(v61[7].__locale_);
  }

  v60 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v61);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C85200](&v63);
  return 0;
}

uint64_t quasar::QsrText::hatToQsrTokens(uint64_t a1, uint64_t *a2, void ***a3, int a4)
{
  std::vector<std::string>::clear[abi:ne200100](a3);
  v8 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
    while (1)
    {
      memset(&v38, 0, sizeof(v38));
      if (quasar::QsrText::normalizeUnicode(a1, v8, &v38))
      {
        if (a4)
        {
          __p[0] = 0;
          __p[1] = 0;
          *&v22 = 0;
          if (quasar::QsrText::hatSubTokenToQsrToken(a1, &v38, __p, 1))
          {
            std::vector<std::string>::push_back[abi:ne200100](a3, __p);
            if (SBYTE7(v22) < 0)
            {
              operator delete(__p[0]);
            }

LABEL_24:
            v16 = 1;
            goto LABEL_31;
          }

          if (SBYTE7(v22) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&v19, "^00");
          quasar::splitAndTrimNoEmpty(&v38, &v19, __p);
          if (SHIBYTE(v20) < 0)
          {
            operator delete(v19);
          }

          v15 = __p[0];
          v14 = __p[1];
          while (1)
          {
            if (v15 == v14)
            {
              *&v19 = __p;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
              goto LABEL_24;
            }

            v19 = 0uLL;
            v20 = 0;
            if ((quasar::QsrText::hatSubTokenToQsrToken(a1, v15, &v19, 0) & 1) == 0)
            {
              break;
            }

            std::vector<std::string>::push_back[abi:ne200100](a3, &v19);
            if (SHIBYTE(v20) < 0)
            {
              operator delete(v19);
            }

            v15 += 24;
          }

          if (SHIBYTE(v20) < 0)
          {
            operator delete(v19);
          }

          *&v19 = __p;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
        }
      }

      else if (quasar::gLogLevel >= 1)
      {
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
        v22 = 0u;
        v23 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unicode normalization failed for :", 34);
        v11 = *(v8 + 23);
        if (v11 >= 0)
        {
          v12 = v8;
        }

        else
        {
          v12 = *v8;
        }

        if (v11 >= 0)
        {
          v13 = *(v8 + 23);
        }

        else
        {
          v13 = *(v8 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(__p);
      }

      v16 = 0;
LABEL_31:
      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      v8 += 24;
      if (v8 == v9)
      {
        v17 = 0;
      }

      else
      {
        v17 = v16;
      }

      if ((v17 & 1) == 0)
      {
        return v16;
      }
    }
  }

  return 1;
}

void sub_1B53FCDCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 97) < 0)
  {
    operator delete(*(v21 - 120));
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::QsrText::hatToQsrTokens(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v9 = *a3;
    ;
  }

  a3[1] = v9;
  v11 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    v28 = a4;
    v27 = a2[1];
    while (1)
    {
      memset(&v46, 0, sizeof(v46));
      if ((quasar::QsrText::normalizeUnicode(a1, v11, &v46) & 1) == 0)
      {
        break;
      }

      if (a4)
      {
        memset(&__str, 0, sizeof(__str));
        if ((quasar::QsrText::hatSubTokenToQsrToken(a1, &v46, &__str, 1) & 1) == 0)
        {
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

LABEL_53:
          v24 = 0;
          goto LABEL_54;
        }

        quasar::Token::Token(&v31, v11);
        std::string::operator=(&v31, &__str);
        std::vector<quasar::Token>::push_back[abi:ne200100](a3, &v31);
        if (SBYTE7(v41) < 0)
        {
          operator delete(__p[0]);
        }

        if (SBYTE7(v39) < 0)
        {
          operator delete(v38[0]);
        }

        v29.__r_.__value_.__r.__words[0] = v37 + 8;
        std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v29);
        if (SBYTE7(v37[0]) < 0)
        {
          operator delete(v36[0]);
        }

        v29.__r_.__value_.__r.__words[0] = v35 + 8;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v29);
        if (SBYTE7(v35[0]) < 0)
        {
          operator delete(v34[0]);
        }

        if (SBYTE7(v32) < 0)
        {
          operator delete(v31);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v31, "^00");
        quasar::splitAndTrim(&v46, &v31, &__str);
        if (SBYTE7(v32) < 0)
        {
          operator delete(v31);
        }

        v16 = *(v11 + 36);
        v17 = __str.__r_.__value_.__r.__words[0];
        if (__str.__r_.__value_.__l.__size_ != __str.__r_.__value_.__r.__words[0])
        {
          v18 = 0;
          v19 = 0;
          v20 = *(v11 + 28);
          v21 = (v16 - v20) / (0xAAAAAAAAAAAAAAABLL * ((__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 3));
          while (1)
          {
            memset(&v29, 0, sizeof(v29));
            v22 = quasar::QsrText::hatSubTokenToQsrToken(a1, v17 + v18, &v29, 0);
            if (v22)
            {
              quasar::Token::Token(&v31, v11);
              std::string::operator=(&v31, &v29);
              HIDWORD(v32) = v20;
              v20 += v21;
              LODWORD(v33) = v20;
              DWORD1(v33) = v20;
              std::vector<quasar::Token>::push_back[abi:ne200100](a3, &v31);
              if (SBYTE7(v41) < 0)
              {
                operator delete(__p[0]);
              }

              if (SBYTE7(v39) < 0)
              {
                operator delete(v38[0]);
              }

              v47[0] = v37 + 1;
              std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v47);
              if (SBYTE7(v37[0]) < 0)
              {
                operator delete(v36[0]);
              }

              v47[0] = v35 + 1;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v47);
              if (SBYTE7(v35[0]) < 0)
              {
                operator delete(v34[0]);
              }

              if (SBYTE7(v32) < 0)
              {
                operator delete(v31);
              }
            }

            if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v29.__r_.__value_.__l.__data_);
            }

            if ((v22 & 1) == 0)
            {
              break;
            }

            ++v19;
            v17 = __str.__r_.__value_.__r.__words[0];
            v18 += 24;
            if (0xAAAAAAAAAAAAAAABLL * ((__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 3) <= v19)
            {
              v16 = *(v11 + 36);
              a4 = v28;
              v10 = v27;
              goto LABEL_49;
            }
          }

          *&v31 = &__str;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v31);
          v24 = 0;
          a4 = v28;
          v10 = v27;
          goto LABEL_54;
        }

LABEL_49:
        v23 = a3[1];
        *(v23 - 192) = *(v11 + 32);
        *(v23 - 188) = v16;
        *&v31 = &__str;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v31);
      }

      v24 = 1;
LABEL_54:
      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      v11 += 224;
      if (v11 == v10)
      {
        v25 = 0;
      }

      else
      {
        v25 = v24;
      }

      if ((v25 & 1) == 0)
      {
        return v24;
      }
    }

    if (quasar::gLogLevel >= 4)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      *__p = 0u;
      v41 = 0u;
      *v38 = 0u;
      v39 = 0u;
      memset(v37, 0, sizeof(v37));
      *v36 = 0u;
      *v34 = 0u;
      memset(v35, 0, sizeof(v35));
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v31);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "Unicode normalization failed for :", 34);
      v13 = *(v11 + 23);
      if (v13 >= 0)
      {
        v14 = v11;
      }

      else
      {
        v14 = *v11;
      }

      if (v13 >= 0)
      {
        v15 = *(v11 + 23);
      }

      else
      {
        v15 = *(v11 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v31);
    }

    goto LABEL_53;
  }

  return 1;
}

void sub_1B53FD24C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 97) < 0)
  {
    operator delete(*(v28 - 120));
  }

  _Unwind_Resume(exception_object);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x1E69E5318]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

void quasar::QsrText::removeW00(int a1, __int128 **a2, void ***a3)
{
  std::vector<std::string>::clear[abi:ne200100](a3);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v21, *v6, *(v6 + 1));
      }

      else
      {
        v8 = *v6;
        v21.__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v21.__r_.__value_.__l.__data_ = v8;
      }

      v19 = 0uLL;
      v20 = 0;
      memset(&__str, 0, sizeof(__str));
      v9 = v22;
      v10 = v23;
      while (v10 != v9)
      {
        v11 = *(v10 - 1);
        v10 -= 3;
        if (v11 < 0)
        {
          operator delete(*v10);
        }
      }

      v23 = v9;
      size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v21.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        do
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "~w00");
          v13 = quasar::QsrText::splitOnUserDefinedSymbol(a1, &v21, &__p, &v19, &__str);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v14 = HIBYTE(v20);
          if (v20 < 0)
          {
            v14 = *(&v19 + 1);
          }

          if (v14)
          {
            std::vector<std::string>::push_back[abi:ne200100](&v22, &v19);
          }

          std::string::operator=(&v21, &__str);
        }

        while (v13);
      }

      else
      {
        std::vector<std::string>::push_back[abi:ne200100](&v22, &v21);
      }

      v15 = v22;
      v16 = v23;
      if (v22 != v23)
      {
        if (v23 - v22 == 24)
        {
          std::vector<std::string>::push_back[abi:ne200100](a3, v6);
        }

        else
        {
          do
          {
            std::vector<std::string>::push_back[abi:ne200100](a3, v15);
            v15 = (v15 + 24);
          }

          while (v15 != v16);
        }
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20) < 0)
      {
        operator delete(v19);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      v6 = (v6 + 24);
    }

    while (v6 != v7);
  }

  v21.__r_.__value_.__r.__words[0] = &v22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v21);
}

void sub_1B53FDF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  a28 = (v33 - 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

uint64_t quasar::QsrText::qsrToHatTokens(int a1, uint64_t a2, uint64_t *a3, int a4)
{
  v9 = *a3;
    ;
  }

  a3[1] = v9;
  if (a4)
  {
    if (*a2 != *(a2 + 8))
    {
      quasar::Token::Token(&v15, *a2);
      quasar::QsrText::qsrSubTokenToHatToken();
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    quasar::QsrText::removeW00(a1, a2, &v11);
    if (v11 != v12)
    {
      quasar::Token::Token(&v15, v11);
      quasar::QsrText::qsrSubTokenToHatToken();
    }

    *&v14 = &v11;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v14);
  }

  return 1;
}

void sub_1B53FE2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void quasar::QsrText::removeW00(int a1, __int128 **a2, uint64_t *a3)
{
  v6 = *a3;
    ;
  }

  a3[1] = v6;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v7 = *a2;
  v24 = a2[1];
  if (*a2 != v24)
  {
    do
    {
      if (*(v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v44, *v7, *(v7 + 1));
      }

      else
      {
        v8 = *v7;
        v44.__r_.__value_.__r.__words[2] = *(v7 + 2);
        *&v44.__r_.__value_.__l.__data_ = v8;
      }

      v42 = 0uLL;
      v43 = 0;
      memset(&__str, 0, sizeof(__str));
      v9 = v45;
      v10 = v46;
      while (v10 != v9)
      {
        v11 = *(v10 - 1);
        v10 -= 3;
        if (v11 < 0)
        {
          operator delete(*v10);
        }
      }

      v46 = v9;
      size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v44.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        do
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "~w00");
          v13 = quasar::QsrText::splitOnUserDefinedSymbol(a1, &v44, &__p, &v42, &__str);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v14 = HIBYTE(v43);
          if (v43 < 0)
          {
            v14 = *(&v42 + 1);
          }

          if (v14)
          {
            std::vector<std::string>::push_back[abi:ne200100](&v45, &v42);
          }

          std::string::operator=(&v44, &__str);
        }

        while (v13);
      }

      else
      {
        std::vector<std::string>::push_back[abi:ne200100](&v45, &v44);
      }

      v16 = v45;
      if (v45 != v46)
      {
        if (v46 - v45 == 24)
        {
          std::vector<quasar::Token>::push_back[abi:ne200100](a3, v7);
        }

        else
        {
          v17 = 0;
          v18 = 0;
          v19 = 0xAAAAAAAAAAAAAAABLL * (v46 - v45);
          v20 = *(v7 + 7);
          v21 = (*(v7 + 9) - v20) / v19;
          *v15.i32 = v19;
          v22 = vdiv_f32(*(v7 + 204), vdup_lane_s32(v15, 0));
          do
          {
            quasar::Token::Token(&__p);
            std::string::operator=(&__p, &v16[v17]);
            v23 = v18 + 1;
            v27 = v20;
            v20 += v21;
            v28 = v20;
            v29 = v20;
            v30 = *(v7 + 10);
            v31 = (v18 + 1 != v19) | *(v7 + 44) & 1;
            if (!v18)
            {
              std::string::operator=(&v32, v7 + 2);
              std::string::operator=(&v34, v7 + 4);
            }

            v40 = v22;
            std::vector<quasar::Token>::push_back[abi:ne200100](a3, &__p);
            if (v39 < 0)
            {
              operator delete(v38);
            }

            if (v37 < 0)
            {
              operator delete(v36);
            }

            v48[0] = &v35;
            std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v48);
            if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v34.__r_.__value_.__l.__data_);
            }

            v48[0] = &v33;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v48);
            if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v32.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v16 = v45;
            v19 = 0xAAAAAAAAAAAAAAABLL * (v46 - v45);
            v17 += 3;
            ++v18;
          }

          while (v19 > v23);
          *(a3[1] - 192) = *(v7 + 4);
        }
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v43) < 0)
      {
        operator delete(v42);
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      v7 += 14;
    }

    while (v7 != v24);
  }

  __p.__r_.__value_.__r.__words[0] = &v45;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1B53FE6A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  __p = (v18 - 136);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t quasar::QsrText::decodeQsrTextTokens(uint64_t a1, quasar::Token **a2, quasar::Token **a3)
{
  if (a3 != a2)
  {
    std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(a3, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
  }

  v6 = *a2;
  if (a2[1] == *a2)
  {
    return 1;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    result = quasar::QsrText::decodeQsrText(a1, v6 + v7, *a3 + v7);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v8;
    v6 = *a2;
    v7 += 224;
  }

  while (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5) > v8);
  return result;
}

uint64_t quasar::QsrText::decodeQsrText(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v72);
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  if (v6 < 1)
  {
LABEL_54:
    std::stringbuf::str();
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = v54;
    *(a3 + 16) = v55;
    if (quasar::gLogLevel >= 6)
    {
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v54);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "", 1);
      v23 = *(a2 + 23);
      if (v23 >= 0)
      {
        v24 = a2;
      }

      else
      {
        v24 = *a2;
      }

      if (v23 >= 0)
      {
        v25 = *(a2 + 23);
      }

      else
      {
        v25 = *(a2 + 8);
      }

      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v24, v25);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " (", 3);
      if (*(a2 + 23) >= 0)
      {
        v28 = *(a2 + 23);
      }

      else
      {
        v28 = *(a2 + 8);
      }

      v29 = MEMORY[0x1B8C84C30](v27, v28);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ") -> ", 5);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "", 1);
      v32 = *(a3 + 23);
      if (v32 >= 0)
      {
        v33 = a3;
      }

      else
      {
        v33 = *a3;
      }

      if (v32 >= 0)
      {
        v34 = *(a3 + 23);
      }

      else
      {
        v34 = *(a3 + 8);
      }

      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v33, v34);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " (", 3);
      if (*(a3 + 23) >= 0)
      {
        v37 = *(a3 + 23);
      }

      else
      {
        v37 = *(a3 + 8);
      }

      v38 = MEMORY[0x1B8C84C30](v36, v37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, ")", 1);
      quasar::QuasarTraceMessage::~QuasarTraceMessage(&v54);
    }

    v39 = 1;
    goto LABEL_77;
  }

  v7 = 0;
  while (1)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = *(v8 + v7);
    if (v9 == 95)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v73, " ", 1);
      LODWORD(v10) = v7;
      goto LABEL_15;
    }

    if (v9 != 126)
    {
      LOBYTE(v54) = *(v8 + v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v73, &v54, 1);
      LODWORD(v10) = v7;
      goto LABEL_15;
    }

    v10 = v7 + 1;
    v11 = std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::find<char>((a1 + 120), (v8 + v10));
    if (v11)
    {
      LOBYTE(v54) = v11[3];
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v73, &v54, 1);
      goto LABEL_15;
    }

    v12 = *(v8 + v10);
    if (v12 <= 0x5E)
    {
      break;
    }

    if (v12 == 95)
    {
      v13 = "_";
      goto LABEL_36;
    }

    if (v12 != 119)
    {
      if (v12 != 126)
      {
        goto LABEL_87;
      }

      v13 = "~";
      goto LABEL_36;
    }

    if (v7 + 2 > v6 - 2)
    {
      if (quasar::gLogLevel < 1)
      {
        goto LABEL_110;
      }

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v54);
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "Illegal occurrence of ~w in QsrText string ", 43);
      v51 = *(a2 + 23);
      if (v51 >= 0)
      {
        v44 = a2;
      }

      else
      {
        v44 = *a2;
      }

      if (v51 >= 0)
      {
        v45 = *(a2 + 23);
      }

      else
      {
        v45 = *(a2 + 8);
      }

      goto LABEL_109;
    }

    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    if (*(v14 + v7 + 2) != 48 || (LODWORD(v10) = v7 + 3, *(v14 + v7 + 3) != 48))
    {
      if (quasar::gLogLevel < 1)
      {
        goto LABEL_110;
      }

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v54);
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "Unsupported occurrence of ~w in QsrText string ", 47);
      v43 = *(a2 + 23);
      if (v43 >= 0)
      {
        v44 = a2;
      }

      else
      {
        v44 = *a2;
      }

      if (v43 >= 0)
      {
        v45 = *(a2 + 23);
      }

      else
      {
        v45 = *(a2 + 8);
      }

LABEL_109:
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v44, v45);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v54);
      goto LABEL_110;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v73, " ", 1);
LABEL_15:
    v7 = v10 + 1;
    if (v10 + 1 >= v6)
    {
      goto LABEL_54;
    }
  }

  if (v12 == 85)
  {
    v71 = 0;
    LODWORD(v10) = v7 + 2;
    if (v7 + 2 > v6 - 8)
    {
      if (quasar::gLogLevel < 1)
      {
        goto LABEL_110;
      }

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v54);
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "Illegal occurrence of ~U in QsrText string ", 43);
      v50 = *(a2 + 23);
      if (v50 >= 0)
      {
        v44 = a2;
      }

      else
      {
        v44 = *a2;
      }

      if (v50 >= 0)
      {
        v45 = *(a2 + 23);
      }

      else
      {
        v45 = *(a2 + 8);
      }

      goto LABEL_109;
    }

    v15 = std::string::basic_string(&v53, a2, v10, 8uLL, &v54);
    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v52, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
    }

    else
    {
      v52 = v53;
    }

    Hex = quasar::QsrText::getHex(v15, &v52, &v71);
    v17 = Hex;
    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
      if (v17)
      {
        goto LABEL_40;
      }
    }

    else if (Hex)
    {
LABEL_40:
      LOBYTE(v54) = v71;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v73, &v54, 1);
      LODWORD(v10) = v7 + 9;
      goto LABEL_50;
    }

    if (quasar::gLogLevel >= 1)
    {
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v54);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "Illegal occurrence of ~U in QsrText string ", 43);
      v19 = *(a2 + 23);
      if (v19 >= 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a2;
      }

      if (v19 >= 0)
      {
        v21 = *(a2 + 23);
      }

      else
      {
        v21 = *(a2 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v54);
    }

LABEL_50:
    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    if (!v17)
    {
      goto LABEL_110;
    }

    goto LABEL_15;
  }

  if (v12 == 92)
  {
    v13 = "\";
LABEL_36:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v73, v13, 1);
    goto LABEL_15;
  }

LABEL_87:
  if (quasar::gLogLevel >= 4)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v54);
    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "Illegal use of ~ in QsrText string ", 35);
    v47 = *(a2 + 23);
    if (v47 >= 0)
    {
      v48 = a2;
    }

    else
    {
      v48 = *a2;
    }

    if (v47 >= 0)
    {
      v49 = *(a2 + 23);
    }

    else
    {
      v49 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v48, v49);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v54);
  }

LABEL_110:
  v39 = 0;
LABEL_77:
  v72[0] = *MEMORY[0x1E69E54D8];
  v40 = *(MEMORY[0x1E69E54D8] + 72);
  *(v72 + *(v72[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v73 = v40;
  v74 = MEMORY[0x1E69E5548] + 16;
  if (v76 < 0)
  {
    operator delete(v75[7].__locale_);
  }

  v74 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v75);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C85200](&v77);
  return v39;
}

uint64_t quasar::QsrText::encodeTokenQsrText(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 23) = 0;
  }

  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  if (quasar::QsrText::normalizeUnicode(a1, a2, v4))
  {
    operator new();
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }

  return 0;
}

void sub_1B53FF628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a58 < 0)
  {
    operator delete(__p);
  }

  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::~wstring_convert(&a65);
  if (a64 < 0)
  {
    operator delete(a59);
  }

  _Unwind_Resume(a1);
}