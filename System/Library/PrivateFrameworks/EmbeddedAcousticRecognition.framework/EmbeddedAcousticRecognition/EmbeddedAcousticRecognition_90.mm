void sub_1B56C5604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&a61);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&a29);
  v63 = *(v61 - 160);
  if (v63)
  {
    *(v61 - 152) = v63;
    operator delete(v63);
  }

  v64 = *(v61 - 128);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  v65 = *(v61 - 112);
  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::JoinVectorToString<float>(void *a1, const char *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v9);
  if (a1[1] != *a1)
  {
    v4 = 0;
    do
    {
      std::ostream::operator<<();
      ++v4;
      v5 = a1[1] - *a1;
      if (v4 < v5 >> 2)
      {
        v6 = strlen(a2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, a2, v6);
        v5 = a1[1] - *a1;
      }
    }

    while (v4 < v5 >> 2);
  }

  std::stringbuf::str();
  v9[0] = *MEMORY[0x1E69E54D8];
  v7 = *(MEMORY[0x1E69E54D8] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v10 = v7;
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v14);
}

void sub_1B56C5950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B8C85200](&a26);
  _Unwind_Resume(a1);
}

void **kaldi::quasar::InterpolateLmWeightEstimator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~InterpolateLmWeightEstimator(void **a1)
{
  v3 = a1 + 3;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

uint64_t std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__emplace_back_slow_path<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const&>(uint64_t *a1, uint64_t a2)
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

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, v7);
  }

  v8 = 32 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *v8 = *a2;
  v9 = *(a2 + 16);
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 16) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(32 * v2 + 0x18) = *(a2 + 24);
  *&v18 = v8 + 32;
  v10 = a1[1];
  v11 = v8 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~__split_buffer(&v16);
  return v15;
}

void sub_1B56C5B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *kaldi::quasar::InterpolateLmWeightEstimator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::InterpolateLmWeightEstimator(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::__init_with_size[abi:ne200100]<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>*,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>*>(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<std::vector<float>>::resize(a1 + 3, (a1[1] - *a1) >> 4);
  return a1;
}

void sub_1B56C5BD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<float>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<float>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void std::vector<std::vector<float>>::__append(uint64_t a1, unint64_t a2)
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

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<int>>::~__split_buffer(v18);
  }
}

uint64_t kaldi::quasar::CalculateSequenceScoresFromDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1, uint64_t *a2, std::vector<unsigned int> *a3)
{
  if ((**a1)(a1) != -1)
  {
    a3->__end_ = a3->__begin_;
    std::vector<int>::resize(a3, (a2[1] - *a2) >> 2);
    if (a2[1] != *a2)
    {
      v6 = (**a1)(a1);
      v7 = *a2;
      if (*a2 != a2[1])
      {
        v8 = 0;
        v9 = 0;
        while (((*(*a1 + 32))(a1, v6, *(v7 + v8), v16) & 1) != 0)
        {
          *&a3->__begin_[v8 / 4] = -v16[2];
          v6 = LODWORD(v16[3]);
          --v9;
          v8 += 4;
          if (v7 + v8 == a2[1])
          {
            v10 = -v9;
            goto LABEL_11;
          }
        }

        if (kaldi::g_kaldi_verbose_level < -1)
        {
          return 0;
        }

        kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "can not find label ", 19);
        v13 = MEMORY[0x1B8C84C00](v12, *(v7 + v8));
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " from state ", 12);
        v15 = MEMORY[0x1B8C84C00](v14, v6);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " . Wrong LM input?", 18);
        goto LABEL_15;
      }

      v10 = 0;
LABEL_11:
      *&a3->__begin_[v10 - 1] = *&a3->__begin_[v10 - 1] - (*(*a1 + 16))(a1, v6);
    }

    return 1;
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "invalid deterministic on-demand FST", 35);
LABEL_15:
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v17);
  }

  return 0;
}

void sub_1B56C6040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

uint64_t fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Determinize(uint64_t a1, _BYTE *a2)
{
  fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::InitializeDeterminization(a1);
  while (1)
  {
    v4 = *(a1 + 176);
    if (*(a1 + 168) == v4)
    {
      break;
    }

    v5 = *(v4 - 4);
    *(a1 + 176) = v4 - 4;
    fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::ProcessFinal(a1, v5);
    fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::ProcessTransitions(a1, v5);
    if (a2)
    {
      if (*a2 == 1)
      {
        fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Debug(a1);
      }
    }

    if ((fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::CheckMemoryUsage(a1) & 1) == 0)
    {
      return 0;
    }
  }

  result = 1;
  *(a1 + 84) = 1;
  return result;
}

void sub_1B56C6108(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(exception_object);
    *(v3 - 64) = MEMORY[0x1E69E55E0] + 16;
    __cxa_begin_catch(exception_object);
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      v5 = *(v2 + 272);
      v7 = *(v2 + 48);
      v6 = *(v2 + 52);
      kaldi::KaldiWarnMessage::KaldiWarnMessage(va);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(va, "Memory allocation error doing lattice determinization; using ", 61);
      v9 = (32 * v5);
      v6 *= 3;
      v10 = MEMORY[0x1B8C84C00](v8, (v9 + 32 * v7 + 8 * v6));
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " bytes (max = ", 14);
      v12 = MEMORY[0x1B8C84C00](v11, *(v2 + 68));
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " (repo,arcs,elems) = (", 22);
      v14 = MEMORY[0x1B8C84C00](v13, v9);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ",", 1);
      v16 = MEMORY[0x1B8C84C00](v15, (32 * v7));
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ",", 1);
      v18 = MEMORY[0x1B8C84C00](v17, (8 * v6));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ")", 1);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
    }

    *(v2 + 84) = 0;
    std::bad_alloc::~bad_alloc((v3 - 64));
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(exception_object);
    }

    exception_ptr = __cxa_get_exception_ptr(exception_object);
    std::runtime_error::runtime_error((v3 - 64), exception_ptr);
    __cxa_begin_catch(exception_object);
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(va);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(va, "Caught exception doing lattice determinization\n", 47);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
    }

    *(v2 + 84) = 0;
    std::runtime_error::~runtime_error((v3 - 64));
  }

  __cxa_end_catch();
  JUMPOUT(0x1B56C60E0);
}

void fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Output(uint64_t a1, uint64_t a2, int a3)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 32) - *(a1 + 24)) >> 3);
  if (a3)
  {
    fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::FreeMostMemory(a1);
  }

  (*(*a2 + 224))(a2);
  (*(*a2 + 176))(a2, 0xFFFFFFFFLL);
  if (v5)
  {
    if (v5 < 1)
    {
      (*(*a2 + 176))(a2, 0);
    }

    else
    {
      v6 = v5;
      do
      {
        (*(*a2 + 200))(a2);
        --v6;
      }

      while (v6);
      (*(*a2 + 176))(a2, 0);
      v7 = 0;
      v8 = v5 & 0x7FFFFFFF;
      do
      {
        v9 = (*(a1 + 24) + 24 * v7);
        v11 = *v9;
        v10 = v9[1];
        while (v11 != v10)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          memset(&v22, 0, sizeof(v22));
          fst::LatticeStringRepository<int>::ConvertToVector(a1 + 240, *(v11 + 1), &v22);
          v18 = *(v11 + 20);
          v20 = 0;
          v21 = 0;
          v19 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v19, v22.__begin_, v22.__end_, v22.__end_ - v22.__begin_);
          if (*(v11 + 4) == -1)
          {
            v14 = v18;
            v16 = 0;
            v17 = 0;
            __p = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v19, v20, (v20 - v19) >> 2);
            (*(*a2 + 184))(a2, v7, &v14);
            if (__p)
            {
              v16 = __p;
              operator delete(__p);
            }
          }

          else
          {
            v27 = *(v11 + 4);
            LODWORD(v23) = *v11;
            DWORD1(v23) = v23;
            *(&v23 + 1) = v18;
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v24, v19, v20, (v20 - v19) >> 2);
            (*(*a2 + 208))(a2, v7, &v23);
          }

          if (v19)
          {
            v20 = v19;
            operator delete(v19);
          }

          if (v22.__begin_)
          {
            v22.__end_ = v22.__begin_;
            operator delete(v22.__begin_);
          }

          if (v24)
          {
            v25 = v24;
            operator delete(v24);
          }

          v11 += 32;
        }

        if (a3)
        {
          v12 = *v9;
          v9[1] = 0;
          v9[2] = 0;
          *v9 = 0;
          if (v12)
          {
            operator delete(v12);
          }
        }

        ++v7;
      }

      while (v7 != v8);
    }

    if (a3)
    {
      v23 = *(a1 + 24);
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      v24 = *(a1 + 40);
      *(a1 + 40) = 0;
      v18 = &v23;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v18);
    }
  }
}

void sub_1B56C6614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::LatticeDeterminizer(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v7 = (*(*a2 + 88))(a2, 0);
  *(a1 + 80) = a3;
  *(a1 + 56) = v7;
  *(a1 + 64) = a3;
  *(a1 + 72) = a4;
  *(a1 + 84) = 0;
  std::unordered_map<std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>> const*,int,fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::SubsetKey,fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::SubsetEqual,std::allocator<std::pair<std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>> const* const,int>>>::unordered_map(a1 + 88, 3uLL, a1 + 76, (a1 + 80));
  std::unordered_map<std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::SubsetKey,fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::SubsetEqual,std::allocator<std::pair<std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>> const* const,fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>>::unordered_map(a1 + 128, 3uLL, a1 + 76, (a1 + 80));
  *(a1 + 168) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 184) = 0u;
  fst::LatticeStringRepository<int>::LatticeStringRepository(a1 + 240);
}

void sub_1B56C674C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = *(v10 + 216);
  if (v14)
  {
    *(v10 + 224) = v14;
    operator delete(v14);
  }

  fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::LatticeDeterminizer(v12 + 3, v12, v10 + 128, v10);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v11 + 8);
  a10 = (v10 + 24);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v15 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>> const*,int,fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::SubsetKey,fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::SubsetEqual,std::allocator<std::pair<std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>> const* const,int>>>::unordered_map(uint64_t a1, size_t a2, uint64_t a3, int *a4)
{
  v5 = *a4;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 36) = v5;
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, a2);
  return a1;
}

uint64_t std::unordered_map<std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::SubsetKey,fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::SubsetEqual,std::allocator<std::pair<std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>> const* const,fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>>::unordered_map(uint64_t a1, size_t a2, uint64_t a3, int *a4)
{
  v5 = *a4;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 36) = v5;
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, a2);
  return a1;
}

uint64_t fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::InitializeDeterminization(uint64_t a1)
{
  if ((*(**(a1 + 56) + 64))(*(a1 + 56), 1, 0))
  {
    v2 = (*(**(a1 + 56) + 160))(*(a1 + 56)) / 2 + 3;
    std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1 + 88, v2);
    std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1 + 128, v2);
  }

  result = (*(**(a1 + 56) + 24))(*(a1 + 56));
  if (result != -1)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    memset(v4, 0, sizeof(v4));
    std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::push_back[abi:ne200100](v4, &v5);
    fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::EpsilonClosure(a1, v4);
    fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::ConvertToMinimal(a1, v4);
    operator new();
  }

  return result;
}

void sub_1B56C6A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Debug(fst *a1)
{
  v2 = fst::cerr(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Debug function called (probably SIGUSR1 caught).\n", 49);
  memset(v50, 0, sizeof(v50));
  v51 = 0x3A8000003F800000;
  std::__hash_table<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,std::__unordered_map_hasher<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetKey,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual,true>,std::__unordered_map_equal<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetKey,false>,std::allocator<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>>>::swap(v50, a1 + 88);
  v3 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v50);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 4) - *(a1 + 3)) >> 3);
  v5 = v4 - 2;
  if (v4 <= 2)
  {
    v6 = fst::cerr(v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "Nothing to trace back");
    exit(1);
  }

  v7 = std::vector<int>::vector[abi:ne200100](v50, v4 - 1);
  if (v5)
  {
    v8 = 0;
    v9 = *(a1 + 3);
    do
    {
      v10 = (v9 + 24 * v8);
      v11 = *v10;
      v12 = v10[1] - *v10;
      if (v12)
      {
        v13 = v12 >> 5;
        v14 = *&v50[0];
        if (v13 <= 1)
        {
          v13 = 1;
        }

        v15 = (v11 + 16);
        do
        {
          v17 = *v15;
          v15 += 8;
          v16 = v17;
          if (v5 >= v17 && v8 < v16)
          {
            *(v14 + 4 * v16) = v8;
          }

          --v13;
        }

        while (v13);
      }

      ++v8;
    }

    while (v8 != v5);
    __p = 0;
    v48 = 0;
    v49 = 0;
    if ((v5 - 1) <= 0xFFFFFFFD)
    {
      v19 = 0;
      do
      {
        v20 = v5;
        LODWORD(v5) = *(*&v50[0] + 4 * v5);
        v21 = *(*(a1 + 3) + 24 * v5);
        v22 = *(*(a1 + 3) + 24 * v5 + 8) - v21;
        if (v22)
        {
          v23 = v22 >> 5;
          if (v23 <= 1)
          {
            v23 = 1;
          }

          v24 = (v21 + 8);
          while (*(v24 + 2) != v20)
          {
            v24 += 4;
            if (!--v23)
            {
              goto LABEL_39;
            }
          }

          v25 = *(v24 - 2);
          v26 = *v24;
          if (v19 >= v49)
          {
            v27 = (v19 - __p) >> 4;
            if ((v27 + 1) >> 60)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v28 = (v49 - __p) >> 3;
            if (v28 <= v27 + 1)
            {
              v28 = v27 + 1;
            }

            if (v49 - __p >= 0x7FFFFFFFFFFFFFF0)
            {
              v29 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v29 = v28;
            }

            if (v29)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*>>>(&__p, v29);
            }

            v30 = 16 * v27;
            *v30 = v25;
            *(v30 + 8) = v26;
            v19 = 16 * v27 + 16;
            v31 = (v30 - (v48 - __p));
            memcpy(v31, __p, v48 - __p);
            v7 = __p;
            __p = v31;
            v48 = v19;
            v49 = 0;
            if (v7)
            {
              operator delete(v7);
            }
          }

          else
          {
            *v19 = v25;
            *(v19 + 8) = v26;
            v19 += 16;
          }

          v48 = v19;
        }

LABEL_39:
        ;
      }

      while ((v5 - 1) < 0xFFFFFFFE);
    }

    if (v5 == -1)
    {
      v32 = fst::cerr(v7);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Traceback did not reach start state (possibly debug-code error)", 63);
    }
  }

  else
  {
    __p = 0;
    v48 = 0;
    v49 = 0;
  }

  v33 = fst::cerr(v7);
  begin = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Traceback below (or on standard error) in format ilabel (olabel olabel) ilabel (olabel) ...\n", 92);
  v35 = (v48 - __p) >> 4;
  if (v35 >= 1)
  {
    do
    {
      v36 = fst::cerr(begin);
      v37 = MEMORY[0x1B8C84C00](v36, *(__p + 4 * v35 - 4));
      LOBYTE(v46.__begin_) = 32;
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, &v46, 1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "( ", 2);
      memset(&v46, 0, sizeof(v46));
      fst::LatticeStringRepository<int>::ConvertToVector(a1 + 240, *(__p + 2 * v35 - 1), &v46);
      if (v46.__end_ != v46.__begin_)
      {
        v40 = 0;
        do
        {
          v41 = fst::cerr(v39);
          v42 = MEMORY[0x1B8C84C00](v41, v46.__begin_[v40]);
          v52 = 32;
          v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, &v52, 1);
          ++v40;
        }

        while (v40 < v46.__end_ - v46.__begin_);
      }

      v43 = fst::cerr(v39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, ") ", 2);
      begin = v46.__begin_;
      if (v46.__begin_)
      {
        v46.__end_ = v46.__begin_;
        operator delete(v46.__begin_);
      }
    }

    while (v35-- > 1);
  }

  v45 = fst::cerr(begin);
  LOBYTE(v46.__begin_) = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, &v46, 1);
  exit(1);
}

void sub_1B56C6E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::CheckMemoryUsage(uint64_t a1)
{
  v1 = *(a1 + 68);
  if (v1 < 1)
  {
    return 1;
  }

  v3 = (32 * *(a1 + 272));
  v4 = (32 * *(a1 + 48));
  v5 = (24 * *(a1 + 52));
  if (v5 + v4 + v3 <= v1)
  {
    return 1;
  }

  fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::RebuildRepository(a1);
  v6 = *(a1 + 272);
  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v21, 2);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Rebuilt repository in determinize-lattice: repository shrank from ", 66);
    v8 = MEMORY[0x1B8C84C00](v7, v3);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " to ", 4);
    v10 = MEMORY[0x1B8C84C00](v9, (32 * v6));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " bytes (approximately)", 22);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v21);
  }

  if (v5 + v4 + 32 * v6 <= (*(a1 + 68) * 0.8))
  {
    return 1;
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v21);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Failure in determinize-lattice: size exceeds maximum ", 53);
    v12 = MEMORY[0x1B8C84C00](v11, *(a1 + 68));
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " bytes; (repo,arcs,elems) = (", 29);
    v14 = MEMORY[0x1B8C84C00](v13, v3);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ",", 1);
    v16 = MEMORY[0x1B8C84C00](v15, v4);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ",", 1);
    v18 = MEMORY[0x1B8C84C00](v17, v5);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "), after rebuilding, repo size was ", 35);
    MEMORY[0x1B8C84C00](v19, (32 * v6));
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v21);
  }

  return 0;
}

void sub_1B56C7018(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::__emplace_back_slow_path<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element const&>(a1, a2);
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

uint64_t fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::EpsilonClosure(uint64_t a1, uint64_t *a2)
{
  v44 = 0u;
  v45 = 0u;
  v46 = 1065353216;
  v4 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = (v4 + v5);
      LODWORD(v36) = *v7;
      v37 = *v7;
      v38 = *(v7 + 2);
      std::__hash_table<std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::__unordered_map_hasher<int,std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>>::__emplace_unique_key_args<int,std::pair<int const,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> const&>(&v44, &v36);
      ++v6;
      v4 = *a2;
      v5 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  v8 = (*(**(a1 + 56) + 64))(*(a1 + 56), 0x10000000, 0);
  v43 = 0u;
  memset(v42, 0, sizeof(v42));
  v9 = *a2;
  if (*a2 == a2[1])
  {
    goto LABEL_47;
  }

  v10 = v8;
  do
  {
    std::deque<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::push_back(v42, v9);
    v9 += 24;
  }

  while (v9 != a2[1]);
  v11 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_47;
  }

  v12 = 0;
  v13 = 0;
  do
  {
    v14 = *(v42[1] + 8 * (v43 / 0xAA)) + 24 * (v43 % 0xAA);
    v40 = *v14;
    v41 = *(v14 + 16);
    *&v43 = v43 + 1;
    *(&v43 + 1) = v11 - 1;
    if (v43 >= 0x154)
    {
      operator delete(*v42[1]);
      v42[1] += 8;
      *&v43 = v43 - 170;
    }

    if (v13)
    {
      v36 = &v40;
      v15 = std::__hash_table<std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::__unordered_map_hasher<int,std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v44, &v40);
      if (*(v15 + 6) != v40 || v15[4] != *(&v40 + 1) || (v16 = *(v15 + 11), LODWORD(v36) = *(v15 + 10), v34[0] = v16, v49 = v41.f32[1], LODWORD(v48) = v41.i32[0], *&v36 != v41.f32[0]) || *v34 != v49)
      {
        v13 = 1;
        goto LABEL_46;
      }
    }

    v17 = *(a1 + 72);
    if (v17 >= 1)
    {
      if (v12 > v17)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v36);
        v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "Lattice determinization aborted since looped more than ", 55);
        v33 = MEMORY[0x1B8C84C00](v32, *(a1 + 72));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " times during epsilon closure.\n", 31);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v36);
      }

      ++v12;
    }

    v18 = *(a1 + 56);
    v39 = 0;
    (*(*v18 + 136))(v18, v40, &v36);
    while (1)
    {
      if (!v36)
      {
        if (v39 >= *(&v37 + 1))
        {
          goto LABEL_44;
        }

LABEL_26:
        v21 = (v37 + 20 * v39);
        goto LABEL_27;
      }

      v19 = (*(*v36 + 24))(v36);
      v20 = v36;
      if (v19)
      {
        goto LABEL_42;
      }

      if (!v36)
      {
        goto LABEL_26;
      }

      v21 = (*(*v36 + 32))();
LABEL_27:
      v22 = *v21;
      if ((v10 & 0x10000000) != 0)
      {
        if (v22)
        {
          break;
        }
      }

      if (!v22)
      {
        v23.i32[0] = v21[2];
        v24 = v21[3];
        v34[0] = v23.i32[0];
        LODWORD(v48) = v24;
        v49 = INFINITY;
        v47 = INFINITY;
        if (v23.f32[0] != INFINITY || *&v48 != v47)
        {
          v34[0] = v21[4];
          v23.i32[1] = v24;
          v35 = vadd_f32(v41, v23);
          v25 = v21[1];
          v26 = *(&v40 + 1);
          if (v25)
          {
            v26 = fst::LatticeStringRepository<int>::Successor(a1 + 240, *(&v40 + 1), v25);
          }

          *&v34[2] = v26;
          v27 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(&v44, v34);
          v28 = v27;
          if (v27)
          {
            if (fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Compare(a1, &v35, *&v34[2], v27 + 10, v27[4]) == 1)
            {
              v28[4] = *&v34[2];
              v28[5] = v35;
              std::deque<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::push_back(v42, v34);
              v13 = 1;
            }
          }

          else
          {
            v48 = v34;
            v29 = std::__hash_table<std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::__unordered_map_hasher<int,std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v44, v34);
            *(v29 + 3) = *v34;
            v29[5] = v35;
            std::deque<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::push_back(v42, v34);
          }
        }
      }

      if (v36)
      {
        (*(*v36 + 40))(v36);
      }

      else
      {
        ++v39;
      }
    }

    v20 = v36;
LABEL_42:
    if (v20)
    {
      (*(*v20 + 8))(v20);
      goto LABEL_46;
    }

LABEL_44:
    if (v38)
    {
      --*v38;
    }

LABEL_46:
    v11 = *(&v43 + 1);
  }

  while (*(&v43 + 1));
LABEL_47:
  a2[1] = *a2;
  std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::reserve(a2, *(&v45 + 1));
  for (i = v45; i; i = *i)
  {
    std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::push_back[abi:ne200100](a2, (i + 3));
  }

  std::deque<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::~deque[abi:ne200100](v42);
  return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v44);
}

void sub_1B56C75F4(_Unwind_Exception *a1)
{
  std::deque<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::~deque[abi:ne200100]((v1 - 208));
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v1 - 160);
  _Unwind_Resume(a1);
}

void sub_1B56C7610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  else if (a16)
  {
    --*a16;
  }

  std::deque<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::~deque[abi:ne200100](v16 - 208);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v16 - 160);
  _Unwind_Resume(a1);
}

void fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::ConvertToMinimal(uint64_t a1, unsigned int **a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    v6 = *a2;
  }

  else
  {
    v6 = *a2;
    do
    {
      if (fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::IsIsymbolOrFinal(a1, *v3))
      {
        *v6 = *v3;
        *(v6 + 2) = *(v3 + 2);
        v6 += 6;
      }

      v3 += 6;
    }

    while (v3 != v4);
    v3 = *a2;
  }

  std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::resize(a2, 0xAAAAAAAAAAAAAAABLL * ((v6 - v3) >> 3));
}

uint64_t std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::__emplace_back_slow_path<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element const&>(uint64_t *a1, uint64_t a2)
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

void sub_1B56C7844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double std::deque<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 170 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA);
  *v8 = *a2;
  result = *(a2 + 16);
  *(v8 + 16) = result;
  ++a1[5];
  return result;
}

uint64_t fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Compare(int a1, float *a2, uint64_t *a3, float *a4, uint64_t *a5)
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

  if (a3 == a5)
  {
    return 0;
  }

  memset(&v23, 0, sizeof(v23));
  memset(&v22, 0, sizeof(v22));
  fst::LatticeStringRepository<int>::ConvertToVector(a1 + 240, a3, &v23);
  fst::LatticeStringRepository<int>::ConvertToVector(a1 + 240, a5, &v22);
  begin = v23.__begin_;
  v14 = (v23.__end_ - v23.__begin_) >> 2;
  v15 = (v22.__end_ - v22.__begin_) >> 2;
  if (v14 > v15)
  {
    v9 = 0xFFFFFFFFLL;
    goto LABEL_22;
  }

  if (v14 < v15)
  {
    v9 = 1;
    goto LABEL_22;
  }

  if (v14 < 1)
  {
    v9 = 0;
LABEL_22:
    if (!v22.__begin_)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v16 = ((v23.__end_ - v23.__begin_) >> 2) & 0x7FFFFFFF;
  v17 = v22.__begin_;
  while (1)
  {
    v19 = *begin++;
    v18 = v19;
    v20 = *v17++;
    v21 = v18 <= v20;
    if (v18 < v20)
    {
      break;
    }

    if (!v21)
    {
      v9 = 1;
      goto LABEL_23;
    }

    if (!--v16)
    {
      v9 = 0;
      goto LABEL_23;
    }
  }

  v9 = 0xFFFFFFFFLL;
LABEL_23:
  v22.__end_ = v22.__begin_;
  operator delete(v22.__begin_);
  begin = v23.__begin_;
LABEL_24:
  if (begin)
  {
    v23.__end_ = begin;
    operator delete(begin);
  }

  return v9;
}

void sub_1B56C7A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void *std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::reserve(void *result, unint64_t a2)
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

void sub_1B56C7B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::deque<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
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

void sub_1B56C7D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 85;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 170;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::~__split_buffer(a1);
}

uint64_t fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::IsIsymbolOrFinal(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 216);
  v5 = (a1 + 216);
  v6 = *(a1 + 224) - v4;
  v7 = a2;
  if (v6 <= a2)
  {
    v8 = a2 + 1;
    __x[0] = 0;
    if (v8 <= v6)
    {
      if (a2 + 1 < v6)
      {
        *(a1 + 224) = v4 + v8;
      }
    }

    else
    {
      std::vector<char>::__append((a1 + 216), v8 - v6, __x);
      v4 = *v5;
    }
  }

  v9 = *(v4 + v7);
  if (v9 == 1)
  {
    return 0;
  }

  if (v9 == 2)
  {
    return 1;
  }

  *(v4 + v7) = 1;
  (*(**(a1 + 56) + 32))(__x);
  v25 = *__x;
  v24 = *&__x[4];
  v23 = 2139095040;
  v22 = INFINITY;
  v10.n128_u32[0] = *__x;
  if (*__x != INFINITY || (v10.n128_f32[0] = v24, v24 != v22))
  {
    *(*v5 + v7) = 2;
  }

  v11 = *(a1 + 56);
  v21 = 0;
  (*(*v11 + 136))(v11, a2, __x, v10);
  while (*__x)
  {
    if ((*(**__x + 24))(*__x))
    {
      goto LABEL_26;
    }

    if (!*__x)
    {
      goto LABEL_17;
    }

    v13 = (*(**__x + 32))(*__x);
LABEL_18:
    if (*v13)
    {
      v14 = *(v13 + 12);
      v25 = *(v13 + 8);
      v24 = v14;
      v23 = 2139095040;
      v22 = INFINITY;
      v12.n128_f32[0] = v25;
      if (v25 != INFINITY || (v12.n128_f32[0] = v24, v24 != v22))
      {
        v16 = 0;
        *(*v5 + v7) = 2;
        goto LABEL_27;
      }
    }

    if (*__x)
    {
      (*(**__x + 40))(*__x);
    }

    else
    {
      ++v21;
    }
  }

  if (v21 < v19)
  {
LABEL_17:
    v13 = v18 + 20 * v21;
    goto LABEL_18;
  }

LABEL_26:
  v16 = 1;
LABEL_27:
  if (*__x)
  {
    (*(**__x + 8))(*__x, v12);
  }

  else if (v20)
  {
    --*v20;
  }

  if (v16)
  {
    return fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::IsIsymbolOrFinal(a1, a2);
  }

  return 1;
}

void sub_1B56C8124(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::IsIsymbolOrFinal(va);
  _Unwind_Resume(a1);
}

void std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::__append(uint64_t a1, unint64_t a2)
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

void sub_1B56C8304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::__init_with_size[abi:ne200100]<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element*,fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B56C83BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::ProcessFinal(void *result, int a2)
{
  v2 = *(*result + 8 * a2);
  v15 = vneg_f32(0x7F0000007FLL);
  v3 = *v2;
  v4 = v2[1];
  if (*v2 != v4)
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      result = (*(*v6[7] + 32))(&v14);
      v9 = vadd_f32(v3[2], v14);
      v11[0] = v9;
      v10 = v3[1];
      v18 = v9.f32[1];
      v14.i32[0] = v9.i32[0];
      v17 = 2139095040;
      v16 = INFINITY;
      if (v9.f32[0] == INFINITY && v18 == v16)
      {
        goto LABEL_10;
      }

      if (v7)
      {
        result = fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Compare(v6, v11, v10, &v15, v8);
        if (result != 1)
        {
          v7 = 1;
          goto LABEL_10;
        }

        v9 = v11[0];
      }

      v15 = v9;
      v7 = 1;
      v8 = v10;
LABEL_10:
      v3 += 3;
      if (v3 == v4)
      {
        if (v7)
        {
          LODWORD(v11[0]) = 0;
          v12 = -1;
          v11[1] = v8;
          v13 = v15;
          result = std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::TempArc,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::TempArc>>::push_back[abi:ne200100]((v6[3] + 24 * a2), v11);
          ++*(v6 + 12);
        }

        return result;
      }
    }
  }

  return result;
}

void fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::ProcessTransitions(void *a1, int a2)
{
  v4 = a1 + 24;
  v5 = *(*a1 + 8 * a2);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 == v7)
  {
    goto LABEL_23;
  }

  do
  {
    v8 = a1[7];
    v9 = v6->u32[0];
    v31 = 0;
    (*(*v8 + 136))(v8, v9, &__p);
    while (1)
    {
      if (!__p)
      {
        if (v31 >= v29)
        {
          goto LABEL_20;
        }

LABEL_8:
        v11 = &v28[20 * v31];
        goto LABEL_9;
      }

      if ((*(*__p + 24))(__p))
      {
        break;
      }

      if (!__p)
      {
        goto LABEL_8;
      }

      v11 = (*(*__p + 32))();
LABEL_9:
      if (v11->i32[0])
      {
        v12 = v11[1].f32[1];
        v23 = v11[1].f32[0];
        v34 = v12;
        v33 = 2139095040;
        v32 = INFINITY;
        if (v23 != INFINITY || (v10.n128_f32[0] = v34, v34 != v32))
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v13 = v11[2].i32[0];
          v23 = v11->f32[0];
          LODWORD(v24) = v13;
          v26 = vadd_f32(v6[2], v11[1]);
          v14 = v11->i32[1];
          v15 = v6[1];
          if (v14)
          {
            v15 = fst::LatticeStringRepository<int>::Successor((a1 + 30), v15, v14);
          }

          v25 = v15;
          std::vector<std::pair<int,fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::push_back[abi:ne200100](v4, &v23);
        }
      }

      if (__p)
      {
        (*(*__p + 40))(__p, v10);
      }

      else
      {
        ++v31;
      }
    }

    if (__p)
    {
      (*(*__p + 8))();
      goto LABEL_22;
    }

LABEL_20:
    if (v30)
    {
      --*v30;
    }

LABEL_22:
    v6 += 3;
  }

  while (v6 != v7);
LABEL_23:
  v16 = a1[24];
  v17 = a1[25];
  v18 = 126 - 2 * __clz((v17 - v16) >> 5);
  if (v17 == v16)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  std::__introsort<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,false>(v16, v17, &__p, v19, 1);
  v20 = a1[24];
  v21 = a1[25];
  __p = 0;
  v28 = 0;
  v29 = 0;
  while (v20 != v21)
  {
    v22 = *v20;
    v28 = __p;
    do
    {
      if (*v20 != v22)
      {
        break;
      }

      std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::push_back[abi:ne200100](&__p, (v20 + 2));
      v20 += 8;
    }

    while (v20 != v21);
    fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::ProcessTransition(a1, a2, v22, &__p);
  }

  a1[25] = a1[24];
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }
}

void sub_1B56C8820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::TempArc,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::TempArc>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::TempArc,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::TempArc>>::__emplace_back_slow_path<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::TempArc const&>(a1, a2);
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

uint64_t std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::TempArc,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::TempArc>>::__emplace_back_slow_path<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::TempArc const&>(uint64_t *a1, __int128 *a2)
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

void sub_1B56C89E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<int,fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::pair<int,fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::__emplace_back_slow_path<std::pair<int,fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element> const&>(a1, a2);
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

uint64_t fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::ProcessTransition(uint64_t a1, int a2, __int32 a3, float **a4)
{
  v4 = a4;
  fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::MakeSubsetUnique(a1, a4);
  v14 = 0;
  fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::NormalizeSubset(a1, v4, &v13, &v14);
  v12 = 0;
  LODWORD(v4) = fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::InitialToStateId(a1, v4, v9, &v12);
  v14 = fst::LatticeStringRepository<int>::Concatenate(a1 + 240, *&v14, v12);
  v13 = vadd_f32(v13, v9[0]);
  v9[0].i32[0] = a3;
  v10 = v4;
  v9[1] = v14;
  v11 = v13;
  result = std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::TempArc,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::TempArc>>::push_back[abi:ne200100]((*(a1 + 24) + 24 * a2), v9);
  ++*(a1 + 48);
  return result;
}

uint64_t std::vector<std::pair<int,fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::__emplace_back_slow_path<std::pair<int,fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element> const&>(uint64_t *a1, uint64_t a2)
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

void sub_1B56C8C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::MakeSubsetUnique(int a1, float **a2)
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
          if (fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Compare(a1, v8, *(v8 - 1), v7 + 4, *(v7 + 1)) == 1)
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

  std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::resize(a2, v6);
}

void fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::NormalizeSubset(uint64_t a1, void *a2, float32x2_t *a3, uint64_t *a4)
{
  v6 = *a2;
  v7 = a2[1];
  if (*a2 == v7)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "[empty subset]", 14);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v37);
    }

    *a4 = 0;
    *a3 = vneg_f32(0x7F0000007FLL);
  }

  else
  {
    memset(&v36, 0, sizeof(v36));
    fst::LatticeStringRepository<int>::ConvertToVector(a1 + 240, *(v6 + 8), &v36);
    v35 = a4;
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

        fst::LatticeStringRepository<int>::ReduceToCommonPrefix(a1 + 240, *(v15 + 32), &v36);
        v13 += 24;
        --v14;
      }

      while (v14);
    }

    v19 = 0;
    v20 = v36.__end_ - v36.__begin_;
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
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v37);
          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "LatticeWeightTpl::Divide, NaN or invalid number produced. ", 58);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "[dividing by zero?]  Returning zero.", 36);
          kaldi::KaldiLogMessage::~KaldiLogMessage(v37);
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
      v30 = fst::LatticeStringRepository<int>::RemovePrefix(a1 + 240, *(v29 + 8), v20);
      v22 = *a2;
      *(*a2 + v19 + 8) = v30;
      v19 += 24;
      --v21;
    }

    while (v21);
    begin = v36.__begin_;
    if (v36.__end_ == v36.__begin_)
    {
      v33 = 0;
      v34 = v35;
    }

    else
    {
      v32 = 0;
      v33 = 0;
      v34 = v35;
      do
      {
        v33 = fst::LatticeStringRepository<int>::Successor(a1 + 240, v33, begin[v32++]);
        begin = v36.__begin_;
      }

      while (v32 < v36.__end_ - v36.__begin_);
    }

    *v34 = v33;
    a3->f32[0] = v12;
    a3->f32[1] = v11;
    if (begin)
    {
      v36.__end_ = begin;
      operator delete(begin);
    }
  }
}

uint64_t fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::InitialToStateId(uint64_t a1, uint64_t *a2, float32x2_t *a3, void *a4)
{
  v17[0] = a2;
  v8 = std::__hash_table<std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::__unordered_map_hasher<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetKey,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetEqual,true>,std::__unordered_map_equal<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetEqual,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetKey,false>,std::allocator<std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>>::find<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*>(a1 + 128, v17);
  if (!v8)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element>>::__init_with_size[abi:ne200100]<fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element*,fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::Element*>(__p, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::EpsilonClosure(a1, __p);
    fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::ConvertToMinimal(a1, __p);
    fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::NormalizeSubset(a1, __p, &v15, &v14 + 1);
    fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::MinimalToStateId(a1, __p);
    v12 = v15;
    *a3 = v15;
    *a4 = *(&v14 + 1);
    LODWORD(v17[0]) = v12.i32[0];
    v19 = 2139095040;
    v18 = INFINITY;
    if (v12.f32[0] == INFINITY && v12.f32[1] == v18 && kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Zero weight!", 12);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v17);
    }

    operator new();
  }

  v9 = v8;
  v10 = *(v8 + 10);
  a3->f32[0] = v10;
  v11 = *(v8 + 11);
  a3->i32[1] = v11;
  *a4 = v8[4];
  *v17 = v10;
  LODWORD(__p[0]) = v11;
  if (v10 == INFINITY && *__p == INFINITY && kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Zero weight!", 12);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v17);
  }

  return *(v9 + 6);
}

void sub_1B56C92F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::MinimalToStateId(uint64_t a1, void *a2)
{
  __p = a2;
  v3 = std::__hash_table<std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::__unordered_map_hasher<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetKey,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetEqual,true>,std::__unordered_map_equal<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetEqual,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetKey,false>,std::allocator<std::__hash_value_type<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>>::find<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*>(a1 + 88, &__p);
  if (!v3)
  {
    v6 = -1431655765 * ((*(a1 + 32) - *(a1 + 24)) >> 3);
    operator new();
  }

  return *(v3 + 6);
}

void sub_1B56C94B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::RebuildRepository(uint64_t *a1)
{
  __p = 0;
  v27 = 0;
  v28 = 0;
  v2 = a1[3];
  v3 = a1[4];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 24 * v4);
      if (*(v2 + 24 * v4 + 8) != v5)
      {
        v6 = 0;
        v7 = 8;
        do
        {
          std::vector<TVertex const*>::push_back[abi:ne200100](&__p, (v5 + v7));
          ++v6;
          v2 = a1[3];
          v8 = (v2 + 24 * v4);
          v5 = *v8;
          v7 += 32;
        }

        while (v6 < (v8[1] - *v8) >> 5);
        v3 = a1[4];
      }

      ++v4;
    }

    while (v4 < 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3));
  }

  v9 = *a1;
  v10 = a1[1];
  if (v10 != *a1)
  {
    v11 = 0;
    do
    {
      v12 = **(v9 + 8 * v11);
      if (*(*(v9 + 8 * v11) + 8) != v12)
      {
        v13 = 0;
        v14 = 8;
        do
        {
          std::vector<TVertex const*>::push_back[abi:ne200100](&__p, (v12 + v14));
          ++v13;
          v9 = *a1;
          v15 = *(*a1 + 8 * v11);
          v12 = *v15;
          v14 += 24;
        }

        while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v15[1] - *v15) >> 3));
        v10 = a1[1];
      }

      ++v11;
    }

    while (v11 < (v10 - v9) >> 3);
  }

  for (i = a1[18]; i; i = *i)
  {
    v17 = i[2];
    v24 = *(i + 3);
    v25 = i[5];
    v18 = *v17;
    if (v17[1] != *v17)
    {
      v19 = 0;
      v20 = 8;
      do
      {
        std::vector<TVertex const*>::push_back[abi:ne200100](&__p, (v18 + v20));
        ++v19;
        v18 = *v17;
        v20 += 24;
      }

      while (v19 < 0xAAAAAAAAAAAAAAABLL * ((v17[1] - *v17) >> 3));
    }

    std::vector<TVertex const*>::push_back[abi:ne200100](&__p, &v24 + 1);
  }

  v21 = 126 - 2 * __clz((v27 - __p) >> 3);
  if (v27 == __p)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::LatticeStringRepository<int>::Entry const**,false>(__p, v27, &v24, v22, 1);
  v23 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<fst::LatticeStringRepository<int>::Entry const**>,std::__wrap_iter<fst::LatticeStringRepository<int>::Entry const**>,std::__equal_to &>(__p, v27);
  if (v23 != v27)
  {
    v27 = v23;
  }

  fst::LatticeStringRepository<int>::Rebuild((a1 + 30), &__p);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }
}

void sub_1B56C9724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::FreeMostMemory(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 56) = 0;
  }

  for (i = *(a1 + 104); i; i = *i)
  {
    v4 = i[2];
    if (v4)
    {
      v5 = *v4;
      if (*v4)
      {
        *(v4 + 8) = v5;
        operator delete(v5);
      }

      MEMORY[0x1B8C85350](v4, 0x20C40960023A9);
    }
  }

  v13 = 0u;
  v14 = 0u;
  v15 = 0x3A8000003F800000;
  std::__hash_table<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,std::__unordered_map_hasher<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetKey,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual,true>,std::__unordered_map_equal<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetKey,false>,std::allocator<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>>>::swap(&v13, a1 + 88);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v13);
  for (j = *(a1 + 144); j; j = *j)
  {
    v7 = j[2];
    if (v7)
    {
      v8 = *v7;
      if (*v7)
      {
        *(v7 + 8) = v8;
        operator delete(v8);
      }

      MEMORY[0x1B8C85350](v7, 0x20C40960023A9);
    }
  }

  v13 = 0u;
  v14 = 0u;
  v15 = 0x3A8000003F800000;
  std::__hash_table<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,std::__unordered_map_hasher<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetKey,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual,true>,std::__unordered_map_equal<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetKey,false>,std::allocator<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>>>::swap(&v13, a1 + 128);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v13);
  v9 = *a1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(a1 + 216);
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(a1 + 168);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(a1 + 192);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  if (v12)
  {
    operator delete(v12);
  }
}

uint64_t fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::~LatticeDeterminizer(uint64_t a1)
{
  fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::FreeMostMemory(a1);
  fst::LatticeStringRepository<int>::~LatticeStringRepository((a1 + 240));
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 192);
  if (v3)
  {
    *(a1 + 200) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 168);
  if (v4)
  {
    *(a1 + 176) = v4;
    operator delete(v4);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 128);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 88);
  v7 = (a1 + 24);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

void *std::__shared_ptr_emplace<fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__shared_ptr_emplace[abi:ne200100]<std::vector<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>> &,fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::WeightType &,std::allocator<fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,0>(void *a1, uint64_t *a2, int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D074D8;
  fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::InterpolateDeterministicOnDemandFst((a1 + 3), a2, *a3, 1);
  return a1;
}

void *std::__shared_ptr_emplace<fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>>::__shared_ptr_emplace[abi:ne200100]<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::vector<int> const&,std::allocator<fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>>,0>(void *a1, uint64_t (****a2)(void), unsigned int **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D14A58;
  fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::LeftContextDeterministicOnDemandFst((a1 + 3), *a2, a3);
  return a1;
}

void NgramProbArrayTrie::~NgramProbArrayTrie(NgramProbArrayTrie *this)
{
  *this = &unk_1F2D27FE0;
  Trie<unsigned int,ZeroArray<double>>::~Trie(this + 24);
}

{
  *this = &unk_1F2D27FE0;
  Trie<unsigned int,ZeroArray<double>>::~Trie(this + 24);

  JUMPOUT(0x1B8C85350);
}

void BayesMix::BayesMix(BayesMix *this, Vocab *a2, LM *a3, LM *a4, double a5, double a6)
{
  LM::LM(this, a2);
  *v6 = &unk_1F2D27E68;
  *(v6 + 152) = 2;
  *(v6 + 160) = 0x200000000;
  *(v6 + 168) = 0;
  *(v6 + 176) = 0;
  Array<double>::alloc();
}

void sub_1B56C9D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);
  *(v10 + 30) = &unk_1F2D27FE0;
  Trie<unsigned int,ZeroArray<double>>::~Trie(v10 + 264);
  v12 = *(v10 + 27);
  if (v12)
  {
    MEMORY[0x1B8C85310](v12, 0x20C8093837F09);
  }

  v13 = *(v10 + 21);
  if (v13)
  {
    MEMORY[0x1B8C85310](v13, 0x1000C8000313F17);
  }

  LM::~LM(v10);
  _Unwind_Resume(a1);
}

void BayesMix::~BayesMix(BayesMix *this)
{
  *this = &unk_1F2D27E68;
  if (*(this + 232) && *(this + 38))
  {
    v2 = 0;
    do
    {
      v3 = *Array<LM *>::operator[](this + 52, v2);
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }

      ++v2;
    }

    while (v2 < *(this + 38));
  }

  *(this + 30) = &unk_1F2D27FE0;
  Trie<unsigned int,ZeroArray<double>>::~Trie(this + 264);
  v4 = *(this + 27);
  if (v4)
  {
    MEMORY[0x1B8C85310](v4, 0x20C8093837F09);
  }

  v5 = *(this + 21);
  if (v5)
  {
    MEMORY[0x1B8C85310](v5, 0x1000C8000313F17);
  }

  LM::~LM(this);
}

{
  BayesMix::~BayesMix(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t BayesMix::readMixLMs(BayesMix *this, File *a2)
{
  v2 = MEMORY[0x1EEE9AC00](this);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v88 = *MEMORY[0x1E69E9840];
  if (*(v2 + 232))
  {
    if (*(v2 + 152))
    {
      v8 = 0;
      do
      {
        v9 = *Array<LM *>::operator[]((v7 + 208), v8);
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }

        ++v8;
      }

      while (v8 < *(v7 + 152));
    }

    *(v7 + 232) = 0;
  }

  v10 = *(v7 + 216);
  if (v10)
  {
    MEMORY[0x1B8C85310](v10, 0x20C8093837F09);
  }

  *(v7 + 220) = 0;
  *(v7 + 212) = 0;
  v11 = *(v7 + 168);
  if (v11)
  {
    MEMORY[0x1B8C85310](v11, 0x1000C8000313F17);
  }

  *(v7 + 172) = 0;
  *(v7 + 164) = 0;
  NgramProbArrayTrie::clear((v7 + 240));
  *(v7 + 233) = 0;
  v12 = File::getline(v6);
  if (v12)
  {
    while (1)
    {
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      *v56 = 0u;
      v57 = 0u;
      v14 = Vocab::parseWords(v12, v56, 0xC351, v13);
      if (v14 >= 0xC351)
      {
        v17 = File::position(v6, MEMORY[0x1E69E5300]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "too many words in line\n", 23);
        return 0;
      }

      if (v14)
      {
        break;
      }

      v12 = File::getline(v6);
      if (!v12)
      {
        *(v7 + 152) = 0;
        *(v7 + 260) = 1;
        result = 1;
        *(v7 + 232) = 1;
        return result;
      }
    }

    v15 = *v56;
    v31 = 3;
    __s1 = "ARPA";
    v30 = 0x3FF0000000000000;
    v27 = 0;
    __s = 0;
    v32 = -2;
    v33 = "order";
    v34 = &v31;
    v35 = "lm ngram order";
    v36 = -5;
    v37 = "weight";
    v38 = &v30;
    v39 = "lm prior weight";
    v40 = -3;
    v41 = "type";
    p_s1 = &__s1;
    v43 = "lm type";
    v44 = -3;
    v45 = "classes";
    p_s = &__s;
    v47 = "class definitions";
    v48 = 1;
    v49 = "simple-classes";
    v50 = &v27 + 4;
    v51 = "use unique class model";
    v52 = 1;
    v53 = "cache-served-ngrams";
    v54 = &v27;
    v55 = "enable client side caching";
    if (Opt_Parse(v14, v56, &v32, 6, 4u) == 1)
    {
      v16 = __s1;
      if (!strcmp(__s1, "ARPA"))
      {
        if (__s)
        {
          operator new();
        }

        operator new();
      }

      if (v4)
      {
        if (!strcmp(v16, "MAXENT"))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (!strcmp(v16, "COUNTLM"))
        {
          File::File(v26, v15, "r", 1);
          operator new();
        }

        if (!strcmp(v16, "MAXENT"))
        {
LABEL_19:
          File::File(v26, v15, "r", 1);
          operator new();
        }

        if (!strcmp(v16, "LMCLIENT"))
        {
          operator new();
        }
      }

      v23 = File::position(v6, MEMORY[0x1E69E5300]);
      v24 = strlen(__s1);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, __s1, v24);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " is not a valid LM type\n", 24);
    }

    else
    {
      v19 = File::position(v6, MEMORY[0x1E69E5300]);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "allowed options for mixture LM ", 31);
      v21 = strlen(v15);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v15, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " are\n", 5);
      Opt_PrintUsage(0, &v32, 6);
    }

    return 0;
  }

  else
  {
    *(v7 + 152) = 0;
    result = 1;
    *(v7 + 260) = 1;
    *(v7 + 232) = 1;
  }

  return result;
}

int *BayesMix::findPriors(BayesMix *this, Vocab *a2)
{
  if (!*(this + 233))
  {
    return (this + 160);
  }

  v4 = Vocab::length(a2, a2);
  if (v4 >= *(this + 48))
  {
    v5 = *(this + 48);
  }

  else
  {
    v5 = v4;
  }

  v6 = *(a2 + v5);
  *(a2 + v5) = -1;
  v11 = 0;
  PrefixTrie = Trie<unsigned int,ZeroArray<double>>::findPrefixTrie(this + 33, a2, &v11);
  if (!*(this + 38))
  {
LABEL_9:
    *(a2 + v5) = v6;
    return (this + 160);
  }

  v8 = 0;
  v9 = (PrefixTrie + 1);
  while (*Array<double>::operator[](v9, v8) == 0.0)
  {
    if (++v8 >= *(this + 38))
    {
      goto LABEL_9;
    }
  }

  *(a2 + v5) = v6;
  return v9;
}

float BayesMix::wordProb(uint64_t a1, uint64_t a2, Vocab *a3)
{
  if (*(a1 + 152))
  {
    Array<double>::alloc();
  }

  Priors = BayesMix::findPriors(a1, a3);
  if (*(a1 + 152))
  {
    v7 = Priors;
    v8 = 0;
    v9 = 0.0;
    v10 = 1;
    do
    {
      v11 = Array<LM *>::operator[]((a1 + 208), v8);
      v12 = (*(**v11 + 48))(*v11, a2, a3);
      v13 = 0.0;
      if (v12 != -INFINITY)
      {
        v13 = exp(v12 * 2.30258509);
      }

      *(8 * v8) = v13;
      v14 = Array<double>::operator[](v7, v8);
      v15 = *v14;
      *(8 * v8) = *v14;
      v16 = *(a1 + 200);
      if (v16 > 0.0)
      {
        v17 = Array<LM *>::operator[]((a1 + 208), v8);
        v18 = v16 * (*(**v17 + 104))(*v17, a3, *(a1 + 192));
        v19 = 0.0;
        if (v18 != -INFINITY)
        {
          v19 = exp(v18 * 2.30258509);
        }

        v15 = v19 * *(8 * v8);
        *(8 * v8) = v15;
      }

      if (v15 != 0.0)
      {
        v10 = 0;
      }

      v9 = v9 + v15;
      ++v8;
      v20 = *(a1 + 152);
    }

    while (v8 < v20);
    if (v10)
    {
      v21 = 0;
    }

    else
    {
      v21 = v8;
    }

    v22 = 0.0;
    if (v10)
    {
      v9 = 0.0;
      v23 = v20 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      v24 = 0;
      do
      {
        v25 = Array<double>::operator[](v7, v24);
        v26 = *v25;
        *(8 * v24) = *v25;
        v22 = v22 + v26;
        ++v24;
      }

      while (v24 < *(a1 + 152));
      v21 = 1;
      v9 = v22;
    }
  }

  else
  {
    v21 = 0;
    v9 = 0.0;
  }

  if ((*(*a1 + 264))(a1) && !*(a1 + 8) && (Debug::debugAll > 1 || *(a1 + 12) >= 2u) && *(a1 + 192))
  {
    v27 = (*(*a1 + 24))(a1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "[post=", 6);
    if (v21)
    {
      v28 = (*(*a1 + 24))(a1);
      MEMORY[0x1B8C84BE0](v28, MEMORY[0] / v9);
    }

    if (*(a1 + 152) >= 2u)
    {
      v29 = 1;
      do
      {
        v30 = (*(*a1 + 24))(a1);
        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ",", 1);
        MEMORY[0x1B8C84BE0](v31, *(8 * v29++) / v9);
      }

      while (v29 < *(a1 + 152));
    }

    v32 = (*(*a1 + 24))(a1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "]", 1);
  }

  if ((*(*a1 + 264))(a1) && !*(a1 + 8) && (Debug::debugAll > 2 || *(a1 + 12) >= 3u))
  {
    v33 = (*(*a1 + 24))(a1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "[probs=", 7);
    if (v21)
    {
      v34 = (*(*a1 + 24))(a1);
      MEMORY[0x1B8C84BE0](v34, MEMORY[0]);
    }

    if (*(a1 + 152) >= 2u)
    {
      v35 = 1;
      do
      {
        v36 = (*(*a1 + 24))(a1);
        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ",", 1);
        MEMORY[0x1B8C84BE0](v37, *(8 * v35++));
      }

      while (v35 < *(a1 + 152));
    }

    v38 = (*(*a1 + 24))(a1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "]", 1);
  }

  v39 = *(a1 + 152);
  if (v39)
  {
    v40 = 0;
    v41 = 0;
    v42 = 0.0;
    do
    {
      v42 = v42 + *(8 * v40++) * *(8 * v41++);
      --v39;
    }

    while (v39);
    MEMORY[0x1B8C85310](0, 0x1000C8000313F17);
  }

  else
  {
    v42 = 0.0;
  }

  return log10(v42 / v9);
}

void sub_1B56CB250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    MEMORY[0x1B8C85310](a13, v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BayesMix::contextID(BayesMix *this, unsigned int a2, const unsigned int *a3, unsigned int *a4)
{
  if (*(this + 38))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v13 = 0;
      v10 = Array<LM *>::operator[](this + 52, v7);
      v11 = (*(**v10 + 200))(*v10, a3, &v13);
      if (v13 > v9)
      {
        v9 = v13;
        v8 = v11;
      }

      ++v7;
    }

    while (v7 < *(this + 38));
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  return v8;
}

BOOL BayesMix::isNonWord(BayesMix *this, uint64_t a2)
{
  if (!*(this + 38))
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v5 = Array<LM *>::operator[](this + 52, v4);
    v6 = (*(**v5 + 232))(*v5, a2);
    result = v6 != 0;
    if (v6)
    {
      break;
    }

    ++v4;
  }

  while (v4 < *(this + 38));
  return result;
}

uint64_t BayesMix::setState(uint64_t this, const char *a2)
{
  if (*(this + 152))
  {
    v3 = this;
    v4 = 0;
    do
    {
      v5 = Array<LM *>::operator[]((v3 + 208), v4);
      this = (*(**v5 + 152))(*v5, a2);
      ++v4;
    }

    while (v4 < *(v3 + 152));
  }

  return this;
}

BOOL BayesMix::addUnkWords(BayesMix *this)
{
  if (!*(this + 38))
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = Array<LM *>::operator[](this + 52, v2);
    v4 = (*(**v3 + 224))(*v3);
    result = v4 != 0;
    if (v4)
    {
      break;
    }

    ++v2;
  }

  while (v2 < *(this + 38));
  return result;
}

uint64_t BayesMix::running(BayesMix *this, uint64_t a2)
{
  v2 = *(this + 147);
  *(this + 147) = a2;
  if (*(this + 38))
  {
    v5 = 0;
    do
    {
      v6 = Array<LM *>::operator[](this + 52, v5);
      (*(**v6 + 272))(*v6, a2);
      ++v5;
    }

    while (v5 < *(this + 38));
  }

  return v2;
}

_DWORD *BayesMix::debugme(_DWORD *this, uint64_t a2)
{
  v3 = this;
  if (this[38])
  {
    v4 = 0;
    do
    {
      v5 = Array<LM *>::operator[](v3 + 52, v4);
      this = (*(**v5 + 16))(*v5, a2);
      ++v4;
    }

    while (v4 < v3[38]);
  }

  v3[3] = a2;
  return this;
}

uint64_t BayesMix::dout(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 152))
  {
    v4 = 0;
    do
    {
      v5 = Array<LM *>::operator[]((a1 + 208), v4);
      (*(**v5 + 32))(*v5, a2);
      ++v4;
    }

    while (v4 < *(a1 + 152));
  }

  *(a1 + 16) = a2;
  return a2;
}

uint64_t BayesMix::prefetchingNgrams(BayesMix *this)
{
  if (!*(this + 38))
  {
    return 0;
  }

  v2 = 0;
  LODWORD(v3) = 0;
  do
  {
    v4 = Array<LM *>::operator[](this + 52, v2);
    v5 = (*(**v4 + 296))(*v4);
    if (v5 <= v3)
    {
      v3 = v3;
    }

    else
    {
      v3 = v5;
    }

    ++v2;
  }

  while (v2 < *(this + 38));
  return v3;
}

uint64_t BayesMix::prefetchNgrams(uint64_t result, uint64_t a2)
{
  v2 = *(result + 152);
  if (!v2)
  {
    return 1;
  }

  v4 = result;
  v5 = 0;
  LOBYTE(result) = 1;
  do
  {
    if (result)
    {
      v6 = Array<LM *>::operator[]((v4 + 208), v5);
      result = (*(**v6 + 304))(*v6, a2) != 0;
      v2 = *(v4 + 152);
    }

    else
    {
      result = 0;
    }

    ++v5;
  }

  while (v5 < v2);
  return result;
}

{
  v2 = *(result + 152);
  if (!v2)
  {
    return 1;
  }

  v4 = result;
  v5 = 0;
  LOBYTE(result) = 1;
  do
  {
    if (result)
    {
      v6 = Array<LM *>::operator[]((v4 + 208), v5);
      result = (*(**v6 + 312))(*v6, a2) != 0;
      v2 = *(v4 + 152);
    }

    else
    {
      result = 0;
    }

    ++v5;
  }

  while (v5 < v2);
  return result;
}

{
  v2 = *(result + 152);
  if (!v2)
  {
    return 1;
  }

  v4 = result;
  v5 = 0;
  LOBYTE(result) = 1;
  do
  {
    if (result)
    {
      v6 = Array<LM *>::operator[]((v4 + 208), v5);
      result = (*(**v6 + 320))(*v6, a2) != 0;
      v2 = *(v4 + 152);
    }

    else
    {
      result = 0;
    }

    ++v5;
  }

  while (v5 < v2);
  return result;
}

void SubVocab::SubVocab(SubVocab *this, Vocab *a2, int a3)
{
  Vocab::Vocab(this, 0, -2);
  *v6 = &unk_1F2D28010;
  v6[12] = a2;
  Vocab::setOutputVocab(a2, v7);
  if (a3)
  {
    v8 = (*(*a2 + 88))(a2);
    *(this + 16) = (*(*this + 360))(this, *v8);
    v9 = (*(*a2 + 104))(a2);
    *(this + 17) = (*(*this + 360))(this, *v9);
    v10 = (*(*a2 + 120))(a2);
    *(this + 18) = (*(*this + 360))(this, *v10);
    v11 = (*(*a2 + 136))(a2);
    *(this + 19) = (*(*this + 360))(this, *v11);
    *(this + 80) = *(*(*a2 + 152))(a2);
  }

  else
  {
    (*(*this + 64))(this, *(this + 16));
    (*(*this + 64))(this, *(this + 17));
    (*(*this + 64))(this, *(this + 18));
    (*(*this + 64))(this, *(this + 19));
  }
}

uint64_t SubVocab::addWord(SubVocab *this, const char *a2)
{
  result = (*(**(this + 12) + 16))(*(this + 12), a2);
  if (result != -1)
  {
    v4 = *(*this + 360);

    return v4(this, result);
  }

  return result;
}

uint64_t SubVocab::addWord(SubVocab *this, uint64_t a2)
{
  v4 = (*(**(this + 12) + 32))(*(this + 12));
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v10 = 0;
  v6 = LHash<char const*,unsigned int>::insert(this + 1, v4, &v10);
  if (!v10)
  {
    *v6 = a2;
    v11 = 0;
    InternalKey = LHash<char const*,unsigned int>::getInternalKey(this + 1, v5, &v11);
    *Array<char const*>::operator[](this + 4, a2) = InternalKey;
    v8 = *(this + 10);
    if (v8 < a2)
    {
      do
      {
        *Array<char const*>::operator[](this + 4, v8++) = 0;
      }

      while (a2 != v8);
      LODWORD(v8) = *(this + 10);
    }

    if (a2 + 1 > v8)
    {
      *(this + 10) = a2 + 1;
    }
  }

  return a2;
}

void SubVocab::~SubVocab(SubVocab *this)
{
  Vocab::~Vocab(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::RecognitionResultIterator::iterateWithCallback(uint64_t a1, uint64_t a2)
{
  do
  {
    v4 = (**a1)(a1);
    if (!v4)
    {
      break;
    }

    v5 = (*(*a1 + 8))(a1);
    v6 = *(a2 + 24);
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

  while (((*(*v6 + 48))(v6, v5) & 1) != 0);
  return v4 ^ 1u;
}

uint64_t quasar::JSONRecognitionResultIterator::JSONRecognitionResultIterator(uint64_t a1, kaldi::quasar::Vocab *a2, const void ***a3)
{
  *a1 = &unk_1F2D28208;
  std::set<std::string>::set[abi:ne200100]((a1 + 8), a3);
  *a1 = &unk_1F2D281A8;
  kaldi::quasar::Vocab::OOvWord(a2, &__p);
  std::ifstream::basic_ifstream((a1 + 32));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 672) = 0;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  std::istream::peek();
  return a1;
}

void sub_1B56CC1E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  quasar::RecognitionResultIterator::Record::~Record((v15 + 608));
  std::ifstream::~ifstream(v18, MEMORY[0x1E69E54C8]);
  MEMORY[0x1B8C85200](v15 + 456);
  *v15 = v17;
  std::__tree<std::string>::destroy(v16, *(v15 + 16));
  _Unwind_Resume(a1);
}

uint64_t quasar::JSONRecognitionResultIterator::next(quasar::JSONRecognitionResultIterator *this)
{
  v1 = (this + 32);
  v2 = (this + *(*(this + 4) - 24) + 32);
  if ((v2->__rdstate_ & 2) == 0)
  {
    memset(&v8, 0, sizeof(v8));
    std::ios_base::getloc(v2);
    v3 = std::locale::use_facet(&v6, MEMORY[0x1E69E5318]);
    v4 = (v3->__vftable[2].~facet_0)(v3, 10);
    std::locale::~locale(&v6);
    std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v1, &v8, v4);
    std::istream::peek();
    quasar::PTree::PTree(v7);
    std::istringstream::basic_istringstream[abi:ne200100](&v6, &v8, 8);
    quasar::PTree::readJson();
  }

  return 0;
}

void sub_1B56CC5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, __int16 a6, char a7, char a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::locale a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  std::istringstream::~istringstream(&a16, MEMORY[0x1E69E54E0]);
  MEMORY[0x1B8C85200](va);
  quasar::PTree::~PTree((v30 - 144));
  if (*(v30 - 57) < 0)
  {
    operator delete(*(v30 - 80));
  }

  _Unwind_Resume(a1);
}

void quasar::JSONRecognitionResultIterator::~JSONRecognitionResultIterator(quasar::JSONRecognitionResultIterator *this)
{
  quasar::JSONRecognitionResultIterator::~JSONRecognitionResultIterator(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D281A8;
  v2 = *(this + 83);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v5 = (this + 632);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 631) < 0)
  {
    operator delete(*(this + 76));
  }

  v3 = MEMORY[0x1E69E54C8];
  v4 = *MEMORY[0x1E69E54C8];
  *(this + 4) = *MEMORY[0x1E69E54C8];
  *(this + *(v4 - 24) + 32) = *(v3 + 24);
  MEMORY[0x1B8C84A00](this + 48);
  std::istream::~istream();
  MEMORY[0x1B8C85200](this + 456);
  *this = &unk_1F2D28208;
  std::__tree<std::string>::destroy(this + 8, *(this + 2));
}

void quasar::RecognitionResultIterator::Record::~Record(quasar::RecognitionResultIterator::Record *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = (this + 24);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void *std::shared_ptr<kaldi::FeatureMatrixItf>::operator=[abi:ne200100]<kaldi::FeatureMatrixItf,std::default_delete<kaldi::FeatureMatrixItf>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<kaldi::FeatureMatrixItf>::shared_ptr[abi:ne200100]<kaldi::FeatureMatrixItf,std::default_delete<kaldi::FeatureMatrixItf>,0>(&v6, a2);
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

uint64_t *std::shared_ptr<kaldi::FeatureMatrixItf>::shared_ptr[abi:ne200100]<kaldi::FeatureMatrixItf,std::default_delete<kaldi::FeatureMatrixItf>,0>(uint64_t *result, uint64_t *a2)
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

void std::__shared_ptr_pointer<kaldi::FeatureMatrixItf  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<kaldi::FeatureMatrixItf  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<kaldi::FeatureMatrixItf  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1B56CCBA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 __p, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25)
{
  if (a2 == 1)
  {
    v29 = __cxa_begin_catch(a1);
    if (quasar::gLogLevel >= 1)
    {
      v30 = v29;
      a24 = 0u;
      a25 = 0u;
      a22 = 0u;
      a23 = 0u;
      a20 = 0u;
      a21 = 0u;
      a18 = 0u;
      a19 = 0u;
      a16 = 0u;
      a17 = 0u;
      a14 = 0u;
      a15 = 0u;
      a12 = 0u;
      a13 = 0u;
      a10 = 0u;
      a11 = 0u;
      __p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "EAR Initialization failed for custom-lm, error:", 47);
      v32 = (*(*v30 + 16))(v30);
      v33 = strlen(v32);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v32, v33);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&__p);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B56CCB80);
  }

  _Unwind_Resume(a1);
}

void sub_1B56CCFF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  _Block_object_dispose(&a23, 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__10(__n128 *a1, __n128 *a2)
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

quasar::CustomLMBuilder *std::unique_ptr<quasar::CustomLMBuilder>::reset[abi:ne200100](quasar::CustomLMBuilder **a1, quasar::CustomLMBuilder *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    quasar::CustomLMBuilder::~CustomLMBuilder(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void quasar::CustomLMBuilder::~CustomLMBuilder(quasar::CustomLMBuilder *this)
{
  v2 = *(this + 34);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 32);
  *(this + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v5 = (this + 232);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }

  quasar::PTree::~PTree((this + 136));
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  v4 = *(this + 7);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t quasar::PSRAudioProcessor::addAudio(quasar::PSRAudioProcessor *this, const __int16 *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *this;
  v6 = 0;
  (*(*v3 + 16))(v3, a2, a3, v5);
  return std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v5);
}

void sub_1B56CD920(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1B56CDAD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56CE008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = EARPSRAudioProcessor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<quasar::PSRAudioProcessor>::__shared_ptr_emplace[abi:ne200100]<quasar::SystemConfig &,std::string,unsigned long &,std::allocator<quasar::PSRAudioProcessor>,0>(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D0D0B0;
  std::allocator<quasar::PSRAudioProcessor>::construct[abi:ne200100]<quasar::PSRAudioProcessor,quasar::SystemConfig &,std::string,unsigned long &>(&v6, (a1 + 3), a2, a3, a4);
  return a1;
}

void std::allocator<quasar::PSRAudioProcessor>::construct[abi:ne200100]<quasar::PSRAudioProcessor,quasar::SystemConfig &,std::string,unsigned long &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v6 = *a5;
  v7 = 0;
  v8 = 0;
  quasar::PSRAudioProcessor::PSRAudioProcessor(a2, a3, a4, v6, &v7, 0);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1B56CE290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *quasar::tennessee::memory_mapping::operator<<(void *a1, int a2)
{
  if (a2 == 2)
  {
    v3 = "MEMORY_BUFFER";
    v4 = 13;
  }

  else if (a2 == 1)
  {
    v3 = "MEMORY_MAP";
    v4 = 10;
  }

  else
  {
    v3 = "UNKNOWN";
    v4 = 7;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
  return a1;
}

uint64_t quasar::tennessee::memory_mapping::VirtualMemoryFile::VirtualMemoryFile(uint64_t a1, uint64_t a2, int a3, unint64_t a4, off_t a5)
{
  *a1 = &unk_1F2D282A0;
  *(a1 + 8) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  v5 = a4 - a5;
  if (a4 <= a5)
  {
    goto LABEL_24;
  }

  v11 = *(a2 + 23) >= 0 ? a2 : *a2;
  v12 = open(v11, 0);
  if (v12 <= 0)
  {
    goto LABEL_24;
  }

  v13 = v12;
  if (quasar::gLogLevel >= 4)
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
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v26);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "Loading ", 8);
    v15 = v14;
    v16 = *(a2 + 23);
    if ((v16 & 0x80u) == 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a2 + 8);
    }

    std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(v14, v17, &v17[v16], 0x22u, 0x5Cu);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " using ", 7);
    v19 = quasar::tennessee::memory_mapping::operator<<(v18, a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ".", 1);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v26);
  }

  v20 = *(a1 + 8);
  if (v20 == 2)
  {
    if (a5 < 1 || lseek(v13, a5, 0) == a5)
    {
      *(a1 + 32) = v5;
      if ((a4 & 0x8000000000000000) == 0)
      {
        operator new[]();
      }
    }

    goto LABEL_24;
  }

  if (v20 == 1)
  {
    v21 = sysconf(29);
    v22 = a5 % v21 + a4;
    *(a1 + 24) = a5 % v21;
    *(a1 + 32) = v22;
    v23 = mmap(0, v22, 1, 1, v13, a5 / v21 * v21);
    *(a1 + 16) = v23;
    if (v23 == -1)
    {
      goto LABEL_24;
    }
  }

  else if (quasar::gLogLevel >= -1)
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
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v26);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "Unsupported mode: ", 18);
    quasar::tennessee::memory_mapping::operator<<(v25, *(a1 + 8));
LABEL_25:
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v26);
  }

  if (close(v13))
  {
LABEL_24:
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
    v26 = 0u;
    quasar::QuasarExceptionMessage::QuasarExceptionMessage(&v26);
    goto LABEL_25;
  }

  return a1;
}

void quasar::tennessee::memory_mapping::VirtualMemoryFile::~VirtualMemoryFile(quasar::tennessee::memory_mapping::VirtualMemoryFile *this)
{
  *this = &unk_1F2D282A0;
  v1 = *(this + 2);
  if (v1 == 2)
  {
    v2 = *(this + 2);
    if (v2)
    {
      MEMORY[0x1B8C85310](v2, 0x1000C8077774924);
    }
  }

  else if (v1 == 1)
  {
    if (munmap(*(this + 2), *(this + 4)))
    {
      memset(v3, 0, sizeof(v3));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v3);
    }
  }
}

{
  quasar::tennessee::memory_mapping::VirtualMemoryFile::~VirtualMemoryFile(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::rescoring::PreItnTokenExtractor::PreItnTokenExtractor(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, "\\CS-");
  std::string::basic_string[abi:ne200100]<0>(v4, "\\PM-");
  std::set<std::string>::set[abi:ne200100](a1, __p, 2);
  v2 = 0;
  while (1)
  {
    if (v4[v2 + 23] < 0)
    {
      operator delete(*&v4[v2]);
    }

    v2 -= 24;
    if (v2 == -48)
    {
      operator new();
    }
  }
}

void sub_1B56CE8AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  quasar::BasicTextSanitizer::~BasicTextSanitizer((v17 + 56));
  v19 = *(v17 + 48);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v20 = *(v17 + 32);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  std::__tree<std::string>::destroy(v17, *(v17 + 8));
  _Unwind_Resume(a1);
}

void quasar::rescoring::PreItnTokenExtractor::operator()(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, *a2, *(a2 + 8));
  }

  else
  {
    __s = *a2;
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "~w00");
  std::string::basic_string[abi:ne200100]<0>(__p, " ");
  quasar::replaceAll(&__s, v5, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, " ");
  operator new();
}

uint64_t quasar::rescoring::PreItnTokenExtractor::matchesAnyUnallowedTokenPrefix(void *a1, const void **a2)
{
  v4 = a1 + 1;
  for (i = a1[1]; i; i = *(i + v7))
  {
    v6 = std::less<std::string>::operator()[abi:ne200100](a1, (i + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v4 = i;
    }
  }

  if (v4 == *a1)
  {
    return 0;
  }

  v8 = *(v4 + 55);
  if (v8 >= 0)
  {
    v9 = *(v4 + 55);
  }

  else
  {
    v9 = v4[5];
  }

  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = a2[1];
  }

  if (v9 == v11)
  {
    v12 = v8 >= 0 ? v4 + 4 : v4[4];
    v13 = v10 >= 0 ? a2 : *a2;
    if (!memcmp(v12, v13, v9))
    {
      return 1;
    }
  }

  v14 = *v4;
  if (*v4)
  {
    do
    {
      v15 = v14;
      v14 = v14[1];
    }

    while (v14);
  }

  else
  {
    do
    {
      v15 = v4[2];
      v16 = *v15 == v4;
      v4 = v15;
    }

    while (v16);
  }

  if (v10 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  v20 = v15[4];
  v19 = (v15 + 4);
  v18 = v20;
  v21 = v19[23];
  if (v21 >= 0)
  {
    v18 = v19;
  }

  v22 = *(v19 + 1);
  if (v21 >= 0)
  {
    v22 = v21;
  }

  if (v11 && v22)
  {
    v23 = v22 - 1;
    v24 = v11 - 1;
    v25 = v18;
    while (*v17 == *v25)
    {
      ++v25;
      if (v24)
      {
        ++v17;
        v26 = v23--;
        --v24;
        if (v26)
        {
          continue;
        }
      }

      return v25 == &v18[v22];
    }

    return 0;
  }

  v25 = v18;
  return v25 == &v18[v22];
}

__n128 std::__function::__func<quasar::rescoring::PreItnTokenExtractor::operator()(std::string const&,std::vector<std::string> *)::$_0,std::allocator<quasar::rescoring::PreItnTokenExtractor::operator()(std::string const&,std::vector<std::string> *)::$_0>,void ()(std::string const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D282D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<quasar::rescoring::PreItnTokenExtractor::operator()(std::string const&,std::vector<std::string> *)::$_0,std::allocator<quasar::rescoring::PreItnTokenExtractor::operator()(std::string const&,std::vector<std::string> *)::$_0>,void ()(std::string const&)>::operator()(uint64_t a1, uint64_t a2)
{
  if ((quasar::rescoring::PreItnTokenExtractor::matchesAnyUnallowedTokenPrefix(*(a1 + 16), a2) & 1) == 0)
  {
    if (quasar::SymbolTableList::strToSymbolId(*(*(a1 + 16) + 24), a2) == -1)
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v86, *a2, *(a2 + 8));
      }

      else
      {
        v86 = *a2;
      }

      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v86;
      }

      else
      {
        v7 = v86.__r_.__value_.__r.__words[0];
      }

      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v86.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v86.__r_.__value_.__l.__size_;
      }

      if (size >= 1)
      {
        v9 = v7 + size;
        v10 = v7;
        do
        {
          v11 = memchr(v10, 92, size);
          if (!v11)
          {
            break;
          }

          if (*v11 == 92)
          {
            if (v11 != v9 && v11 - v7 != -1)
            {
              std::string::erase(&v86, v11 - v7, 0xFFFFFFFFFFFFFFFFLL);
            }

            break;
          }

          v10 = (v11 + 1);
          size = v9 - v10;
        }

        while (v9 - v10 >= 1);
      }

      if (quasar::SymbolTableList::strToSymbolId(*(*(a1 + 16) + 24), &v86) == -1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "_");
        std::string::basic_string[abi:ne200100]<0>(&v83, " ");
        quasar::replaceAll(&v86, __p, &v83);
        if (SHIBYTE(v85) < 0)
        {
          operator delete(v83);
        }

        if (SBYTE7(v67) < 0)
        {
          operator delete(__p[0]);
        }

        __p[0] = 0;
        __p[1] = 0;
        *&v67 = 0;
        if (quasar::TextSanitizer::sanitize(*(a1 + 16) + 56, &v86) != 1)
        {
          std::string::operator=(&v86, __p);
        }

        if (SBYTE7(v67) < 0)
        {
          operator delete(__p[0]);
        }

        v15 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
        if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v15 = v86.__r_.__value_.__l.__size_;
        }

        if (v15)
        {
          v16 = *(a1 + 8);
          v17 = *v16;
          v18 = v16[1];
          v19 = *(*(a1 + 16) + 40);
          if (v19)
          {
            if (quasar::gLogLevel >= 4)
            {
              v81 = 0u;
              v82 = 0u;
              v79 = 0u;
              v80 = 0u;
              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              v73 = 0u;
              v74 = 0u;
              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              v67 = 0u;
              v68 = 0u;
              *__p = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
              v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Token '", 7);
              v21 = *(a2 + 23);
              if (v21 >= 0)
              {
                v22 = a2;
              }

              else
              {
                v22 = *a2;
              }

              if (v21 >= 0)
              {
                v23 = *(a2 + 23);
              }

              else
              {
                v23 = *(a2 + 8);
              }

              v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "' is OOV.", 9);
              quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
              v19 = *(*(a1 + 16) + 40);
            }

            v83 = 0;
            v84 = 0;
            v85 = 0;
            if (((*(*v19 + 16))(v19, &v86, &v83) & 1) == 0)
            {
              v81 = 0u;
              v82 = 0u;
              v79 = 0u;
              v80 = 0u;
              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              v73 = 0u;
              v74 = 0u;
              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              v67 = 0u;
              v68 = 0u;
              *__p = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
              v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Tokenizer failed to tokenize '", 30);
              if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v56 = &v86;
              }

              else
              {
                v56 = v86.__r_.__value_.__r.__words[0];
              }

              if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v57 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v57 = v86.__r_.__value_.__l.__size_;
              }

              v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, v56, v57);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "'.", 2);
              quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
            }

            if (v84 - v83 != 32)
            {
              v81 = 0u;
              v82 = 0u;
              v79 = 0u;
              v80 = 0u;
              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              v73 = 0u;
              v74 = 0u;
              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              v67 = 0u;
              v68 = 0u;
              *__p = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
              v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Tokenizer returned ", 19);
              v60 = MEMORY[0x1B8C84C30](v59, (v84 - v83) >> 5);
              v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, " hypotheses, ", 13);
              v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "instead of expected singleton for '", 35);
              if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v63 = &v86;
              }

              else
              {
                v63 = v86.__r_.__value_.__r.__words[0];
              }

              if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v64 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v64 = v86.__r_.__value_.__l.__size_;
              }

              v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, v63, v64);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "'.", 2);
              quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
            }

            v25 = *v83;
            v26 = v83[1];
            if (*v83 != v26)
            {
              do
              {
                if (quasar::gLogLevel >= 4)
                {
                  v81 = 0u;
                  v82 = 0u;
                  v79 = 0u;
                  v80 = 0u;
                  v77 = 0u;
                  v78 = 0u;
                  v75 = 0u;
                  v76 = 0u;
                  v73 = 0u;
                  v74 = 0u;
                  v71 = 0u;
                  v72 = 0u;
                  v69 = 0u;
                  v70 = 0u;
                  v67 = 0u;
                  v68 = 0u;
                  *__p = 0u;
                  kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
                  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Extracted token '", 17);
                  v28 = *(v25 + 23);
                  if (v28 >= 0)
                  {
                    v29 = v25;
                  }

                  else
                  {
                    v29 = *v25;
                  }

                  if (v28 >= 0)
                  {
                    v30 = *(v25 + 23);
                  }

                  else
                  {
                    v30 = *(v25 + 8);
                  }

                  v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v29, v30);
                  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "' from '", 8);
                  if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v33 = &v86;
                  }

                  else
                  {
                    v33 = v86.__r_.__value_.__r.__words[0];
                  }

                  if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v34 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v34 = v86.__r_.__value_.__l.__size_;
                  }

                  v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v33, v34);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "'.", 2);
                  quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
                }

                std::string::basic_string[abi:ne200100]<0>(__p, " ");
                quasar::splitAndTrimNoEmpty(v25, __p, *(a1 + 8));
                if (SBYTE7(v67) < 0)
                {
                  operator delete(__p[0]);
                }

                v25 += 32;
              }

              while (v25 != v26);
            }

            __p[0] = &v83;
            std::vector<quasar::TextTokenizer::TokenString>::__destroy_vector::operator()[abi:ne200100](__p);
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(__p, " ");
            quasar::splitAndTrimNoEmpty(&v86, __p, *(a1 + 8));
            if (SBYTE7(v67) < 0)
            {
              operator delete(__p[0]);
            }

            if (quasar::gLogLevel >= 4)
            {
              v81 = 0u;
              v82 = 0u;
              v79 = 0u;
              v80 = 0u;
              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              v73 = 0u;
              v74 = 0u;
              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              v67 = 0u;
              v68 = 0u;
              *__p = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
              v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Token '", 7);
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

              v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v44, v45);
              v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "' is OOV and was converted to '", 31);
              if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v48 = &v86;
              }

              else
              {
                v48 = v86.__r_.__value_.__r.__words[0];
              }

              if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v49 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v49 = v86.__r_.__value_.__l.__size_;
              }

              v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v48, v49);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "'.", 2);
              quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
            }
          }

          v51 = v18 - v17;
          v52 = **(a1 + 8);
          if (v18 - v17 < (*(*(a1 + 8) + 8) - v52))
          {
            v53 = 0xAAAAAAAAAAAAAAABLL * (v51 >> 3);
            v54 = 8 * (v51 >> 3);
            do
            {
              if (quasar::SymbolTableList::strToSymbolId(*(*(a1 + 16) + 24), v52 + v54) == -1)
              {
                ++**(a1 + 24);
              }

              ++v53;
              v52 = **(a1 + 8);
              v54 += 24;
            }

            while (v53 < 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 8) + 8) - v52) >> 3));
          }
        }

        else if (quasar::gLogLevel >= 4)
        {
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Token '", 7);
          v38 = *(a2 + 23);
          if (v38 >= 0)
          {
            v39 = a2;
          }

          else
          {
            v39 = *a2;
          }

          if (v38 >= 0)
          {
            v40 = *(a2 + 23);
          }

          else
          {
            v40 = *(a2 + 8);
          }

          v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v39, v40);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "' was converted to the empty string.", 36);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
        }
      }

      else
      {
        v12 = *(a1 + 8);
        v13 = *(v12 + 8);
        if (v13 >= *(v12 + 16))
        {
          v36 = std::vector<std::string>::__emplace_back_slow_path<std::string&>(*(a1 + 8), &v86);
        }

        else
        {
          if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(*(v12 + 8), v86.__r_.__value_.__l.__data_, v86.__r_.__value_.__l.__size_);
          }

          else
          {
            v14 = *&v86.__r_.__value_.__l.__data_;
            *(v13 + 16) = *(&v86.__r_.__value_.__l + 2);
            *v13 = v14;
          }

          v36 = (v13 + 24);
          *(v12 + 8) = v13 + 24;
        }

        *(v12 + 8) = v36;
      }

      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v4 = *(a1 + 8);
      v5 = *(v4 + 8);
      if (v5 >= *(v4 + 16))
      {
        v6 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v4, a2);
      }

      else
      {
        std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(v4, a2);
        v6 = v5 + 1;
      }

      *(v4 + 8) = v6;
    }
  }
}

void sub_1B56CF60C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  __p = (v16 - 136);
  std::vector<quasar::TextTokenizer::TokenString>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v16 - 89) < 0)
  {
    operator delete(*(v16 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_1B56CF694(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __p = (v16 - 136);
  std::vector<quasar::TextTokenizer::TokenString>::__destroy_vector::operator()[abi:ne200100](&__p);
  JUMPOUT(0x1B56CF6D0);
}

void sub_1B56CF6AC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56CF6B4(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  quasar::QuasarInfoMessage::~QuasarInfoMessage(va);
  JUMPOUT(0x1B56CF6C0);
}

uint64_t std::__function::__func<quasar::rescoring::PreItnTokenExtractor::operator()(std::string const&,std::vector<std::string> *)::$_0,std::allocator<quasar::rescoring::PreItnTokenExtractor::operator()(std::string const&,std::vector<std::string> *)::$_0>,void ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

std::__split_buffer<std::wstring>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string&>(uint64_t a1, __int128 *a2)
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

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

uint64_t quasar::QsrTextSymbolTable::AddSymbol(uint64_t a1)
{
  result = (*(**(a1 + 96) + 32))(*(a1 + 96));
  if ((result & 0x8000000000000000) == 0)
  {
    result += *(a1 + 120);
  }

  return result;
}

void quasar::QsrTextSymbolTable::Find(quasar::QsrTextSymbolTable *this@<X0>, void *a2@<X8>)
{
  v4 = (*(**(this + 12) + 88))(&v12);
  if (*(this + 28) == 2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = quasar::QsrText::SingletonInstance(v4);
    v6 = quasar::QsrText::hatToQsrToken(v5, &v12, a2);
    if (quasar::gLogLevel < 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    if ((v7 & 1) == 0)
    {
      memset(v11, 0, sizeof(v11));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Failed to convert HatText token to QsrText token:", 49);
      if (v13 >= 0)
      {
        v9 = &v12;
      }

      else
      {
        v9 = v12;
      }

      if (v13 >= 0)
      {
        v10 = HIBYTE(v13);
      }

      else
      {
        v10 = *(&v12 + 1);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(v11);
    }
  }

  else
  {
    *a2 = v12;
    a2[2] = v13;
    v13 = 0;
    v12 = 0uLL;
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12);
  }
}

void sub_1B56CFA08(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::QsrTextSymbolTable::Find(quasar::QsrTextSymbolTable *this, char *a2)
{
  if (*(this + 28) == 2)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    quasar::QsrText::SingletonInstance(this);
    std::string::basic_string[abi:ne200100]<0>(__p, a2);
    quasar::QsrText::qsrSubTokenToHatToken();
  }

  v4 = (*(**(this + 12) + 104))(*(this + 12), a2);
  v5 = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    return *(this + 15) + v4;
  }

  return v5;
}

void sub_1B56CFBE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 33) < 0)
  {
    operator delete(*(v14 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::QsrTextSymbolTable::GetNthKey(quasar::QsrTextSymbolTable *this)
{
  result = (*(**(this + 12) + 128))(*(this + 12));
  if ((result & 0x8000000000000000) == 0)
  {
    result += *(this + 15);
  }

  return result;
}

uint64_t quasar::QsrTextSymbolTable::Write(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (*(a1 + 120))
  {
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
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    *v11 = 0u;
    v12 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, "Calling Write() when offset is nonzero is unsupported");
    goto LABEL_17;
  }

  v5 = *(a1 + 112);
  if (v5 != a3)
  {
    if (a3 == 3 && v5 == 2)
    {
      fst::SymbolTable::SymbolTable(v10);
    }

    if (a3 == 2 && v5 == 3)
    {
      fst::SymbolTable::SymbolTable(v10);
    }

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
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    *v11 = 0u;
    v12 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, "Programming error: Invalid output encoding");
LABEL_17:
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v11);
  }

  v6 = *(a1 + 96);
  if (a4)
  {
    v7 = *(*v6 + 72);

    return v7(v6);
  }

  else
  {
    fst::SymbolTableTextOptions::SymbolTableTextOptions(v11);
    v9 = (*(*v6 + 80))(v6, a2, v11);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[1]);
    }

    return v9;
  }
}

void sub_1B56D0234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  fst::SymbolTable::~SymbolTable(&a16);
  _Unwind_Resume(a1);
}

double kaldi::nnet1::GlobalAttentionComponent::GlobalAttentionComponent(kaldi::nnet1::GlobalAttentionComponent *this, int a2, int a3)
{
  *(this + 220) = a2;
  *(this + 221) = a3;
  *(this + 444) = 0;
  *(this + 112) = 0;
  *(this + 904) = 0u;
  *(this + 115) = &unk_1F2D279F8;
  *(this + 58) = xmmword_1B5AE0070;
  *(this + 118) = 0x3BF800000;
  *(this + 238) = 1;
  *(this + 478) = 0;
  *(this + 958) = 0;
  *(this + 1) = -1;
  *this = &unk_1F2D28368;
  *(this + 109) = &unk_1F2D28570;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = &unk_1F2D0EE38;
  *(this + 88) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 12) = &unk_1F2D0EE38;
  *(this + 136) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 18) = &unk_1F2D0EE38;
  *(this + 184) = 0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 24) = &unk_1F2D0EE38;
  *(this + 232) = 0;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 30) = &unk_1F2D0EE38;
  *(this + 280) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 36) = &unk_1F2D0EE38;
  *(this + 328) = 0;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 42) = &unk_1F2D0EE38;
  *(this + 376) = 0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 48) = &unk_1F2D0EE38;
  *(this + 424) = 0;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 54) = &unk_1F2D0EE38;
  *(this + 472) = 0;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 60) = &unk_1F2D0EE38;
  *(this + 520) = 0;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 66) = &unk_1F2D0EE38;
  *(this + 568) = 0;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 72) = &unk_1F2D0EE38;
  *(this + 616) = 0;
  *(this + 81) = 0;
  *(this + 632) = 0u;
  *(this + 78) = &unk_1F2D3AC18;
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  *(this + 82) = &unk_1F2D0EE38;
  *(this + 696) = 0;
  *(this + 91) = 0;
  *(this + 712) = 0u;
  *(this + 88) = &unk_1F2D3AC18;
  *(this + 95) = 0;
  *(this + 744) = 0u;
  *(this + 92) = &unk_1F2D3AC18;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 96) = &unk_1F2D0EE38;
  *(this + 808) = 0;
  *(this + 52) = 0u;
  *(this + 53) = 0u;
  *(this + 51) = 0u;
  *(this + 216) = -1;
  *(this + 868) = 0;
  return result;
}

kaldi::nnet1::GlobalAttentionComponent *kaldi::nnet1::GlobalAttentionComponent::GlobalAttentionComponent(kaldi::nnet1::GlobalAttentionComponent *this, const kaldi::nnet1::GlobalAttentionComponent *a2)
{
  *(this + 110) = *(a2 + *(*a2 - 24) + 8);
  *(this + 444) = 0;
  *(this + 112) = 0;
  *(this + 904) = 0u;
  *(this + 115) = &unk_1F2D279F8;
  *(this + 58) = xmmword_1B5AE0070;
  *(this + 236) = -1082130432;
  *(this + 948) = 0x100000003;
  *(this + 478) = 0;
  *(this + 958) = 0;
  *(this + 1) = -1;
  *this = &unk_1F2D28368;
  *(this + 109) = &unk_1F2D28570;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  v23 = (this + 48);
  *(this + 6) = &unk_1F2D0EE38;
  *(this + 88) = 0;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  v22 = (this + 96);
  *(this + 12) = &unk_1F2D0EE38;
  *(this + 136) = 0;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  v21 = (this + 144);
  *(this + 18) = &unk_1F2D0EE38;
  *(this + 184) = 0;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  v20 = (this + 192);
  *(this + 24) = &unk_1F2D0EE38;
  *(this + 248) = 0u;
  *(this + 232) = 0;
  *(this + 264) = 0u;
  v19 = (this + 240);
  *(this + 30) = &unk_1F2D0EE38;
  *(this + 280) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  v18 = (this + 288);
  *(this + 36) = &unk_1F2D0EE38;
  *(this + 328) = 0;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  v17 = (this + 336);
  *(this + 42) = &unk_1F2D0EE38;
  *(this + 376) = 0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  v16 = (this + 384);
  *(this + 48) = &unk_1F2D0EE38;
  *(this + 424) = 0;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  v15 = (this + 432);
  *(this + 54) = &unk_1F2D0EE38;
  *(this + 472) = 0;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  v14 = (this + 480);
  *(this + 60) = &unk_1F2D0EE38;
  *(this + 520) = 0;
  v4 = (this + 528);
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 66) = &unk_1F2D0EE38;
  *(this + 568) = 0;
  v5 = (this + 576);
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 72) = &unk_1F2D0EE38;
  *(this + 616) = 0;
  v6 = this + 624;
  *(this + 632) = 0u;
  *(this + 78) = &unk_1F2D3AC18;
  v7 = (this + 656);
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  *(this + 81) = 0;
  *(this + 82) = &unk_1F2D0EE38;
  *(this + 696) = 0;
  v8 = this + 704;
  *(this + 712) = 0u;
  *(this + 88) = &unk_1F2D3AC18;
  v9 = this + 736;
  *(this + 95) = 0;
  *(this + 744) = 0u;
  *(this + 91) = 0;
  *(this + 92) = &unk_1F2D3AC18;
  v10 = (this + 768);
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 96) = &unk_1F2D0EE38;
  *(this + 808) = 0;
  v11 = (this + 816);
  v13 = (this + 840);
  *(this + 53) = 0u;
  *(this + 52) = 0u;
  *(this + 51) = 0u;
  *(this + 1) = *(a2 + 1);
  *(this + 2) = (*(**(a2 + 2) + 16))(*(a2 + 2));
  *(this + 3) = (*(**(a2 + 3) + 16))(*(a2 + 3));
  *(this + 4) = (*(**(a2 + 4) + 16))(*(a2 + 4));
  *(this + 5) = (*(**(a2 + 5) + 16))(*(a2 + 5));
  kaldi::CuMatrix<float>::operator=(v23, a2 + 6);
  kaldi::CuMatrix<float>::operator=(v22, a2 + 12);
  kaldi::CuMatrix<float>::operator=(v21, a2 + 18);
  kaldi::CuMatrix<float>::operator=(v20, a2 + 24);
  kaldi::CuMatrix<float>::operator=(v19, a2 + 30);
  kaldi::CuMatrix<float>::operator=(v18, a2 + 36);
  kaldi::CuMatrix<float>::operator=(v17, a2 + 42);
  kaldi::CuMatrix<float>::operator=(v16, a2 + 48);
  kaldi::CuMatrix<float>::operator=(v15, a2 + 54);
  kaldi::CuMatrix<float>::operator=(v14, a2 + 60);
  kaldi::CuMatrix<float>::operator=(v4, a2 + 66);
  kaldi::CuMatrix<float>::operator=(v5, a2 + 72);
  kaldi::CuVector<float>::operator=(v6, a2 + 624);
  kaldi::CuMatrix<float>::operator=(v7, a2 + 82);
  kaldi::CuVector<float>::operator=(v8, a2 + 704);
  kaldi::CuVector<float>::operator=(v9, a2 + 736);
  kaldi::CuMatrix<float>::operator=(v10, a2 + 96);
  if (this != a2)
  {
    std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(v11, *(a2 + 102), *(a2 + 103), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 103) - *(a2 + 102)) >> 3));
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v13, *(a2 + 105), *(a2 + 106), (*(a2 + 106) - *(a2 + 105)) >> 2);
  }

  *(this + 216) = *(a2 + 216);
  *(this + 868) = *(a2 + 868);
  return this;
}

void sub_1B56D0C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, kaldi::nnet1::UpdatableComponent *a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v32 = *a11;
  if (*a11)
  {
    *(v21 + 106) = v32;
    operator delete(v32);
  }

  *(v30 - 88) = v24;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100]((v30 - 88));
  kaldi::CuMatrix<float>::~CuMatrix(v23);
  kaldi::CuVector<float>::~CuVector(v22);
  kaldi::CuVector<float>::~CuVector(v29);
  kaldi::CuMatrix<float>::~CuMatrix(v28);
  kaldi::CuVector<float>::~CuVector(v27);
  kaldi::CuMatrix<float>::~CuMatrix(v26);
  kaldi::CuMatrix<float>::~CuMatrix(v25);
  kaldi::CuMatrix<float>::~CuMatrix(a12);
  kaldi::CuMatrix<float>::~CuMatrix(a13);
  kaldi::CuMatrix<float>::~CuMatrix(a14);
  kaldi::CuMatrix<float>::~CuMatrix(a15);
  kaldi::CuMatrix<float>::~CuMatrix(a16);
  kaldi::CuMatrix<float>::~CuMatrix(a17);
  kaldi::CuMatrix<float>::~CuMatrix(a18);
  kaldi::CuMatrix<float>::~CuMatrix(a19);
  kaldi::CuMatrix<float>::~CuMatrix(a20);
  kaldi::CuMatrix<float>::~CuMatrix(a21);
  quasar::Bitmap::~Bitmap(v21);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a10);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::GlobalAttentionComponent::~GlobalAttentionComponent(kaldi::nnet1::GlobalAttentionComponent *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 24)) = a2[3];
  v4 = *(this + 2);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 5);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 105);
  if (v8)
  {
    *(this + 106) = v8;
    operator delete(v8);
  }

  v9 = (this + 816);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v9);
  kaldi::CuMatrix<float>::~CuMatrix(this + 768);
  kaldi::CuVector<float>::~CuVector(this + 92);
  kaldi::CuVector<float>::~CuVector(this + 88);
  kaldi::CuMatrix<float>::~CuMatrix(this + 656);
  kaldi::CuVector<float>::~CuVector(this + 78);
  kaldi::CuMatrix<float>::~CuMatrix(this + 576);
  kaldi::CuMatrix<float>::~CuMatrix(this + 528);
  kaldi::CuMatrix<float>::~CuMatrix(this + 480);
  kaldi::CuMatrix<float>::~CuMatrix(this + 432);
  kaldi::CuMatrix<float>::~CuMatrix(this + 384);
  kaldi::CuMatrix<float>::~CuMatrix(this + 336);
  kaldi::CuMatrix<float>::~CuMatrix(this + 288);
  kaldi::CuMatrix<float>::~CuMatrix(this + 240);
  kaldi::CuMatrix<float>::~CuMatrix(this + 192);
  kaldi::CuMatrix<float>::~CuMatrix(this + 144);
  kaldi::CuMatrix<float>::~CuMatrix(this + 96);
  kaldi::CuMatrix<float>::~CuMatrix(this + 48);
  quasar::Bitmap::~Bitmap(this);
}

void kaldi::nnet1::GlobalAttentionComponent::~GlobalAttentionComponent(kaldi::nnet1::GlobalAttentionComponent *this)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 872));
}

{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 872));

  JUMPOUT(0x1B8C85350);
}

void virtual thunk tokaldi::nnet1::GlobalAttentionComponent::~GlobalAttentionComponent(kaldi::nnet1::GlobalAttentionComponent *this)
{
  v2 = (v1 + 872);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
}

{
  kaldi::nnet1::GlobalAttentionComponent::~GlobalAttentionComponent((this + *(*this - 24)));
}

void kaldi::nnet1::GlobalAttentionComponent::InitData(void *a1, uint64_t *a2)
{
  v33 = 0;
  v34 = 0uLL;
  v4 = a2 + 4;
  v5 = a1 + 12;
  v6 = a1 + 1;
  while (1)
  {
    if ((*(v4 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_42;
    }

    kaldi::ReadToken(a2, 0, &v33);
    if (SHIBYTE(v34) < 0)
    {
      if (v34 != 15)
      {
        if (v34 != 22)
        {
          goto LABEL_35;
        }

        v10 = *v33 == 0x53656372756F533CLL && v33[1] == 0x656D694465746174;
        v11 = v10 && *(v33 + 14) == 0x3E6E6F69736E656DLL;
        v9 = v6;
        if (!v11)
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      }

      v12 = v33;
    }

    else
    {
      if (HIBYTE(v34) != 15)
      {
        if (HIBYTE(v34) != 22)
        {
          goto LABEL_33;
        }

        v8 = v33 == 0x53656372756F533CLL && v34 == 0x656D694465746174 && *(&v34 + 6) == 0x3E6E6F69736E656DLL;
        v9 = v6;
        if (!v8)
        {
          goto LABEL_51;
        }

        goto LABEL_31;
      }

      v12 = &v33;
    }

    v13 = *v12;
    v14 = *(v12 + 7);
    v15 = v13 == 0x6574744178614D3CLL && v14 == 0x3E736E6F69746E65;
    v9 = v5;
    if (!v15)
    {
      if ((HIBYTE(v34) & 0x80) != 0)
      {
LABEL_35:
        if (v34 == 12)
        {
          v16 = v33;
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        if (HIBYTE(v34) == 12)
        {
          v16 = &v33;
LABEL_37:
          v17 = *v16;
          v18 = *(v16 + 2);
          if (v17 == 0x6E6F706D6F432F3CLL && v18 == 1047817829)
          {
LABEL_42:
            v20 = a1[2];
            if (v20)
            {
              (*(*v20 + 8))(v20);
            }

            v21 = a1[3];
            if (v21)
            {
              (*(*v21 + 8))(v21);
            }

            v22 = a1[4];
            if (v22)
            {
              (*(*v22 + 8))(v22);
            }

            v23 = a1[5];
            if (v23)
            {
              (*(*v23 + 8))(v23);
            }

            memset(__p, 0, sizeof(__p));
            v30 = 0;
            kaldi::ExpectToken(a2, 0, "<SourceDotTransform>");
            kaldi::ReadToken(a2, 0, __p);
            v24 = kaldi::nnet1::Component::MarkerToComponentType(__p);
            kaldi::ExpectToken(a2, 0, "<InputDim>");
            kaldi::ReadBasicType<int>(a2, 0, &v30 + 4);
            kaldi::ExpectToken(a2, 0, "<OutputDim>");
            kaldi::ReadBasicType<int>(a2, 0, &v30);
            kaldi::nnet1::Component::NewComponentOfType(v24);
          }
        }
      }

LABEL_51:
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v32);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Unknown token ", 14);
      if (v34 >= 0)
      {
        v26 = &v33;
      }

      else
      {
        v26 = v33;
      }

      if (v34 >= 0)
      {
        v27 = HIBYTE(v34);
      }

      else
      {
        v27 = v34;
      }

      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ", a typo in config?", 19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " (SourceStateDimension|MaxAttentions)", 37);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v32);
    }

LABEL_31:
    kaldi::ReadBasicType<int>(a2, 0, v9);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::Check(uint64_t this)
{
  if ((*(this + 868) & 1) == 0)
  {
    if (*(this + 12) < 1 || (v1 = *(this + 8), v1 <= 0))
    {
      v33 = this;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v41);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "component is not initialized, max attention is ", 47);
      v10 = MEMORY[0x1B8C84C00](v9, *(v33 + 12));
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", source state dimension is ", 28);
      MEMORY[0x1B8C84C00](v11, *(v33 + 8));
    }

    else
    {
      v2 = *(this + 16);
      if (v1 == *(v2 + 8))
      {
        v3 = *(this + 32);
        if (v1 == *(v3 + 8))
        {
          v4 = this + *(*this - 24);
          v5 = *(v4 + 8);
          v6 = *(this + 24);
          if (v5 == *(v6 + 8))
          {
            v7 = *(this + 40);
            if (v5 == *(v7 + 8))
            {
              if (*(v2 + 12) == *(v6 + 12))
              {
                v8 = *(v3 + 12);
                if (v8 == *(v7 + 12))
                {
                  if (*(v4 + 12) == v8)
                  {
                    *(this + 868) = 1;
                    return this;
                  }

                  v40 = this;
                  kaldi::KaldiWarnMessage::KaldiWarnMessage(v41);
                  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "the source/target add transform has output dim ", 47);
                  v31 = MEMORY[0x1B8C84C00](v30, *(v40[4] + 12));
                  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " , but the component has output dim ", 36);
                  MEMORY[0x1B8C84C00](v32, *(v40 + *(*v40 - 24) + 12));
                }

                else
                {
                  v39 = this;
                  kaldi::KaldiWarnMessage::KaldiWarnMessage(v41);
                  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "the source and target add transform has different output dim ", 61);
                  v28 = MEMORY[0x1B8C84C00](v27, *(*(v39 + 32) + 12));
                  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " vs ", 4);
                  MEMORY[0x1B8C84C00](v29, *(*(v39 + 40) + 12));
                }
              }

              else
              {
                v38 = this;
                kaldi::KaldiWarnMessage::KaldiWarnMessage(v41);
                v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "the source and target dot transform has different output dim ", 61);
                v25 = MEMORY[0x1B8C84C00](v24, *(*(v38 + 16) + 12));
                v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " vs ", 4);
                MEMORY[0x1B8C84C00](v26, *(*(v38 + 24) + 12));
              }
            }

            else
            {
              v37 = this;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(v41);
              v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "the component has input dim ", 28);
              v22 = MEMORY[0x1B8C84C00](v21, *(v37 + *(*v37 - 24) + 8));
              v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " , but the target add transform has input dim ", 46);
              MEMORY[0x1B8C84C00](v23, *(v37[5] + 8));
            }
          }

          else
          {
            v36 = this;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v41);
            v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "the component has input dim ", 28);
            v19 = MEMORY[0x1B8C84C00](v18, *(v36 + *(*v36 - 24) + 8));
            v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " , but the target dot transform has input dim ", 46);
            MEMORY[0x1B8C84C00](v20, *(v36[3] + 8));
          }
        }

        else
        {
          v35 = this;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v41);
          v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "source state dimension is ", 26);
          v16 = MEMORY[0x1B8C84C00](v15, *(v35 + 8));
          v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " , but the source add transform has input dim ", 46);
          MEMORY[0x1B8C84C00](v17, *(*(v35 + 32) + 8));
        }
      }

      else
      {
        v34 = this;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v41);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "source state dimension is ", 26);
        v13 = MEMORY[0x1B8C84C00](v12, *(v34 + 8));
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " , but the source dot transform has input dim ", 46);
        MEMORY[0x1B8C84C00](v14, *(*(v34 + 16) + 8));
      }
    }

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v41);
  }

  return this;
}

void kaldi::nnet1::GlobalAttentionComponent::ReadData(void *a1, uint64_t *a2, int a3)
{
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Reading attention model", 23);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v36);
  }

  __p = 0;
  v35 = 0uLL;
  while (1)
  {
    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_44;
    }

    kaldi::ReadToken(a2, a3, &__p);
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      break;
    }

    if (v35 == 15)
    {
      p_p = __p;
      goto LABEL_28;
    }

    if (v35 != 22)
    {
      goto LABEL_37;
    }

    v9 = *__p == 0x53656372756F533CLL && *(__p + 1) == 0x656D694465746174;
    v10 = v9 && *(__p + 14) == 0x3E6E6F69736E656DLL;
    v8 = (a1 + 1);
    if (!v10)
    {
      goto LABEL_37;
    }

LABEL_33:
    kaldi::ReadBasicType<int>(a2, a3, v8);
  }

  if (HIBYTE(v35) != 15)
  {
    if (HIBYTE(v35) != 22)
    {
      goto LABEL_35;
    }

    v7 = __p == 0x53656372756F533CLL && v35 == 0x656D694465746174 && *(&v35 + 6) == 0x3E6E6F69736E656DLL;
    v8 = (a1 + 1);
    if (!v7)
    {
      goto LABEL_63;
    }

    goto LABEL_33;
  }

  p_p = &__p;
LABEL_28:
  v12 = *p_p;
  v13 = *(p_p + 7);
  v14 = v12 == 0x6574744178614D3CLL && v13 == 0x3E736E6F69746E65;
  v8 = a1 + 12;
  if (v14)
  {
    goto LABEL_33;
  }

  if ((HIBYTE(v35) & 0x80) == 0)
  {
LABEL_35:
    if (HIBYTE(v35) == 12)
    {
      v15 = &__p;
      goto LABEL_39;
    }

    goto LABEL_63;
  }

LABEL_37:
  if (v35 != 12)
  {
    goto LABEL_63;
  }

  v15 = __p;
LABEL_39:
  v16 = *v15;
  v17 = v15[2];
  if (v16 != 0x6E6F706D6F432F3CLL || v17 != 1047817829)
  {
LABEL_63:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v36);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Unrecognized token ", 19);
    if (v35 >= 0)
    {
      v32 = &__p;
    }

    else
    {
      v32 = __p;
    }

    if (v35 >= 0)
    {
      v33 = HIBYTE(v35);
    }

    else
    {
      v33 = v35;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v32, v33);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v36);
  }

LABEL_44:
  v19 = a1[2];
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = a1[3];
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = a1[4];
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = a1[5];
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  kaldi::ExpectToken(a2, a3, "<SourceDotTransform>");
  v23 = kaldi::nnet1::Component::Read(a2, a3);
  if (!v23)
  {
    a1[2] = 0;
LABEL_71:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "read source dot transform failed", 32);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v36);
  }

  a1[2] = v24;
  if (!v24)
  {
    goto LABEL_71;
  }

  kaldi::ExpectToken(a2, a3, "</Component>");
  kaldi::ExpectToken(a2, a3, "<TargetDotTransform>");
  v25 = kaldi::nnet1::Component::Read(a2, a3);
  if (!v25)
  {
    a1[3] = 0;
LABEL_73:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "read target dot transform failed", 32);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v36);
  }

  a1[3] = v26;
  if (!v26)
  {
    goto LABEL_73;
  }

  kaldi::ExpectToken(a2, a3, "</Component>");
  kaldi::ExpectToken(a2, a3, "<SourceAddTransform>");
  v27 = kaldi::nnet1::Component::Read(a2, a3);
  if (!v27)
  {
    a1[4] = 0;
LABEL_75:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "read source add transform failed", 32);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v36);
  }

  a1[4] = v28;
  if (!v28)
  {
    goto LABEL_75;
  }

  kaldi::ExpectToken(a2, a3, "</Component>");
  kaldi::ExpectToken(a2, a3, "<TargetAddTransform>");
  v29 = kaldi::nnet1::Component::Read(a2, a3);
  if (!v29)
  {
    a1[5] = 0;
LABEL_77:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "read target dot transform failed", 32);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v36);
  }

  a1[5] = v30;
  if (!v30)
  {
    goto LABEL_77;
  }

  kaldi::ExpectToken(a2, a3, "</Component>");
  kaldi::nnet1::GlobalAttentionComponent::Check(a1);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }
}

void sub_1B56D23E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::GlobalAttentionComponent::WriteConfig(uint64_t a1, void *a2, int a3)
{
  kaldi::WriteToken(a2, a3, "<SourceStateDimension>");
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 8));
  kaldi::WriteToken(a2, a3, "<MaxAttentions>");
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 12));

  return kaldi::WriteToken(a2, a3, "</Component>");
}

void *kaldi::nnet1::GlobalAttentionComponent::WriteData(unsigned int **a1, void *a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 12))(a1);
  kaldi::WriteToken(a2, a3, "<SourceDotTransform>");
  kaldi::nnet1::Component::Write(a1[2], a2, a3, a4);
  kaldi::WriteToken(a2, a3, "</Component>");
  kaldi::WriteToken(a2, a3, "<TargetDotTransform>");
  kaldi::nnet1::Component::Write(a1[3], a2, a3, a4);
  kaldi::WriteToken(a2, a3, "</Component>");
  kaldi::WriteToken(a2, a3, "<SourceAddTransform>");
  kaldi::nnet1::Component::Write(a1[4], a2, a3, a4);
  kaldi::WriteToken(a2, a3, "</Component>");
  kaldi::WriteToken(a2, a3, "<TargetAddTransform>");
  kaldi::nnet1::Component::Write(a1[5], a2, a3, a4);

  return kaldi::WriteToken(a2, a3, "</Component>");
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::NumParams(kaldi::nnet1::GlobalAttentionComponent *this)
{
  v2 = (*(**(this + 2) + 176))(*(this + 2));
  v3 = (*(**(this + 3) + 176))(*(this + 3)) + v2;
  v4 = (*(**(this + 4) + 176))(*(this + 4));
  return v3 + v4 + (*(**(this + 5) + 176))(*(this + 5));
}

void kaldi::nnet1::GlobalAttentionComponent::GetParams(void **a1, void **a2)
{
  v4 = ((*a1)[14])(a1);
  kaldi::Vector<float>::Resize(a2, v4, 1);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  (*(*a1[2] + 184))(a1[2], &v11);
  v9 = 0;
  v10 = 0;
  v8 = *a2;
  LODWORD(v9) = v12;
  kaldi::VectorBase<float>::CopyFromVec(&v8, &v11);
  v5 = v12;
  (*(*a1[3] + 184))(a1[3], &v11);
  v9 = 0;
  v10 = 0;
  v8 = *a2 + 4 * v5;
  LODWORD(v9) = v12;
  kaldi::VectorBase<float>::CopyFromVec(&v8, &v11);
  v6 = v12;
  (*(*a1[4] + 184))(a1[4], &v11);
  LODWORD(v5) = v6 + v5;
  v9 = 0;
  v10 = 0;
  v8 = *a2 + 4 * v5;
  LODWORD(v9) = v12;
  kaldi::VectorBase<float>::CopyFromVec(&v8, &v11);
  v7 = v12;
  (*(*a1[5] + 184))(a1[5], &v11);
  v9 = 0;
  v10 = 0;
  v8 = *a2 + 4 * v7 + 4 * v5;
  LODWORD(v9) = v12;
  kaldi::VectorBase<float>::CopyFromVec(&v8, &v11);
  kaldi::Vector<float>::Destroy(&v11);
}

void sub_1B56D2904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::SetParams(void *a1, uint64_t *a2)
{
  v4 = a1[2];
  v5 = (*(*v4 + 176))(v4);
  v14 = 0;
  v15 = 0;
  v13 = *a2;
  LODWORD(v14) = v5;
  (*(*v4 + 192))(v4, &v13);
  LODWORD(v4) = (*(*a1[2] + 176))(a1[2]);
  v6 = a1[3];
  v7 = (*(*v6 + 176))(v6);
  v14 = 0;
  v15 = 0;
  v13 = *a2 + 4 * v4;
  LODWORD(v14) = v7;
  (*(*v6 + 192))(v6, &v13);
  LODWORD(v6) = (*(*a1[3] + 176))(a1[3]) + v4;
  v8 = a1[4];
  v9 = (*(*v8 + 176))(v8);
  v14 = 0;
  v15 = 0;
  v13 = *a2 + 4 * v6;
  LODWORD(v14) = v9;
  (*(*v8 + 192))(v8, &v13);
  LODWORD(v6) = (*(*a1[4] + 176))(a1[4]) + v6;
  v10 = a1[5];
  v11 = (*(*v10 + 176))(v10);
  v14 = 0;
  v15 = 0;
  v13 = *a2 + 4 * v6;
  LODWORD(v14) = v11;
  (*(*v10 + 192))(v10, &v13);
  return (*(*a1[5] + 176))(a1[5]);
}

float kaldi::nnet1::GlobalAttentionComponent::SumParams(kaldi::nnet1::GlobalAttentionComponent *this)
{
  v2 = (*(**(this + 2) + 208))(*(this + 2));
  v3 = v2 + (*(**(this + 3) + 208))(*(this + 3));
  v4 = v3 + (*(**(this + 4) + 208))(*(this + 4));
  return v4 + (*(**(this + 5) + 208))(*(this + 5));
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::PerturbParams(kaldi::nnet1::GlobalAttentionComponent *this, float a2)
{
  (*(**(this + 2) + 216))(*(this + 2));
  (*(**(this + 3) + 216))(*(this + 3), a2);
  (*(**(this + 4) + 216))(*(this + 4), a2);
  v4 = *(**(this + 5) + 216);
  v5.n128_f32[0] = a2;

  return v4(v5);
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::Info(kaldi::nnet1::GlobalAttentionComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v42);
  (*(*this + 96))(this, &v42, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "\n## Source Dot Transform: input-dim ", 36);
  v3 = MEMORY[0x1B8C84C00](v2, *(*(this + 2) + 8));
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ", output-dim ", 13);
  v5 = MEMORY[0x1B8C84C00](v4, *(*(this + 2) + 12));
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\n", 1);
  (*(**(this + 2) + 64))(v40);
  if ((v41 & 0x80u) == 0)
  {
    v7 = v40;
  }

  else
  {
    v7 = v40[0];
  }

  if ((v41 & 0x80u) == 0)
  {
    v8 = v41;
  }

  else
  {
    v8 = v40[1];
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\n## Target Dot Transform: input-dim ", 36);
  v11 = MEMORY[0x1B8C84C00](v10, *(*(this + 3) + 8));
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", output-dim ", 13);
  v13 = MEMORY[0x1B8C84C00](v12, *(*(this + 3) + 12));
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\n", 1);
  (*(**(this + 3) + 64))(v38);
  if ((v39 & 0x80u) == 0)
  {
    v15 = v38;
  }

  else
  {
    v15 = v38[0];
  }

  if ((v39 & 0x80u) == 0)
  {
    v16 = v39;
  }

  else
  {
    v16 = v38[1];
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n## Source Add Transform: input-dim ", 36);
  v19 = MEMORY[0x1B8C84C00](v18, *(*(this + 4) + 8));
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", output-dim ", 13);
  v21 = MEMORY[0x1B8C84C00](v20, *(*(this + 4) + 12));
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "\n", 1);
  (*(**(this + 4) + 64))(v36);
  if ((v37 & 0x80u) == 0)
  {
    v23 = v36;
  }

  else
  {
    v23 = v36[0];
  }

  if ((v37 & 0x80u) == 0)
  {
    v24 = v37;
  }

  else
  {
    v24 = v36[1];
  }

  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "\n## Target Add Transform: input-dim ", 36);
  v27 = MEMORY[0x1B8C84C00](v26, *(*(this + 5) + 8));
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ", output-dim ", 13);
  v29 = MEMORY[0x1B8C84C00](v28, *(*(this + 5) + 12));
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "\n", 1);
  (*(**(this + 5) + 64))(__p);
  if ((v35 & 0x80u) == 0)
  {
    v31 = __p;
  }

  else
  {
    v31 = __p[0];
  }

  if ((v35 & 0x80u) == 0)
  {
    v32 = v35;
  }

  else
  {
    v32 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, v32);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  std::stringbuf::str();
  v42 = *MEMORY[0x1E69E54E8];
  *(&v42 + *(v42 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v43 = MEMORY[0x1E69E5548] + 16;
  if (v45 < 0)
  {
    operator delete(v44[7].__locale_);
  }

  v43 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v44);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v46);
}

void sub_1B56D3214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  std::ostringstream::~ostringstream(&a34, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](&a48);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::GlobalAttentionComponent::InfoGradient(kaldi::nnet1::GlobalAttentionComponent *this@<X0>, std::string *a2@<X8>)
{
  (*(**(this + 2) + 72))(&v27);
  (*(**(this + 3) + 72))(v25);
  if ((v26 & 0x80u) == 0)
  {
    v4 = v25;
  }

  else
  {
    v4 = v25[0];
  }

  if ((v26 & 0x80u) == 0)
  {
    v5 = v26;
  }

  else
  {
    v5 = v25[1];
  }

  v6 = std::string::append(&v27, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  (*(**(this + 4) + 72))(v23);
  if ((v24 & 0x80u) == 0)
  {
    v8 = v23;
  }

  else
  {
    v8 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v9 = v24;
  }

  else
  {
    v9 = v23[1];
  }

  v10 = std::string::append(&v28, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  (*(**(this + 5) + 72))(v21);
  if ((v22 & 0x80u) == 0)
  {
    v12 = v21;
  }

  else
  {
    v12 = v21[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v13 = v22;
  }

  else
  {
    v13 = v21[1];
  }

  v14 = std::string::append(&v29, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "\n");
  if ((v20 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v17 = v20;
  }

  else
  {
    v17 = __p[1];
  }

  v18 = std::string::append(&v30, v16, v17);
  *a2 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void sub_1B56D3530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v45 - 41) < 0)
  {
    operator delete(*(v45 - 64));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v45 - 73) < 0)
  {
    operator delete(*(v45 - 96));
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::SetTrainOptions(kaldi::nnet1::GlobalAttentionComponent *this, const kaldi::nnet1::NnetTrainOptions *a2)
{
  v3 = this + *(*this - 24);
  v4 = *(a2 + 8);
  *(v3 + 71) = *(a2 + 23);
  *(v3 + 56) = v4;
  (*(**(this + 2) + 264))();
  (*(**(this + 3) + 264))();
  (*(**(this + 4) + 264))();
  v5 = *(**(this + 5) + 264);

  return v5();
}

void kaldi::nnet1::GlobalAttentionComponent::SetSourceStates(uint64_t a1, int32x2_t *a2, char **a3)
{
  kaldi::nnet1::GlobalAttentionComponent::Check(a1);
  v7 = *a3;
  v6 = a3[1];
  kaldi::CuMatrix<float>::operator=((a1 + 384), a2);
  if ((a1 + 840) != a3)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 840), *a3, a3[1], (a3[1] - *a3) >> 2);
  }

  v8 = a3[1];
  v9 = *a3 + 4;
  v10 = **a3;
  *(a1 + 864) = v10;
  while (v9 != v8)
  {
    v11 = *v9;
    if (*v9 > v10)
    {
      *(a1 + 864) = v11;
      v10 = v11;
    }

    v9 += 4;
  }

  kaldi::nnet1::Component::Propagate(*(a1 + 16), a1 + 384, (a1 + 48), 0);
  kaldi::nnet1::Component::Propagate(*(a1 + 32), a1 + 384, (a1 + 144), 0);
  __p = 0;
  v13 = 0;
  v14 = 0;
  std::vector<std::vector<int>>::assign((a1 + 816), ((v6 - v7) >> 2), &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_1B56D3878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<int>>::assign(uint64_t *a1, unint64_t a2, char **a3)
{
  v6 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a2)
  {
    std::vector<std::vector<int>>::__vdeallocate(a1);
    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v7 <= a2)
      {
        v7 = a2;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<std::vector<int>>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v9 = (a1[1] - v6) >> 3;
  v10 = 0xAAAAAAAAAAAAAAABLL * v9;
  if (0xAAAAAAAAAAAAAAABLL * v9 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * v9;
  }

  for (; v11; --v11)
  {
    if (v6 != a3)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v6, *a3, a3[1], (a3[1] - *a3) >> 2);
    }

    v6 += 3;
  }

  if (a2 <= v10)
  {
    v15 = a1[1];
    v16 = *a1 + 24 * a2;
    if (v15 != v16)
    {
      v17 = a1[1];
      do
      {
        v19 = *(v17 - 24);
        v17 -= 24;
        v18 = v19;
        if (v19)
        {
          *(v15 - 16) = v18;
          operator delete(v18);
        }

        v15 = v17;
      }

      while (v17 != v16);
    }

    a1[1] = v16;
  }

  else
  {
    v12 = a1[1];
    v13 = &v12[3 * (a2 - v10)];
    v14 = 24 * a2 - 24 * v10;
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v12, *a3, a3[1], (a3[1] - *a3) >> 2);
      v12 += 3;
      v14 -= 24;
    }

    while (v14);
    a1[1] = v13;
  }
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::GetSourceDiffs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  kaldi::nnet1::GlobalAttentionComponent::Check(a1);

  return kaldi::CuMatrix<float>::Swap(a1 + 432, a4);
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::GetCurrentAlignment(uint64_t a1, std::vector<unsigned int> *this)
{
  v4 = -1431655765 * ((*(a1 + 824) - *(a1 + 816)) >> 3);
  std::vector<int>::resize(this, v4);
  if (v4 >= 1)
  {
    begin = this->__begin_;
    v6 = v4 & 0x7FFFFFFF;
    v7 = (*(a1 + 816) + 8);
    do
    {
      v8 = *v7;
      v7 += 3;
      *begin++ = *(v8 - 4);
      --v6;
    }

    while (v6);
  }

  return 1;
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::GetOverallAlignment(uint64_t a1, uint64_t *a2)
{
  if ((a1 + 816) != a2)
  {
    std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(a2, *(a1 + 816), *(a1 + 824), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 824) - *(a1 + 816)) >> 3));
  }

  return 1;
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::SetSourceVectorDimension(uint64_t this, int a2)
{
  if (*(this + 8) != a2)
  {
    *(this + 8) = a2;
    *(this + 868) = 0;
  }

  return this;
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::SetMaxAttentions(uint64_t this, int a2)
{
  if (*(this + 12) != a2)
  {
    *(this + 12) = a2;
    *(this + 868) = 0;
  }

  return this;
}

void kaldi::nnet1::GlobalAttentionComponent::PropagateFnc(int32x2_t *a1, uint64_t a2, uint64_t a3)
{
  kaldi::nnet1::GlobalAttentionComponent::Check(a1);
  v5 = a1[106];
  v6 = a1[105];
  v7 = *(a2 + 20);
  v8 = a1[50].i32[1];
  kaldi::nnet1::Component::Propagate(*&a1[3], a2, a1 + 12, 0);
  kaldi::nnet1::Component::Propagate(*&a1[5], a2, a1 + 24, 0);
  kaldi::CuVector<float>::Resize(&a1[78], a1[50].u32[1], 0);
  v9 = a1[50].u32[1];
  memset(v86, 0, 24);
  kaldi::Vector<float>::Resize(v86, v9, 1);
  kaldi::Matrix<float>::Matrix(v84);
  v10 = *&v5 - *&v6;
  v11 = v10 >> 2;
  v71 = v8 / (v10 >> 2);
  kaldi::CuMatrix<float>::Resize(a1 + 60, v7, v71, 1, 0);
  v69 = v7 / (v10 >> 2);
  if (v69 >= 1)
  {
    v72 = 0;
    v12 = (v10 >> 2);
    do
    {
      kaldi::CuMatrix<float>::operator=(a1 + 72, a1 + 6);
      v13 = v72 * v11;
      if (a1[108].i32[0] >= 1)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = a1[75].i32[0];
          v17 = *&a1[73] + 4 * v16 * v14;
          v18 = a1[75].i32[1] - v16 * v14;
          v19 = a1[76];
          DWORD2(v82) = a1[74].i32[0];
          HIDWORD(v82) = v11;
          *&v83 = __PAIR64__(v18, v16);
          *(&v83 + 1) = v19;
          v81 = &unk_1F2CFA908;
          *&v82 = v17;
          v20 = a1[15].i32[0];
          v21 = *&a1[13] + 4 * v20 * v13;
          v22 = a1[15].i32[1] - v20 * v13;
          v23 = a1[16];
          DWORD2(v79) = a1[14].i32[0];
          HIDWORD(v79) = v11;
          *&v80 = __PAIR64__(v22, v20);
          *(&v80 + 1) = v23;
          v78 = &unk_1F2CFA908;
          *&v79 = v21;
          kaldi::CuMatrixBase<float>::MulElements(&v81, &v78);
          v78 = &unk_1F2CFA908;
          v79 = 0u;
          v80 = 0u;
          quasar::Bitmap::~Bitmap(&v78);
          v81 = &unk_1F2CFA908;
          v82 = 0u;
          v83 = 0u;
          quasar::Bitmap::~Bitmap(&v81);
          ++v15;
          v14 += v11;
        }

        while (v15 < a1[108].i32[0]);
      }

      kaldi::CuVectorBase<float>::AddColSumMat(&a1[78], &a1[72]);
      kaldi::CuVectorBase<float>::CopyToVec<float>(&a1[78], v86);
      kaldi::Matrix<float>::Resize(v84, v11, v71, 0, 0);
      if (v11 >= 1)
      {
        v24 = 0;
        do
        {
          v25 = *(*&a1[105] + 4 * v24);
          if (v25 < 1)
          {
            v27 = -1;
            v28 = -INFINITY;
          }

          else
          {
            v26 = 0;
            v27 = -1;
            v28 = -INFINITY;
            v29 = v24;
            do
            {
              if (*(v86[0] + v29) > v28)
              {
                v27 = v26;
                v28 = *(v86[0] + v29);
              }

              ++v26;
              v29 += v12;
            }

            while (v25 != v26);
          }

          v30 = *&a1[102] + 24 * v24;
          v32 = *(v30 + 8);
          v31 = *(v30 + 16);
          if (v32 >= v31)
          {
            v34 = *v30;
            v35 = v32 - *v30;
            v36 = v35 >> 2;
            v37 = (v35 >> 2) + 1;
            if (v37 >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v38 = v31 - v34;
            if (v38 >> 1 > v37)
            {
              v37 = v38 >> 1;
            }

            v39 = v38 >= 0x7FFFFFFFFFFFFFFCLL;
            v40 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v39)
            {
              v40 = v37;
            }

            if (v40)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(*&a1[102] + 24 * v24, v40);
            }

            *(4 * v36) = v27;
            v33 = 4 * v36 + 4;
            memcpy(0, v34, v35);
            v41 = *v30;
            *v30 = 0;
            *(v30 + 8) = v33;
            *(v30 + 16) = 0;
            if (v41)
            {
              operator delete(v41);
            }

            v13 = v72 * v11;
          }

          else
          {
            *v32 = v27;
            v33 = (v32 + 1);
          }

          *(v30 + 8) = v33;
          if (v25 >= 1)
          {
            v42 = 0.0;
            v43 = v86[0];
            v44 = v25;
            v45 = v24;
            do
            {
              v46 = expf(v43[v45] - v28);
              v43[v45] = v46;
              v42 = v42 + v46;
              v45 += v12;
              --v44;
            }

            while (v44);
            v47 = 0;
            v48 = v86[0];
            v49 = *v84 + 4 * v85 * v24;
            v50 = v24;
            do
            {
              *(v49 + 4 * v47++) = (1.0 / v42) * v48[v50];
              v50 += v12;
            }

            while (v25 != v47);
          }

          ++v24;
        }

        while (v24 != v12);
      }

      v51 = a1[63].i32[0];
      v52 = *&a1[61] + 4 * v51 * v13;
      v53 = a1[63].i32[1] - v51 * v13;
      v54 = a1[64];
      DWORD2(v82) = a1[62].i32[0];
      HIDWORD(v82) = v11;
      *&v83 = __PAIR64__(v53, v51);
      *(&v83 + 1) = v54;
      v81 = &unk_1F2CFA908;
      *&v82 = v52;
      kaldi::CuMatrixBase<float>::CopyFromMat(&v81, v84, 111);
      v55 = *(a3 + 24);
      v56 = *(a3 + 8) + 4 * (v55 * v13);
      v57 = *(a3 + 28) - v55 * v13;
      v58 = *(a3 + 32);
      DWORD2(v79) = *(a3 + 16);
      HIDWORD(v79) = v11;
      *&v80 = __PAIR64__(v57, v55);
      *(&v80 + 1) = v58;
      v78 = &unk_1F2CFA908;
      *&v79 = v56;
      v59 = a1[27].i32[0];
      v60 = *&a1[25] + 4 * v59 * v13;
      v61 = a1[27].i32[1] - v59 * v13;
      v62 = a1[28];
      DWORD2(v76) = a1[26].i32[0];
      HIDWORD(v76) = v11;
      *&v77 = __PAIR64__(v61, v59);
      *(&v77 + 1) = v62;
      v75 = &unk_1F2CFA908;
      *&v76 = v60;
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v78, &v75, 111);
      v75 = &unk_1F2CFA908;
      v76 = 0u;
      v77 = 0u;
      quasar::Bitmap::~Bitmap(&v75);
      if (v11 >= 1)
      {
        v63 = 0;
        do
        {
          v64 = *(*&a1[105] + 4 * v63);
          v74[0] = &unk_1F2CFCA48;
          v74[1] = v79 + 4 * v80 * v63;
          v74[3] = *(&v80 + 1);
          v74[2] = DWORD2(v79);
          v65 = a1[21].i32[0];
          v66 = *&a1[19] + 4 * v65 * v63;
          v67 = a1[21].i32[1] - v65 * v63;
          v68 = a1[22];
          DWORD2(v76) = a1[20].i32[0];
          HIDWORD(v76) = v64 * v11;
          *&v77 = __PAIR64__(v67, v65);
          *(&v77 + 1) = v68;
          v75 = &unk_1F2CFA908;
          *&v76 = v66;
          if (v11 >= 2)
          {
            kaldi::CuMatrixBase<float>::SetStride(&v75, v65 * v11);
          }

          v73[1] = v82 + 4 * v83 * v63;
          v73[0] = &unk_1F2CFCA48;
          v73[2] = v64;
          v73[3] = *(&v83 + 1);
          kaldi::CuVectorBase<float>::AddMatVec(v74, &v75, 112, v73);
          v75 = &unk_1F2CFA908;
          v76 = 0u;
          v77 = 0u;
          quasar::Bitmap::~Bitmap(&v75);
          ++v63;
        }

        while (v12 != v63);
      }

      v78 = &unk_1F2CFA908;
      v79 = 0u;
      v80 = 0u;
      quasar::Bitmap::~Bitmap(&v78);
      v81 = &unk_1F2CFA908;
      v82 = 0u;
      v83 = 0u;
      quasar::Bitmap::~Bitmap(&v81);
      ++v72;
    }

    while (v72 != v69);
  }

  kaldi::Matrix<float>::~Matrix(v84);
  kaldi::Vector<float>::Destroy(v86);
}

void sub_1B56D429C(_Unwind_Exception *a1)
{
  kaldi::Matrix<float>::~Matrix(v1 - 184);
  kaldi::Vector<float>::Destroy(v1 - 144);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::BackpropagateFnc(int32x2_t *a1, uint64_t a2, uint64_t a3, int32x2_t *a4, uint64_t a5)
{
  kaldi::nnet1::GlobalAttentionComponent::Check(a1);
  v8 = *&a1[106] - *&a1[105];
  v9 = v8 >> 2;
  v10 = (*(a2 + 20) / (v8 >> 2));
  kaldi::CuMatrix<float>::Resize(a1 + 30, a1[50].u32[1], *(*&a1[2] + 12), 0, 0);
  kaldi::CuMatrix<float>::Resize(a1 + 36, *(a2 + 20), *(*&a1[3] + 12), 0, 0);
  kaldi::CuMatrix<float>::Resize(a1 + 42, a1[50].u32[1], *(*&a1[4] + 12), 0, 0);
  v41 = v10;
  if (v10 >= 1)
  {
    v11 = 0;
    v43 = 0;
    v44 = (v8 >> 2);
    do
    {
      v42 = v11;
      if (v9 >= 1)
      {
        v12 = 0;
        v13 = v43;
        do
        {
          v14 = *(*&a1[105] + 4 * v12);
          kaldi::CuVector<float>::Resize(&a1[88], v14, 1);
          v15 = a1[21].i32[0];
          v16 = *&a1[19] + 4 * v15 * v12;
          v17 = a1[21].i32[1] - v15 * v12;
          v18 = a1[22];
          DWORD2(v50) = a1[20].i32[0];
          HIDWORD(v50) = v14 * v9;
          *&v51 = __PAIR64__(v17, v15);
          *(&v51 + 1) = v18;
          v49 = &unk_1F2CFA908;
          *&v50 = v16;
          if (v9 >= 2)
          {
            kaldi::CuMatrixBase<float>::SetStride(&v49, v15 * v9);
          }

          v19 = a4[2].u32[0];
          v20 = a4[4];
          v46 = *&a4[1] + 4 * a4[3].i32[0] * v13;
          v45 = &unk_1F2CFCA48;
          v47 = v19;
          v48 = v20;
          kaldi::CuVectorBase<float>::AddMatVec(&a1[88], &v49, 111, &v45);
          v49 = &unk_1F2CFA908;
          v50 = 0u;
          v51 = 0u;
          quasar::Bitmap::~Bitmap(&v49);
          v21 = a1[64];
          v46 = *&a1[61] + 4 * a1[63].i32[0] * v13;
          v45 = &unk_1F2CFCA48;
          v47 = v14;
          v48 = v21;
          kaldi::CuMatrix<float>::Resize(a1 + 82, v14, v14, 0, 0);
          kaldi::CuMatrixBase<float>::AddToDiag(&a1[82], &v45, 1.0, 0.0);
          LODWORD(v22) = -1.0;
          kaldi::CuMatrixBase<float>::AddVecVec(&a1[82], v22, 1.0);
          kaldi::CuVector<float>::Resize(&a1[92], v14, 1);
          kaldi::CuVectorBase<float>::AddMatVec(&a1[92], &a1[82], 111, &a1[88]);
          v24 = a1[33].i32[0];
          v25 = *&a1[31] + 4 * v24 * v12;
          v26 = a1[33].i32[1] - v24 * v12;
          v27 = a1[34];
          DWORD2(v50) = a1[32].i32[0];
          HIDWORD(v50) = v14 * v9;
          *&v51 = __PAIR64__(v26, v24);
          *(&v51 + 1) = v27;
          v49 = &unk_1F2CFA908;
          *&v50 = v25;
          if (v9 >= 2)
          {
            kaldi::CuMatrixBase<float>::SetStride(&v49, v24 * v9);
          }

          LODWORD(v23) = 1.0;
          kaldi::CuMatrixBase<float>::AddVecVec(&v49, v23, 1.0);
          v49 = &unk_1F2CFA908;
          v50 = 0u;
          v51 = 0u;
          quasar::Bitmap::~Bitmap(&v49);
          v29 = a1[45].i32[0];
          v30 = *&a1[43] + 4 * v29 * v12;
          v31 = a1[45].i32[1] - v29 * v12;
          v32 = a1[46];
          DWORD2(v50) = a1[44].i32[0];
          HIDWORD(v50) = v14 * v9;
          *&v51 = __PAIR64__(v31, v29);
          *(&v51 + 1) = v32;
          v49 = &unk_1F2CFA908;
          *&v50 = v30;
          if (v9 >= 2)
          {
            kaldi::CuMatrixBase<float>::SetStride(&v49, v29 * v9);
          }

          LODWORD(v28) = 1.0;
          kaldi::CuMatrixBase<float>::AddVecVec(&v49, v28, 1.0);
          v49 = &unk_1F2CFA908;
          v50 = 0u;
          v51 = 0u;
          quasar::Bitmap::~Bitmap(&v49);
          kaldi::CuMatrix<float>::Resize(a1 + 96, v14, *(*&a1[3] + 12), 0, 0);
          v33 = a1[9].i32[0];
          v34 = *&a1[7] + 4 * v33 * v12;
          v35 = a1[9].i32[1] - v33 * v12;
          v36 = a1[10];
          DWORD2(v50) = a1[8].i32[0];
          HIDWORD(v50) = v14 * v9;
          *&v51 = __PAIR64__(v35, v33);
          *(&v51 + 1) = v36;
          v49 = &unk_1F2CFA908;
          *&v50 = v34;
          if (v9 >= 2)
          {
            kaldi::CuMatrixBase<float>::SetStride(&v49, v33 * v9);
          }

          kaldi::CuMatrixBase<float>::AddMatMat(&a1[96], &a1[82], 111, &v49, 111);
          v49 = &unk_1F2CFA908;
          v50 = 0u;
          v51 = 0u;
          quasar::Bitmap::~Bitmap(&v49);
          v37 = a1[38].u32[0];
          v38 = a1[40];
          *&v50 = *&a1[37] + 4 * a1[39].i32[0] * v13;
          v49 = &unk_1F2CFCA48;
          *(&v50 + 1) = v37;
          *&v51 = v38;
          kaldi::CuVectorBase<float>::AddMatVec(&v49, &a1[96], 112, &a1[88]);
          ++v12;
          ++v13;
        }

        while (v44 != v12);
      }

      v11 = v42 + 1;
      v43 += v44;
    }

    while (v42 + 1 != v41);
  }

  kaldi::CuMatrix<float>::Resize(a1 + 66, *(a2 + 20), *(*&a1[5] + 8), 0, 0);
  (*(**&a1[5] + 128))(*&a1[5], a2, a1 + 24, a4, a1 + 66, 0);
  (*(**&a1[3] + 128))(*&a1[3], a2, a1 + 12, a1 + 36, a5, 0);
  kaldi::CuMatrixBase<float>::AddMat(a5, &a1[66], 111, 1.0, 1.0);
  kaldi::CuMatrix<float>::Resize(a1 + 66, a1[50].u32[1], *(*&a1[4] + 8), 0, 0);
  kaldi::CuMatrix<float>::Resize(a1 + 54, a1[50].u32[1], *(*&a1[4] + 8), 0, 0);
  (*(**&a1[4] + 128))(*&a1[4], a1 + 48, a1 + 18, a1 + 42, a1 + 66, 0);
  (*(**&a1[2] + 128))(*&a1[2], a1 + 48, a1 + 6, a1 + 30, a1 + 54, 0);
  return kaldi::CuMatrixBase<float>::AddMat(&a1[54], &a1[66], 111, 1.0, 1.0);
}

void sub_1B56D4A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::SetGradientNormalization(void **a1, uint64_t a2, float a3)
{
  (*(*a1[2] + 240))(a1[2]);
  (*(*a1[3] + 240))(a1[3], a2, a3);
  (*(*a1[4] + 240))(a1[4], a2, a3);
  v6 = *(*a1[5] + 240);
  v7.n128_f32[0] = a3;

  return v6(v7);
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::AccumGradients(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  kaldi::nnet1::GlobalAttentionComponent::Check(a1);
  (*(*a1[2] + 232))(a1[2], a1 + 48, a1 + 30, a4, a5);
  (*(*a1[3] + 232))(a1[3], a2, a1 + 36, a4, a5);
  (*(*a1[4] + 232))(a1[4], a1 + 48, a1 + 42, a4, a5);
  v9 = *(*a1[5] + 232);

  return v9();
}

uint64_t kaldi::nnet1::GlobalAttentionComponent::UpdateWeights(kaldi::nnet1::GlobalAttentionComponent *this, void *a2, uint64_t a3)
{
  kaldi::nnet1::GlobalAttentionComponent::Check(this);
  (*(**(this + 2) + 256))(*(this + 2), a2, a3);
  (*(**(this + 3) + 256))();
  (*(**(this + 4) + 256))();
  v6 = *(**(this + 5) + 256);

  return v6();
}

void kaldi::nnet1::GlobalAttentionComponent::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v8 = (*(*a1 + 112))(a1);
  kaldi::Vector<float>::Resize(a4, v8, 1);
  v9 = (*(*a1 + 64))(a1);
  if (v9)
  {
  }

  else
  {
    v10 = 0;
  }

  kaldi::CuMatrix<float>::CuMatrix(v21, *(a2 + 20), *(a3 + 16), 0, 0, 0);
  v18 = 0u;
  v19 = 0u;
  v17 = &unk_1F2D0EE38;
  v20 = 0;
  kaldi::nnet1::Component::Backpropagate((v10 + *(*v10 - 3)), a2, v21, a3, &v17, 0);
  (*(*v10[2] + 224))(v10[2], a1 + 384, v10 + 30, &v22);
  v15 = 0;
  v16 = 0;
  v14 = *a4;
  LODWORD(v15) = v23;
  kaldi::VectorBase<float>::CopyFromVec(&v14, &v22);
  v11 = v23;
  (*(*v10[3] + 224))(v10[3], a2, v10 + 36, &v22);
  v15 = 0;
  v16 = 0;
  v14 = *a4 + 4 * v11;
  LODWORD(v15) = v23;
  kaldi::VectorBase<float>::CopyFromVec(&v14, &v22);
  v12 = v23;
  (*(*v10[4] + 224))(v10[4], a1 + 384, v10 + 42, &v22);
  v13 = v12 + v11;
  v15 = 0;
  v16 = 0;
  v14 = *a4 + 4 * v12 + 4 * v11;
  LODWORD(v15) = v23;
  kaldi::VectorBase<float>::CopyFromVec(&v14, &v22);
  LODWORD(v11) = v23;
  (*(*v10[5] + 224))(v10[5], a2, a3, &v22);
  v15 = 0;
  v16 = 0;
  v14 = *a4 + 4 * v11 + 4 * v13;
  LODWORD(v15) = v23;
  kaldi::VectorBase<float>::CopyFromVec(&v14, &v22);
  ((*v10)[1])(v10);
  kaldi::CuMatrix<float>::~CuMatrix(&v17);
  kaldi::CuMatrix<float>::~CuMatrix(v21);
  kaldi::Vector<float>::Destroy(&v22);
}

void sub_1B56D51DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  kaldi::CuMatrix<float>::~CuMatrix(va1);
  kaldi::Vector<float>::Destroy(v4 - 88);
  _Unwind_Resume(a1);
}

uint64_t EARCSpeechRecognizerCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [_EARSpeechRecognizer alloc];
  if (a2 && a3 && a4)
  {

    return [(_EARSpeechRecognizer *)v8 initWithConfiguration:a1 withGeneralVoc:a2 withLexiconEnh:a3 withItnEnh:a4];
  }

  else
  {

    return [(_EARSpeechRecognizer *)v8 initWithConfiguration:a1];
  }
}

uint64_t EARCSpeechRecognizerCreateRecognitionBuffer(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v9 = [[EARCSpeechRecognitionResultStreamGlue alloc] initWithStream:a5];
  v10 = [a1 runRecognitionWithResultStream:v9 language:a2 task:a3 samplingRate:a4];

  return v10;
}

uint64_t EARCWordPartCreate(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = [_EARWordPart alloc];

  return [(_EARWordPart *)v8 initWithOrthography:a1 pronunciations:a2 tagName:a3 frequency:a4];
}

uint64_t EARCCommandTaggerCreate(uint64_t a1, uint64_t a2)
{
  v4 = [_EARCommandTagger alloc];

  return [(_EARCommandTagger *)v4 initWithConfiguration:a1 usage:a2];
}

void ReverseArray(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v7 = v1;
    v3 = [v1 count];
    v2 = v7;
    if (v3 >= 2)
    {
      v4 = 0;
      v5 = v3 >> 1;
      v6 = v3 - 1;
      do
      {
        [v2 exchangeObjectAtIndex:v4 withObjectAtIndex:v6];
        v2 = v7;
        ++v4;
        --v6;
      }

      while (v5 != v4);
    }
  }
}

kaldi::nnet1::RecurrentAttentionBaseComponent *kaldi::nnet1::RecurrentAttentionBaseComponent::RecurrentAttentionBaseComponent(kaldi::nnet1::RecurrentAttentionBaseComponent *this, uint64_t *a2)
{
  v4 = a2[1];
  *this = v4;
  *(this + *(v4 - 24)) = a2[2];
  *(this + 1) = -1;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent((this + 16), a2 + 3);
  v5 = *a2;
  *this = *a2;
  *(this + *(v5 - 24)) = a2[5];
  *(this + 2) = a2[6];
  return this;
}

void kaldi::nnet1::GlobalRecurrentAttention::GlobalRecurrentAttention(kaldi::nnet1::GlobalRecurrentAttention *this, int a2, int a3)
{
  *(this + 170) = a2;
  *(this + 171) = a3;
  *(this + 344) = 0;
  *(this + 87) = 0;
  *(this + 89) = 0;
  *(this + 88) = 0;
  *(this + 84) = &unk_1F2D172B0;
  *(this + 90) = &unk_1F2D279F8;
  *(this + 728) = xmmword_1B5AE0070;
  *(this + 93) = 0x3BF800000;
  *(this + 188) = 1;
  *(this + 378) = 0;
  *(this + 758) = 0;
  kaldi::nnet1::RecurrentAttentionBaseComponent::RecurrentAttentionBaseComponent(this, off_1F2D28D78);
  *this = &unk_1F2D28968;
  *(this + 84) = &unk_1F2D28C58;
  *(this + 2) = &unk_1F2D28AB0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  operator new();
}

void sub_1B56D6E3C(_Unwind_Exception *a1)
{
  v4 = v3;
  MEMORY[0x1B8C85350](v4, 0x10B0C4082B712C9);
  kaldi::nnet1::RecurrentAttentionBaseComponent::~RecurrentAttentionBaseComponent(v1, off_1F2D28D78);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
  _Unwind_Resume(a1);
}

kaldi::nnet1::GlobalRecurrentAttention *kaldi::nnet1::GlobalRecurrentAttention::GlobalRecurrentAttention(kaldi::nnet1::GlobalRecurrentAttention *this, const kaldi::nnet1::GlobalRecurrentAttention *a2)
{
  *(this + 85) = *(a2 + *(*a2 - 24) + 8);
  *(this + 344) = 0;
  *(this + 89) = 0;
  *(this + 88) = 0;
  *(this + 87) = 0;
  *(this + 84) = &unk_1F2D172B0;
  *(this + 90) = &unk_1F2D279F8;
  *(this + 728) = xmmword_1B5AE0070;
  *(this + 186) = -1082130432;
  *(this + 748) = 0x100000003;
  *(this + 378) = 0;
  *(this + 758) = 0;
  kaldi::nnet1::RecurrentAttentionBaseComponent::RecurrentAttentionBaseComponent(this, off_1F2D28D78);
  *this = &unk_1F2D28968;
  *(this + 84) = &unk_1F2D28C58;
  *(this + 2) = &unk_1F2D28AB0;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 25) = &unk_1F2D0EE38;
  *(this + 240) = 0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 31) = &unk_1F2D0EE38;
  *(this + 288) = 0;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 37) = &unk_1F2D0EE38;
  *(this + 336) = 0;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 43) = &unk_1F2D0EE38;
  *(this + 384) = 0;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 49) = &unk_1F2D0EE38;
  *(this + 432) = 0;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 55) = &unk_1F2D0EE38;
  *(this + 480) = 0;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 61) = &unk_1F2D0EE38;
  *(this + 528) = 0;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 67) = &unk_1F2D0EE38;
  *(this + 576) = 0;
  *(this + 37) = 0u;
  *(this + 76) = 0;
  *(this + 73) = &unk_1F2D3AC18;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 616) = 0u;
  *(this + 1) = *(a2 + 1);
  *(this + 22) = (*(**(a2 + 22) + 16))(*(a2 + 22));
  *(this + 23) = (*(**(a2 + 23) + 16))(*(a2 + 23));
  kaldi::CuMatrix<float>::operator=(this + 25, a2 + 25);
  kaldi::CuMatrix<float>::operator=(this + 31, a2 + 31);
  kaldi::CuMatrix<float>::operator=(this + 37, a2 + 37);
  kaldi::CuMatrix<float>::operator=(this + 55, a2 + 55);
  kaldi::CuMatrix<float>::operator=(this + 61, a2 + 61);
  kaldi::CuMatrix<float>::operator=(this + 67, a2 + 67);
  kaldi::CuVector<float>::operator=(this + 584, a2 + 584);
  if (this != a2)
  {
    std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(this + 77, *(a2 + 77), *(a2 + 78), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 78) - *(a2 + 77)) >> 3));
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 80, *(a2 + 80), *(a2 + 81), (*(a2 + 81) - *(a2 + 80)) >> 2);
  }

  *(this + 166) = *(a2 + 166);
  *(this + 668) = 0;
  if ((kaldi::nnet1::Nnet::IsRnn(*(this + 24)) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "it doesn't make sense to use a non-reccurent network here", 57);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
  }

  (*(*this + 296))(this);
  return this;
}

void sub_1B56D7300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, kaldi::nnet1::UpdatableComponent *a12, void **a13, uint64_t a14)
{
  v23 = *a13;
  if (*a13)
  {
    *(v14 + 81) = v23;
    operator delete(v23);
  }

  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a14);
  kaldi::CuVector<float>::~CuVector(v19);
  kaldi::CuMatrix<float>::~CuMatrix(v18);
  kaldi::CuMatrix<float>::~CuMatrix(v21);
  kaldi::CuMatrix<float>::~CuMatrix(v20);
  kaldi::CuMatrix<float>::~CuMatrix(a10);
  kaldi::CuMatrix<float>::~CuMatrix(a11);
  kaldi::CuMatrix<float>::~CuMatrix(v17);
  kaldi::CuMatrix<float>::~CuMatrix(v16);
  kaldi::CuMatrix<float>::~CuMatrix(v15);
  kaldi::nnet1::RecurrentAttentionBaseComponent::~RecurrentAttentionBaseComponent(v14, off_1F2D28D78);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a12);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::GlobalRecurrentAttention::~GlobalRecurrentAttention(kaldi::nnet1::GlobalRecurrentAttention *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[8];
  *(this + 2) = a2[9];
  v5 = *(this + 22);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 23);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 24);
  if (v7)
  {
    kaldi::nnet1::Nnet::~Nnet(v7);
    MEMORY[0x1B8C85350]();
  }

  v8 = *(this + 80);
  if (v8)
  {
    *(this + 81) = v8;
    operator delete(v8);
  }

  v9 = (this + 616);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v9);
  kaldi::CuVector<float>::~CuVector(this + 73);
  kaldi::CuMatrix<float>::~CuMatrix(this + 536);
  kaldi::CuMatrix<float>::~CuMatrix(this + 488);
  kaldi::CuMatrix<float>::~CuMatrix(this + 440);
  kaldi::CuMatrix<float>::~CuMatrix(this + 392);
  kaldi::CuMatrix<float>::~CuMatrix(this + 344);
  kaldi::CuMatrix<float>::~CuMatrix(this + 296);
  kaldi::CuMatrix<float>::~CuMatrix(this + 248);
  kaldi::CuMatrix<float>::~CuMatrix(this + 200);
  kaldi::nnet1::RecurrentAttentionBaseComponent::~RecurrentAttentionBaseComponent(this, (a2 + 1));
}

void kaldi::nnet1::GlobalRecurrentAttention::~GlobalRecurrentAttention(kaldi::nnet1::GlobalRecurrentAttention *this)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 672));
}

{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 672));

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk tokaldi::nnet1::GlobalRecurrentAttention::~GlobalRecurrentAttention(kaldi::nnet1::GlobalRecurrentAttention *this)
{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((this + 656));
}

{
  kaldi::nnet1::GlobalRecurrentAttention::~GlobalRecurrentAttention((this - 16));
}

void virtual thunk tokaldi::nnet1::GlobalRecurrentAttention::~GlobalRecurrentAttention(kaldi::nnet1::GlobalRecurrentAttention *this)
{
  v2 = (v1 + 672);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
}

{
  kaldi::nnet1::GlobalRecurrentAttention::~GlobalRecurrentAttention((this + *(*this - 24)));
}

void kaldi::nnet1::GlobalRecurrentAttention::InitData(uint64_t a1, uint64_t *a2)
{
  v28 = 0;
  v29 = 0uLL;
  v3 = a2 + 4;
  v4 = a1 + 12;
  v5 = a1 + 8;
  while (1)
  {
    if ((*(v3 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_42;
    }

    kaldi::ReadToken(a2, 0, &v28);
    if (SHIBYTE(v29) < 0)
    {
      if (v29 != 15)
      {
        if (v29 != 22)
        {
          goto LABEL_35;
        }

        v9 = *v28 == 0x53656372756F533CLL && v28[1] == 0x656D694465746174;
        v10 = v9 && *(v28 + 14) == 0x3E6E6F69736E656DLL;
        v8 = v5;
        if (!v10)
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      }

      v11 = v28;
    }

    else
    {
      if (HIBYTE(v29) != 15)
      {
        if (HIBYTE(v29) != 22)
        {
          goto LABEL_33;
        }

        v7 = v28 == 0x53656372756F533CLL && v29 == 0x656D694465746174 && *(&v29 + 6) == 0x3E6E6F69736E656DLL;
        v8 = v5;
        if (!v7)
        {
          goto LABEL_43;
        }

        goto LABEL_31;
      }

      v11 = &v28;
    }

    v12 = *v11;
    v13 = *(v11 + 7);
    v14 = v12 == 0x6574744178614D3CLL && v13 == 0x3E736E6F69746E65;
    v8 = v4;
    if (!v14)
    {
      if ((HIBYTE(v29) & 0x80) != 0)
      {
LABEL_35:
        if (v29 == 12)
        {
          v15 = v28;
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        if (HIBYTE(v29) == 12)
        {
          v15 = &v28;
LABEL_37:
          v16 = *v15;
          v17 = *(v15 + 2);
          if (v16 == 0x6E6F706D6F432F3CLL && v17 == 1047817829)
          {
LABEL_42:
            memset(v26, 0, sizeof(v26));
            v25 = 0;
            kaldi::ExpectToken(a2, 0, "<SourceDotTransform>");
            kaldi::ReadToken(a2, 0, v26);
            v19 = kaldi::nnet1::Component::MarkerToComponentType(v26);
            kaldi::ExpectToken(a2, 0, "<InputDim>");
            kaldi::ReadBasicType<int>(a2, 0, &v25 + 4);
            kaldi::ExpectToken(a2, 0, "<OutputDim>");
            kaldi::ReadBasicType<int>(a2, 0, &v25);
            kaldi::nnet1::Component::NewComponentOfType(v19);
          }
        }
      }

LABEL_43:
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v27);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Unknown token ", 14);
      if (v29 >= 0)
      {
        v21 = &v28;
      }

      else
      {
        v21 = v28;
      }

      if (v29 >= 0)
      {
        v22 = HIBYTE(v29);
      }

      else
      {
        v22 = v29;
      }

      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v21, v22);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ", a typo in config?", 19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " (SourceStateDimension|MaxAttentions)", 37);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v27);
    }

LABEL_31:
    kaldi::ReadBasicType<int>(a2, 0, v8);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }
}

void kaldi::nnet1::GlobalRecurrentAttention::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  v29 = 0;
  v30 = 0uLL;
  v6 = a1 + 12;
  v7 = a1 + 8;
  while (1)
  {
    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_42;
    }

    kaldi::ReadToken(a2, a3, &v29);
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
      break;
    }

    if (v30 == 15)
    {
      v13 = v29;
      goto LABEL_26;
    }

    if (v30 != 22)
    {
      goto LABEL_35;
    }

    v11 = *v29 == 0x53656372756F533CLL && v29[1] == 0x656D694465746174;
    v12 = v11 && *(v29 + 14) == 0x3E6E6F69736E656DLL;
    v10 = v7;
    if (!v12)
    {
      goto LABEL_35;
    }

LABEL_31:
    kaldi::ReadBasicType<int>(a2, a3, v10);
  }

  if (HIBYTE(v30) != 15)
  {
    if (HIBYTE(v30) != 22)
    {
      goto LABEL_33;
    }

    v9 = v29 == 0x53656372756F533CLL && v30 == 0x656D694465746174 && *(&v30 + 6) == 0x3E6E6F69736E656DLL;
    v10 = v7;
    if (!v9)
    {
      goto LABEL_50;
    }

    goto LABEL_31;
  }

  v13 = &v29;
LABEL_26:
  v14 = *v13;
  v15 = *(v13 + 7);
  v16 = v14 == 0x6574744178614D3CLL && v15 == 0x3E736E6F69746E65;
  v10 = v6;
  if (v16)
  {
    goto LABEL_31;
  }

  if ((HIBYTE(v30) & 0x80) == 0)
  {
LABEL_33:
    if (HIBYTE(v30) == 12)
    {
      v17 = &v29;
      goto LABEL_37;
    }

    goto LABEL_50;
  }

LABEL_35:
  if (v30 != 12)
  {
    goto LABEL_50;
  }

  v17 = v29;
LABEL_37:
  v18 = *v17;
  v19 = *(v17 + 2);
  if (v18 != 0x6E6F706D6F432F3CLL || v19 != 1047817829)
  {
LABEL_50:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v28);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Unrecognized token ", 19);
    if (v30 >= 0)
    {
      v26 = &v29;
    }

    else
    {
      v26 = v29;
    }

    if (v30 >= 0)
    {
      v27 = HIBYTE(v30);
    }

    else
    {
      v27 = v30;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v28);
  }

LABEL_42:
  kaldi::ExpectToken(a2, a3, "<SourceDotTransform>");
  v21 = kaldi::nnet1::Component::Read(a2, a3);
  if (!v21)
  {
    *(a1 + 176) = 0;
LABEL_58:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "read source dot transform failed", 32);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v28);
  }

  *(a1 + 176) = v22;
  if (!v22)
  {
    goto LABEL_58;
  }

  kaldi::ExpectToken(a2, a3, "</Component>");
  kaldi::ExpectToken(a2, a3, "<TargetDotTransform>");
  v23 = kaldi::nnet1::Component::Read(a2, a3);
  if (!v23)
  {
    *(a1 + 184) = 0;
LABEL_60:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "read target dot transform failed", 32);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v28);
  }

  *(a1 + 184) = v24;
  if (!v24)
  {
    goto LABEL_60;
  }

  kaldi::ExpectToken(a2, a3, "</Component>");
  kaldi::nnet1::Nnet::Read(*(a1 + 192), a2, a3);
  kaldi::nnet1::Nnet::ValidateNnet(*(a1 + 192));
  if ((kaldi::nnet1::Nnet::IsRnn(*(a1 + 192)) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "it doesn't make sense to use a non-reccurent network here", 57);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v28);
  }

  (*(*a1 + 296))(a1);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }
}

void sub_1B56D845C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::GlobalRecurrentAttention::WriteConfig(uint64_t a1, void *a2, int a3)
{
  kaldi::WriteToken(a2, a3, "<SourceStateDimension>");
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 8));
  kaldi::WriteToken(a2, a3, "<MaxAttentions>");
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 12));

  return kaldi::WriteToken(a2, a3, "</Component>");
}

void *kaldi::nnet1::GlobalRecurrentAttention::WriteData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 96))(a1);
  kaldi::WriteToken(a2, a3, "<SourceDotTransform>");
  kaldi::nnet1::Component::Write(*(a1 + 176), a2, a3, a4);
  kaldi::WriteToken(a2, a3, "</Component>");
  kaldi::WriteToken(a2, a3, "<TargetDotTransform>");
  kaldi::nnet1::Component::Write(*(a1 + 184), a2, a3, a4);
  kaldi::WriteToken(a2, a3, "</Component>");
  v8 = *(a1 + 192);

  return kaldi::nnet1::Nnet::Write(v8, a2, a3, a4);
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::NumParams(kaldi::nnet1::GlobalRecurrentAttention *this)
{
  v2 = (*(**(this + 22) + 176))(*(this + 22));
  v3 = (*(**(this + 23) + 176))(*(this + 23)) + v2;
  return v3 + kaldi::nnet1::Nnet::NumParams(*(this + 24));
}

void kaldi::nnet1::GlobalRecurrentAttention::GetParams(uint64_t a1, void **a2)
{
  v4 = (*(*a1 + 112))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 1);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  (*(**(a1 + 176) + 184))(*(a1 + 176), &v10);
  v8 = 0;
  v9 = 0;
  v7 = *a2;
  LODWORD(v8) = v11;
  kaldi::VectorBase<float>::CopyFromVec(&v7, &v10);
  v5 = v11;
  (*(**(a1 + 184) + 184))(*(a1 + 184), &v10);
  v8 = 0;
  v9 = 0;
  v7 = *a2 + 4 * v5;
  LODWORD(v8) = v11;
  kaldi::VectorBase<float>::CopyFromVec(&v7, &v10);
  v6 = v11;
  kaldi::nnet1::Nnet::GetParams(*(a1 + 192), &v10);
  v8 = 0;
  v9 = 0;
  v7 = *a2 + 4 * v6 + 4 * v5;
  LODWORD(v8) = v11;
  kaldi::VectorBase<float>::CopyFromVec(&v7, &v10);
  kaldi::Vector<float>::Destroy(&v10);
}

void sub_1B56D8850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::SetParams(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 176);
  v5 = (*(*v4 + 176))(v4);
  v12 = 0;
  v13 = 0;
  v11 = *a2;
  LODWORD(v12) = v5;
  (*(*v4 + 192))(v4, &v11);
  LODWORD(v4) = (*(**(a1 + 176) + 176))(*(a1 + 176));
  v6 = *(a1 + 184);
  v7 = (*(*v6 + 176))(v6);
  v12 = 0;
  v13 = 0;
  v11 = *a2 + 4 * v4;
  LODWORD(v12) = v7;
  (*(*v6 + 192))(v6, &v11);
  LODWORD(v6) = (*(**(a1 + 184) + 176))(*(a1 + 184)) + v4;
  v8 = *(a1 + 192);
  v9 = kaldi::nnet1::Nnet::NumParams(v8);
  v12 = 0;
  v13 = 0;
  v11 = *a2 + 4 * v6;
  LODWORD(v12) = v9;
  kaldi::nnet1::Nnet::SetParams(v8, &v11);
  return kaldi::nnet1::Nnet::NumParams(*(a1 + 192));
}

float kaldi::nnet1::GlobalRecurrentAttention::SumParams(kaldi::nnet1::GlobalRecurrentAttention *this)
{
  v2 = (*(**(this + 22) + 208))(*(this + 22));
  v3 = v2 + (*(**(this + 23) + 208))(*(this + 23));
  return v3 + kaldi::nnet1::Nnet::SumParams(*(this + 24));
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::PerturbParams(kaldi::nnet1::GlobalRecurrentAttention *this, float a2)
{
  (*(**(this + 22) + 216))(*(this + 22));
  v4 = *(**(this + 23) + 216);
  v5.n128_f32[0] = a2;

  return v4(v5);
}

uint64_t virtual thunk tokaldi::nnet1::GlobalRecurrentAttention::PerturbParams(kaldi::nnet1::GlobalRecurrentAttention *this, float a2)
{
  v3 = this + *(*this - 232);
  (*(**(v3 + 22) + 216))(*(v3 + 22));
  v4 = *(**(v3 + 23) + 216);
  v5.n128_f32[0] = a2;

  return v4(v5);
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::Info(kaldi::nnet1::GlobalRecurrentAttention *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v28);
  (*(*this + 96))(this, &v28, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "\n## Source Dot Transform: input-dim ", 36);
  v3 = MEMORY[0x1B8C84C00](v2, *(*(this + 22) + 8));
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ", output-dim ", 13);
  v5 = MEMORY[0x1B8C84C00](v4, *(*(this + 22) + 12));
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\n", 1);
  (*(**(this + 22) + 64))(v26);
  if ((v27 & 0x80u) == 0)
  {
    v7 = v26;
  }

  else
  {
    v7 = v26[0];
  }

  if ((v27 & 0x80u) == 0)
  {
    v8 = v27;
  }

  else
  {
    v8 = v26[1];
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\n## Target Dot Transform: input-dim ", 36);
  v11 = MEMORY[0x1B8C84C00](v10, *(*(this + 23) + 8));
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", output-dim ", 13);
  v13 = MEMORY[0x1B8C84C00](v12, *(*(this + 23) + 12));
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\n", 1);
  (*(**(this + 23) + 64))(v24);
  if ((v25 & 0x80u) == 0)
  {
    v15 = v24;
  }

  else
  {
    v15 = v24[0];
  }

  if ((v25 & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = v24[1];
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n## Internal recurrent network info ", 36);
  kaldi::nnet1::Nnet::Info(__p, *(this + 24));
  if ((v23 & 0x80u) == 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v20 = v23;
  }

  else
  {
    v20 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  std::stringbuf::str();
  v28 = *MEMORY[0x1E69E54E8];
  *(&v28 + *(v28 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v29 = MEMORY[0x1E69E5548] + 16;
  if (v31 < 0)
  {
    operator delete(v30[7].__locale_);
  }

  v29 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v30);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v32);
}

void sub_1B56D8F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
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

  std::ostringstream::~ostringstream(&a27, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](&a41);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::GlobalRecurrentAttention::InfoGradient(kaldi::nnet1::GlobalRecurrentAttention *this@<X0>, std::string *a2@<X8>)
{
  (*(**(this + 22) + 72))(&v21);
  (*(**(this + 23) + 72))(v19);
  if ((v20 & 0x80u) == 0)
  {
    v4 = v19;
  }

  else
  {
    v4 = v19[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v5 = v20;
  }

  else
  {
    v5 = v19[1];
  }

  v6 = std::string::append(&v21, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::Nnet::InfoGradient(*(this + 24), v17);
  if ((v18 & 0x80u) == 0)
  {
    v8 = v17;
  }

  else
  {
    v8 = v17[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v9 = v18;
  }

  else
  {
    v9 = v17[1];
  }

  v10 = std::string::append(&v22, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "\n");
  if ((v16 & 0x80u) == 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v13 = v16;
  }

  else
  {
    v13 = __p[1];
  }

  v14 = std::string::append(&v23, v12, v13);
  *a2 = *v14;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_1B56D9194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v38 - 41) < 0)
  {
    operator delete(*(v38 - 64));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::GlobalRecurrentAttention::SetTrainOptions(kaldi::nnet1::GlobalRecurrentAttention *this, const kaldi::nnet1::NnetTrainOptions *a2)
{
  v4 = this + *(*this - 24);
  v5 = *(a2 + 8);
  *(v4 + 71) = *(a2 + 23);
  *(v4 + 56) = v5;
  (*(**(this + 22) + 264))();
  (*(**(this + 23) + 264))();
  v6 = *(this + 24);

  kaldi::nnet1::Nnet::SetTrainOptions(v6, a2, 0);
}

int32x2_t *kaldi::nnet1::GlobalRecurrentAttention::SetSourceStates(uint64_t a1, int32x2_t *a2, char **a3)
{
  (*(*a1 + 296))(a1);
  v7 = *a3;
  v6 = a3[1];
  kaldi::CuMatrix<float>::operator=((a1 + 296), a2);
  if ((a1 + 640) != a3)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 640), *a3, a3[1], (a3[1] - *a3) >> 2);
  }

  v8 = v6 - v7;
  v9 = *a3 + 4;
  v10 = **a3;
  *(a1 + 664) = v10;
  v11 = a3[1];
  while (v9 != v11)
  {
    v12 = *v9;
    if (*v9 > v10)
    {
      *(a1 + 664) = v12;
      v10 = v12;
    }

    v9 += 4;
  }

  kaldi::nnet1::Component::Propagate(*(a1 + 176), a1 + 296, (a1 + 200), 0);
  memset(__p, 0, 24);
  std::vector<std::vector<int>>::assign((a1 + 616), (v8 >> 2), __p);
  v13 = v8 >> 2;
  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  v14 = kaldi::nnet1::Nnet::InputDim(*(a1 + 192));
  kaldi::CuMatrix<float>::Resize((a1 + 344), v13, v14, 0, 0);
  v15 = *(a1 + 352);
  v16 = *(a1 + 372);
  v17 = *(a1 + 376);
  *&__p[16] = *(a1 + 8);
  *&__p[20] = *(a1 + 364);
  *&__p[28] = v16;
  *&__p[32] = v17;
  *__p = &unk_1F2CFA908;
  *&__p[8] = v15;
  v18 = *(a1 + 304);
  v19 = *(a1 + 328);
  DWORD2(v22) = *(a1 + 312);
  HIDWORD(v22) = v13;
  *&v23 = *(a1 + 320);
  *(&v23 + 1) = v19;
  v21 = &unk_1F2CFA908;
  *&v22 = v18;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(__p, &v21, 111);
  v21 = &unk_1F2CFA908;
  v22 = 0u;
  v23 = 0u;
  quasar::Bitmap::~Bitmap(&v21);
  *__p = &unk_1F2CFA908;
  memset(&__p[8], 0, 32);
  quasar::Bitmap::~Bitmap(__p);
  kaldi::nnet1::Nnet::ResetHistoryStateIfExists(*(a1 + 192));
  return kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(*(a1 + 192), (a1 + 344), (a1 + 392), 0);
}

void sub_1B56D9568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a9);
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&__p);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::GetSourceDiffs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 296))(a1);

  return kaldi::CuMatrix<float>::Swap(a1 + 440, a4);
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::GetCurrentAlignment(uint64_t a1, std::vector<unsigned int> *this)
{
  v4 = -1431655765 * ((*(a1 + 624) - *(a1 + 616)) >> 3);
  std::vector<int>::resize(this, v4);
  if (v4 >= 1)
  {
    begin = this->__begin_;
    v6 = v4 & 0x7FFFFFFF;
    v7 = (*(a1 + 616) + 8);
    do
    {
      v8 = *v7;
      v7 += 3;
      *begin++ = *(v8 - 4);
      --v6;
    }

    while (v6);
  }

  return 1;
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::GetOverallAlignment(uint64_t a1, uint64_t *a2)
{
  if ((a1 + 616) != a2)
  {
    std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(a2, *(a1 + 616), *(a1 + 624), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 624) - *(a1 + 616)) >> 3));
  }

  return 1;
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::SetSourceVectorDimension(uint64_t this, int a2)
{
  if (*(this + 8) != a2)
  {
    *(this + 8) = a2;
    *(this + 668) = 0;
  }

  return this;
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::SetMaxAttentions(uint64_t this, int a2)
{
  if (*(this + 12) != a2)
  {
    *(this + 12) = a2;
    *(this + 668) = 0;
  }

  return this;
}

void kaldi::nnet1::GlobalRecurrentAttention::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 296))(a1);
  v5 = *(a1 + 648) - *(a1 + 640);
  v6 = v5 >> 2;
  v65 = a2;
  LODWORD(a2) = *(a2 + 20);
  v7 = *(a1 + 316);
  v8 = (v7 / (v5 >> 2));
  kaldi::CuVector<float>::Resize(a1 + 584, v7, 0);
  v66 = v8;
  kaldi::CuMatrix<float>::Resize((a1 + 488), v5 >> 2, v8, 1, 0);
  v9 = *(a1 + 316);
  memset(v80, 0, 24);
  kaldi::Vector<float>::Resize(v80, v9, 1);
  kaldi::Matrix<float>::Matrix(v78);
  v63 = a2 / (v5 >> 2);
  if (v63 >= 1)
  {
    v67 = 0;
    v10 = (v5 >> 2);
    do
    {
      kaldi::CuMatrix<float>::operator=((a1 + 536), (a1 + 200));
      kaldi::nnet1::Component::Propagate(*(a1 + 184), a1 + 392, (a1 + 248), 0);
      if (*(a1 + 664) >= 1)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          v13 = *(a1 + 560);
          v14 = *(a1 + 544) + 4 * (v13 * v11);
          v15 = *(a1 + 564) - v13 * v11;
          v16 = *(a1 + 568);
          LODWORD(v77[1]) = *(a1 + 552);
          HIDWORD(v77[1]) = v6;
          v77[2] = __PAIR64__(v15, v13);
          v77[3] = v16;
          v76 = &unk_1F2CFA908;
          v77[0] = v14;
          kaldi::CuMatrixBase<float>::MulElements(&v76, a1 + 248);
          v76 = &unk_1F2CFA908;
          memset(v77, 0, sizeof(v77));
          quasar::Bitmap::~Bitmap(&v76);
          ++v12;
          v11 += v6;
        }

        while (v12 < *(a1 + 664));
      }

      kaldi::CuVectorBase<float>::AddColSumMat(a1 + 584, a1 + 536);
      kaldi::CuVectorBase<float>::CopyToVec<float>((a1 + 584), v80);
      kaldi::Matrix<float>::Resize(v78, v6, v66, 0, 0);
      if (v6 >= 1)
      {
        v17 = 0;
        do
        {
          v18 = *(*(a1 + 640) + 4 * v17);
          if (v18 < 1)
          {
            v20 = -1;
            v21 = -INFINITY;
          }

          else
          {
            v19 = 0;
            v20 = -1;
            v21 = -INFINITY;
            v22 = v17;
            do
            {
              if (*(v80[0] + v22) > v21)
              {
                v20 = v19;
                v21 = *(v80[0] + v22);
              }

              ++v19;
              v22 += v10;
            }

            while (v18 != v19);
          }

          v23 = *(a1 + 616) + 24 * v17;
          v25 = *(v23 + 8);
          v24 = *(v23 + 16);
          if (v25 >= v24)
          {
            v27 = *v23;
            v28 = v25 - *v23;
            v29 = v28 >> 2;
            v30 = (v28 >> 2) + 1;
            if (v30 >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v31 = v24 - v27;
            if (v31 >> 1 > v30)
            {
              v30 = v31 >> 1;
            }

            v32 = v31 >= 0x7FFFFFFFFFFFFFFCLL;
            v33 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v32)
            {
              v33 = v30;
            }

            if (v33)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(*(a1 + 616) + 24 * v17, v33);
            }

            *(4 * v29) = v20;
            v26 = 4 * v29 + 4;
            memcpy(0, v27, v28);
            v34 = *v23;
            *v23 = 0;
            *(v23 + 8) = v26;
            *(v23 + 16) = 0;
            if (v34)
            {
              operator delete(v34);
            }
          }

          else
          {
            *v25 = v20;
            v26 = (v25 + 1);
          }

          *(v23 + 8) = v26;
          if (v18 >= 1)
          {
            v35 = 0.0;
            v36 = v80[0];
            v37 = v18;
            v38 = v17;
            do
            {
              v39 = expf(v36[v38] - v21);
              v36[v38] = v39;
              v35 = v35 + v39;
              v38 += v10;
              --v37;
            }

            while (v37);
            v40 = 0;
            v41 = v80[0];
            v42 = *v78 + 4 * v79 * v17;
            v43 = v17;
            do
            {
              *(v42 + 4 * v40++) = (1.0 / v35) * v41[v43];
              v43 += v10;
            }

            while (v18 != v40);
          }

          ++v17;
        }

        while (v17 != v10);
      }

      kaldi::CuMatrixBase<float>::CopyFromMat(a1 + 488, v78, 111);
      if (v6 >= 1)
      {
        v44 = 0;
        do
        {
          v45 = *(*(a1 + 640) + 4 * v44);
          v46 = *(a1 + 364);
          v47 = *(a1 + 352);
          v48 = *(a1 + 376);
          LODWORD(v77[1]) = *(a1 + 8);
          HIDWORD(v77[1]) = v46;
          v77[2] = *(a1 + 368);
          v77[3] = v48;
          v76 = &unk_1F2CFA908;
          v77[0] = v47;
          v72 = &unk_1F2CFCA48;
          v73 = v47 + 4 * LODWORD(v77[2]) * v44;
          v75 = v48;
          v74 = LODWORD(v77[1]);
          v49 = *(a1 + 320);
          v50 = *(a1 + 304) + 4 * (v49 * v44);
          v51 = *(a1 + 324) - v49 * v44;
          v52 = *(a1 + 328);
          DWORD2(v70) = *(a1 + 312);
          HIDWORD(v70) = v45 * v6;
          *&v71 = __PAIR64__(v51, v49);
          *(&v71 + 1) = v52;
          v69 = &unk_1F2CFA908;
          *&v70 = v50;
          if (v6 >= 2)
          {
            kaldi::CuMatrixBase<float>::SetStride(&v69, v49 * v6);
          }

          v53 = *(a1 + 520);
          v68[1] = *(a1 + 496) + 4 * *(a1 + 512) * v44;
          v68[0] = &unk_1F2CFCA48;
          v68[2] = v45;
          v68[3] = v53;
          kaldi::CuVectorBase<float>::AddMatVec(&v72, &v69, 112, v68);
          v69 = &unk_1F2CFA908;
          v70 = 0u;
          v71 = 0u;
          quasar::Bitmap::~Bitmap(&v69);
          v72 = &unk_1F2CFCA48;
          v73 = 0;
          LODWORD(v74) = 0;
          v75 = 0;
          v76 = &unk_1F2CFA908;
          memset(v77, 0, sizeof(v77));
          quasar::Bitmap::~Bitmap(&v76);
          ++v44;
        }

        while (v10 != v44);
      }

      v54 = *(a1 + 8);
      v55 = *(a1 + 352) + 4 * v54;
      LODWORD(v54) = *(a1 + 372) - v54;
      v56 = *(a1 + 376);
      LODWORD(v77[1]) = *(a1 + 8 + *(*a1 - 24));
      *(&v77[1] + 4) = *(a1 + 364);
      HIDWORD(v77[2]) = v54;
      v77[3] = v56;
      v76 = &unk_1F2CFA908;
      v77[0] = v55;
      LODWORD(v55) = *(v65 + 24);
      v57 = *(v65 + 8) + 4 * v55 * v67 * v6;
      LODWORD(v56) = *(v65 + 28) - v55 * v67 * v6;
      v58 = *(v65 + 32);
      DWORD2(v70) = *(v65 + 16);
      HIDWORD(v70) = v6;
      *&v71 = __PAIR64__(v56, v55);
      *(&v71 + 1) = v58;
      v69 = &unk_1F2CFA908;
      *&v70 = v57;
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v76, &v69, 111);
      v69 = &unk_1F2CFA908;
      v70 = 0u;
      v71 = 0u;
      quasar::Bitmap::~Bitmap(&v69);
      v76 = &unk_1F2CFA908;
      memset(v77, 0, sizeof(v77));
      quasar::Bitmap::~Bitmap(&v76);
      kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(*(a1 + 192), (a1 + 344), (a1 + 392), 0);
      v59 = *(a3 + 24);
      v60 = *(a3 + 8) + 4 * (v59 * v67 * v6);
      v61 = *(a3 + 28) - v59 * v67 * v6;
      v62 = *(a3 + 32);
      LODWORD(v77[1]) = *(a3 + 16);
      HIDWORD(v77[1]) = v6;
      v77[2] = __PAIR64__(v61, v59);
      v77[3] = v62;
      v76 = &unk_1F2CFA908;
      v77[0] = v60;
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v76, a1 + 392, 111);
      v76 = &unk_1F2CFA908;
      memset(v77, 0, sizeof(v77));
      quasar::Bitmap::~Bitmap(&v76);
      ++v67;
    }

    while (v67 != v63);
  }

  kaldi::Matrix<float>::~Matrix(v78);
  kaldi::Vector<float>::Destroy(v80);
}

void kaldi::nnet1::GlobalRecurrentAttention::BackpropagateFnc()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "not implemented yet");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void *kaldi::nnet1::GlobalRecurrentAttention::SetGradientNormalization(uint64_t a1, uint64_t a2, float a3)
{
  (*(**(a1 + 176) + 240))(*(a1 + 176));
  (*(**(a1 + 184) + 240))(*(a1 + 184), a2, a3);
  v6 = *(a1 + 192);

  return kaldi::nnet1::Nnet::SetGradientNormalization(v6, a2, 0, 0, a3);
}

void kaldi::nnet1::GlobalRecurrentAttention::AccumGradients()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "not implemented yet");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::GlobalRecurrentAttention::UpdateWeights(kaldi::nnet1::GlobalRecurrentAttention *this, void *a2, uint64_t a3)
{
  (*(*this + 296))(this);
  (*(**(this + 22) + 256))();
  (*(**(this + 23) + 256))();
  v6 = *(this + 24);

  kaldi::nnet1::Nnet::Update(v6, a2, a3);
}

void kaldi::nnet1::GlobalRecurrentAttention::GetGradient()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "not implemented yet");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::HistoryStateSize(kaldi::nnet1::Nnet **this)
{
  (*(*this + 37))(this);
  v2 = this[24];

  return kaldi::nnet1::Nnet::HistoryStateSize(v2);
}

uint64_t non-virtual thunk tokaldi::nnet1::GlobalRecurrentAttention::HistoryStateSize(kaldi::nnet1::GlobalRecurrentAttention *this)
{
  v1 = this - 16;
  (*(*(this - 2) + 296))(this - 16);
  v2 = *(v1 + 24);

  return kaldi::nnet1::Nnet::HistoryStateSize(v2);
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::ResetHistoryState(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 296))(a1);
  v8 = a1[24];

  return kaldi::nnet1::Nnet::ResetHistoryStateIfExists(v8, a2, a3, a4);
}

uint64_t non-virtual thunk tokaldi::nnet1::GlobalRecurrentAttention::ResetHistoryState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 - 16;
  (*(*(a1 - 16) + 296))(a1 - 16);
  v8 = *(v7 + 192);

  return kaldi::nnet1::Nnet::ResetHistoryStateIfExists(v8, a2, a3, a4);
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::ResetHistoryState(kaldi::nnet1::GlobalRecurrentAttention *this)
{
  (*(*this + 296))(this);
  v2 = *(this + 24);

  return kaldi::nnet1::Nnet::ResetHistoryStateIfExists(v2);
}

uint64_t non-virtual thunk tokaldi::nnet1::GlobalRecurrentAttention::ResetHistoryState(kaldi::nnet1::GlobalRecurrentAttention *this)
{
  v1 = this - 16;
  (*(*(this - 2) + 296))(this - 16);
  v2 = *(v1 + 24);

  return kaldi::nnet1::Nnet::ResetHistoryStateIfExists(v2);
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::GetHistoryState(void *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 296))(a1);
  v6 = a1[24];

  return kaldi::nnet1::Nnet::GetHistoryState(v6, a2, a3);
}

uint64_t non-virtual thunk tokaldi::nnet1::GlobalRecurrentAttention::GetHistoryState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 - 16;
  (*(*(a1 - 16) + 296))(a1 - 16);
  v6 = *(v5 + 192);

  return kaldi::nnet1::Nnet::GetHistoryState(v6, a2, a3);
}

void *kaldi::nnet1::GlobalRecurrentAttention::GetHistoryState(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 296))(a1);
  v8 = a1[24];

  return kaldi::nnet1::Nnet::GetHistoryState(v8, a2, a3, a4);
}

void *non-virtual thunk tokaldi::nnet1::GlobalRecurrentAttention::GetHistoryState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 - 16;
  (*(*(a1 - 16) + 296))(a1 - 16);
  v8 = *(v7 + 192);

  return kaldi::nnet1::Nnet::GetHistoryState(v8, a2, a3, a4);
}

void kaldi::nnet1::GlobalRecurrentAttention::SetHistoryState(void *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 296))(a1);
  v6 = a1[24];

  kaldi::nnet1::Nnet::SetHistoryState(v6, a2, a3);
}

void non-virtual thunk tokaldi::nnet1::GlobalRecurrentAttention::SetHistoryState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 - 16;
  (*(*(a1 - 16) + 296))(a1 - 16);
  v6 = *(v5 + 192);

  kaldi::nnet1::Nnet::SetHistoryState(v6, a2, a3);
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::SetHistoryState(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 296))(a1);
  v8 = a1[24];

  return kaldi::nnet1::Nnet::SetHistoryState(v8, a2, a3, a4);
}

uint64_t non-virtual thunk tokaldi::nnet1::GlobalRecurrentAttention::SetHistoryState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 - 16;
  (*(*(a1 - 16) + 296))(a1 - 16);
  v8 = *(v7 + 192);

  return kaldi::nnet1::Nnet::SetHistoryState(v8, a2, a3, a4);
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::Check(uint64_t this)
{
  if ((*(this + 668) & 1) == 0)
  {
    v1 = this;
    if (*(this + 12) < 1 || (v2 = *(this + 8), v2 <= 0))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v32);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "component is not initialized, max attention is ", 47);
      v8 = MEMORY[0x1B8C84C00](v7, *(v1 + 12));
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", source state dimension is ", 28);
      MEMORY[0x1B8C84C00](v9, *(v1 + 8));
    }

    else if (v2 == *(*(this + 176) + 8))
    {
      v3 = kaldi::nnet1::Nnet::OutputDim(*(this + 192));
      v4 = *(v1 + 184);
      if (v3 == *(v4 + 8))
      {
        if (*(*(v1 + 176) + 12) == *(v4 + 12))
        {
          v5 = *(v1 + *(*v1 - 24) + 8) + *(v1 + 8);
          if (v5 == kaldi::nnet1::Nnet::InputDim(*(v1 + 192)))
          {
            v6 = *(v1 + *(*v1 - 24) + 12);
            this = kaldi::nnet1::Nnet::OutputDim(*(v1 + 192));
            if (v6 == this)
            {
              *(v1 + 668) = 1;
              return this;
            }

            kaldi::KaldiWarnMessage::KaldiWarnMessage(v32);
            v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "the internal network has output dim ", 36);
            v29 = kaldi::nnet1::Nnet::OutputDim(*(v1 + 192));
            v30 = MEMORY[0x1B8C84C00](v28, v29);
            v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " , but the component has output dim ", 36);
            MEMORY[0x1B8C84C00](v31, *(v1 + *(*v1 - 24) + 12));
          }

          else
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v32);
            v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "the internal network takes input dimension ", 43);
            v21 = kaldi::nnet1::Nnet::InputDim(*(v1 + 192));
            v22 = MEMORY[0x1B8C84C00](v20, v21);
            v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " , that is not equal the sum of ", 32);
            v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "source vector dimension ", 24);
            v25 = MEMORY[0x1B8C84C00](v24, *(v1 + 8));
            v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " and ", 5);
            v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "target input network dim ", 25);
            MEMORY[0x1B8C84C00](v27, *(v1 + *(*v1 - 24) + 8));
          }
        }

        else
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v32);
          v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "the source and target dot transform has different output dim ", 61);
          v18 = MEMORY[0x1B8C84C00](v17, *(*(v1 + 176) + 12));
          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " vs ", 4);
          MEMORY[0x1B8C84C00](v19, *(*(v1 + 184) + 12));
        }
      }

      else
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v32);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "the internal recurrent network has output dim ", 46);
        v14 = kaldi::nnet1::Nnet::OutputDim(*(v1 + 192));
        v15 = MEMORY[0x1B8C84C00](v13, v14);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " , but the target dot transform has input dim ", 46);
        MEMORY[0x1B8C84C00](v16, *(*(v1 + 184) + 8));
      }
    }

    else
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v32);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "source state dimension is ", 26);
      v11 = MEMORY[0x1B8C84C00](v10, *(v1 + 8));
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " , but the source dot transform has input dim ", 46);
      MEMORY[0x1B8C84C00](v12, *(*(v1 + 176) + 8));
    }

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v32);
  }

  return this;
}

uint64_t TLocaleInfo::composeCharacter(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 < 768)
  {
LABEL_2:
    if (a3 == 3634 && a2 == 3661)
    {
      return 3635;
    }

    else
    {
      return 0;
    }
  }

  if (a3 >= 0x370)
  {
    if (a3 > 0xE30)
    {
      if (a3 > 0xE4E)
      {
        goto LABEL_2;
      }

      if (a3 > 0xE33)
      {
        if (a3 - 3655 >= 0xFFFFFFF4)
        {
          goto LABEL_2;
        }
      }

      else if (a3 != 3633)
      {
        goto LABEL_2;
      }

      return 0;
    }

    if (a3 == 1600)
    {
      return a2;
    }

    if (a3 < 0x64B)
    {
      goto LABEL_2;
    }

    if (a3 < 0x660 || (a3 & 0xFFB) == 0x670)
    {
      if (a3 != 2364)
      {
        if (a3 >= 0x660 && (a3 & 0x7FB) != 0x670)
        {
          return 0;
        }

        return a2;
      }

      v8 = *(a1 + 72) < 4uLL;
    }

    else
    {
      if (a3 != 2364 || *(a1 + 72) <= 3uLL)
      {
        goto LABEL_2;
      }

      v8 = 0;
    }

    result = 0;
    if ((a2 - 2356) >= 0xFFFFFFE1 && !v8)
    {
      return s_szTableNuktaComposition0915to0933[(a2 - 2325)];
    }

    return result;
  }

  if (a3 > 0x345)
  {
    return 0;
  }

  v5 = *(&s_szTableCharacterComposition0300to0345 + a3 - 768);
  if (!v5)
  {
    return 0;
  }

  v6 = *v5 - 1;
  if (*v5 < 1)
  {
    return 0;
  }

  if (*v5 == 1)
  {
    v7 = 0;
LABEL_36:
    if (v5[v7 | 1] == a2)
    {
      return v5[v7 + 2];
    }

    return 0;
  }

  v9 = 0;
  while (1)
  {
    v10 = (v9 + v6) | 1;
    v11 = v5[v10];
    if (v11 == a2)
    {
      return v5[v10 + 1];
    }

    v12 = (v9 + v6) >> 1;
    if (v11 < a2)
    {
      v9 = v12 + 1;
    }

    else
    {
      v6 = v12 - 1;
    }

    if (v9 >= v6)
    {
      v7 = 2 * v9;
      goto LABEL_36;
    }
  }
}

uint64_t TLocaleInfo::splitDiacritic(uint64_t a1, unsigned int a2)
{
  if (a2 <= 191)
  {
    if (a2 == 105 && (*(a1 + 80) & 1) != 0)
    {
      return 0x30700000131;
    }

    return a2;
  }

  if (a2 <= 0x233)
  {
    return s_szTableBaseCharacter00C0to0233[a2 - 192] | (s_szTableDiacritic00C0to0233[a2 - 192] << 32);
  }

  v3 = a2 - 902;
  if (a2 < 0x386)
  {
    return a2;
  }

  if (a2 <= 0x3D4)
  {
    v4 = &s_szTableBaseCharacter0386to03D4;
    v5 = &s_szTableDiacritic0386to03D4;
    return v4[v3] | (v5[v3] << 32);
  }

  v3 = a2 - 1024;
  if (a2 < 0x400)
  {
    return a2;
  }

  if (a2 <= 0x4F9)
  {
    v4 = &s_szTableBaseCharacter0400to04F9;
    v5 = &s_szTableDiacritic0400to04F9;
    return v4[v3] | (v5[v3] << 32);
  }

  v6 = a2 - 2345;
  if (a2 < 0x929)
  {
    return a2;
  }

  if (a2 > 0x95F)
  {
    v3 = a2 - 7680;
    if (a2 - 7680 <= 0x1FC)
    {
      v4 = &s_szTableBaseCharacter1E00to1FFC;
      v5 = &s_szTableDiacritic1E00to1FFC;
      return v4[v3] | (v5[v3] << 32);
    }

    return a2;
  }

  if (a2 < 0x958)
  {
    if (v6 <= 0xB && ((1 << v6) & 0x901) != 0)
    {
      v7 = a2 - 1;
      return v7 | 0x93C00000000;
    }

    return a2;
  }

  v7 = s_szTableNuktaBaseCharacter0958to095F[a2 - 2392];
  return v7 | 0x93C00000000;
}

unint64_t TLocaleInfo::decomposeCharacter(uint64_t a1, int a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a3[2];
  v16 = a2;
  TBuffer<wchar_t>::insert(a3, v6, &v16, 1uLL);
  result = TLocaleInfo::splitDiacritic(a1, v4);
  if (v4)
  {
    v8 = HIDWORD(result);
    if (HIDWORD(result))
    {
      if (HIDWORD(result) != v4)
      {
        LODWORD(v9) = 0;
        do
        {
          v10 = v4;
          v4 = result;
          v17 = v8;
          TBuffer<wchar_t>::insert(a3, a3[2], &v17, 1uLL);
          result = TLocaleInfo::splitDiacritic(a1, v4);
          v9 = (v9 + 1);
          if (v10 == v4)
          {
            break;
          }

          v8 = HIDWORD(result);
          if (!HIDWORD(result))
          {
            break;
          }
        }

        while (v4 != HIDWORD(result));
        if (v9)
        {
          v11 = *a3;
          if (v9 != 1)
          {
            v12 = (v11 + 4 * v6 + 4);
            v13 = v9 >> 1;
            v14 = (v11 + 4 * (v6 + v9));
            do
            {
              v15 = *v12;
              *v12++ = *v14;
              *v14-- = v15;
              --v13;
            }

            while (v13);
          }

          *(v11 + 4 * v6) = v4;
        }
      }
    }
  }

  return result;
}

uint64_t TLocaleInfo::removeDiacritics(uint64_t a1, uint64_t a2)
{
  do
  {
    v3 = a2;
    a2 = TLocaleInfo::splitDiacritic(a1, a2);
  }

  while (v3 != a2);
  return v3;
}

uint64_t TLocaleInfo::isKtivMenukad(uint64_t a1, unsigned int *a2)
{
  while (1)
  {
    v2 = *a2;
    if (*a2 <= 8202)
    {
      if (v2 == 32 || v2 == 160)
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        return 0;
      }
    }

    else
    {
      if (v2 == 8203)
      {
        goto LABEL_21;
      }

      if (v2 == 12288 || v2 == 65279)
      {
        goto LABEL_21;
      }
    }

    if (v2 < 1425)
    {
      return 0;
    }

    if (v2 < 0x5F5)
    {
      break;
    }

    if (v2 - 64285 >= 0x33)
    {
      return 0;
    }

    result = 1;
    if (v2 >> 5 < 0x7D9 || v2 - 64298 < 0x25)
    {
      return result;
    }

LABEL_21:
    ++a2;
  }

  if (v2 >= 0x5AF)
  {
    if (v2 <= 0x5C7)
    {
      result = 1;
      v5 = v2 - 1470;
      if (v5 > 8 || ((1 << v5) & 0x125) == 0)
      {
        return result;
      }
    }

    goto LABEL_21;
  }

  return 1;
}

uint64_t TLocaleInfo::ktivMenukadToKtivMaleh(double a1, int32x4_t a2, uint64_t a3, int *a4, void *a5)
{
  v7 = a5[2];
  v8 = 1;
  v9.i64[1] = 0xFB390000FB30;
  while (1)
  {
    v10 = *a4;
    if (*a4 <= 8202)
    {
      if (v10 == 32 || v10 == 160)
      {
        goto LABEL_11;
      }

      if (!v10)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v11 = v10 == 8203 || v10 == 65279;
      if (v11 || v10 == 12288)
      {
LABEL_11:
        v22 = *a4;
        v8 = 1;
        TBuffer<wchar_t>::insert(a5, a5[2], &v22, 1uLL);
        goto LABEL_12;
      }
    }

    if (v10 < 1425)
    {
      goto LABEL_84;
    }

    if (v10 >= 0x5F5)
    {
      break;
    }

    if (v10 >= 0x5AF)
    {
      if (v10 > 0x5C7)
      {
        goto LABEL_23;
      }

      if ((*a4 & 0x7FE) == 0x5BA)
      {
        v12 = a5[2];
        if (v12 <= v7 || *(*a5 + 4 * v12 - 4) == 1493)
        {
          goto LABEL_80;
        }

LABEL_54:
        v22 = 1493;
LABEL_79:
        TBuffer<wchar_t>::insert(a5, v12, &v22, 1uLL);
        goto LABEL_80;
      }

      v8 = 0;
      if ((v10 - 1460) > 0x12)
      {
        goto LABEL_12;
      }

      if (((1 << (v10 + 76)) & 0x49400) != 0)
      {
        goto LABEL_58;
      }

      if (v10 != 1460)
      {
        goto LABEL_12;
      }

      v12 = a5[2];
      if (v12 > v7 && *(*a5 + 4 * v12 - 4) != 1497)
      {
        v18 = a4[1];
        if (!v18 || v18 != 1456 && a4[2] != 1456)
        {
          goto LABEL_50;
        }
      }
    }

LABEL_80:
    v8 = 0;
LABEL_12:
    ++a4;
  }

  if ((v10 - 64285) < 0x33)
  {
LABEL_23:
    if (v10 > 64284)
    {
      if (v10 <= 64286)
      {
        if (v10 != 64285)
        {
          goto LABEL_80;
        }

        goto LABEL_42;
      }

      if (v10 == 64287)
      {
        goto LABEL_55;
      }

      if (v10 == 64313)
      {
LABEL_42:
        v12 = a5[2];
        if (!(v8 & 1 | (v12 <= v7)))
        {
          v13 = a4[1];
          *v9.i8 = vand_s8(vdup_n_s32(v13), 0xFFFFFFFDFFFFFFFBLL);
          a2.i32[0] = v13;
          v14 = vzip1q_s32(a2, v9);
          v15 = vextq_s8(vextq_s8(v14, v14, 8uLL), v14, 4uLL);
          v14.i32[2] = v14.i32[0];
          if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vceqq_s32(v14, xmmword_1B5B146E0), vceqq_s32(v15, xmmword_1B5B146F0)))) & 1) == 0)
          {
            v16 = *(*a5 + 4 * v12 - 4);
            if (v16 != 1493 && (v16 & 0xFFFFFFFB) != 0x5D0 && v16 != 1497 && (v16 & 0xFFFFFFFD) != 0xFB21 && v13 - 64304 <= 0xFFFFFFFD)
            {
              v22 = 1497;
              TBuffer<wchar_t>::insert(a5, v12, &v22, 1uLL);
              v12 = a5[2];
            }
          }
        }

LABEL_50:
        v22 = 1497;
        goto LABEL_79;
      }

      if (v10 != 64309)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v10 > 1519)
      {
        if (v10 == 1520)
        {
LABEL_76:
          v17 = 1493;
          v22 = 1493;
          TBuffer<wchar_t>::insert(a5, a5[2], &v22, 1uLL);
          goto LABEL_77;
        }

        if (v10 == 1521)
        {
          v22 = 1493;
          TBuffer<wchar_t>::insert(a5, a5[2], &v22, 1uLL);
          v22 = 1497;
          goto LABEL_78;
        }

        if (v10 != 1522)
        {
LABEL_39:
          if (v10 < 0xFB2A)
          {
LABEL_58:
            v22 = v10;
LABEL_78:
            v12 = a5[2];
            goto LABEL_79;
          }

          if (v10 <= 0xFB2D)
          {
            v10 = 1513;
            goto LABEL_58;
          }

          if (v10 <= 0xFB30)
          {
            v10 = 1488;
            goto LABEL_58;
          }

          if (v10 <= 0xFB4A)
          {
            v10 -= 62816;
            goto LABEL_58;
          }

          if (v10 > 64332)
          {
            if (v10 == 64333)
            {
              v10 = 1499;
            }

            else if (v10 == 64334)
            {
              v10 = 1492;
            }

            else
            {
              v22 = 1488;
              TBuffer<wchar_t>::insert(a5, a5[2], &v22, 1uLL);
              v10 = 1500;
            }

            goto LABEL_58;
          }

          if (v10 != 64331)
          {
            v10 = 1489;
            goto LABEL_58;
          }

          goto LABEL_76;
        }

LABEL_55:
        v17 = 1497;
        v22 = 1497;
        TBuffer<wchar_t>::insert(a5, a5[2], &v22, 1uLL);
LABEL_77:
        v22 = v17;
        goto LABEL_78;
      }

      if (v10 != 1493)
      {
        if (v10 != 1497)
        {
          goto LABEL_39;
        }

        goto LABEL_42;
      }
    }

    v12 = a5[2];
    if (!(v8 & 1 | (v12 <= v7)) && *(*a5 + 4 * v12 - 4) != 1493)
    {
      v22 = 1493;
      TBuffer<wchar_t>::insert(a5, v12, &v22, 1uLL);
      v12 = a5[2];
    }

    goto LABEL_54;
  }

LABEL_84:
  v19 = 0;
    ;
  }

  return TBuffer<wchar_t>::insert(a5, a5[2], a4, v19 - 1);
}