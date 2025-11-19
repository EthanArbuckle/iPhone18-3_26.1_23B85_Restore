void sub_1B54AC780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,true>,std::__unordered_map_equal<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeEquality,kaldi::quasar::AttributeHash,true>,std::allocator<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>>>::~__hash_table(&a25);
  _Unwind_Resume(a1);
}

void kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneActiveTokens(uint64_t a1, clockid_t a2, float a3)
{
  v4 = *(a1 + 288);
  v5 = *(a1 + 356);
  if (a2 >= 1)
  {
    v7 = a2;
    v8 = *(a1 + 88);
    v9 = a2 + 1;
    v10 = (8 * a2) | 5;
    do
    {
      if (*(v8 + v10 - 9) == 1)
      {
        LOBYTE(v20[0].__locale_) = 0;
        v21 = 0;
        kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneForwardLinks(a1, v9 - 2, v20, &v21, 0, a3);
        v8 = *(a1 + 88);
        if (v9 != 2 && (v20[0].__locale_ & 1) != 0)
        {
          *(v8 + v10 - 17) = 1;
        }

        if (v21 == 1)
        {
          *(v8 + v10 - 8) = 1;
        }

        *(v8 + v10 - 9) = 0;
      }

      v11 = v9 - 1;
      if (v9 - 1 < v7 && *(v8 + v10) == 1)
      {
        kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneTokensForFrame(a1, v9 - 1, 0);
        v8 = *(a1 + 88);
        *(v8 + v10) = 0;
      }

      v10 -= 8;
      --v9;
    }

    while (v11 > 1);
  }

  v12 = *(a1 + 456);
  if (v12)
  {
    free(v12);
    *(a1 + 456) = 0;
    *(a1 + 464) = 0;
  }

  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  if (kaldi::g_kaldi_verbose_level > 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v20, 3);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "PruneActiveTokens: pruned tokens from ", 38);
    v14 = MEMORY[0x1B8C84C00](v13, v4);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " to ", 4);
    v16 = MEMORY[0x1B8C84C00](v15, *(a1 + 288));
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " links from ", 12);
    v18 = MEMORY[0x1B8C84C00](v17, (v5 - 1));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " to ", 4);
    MEMORY[0x1B8C84C00](v19, (*(a1 + 356) - 1));
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v20);
  }

  kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::CompactTokensAndLinks(a1, a2);
}

void kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::UndoPruneActiveTokensFinal(uint64_t a1)
{
  if ((*(a1 + 425) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v27, "Cannot undo PruneActiveTokensFinal(undoable=false)");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
  }

  v2 = *(a1 + 288);
  v3 = *(a1 + 356);
  v4 = *(a1 + 376);
  v5 = *(a1 + 384);
  if (v5 != v4)
  {
    v6 = *(a1 + 88);
    v7 = *(a1 + 328);
    do
    {
      v8 = *(v5 - 8);
      v5 -= 8;
      v9 = 8 * (v8 >> 32);
      *(v7 + 32 * v8 + 24) = *(v6 + v9);
      *(v6 + v9) = v8;
      ++*(a1 + 288);
    }

    while (v5 != v4);
  }

  *(a1 + 384) = v4;
  v10 = *(a1 + 432);
  v11 = *(a1 + 440);
  if (v10 != v11)
  {
    v12 = *(a1 + 328);
    v13 = *(a1 + 432);
    do
    {
      *(v12 + 32 * *v13 + 16) = v13[1];
      v13 += 2;
    }

    while (v13 != v11);
  }

  v14 = *(a1 + 400);
  v15 = *(a1 + 408);
  if (v15 != v14)
  {
    v16 = *(a1 + 328);
    v17 = *(a1 + 344);
    do
    {
      v18 = *(v15 - 8);
      v15 -= 8;
      v19 = v16 + 32 * HIDWORD(v18);
      *(v17 + 24 * v18 + 20) = *(v19 + 20);
      *(v19 + 20) = v18;
    }

    while (v15 != v14);
  }

  *(a1 + 424) = 0;
  *(a1 + 440) = v10;
  *(a1 + 384) = v4;
  *(a1 + 408) = v14;
  *(a1 + 296) = 0;
  std::__tree<int>::destroy(a1 + 304, *(a1 + 312));
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = a1 + 312;
  if (kaldi::g_kaldi_verbose_level > 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v27, 3);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "UndoPruneActiveTokensFinal: restored tokens from ", 49);
    v21 = MEMORY[0x1B8C84C00](v20, v2);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " to ", 4);
    v23 = MEMORY[0x1B8C84C00](v22, *(a1 + 288));
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " links from ", 12);
    v25 = MEMORY[0x1B8C84C00](v24, (v3 - 1));
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " to ", 4);
    MEMORY[0x1B8C84C00](v26, (*(a1 + 356) - 1));
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v27);
  }
}

void sub_1B54ACBE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

float kaldi::GetCutoffHelper<kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,kaldi::quasar::LatticeBiglmFasterTraceBackDecoderConfig,kaldi::HashList<unsigned long long,unsigned int,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::Elem>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float *a5, void *a6, int a7, float a8)
{
  v11 = a3;
  v14 = *(a2 + 8);
  v15 = *(a2 + 4);
  if (*(a2 + 12))
  {
    v14 = *(a2 + 12);
  }

  if (a7)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15 != 0x7FFFFFFF || v16 != 0)
  {
    v18 = (a1 + 136);
    *(a1 + 144) = *(a1 + 136);
    v19 = 0;
    if (a3)
    {
      v20 = -INFINITY;
      v21 = INFINITY;
      do
      {
        v38 = *(*(a1 + 328) + 32 * *(v11 + 8) + 12);
        std::vector<float>::push_back[abi:ne200100]((a1 + 136), &v38);
        a8 = v38;
        if (v38 >= v21)
        {
          v22 = 1;
        }

        else
        {
          v21 = v38;
          v22 = a6 == 0;
        }

        if (!v22)
        {
          *a6 = v11;
          v21 = a8;
        }

        if (a8 > v20)
        {
          v20 = a8;
        }

        v11 = *(v11 + 16);
        ++v19;
      }

      while (v11);
      if (!a4)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v21 = INFINITY;
      v20 = -INFINITY;
      if (!a4)
      {
        goto LABEL_22;
      }
    }

    *a4 = v19;
LABEL_22:
    v23 = *a2;
    v24 = INFINITY;
    if (!*(a2 + 12))
    {
      v20 = INFINITY;
    }

    v25 = *(a1 + 136);
    v26 = *(a1 + 144);
    v27 = v26 - v25;
    if (v27 > v15)
    {
      v28 = &v25[v15];
      if (v28 != v26)
      {
        std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(v25, v28, v26, a8);
        v25 = *(a1 + 136);
        v26 = *(a1 + 144);
        v27 = v26 - v25;
      }

      v24 = v25[v15];
    }

    v29 = v21 + v23;
    if (v27 > v16)
    {
      v30 = v21;
    }

    else
    {
      v30 = v20;
    }

    if (v16 && v27 > v16)
    {
      v31 = &v25[v16];
      if (v27 > v15)
      {
        v26 = &v25[v15];
      }

      if (v31 != v26)
      {
        std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(v25, v31, v26, v30);
        v25 = *v18;
      }

      v30 = v25[v16];
    }

    if (v24 >= v29)
    {
      if (v30 <= v29)
      {
        *a5 = *a2;
        return v29;
      }

      else
      {
        if (a5)
        {
          *a5 = (v30 - v21) + *(a2 + 28);
        }

        return v30;
      }
    }

    else if (a5)
    {
      *a5 = (v24 - v21) + *(a2 + 28);
    }

    return v24;
  }

  v32 = 0;
  v33 = INFINITY;
  if (a3)
  {
    do
    {
      v34 = *(*(a1 + 328) + 32 * *(v11 + 8) + 12);
      if (v34 >= v33)
      {
        v35 = 1;
      }

      else
      {
        v33 = *(*(a1 + 328) + 32 * *(v11 + 8) + 12);
        v35 = a6 == 0;
      }

      if (!v35)
      {
        *a6 = v11;
        v33 = v34;
      }

      v11 = *(v11 + 16);
      ++v32;
    }

    while (v11);
  }

  if (a4)
  {
    *a4 = v32;
  }

  v36 = *a2;
  if (a5)
  {
    *a5 = v36;
  }

  return v33 + v36;
}

uint64_t kaldi::quasar::LazyBuffer<float>::LazyBuffer(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = 0;
  *(a1 + 12) = 1;
  if (!a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v19, "count > 0");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
  }

  *(a1 + 8) = a2;
  if (a3)
  {
    *(a1 + 12) = a2;
  }

  address = 0;
  v5 = vm_allocate(*MEMORY[0x1E69E9A60], &address, 4 * a2, 1711276033);
  if (v5)
  {
    v17 = v5;
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
      v7 = MEMORY[0x1B8C84BB0](v19, a1);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": Could not vm_allocate ", 24);
      v9 = MEMORY[0x1B8C84C10](v8, a2);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " of ", 4);
      v11 = *(MEMORY[0x1E69E5468] + 8);
      v12 = strlen((v11 & 0x7FFFFFFFFFFFFFFFLL));
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11 & 0x7FFFFFFFFFFFFFFFLL, v12);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ": ", 2);
      MEMORY[0x1B8C84C00](v14, v17);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v19);
    }

    exception = __cxa_allocate_exception(8uLL);
    v16 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v16, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  *a1 = address;
  return a1;
}

void sub_1B54ACFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
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

void kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::CompactTokensAndLinks(uint64_t a1, clockid_t a2)
{
  if (*(a1 + 424) == 1)
  {
    if (kaldi::g_kaldi_verbose_level >= 2)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v51, 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Skipping compaction final pruning because has been done", 55);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v51);
    }
  }

  else
  {
    v3 = *(a1 + 340);
    v4 = *(a1 + 356);
    v49 = 1;
    kaldi::Timer::Reset(v47, a2);
    v50 = 0;
    kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::MarkAndTraceLiveTokens(a1);
    kaldi::quasar::TokenHeap::RemoveDeadObjects((a1 + 328), v44);
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = v44[0];
      do
      {
        *(v5 + 8) = v6[*(v5 + 8)];
        v5 = *(v5 + 16);
      }

      while (v5);
    }

    v7 = *(a1 + 88);
    v8 = *(a1 + 96);
    if (v7 != v8)
    {
      v9 = v44[0];
      do
      {
        *v7 = v9[*v7];
        v7 += 2;
      }

      while (v7 != v8);
    }

    v10 = *(a1 + 376);
    v11 = *(a1 + 384);
    if (v10 != v11)
    {
      v12 = v44[0];
      do
      {
        *v10 = v12[*v10];
        v10 += 2;
      }

      while (v10 != v11);
    }

    v13 = *(a1 + 400);
    v14 = *(a1 + 408);
    if (v13 != v14)
    {
      v15 = v45;
      v16 = v44[0];
      do
      {
        v17 = v13[1];
        *v13 = v15[*v13];
        v13[1] = v16[v17];
        v13 += 2;
      }

      while (v13 != v14);
    }

    v42 = 0;
    v43 = 0;
    v41 = &v42;
    v18 = *(a1 + 304);
    v19 = (a1 + 312);
    if (v18 != (a1 + 312))
    {
      do
      {
        LODWORD(v51[0].__locale_) = *(v44[0] + *(v18 + 7));
        HIDWORD(v51[0].__locale_) = *(v18 + 8);
        std::__tree<std::__value_type<unsigned int,float>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,float>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,float>>(&v41, v51);
        v20 = v18[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v18[2];
            v22 = *v21 == v18;
            v18 = v21;
          }

          while (!v22);
        }

        v18 = v21;
      }

      while (v21 != v19);
    }

    std::__tree<int>::destroy(a1 + 304, *(a1 + 312));
    v23 = v42;
    *(a1 + 304) = v41;
    *(a1 + 312) = v23;
    v24 = v43;
    *(a1 + 320) = v43;
    if (v24)
    {
      v23[2] = v19;
      v41 = &v42;
      v42 = 0;
      v43 = 0;
    }

    else
    {
      *(a1 + 304) = v19;
    }

    __p[0] = 0;
    __p[1] = 0;
    v40 = 0;
    v25 = *(a1 + 432);
    v26 = *(a1 + 440);
    if (v25 != v26)
    {
      do
      {
        LODWORD(v51[0].__locale_) = *(v44[0] + *v25);
        HIDWORD(v51[0].__locale_) = v25[1];
        std::vector<std::pair<int,int>>::push_back[abi:ne200100](__p, v51);
        v25 += 2;
      }

      while (v25 != v26);
      v25 = *(a1 + 432);
    }

    if (v25)
    {
      *(a1 + 440) = v25;
      operator delete(v25);
      *(a1 + 432) = 0;
      *(a1 + 440) = 0;
      *(a1 + 448) = 0;
    }

    *(a1 + 432) = *__p;
    *(a1 + 448) = v40;
    __p[1] = 0;
    v40 = 0;
    __p[0] = 0;
    if (kaldi::g_kaldi_verbose_level > 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v51, 2);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Compacted in ", 13);
      Seconds = kaldi::Timer::GetSeconds(0x10, v28);
      v30 = MEMORY[0x1B8C84BE0](v27, (Seconds - v48) * 1000.0);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " ms ", 4);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "tokens ", 7);
      v33 = MEMORY[0x1B8C84C00](v32, (v3 - 1));
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " -> ", 4);
      v35 = MEMORY[0x1B8C84C00](v34, (*(a1 + 340) - 1));
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " and forward links ", 19);
      v37 = MEMORY[0x1B8C84C00](v36, (v4 - 1));
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " -> ", 4);
      MEMORY[0x1B8C84C00](v38, (*(a1 + 356) - 1));
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v51);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    std::__tree<int>::destroy(&v41, v42);
    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }

    if (v44[0])
    {
      v44[1] = v44[0];
      operator delete(v44[0]);
    }
  }
}

void sub_1B54AD5E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<int>::destroy(&a12, a13);
  kaldi::LatticeWordAligner::ComputationState::~ComputationState(&a15);
  _Unwind_Resume(a1);
}

kaldi::quasar::TokenHeap *kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::MarkAndTraceLiveTokens(kaldi::quasar::TokenHeap *result)
{
  v1 = result;
  for (i = *(result + 1); i; i = *(i + 16))
  {
    result = kaldi::quasar::TokenHeap::MarkAndTraceToken((v1 + 328), *(i + 8), 1);
  }

  v3 = *(v1 + 11);
  v4 = *(v1 + 12);
  while (v3 != v4)
  {
    v5 = *v3;
    v3 += 2;
    result = kaldi::quasar::TokenHeap::MarkAndTraceToken((v1 + 328), v5, 1);
  }

  v6 = *(v1 + 50);
  for (j = *(v1 + 51); v6 != j; v6 += 2)
  {
    for (k = *v6; k; k = v9[5])
    {
      v9 = (*(v1 + 43) + 24 * k);
      *v9 |= 1u;
    }

    result = kaldi::quasar::TokenHeap::MarkAndTraceToken((v1 + 328), v6[1], 1);
  }

  v10 = *(v1 + 47);
  v11 = *(v1 + 48);
  while (v10 != v11)
  {
    v12 = *v10;
    v10 += 2;
    result = kaldi::quasar::TokenHeap::MarkAndTraceToken((v1 + 328), v12, 1);
  }

  v13 = *(v1 + 54);
  v14 = *(v1 + 55);
  while (v13 != v14)
  {
    v15 = *v13;
    v13 += 2;
    result = kaldi::quasar::TokenHeap::MarkAndTraceToken((v1 + 328), v15, 1);
  }

  return result;
}

uint64_t kaldi::quasar::TokenHeap::RemoveDeadObjects@<X0>(kaldi::quasar::TokenHeap *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 >= 2)
  {
    v5 = 0;
    for (i = 1; i < v4; ++i)
    {
      v7 = *this + v5;
      v8 = *(v7 + 40);
      if (v8 >= 0x40 && (*(v7 + 32) & 1) != 0)
      {
        kaldi::quasar::TokenHeap::MarkAndTraceToken(this, v8 >> 6, 1);
        v4 = *(this + 3);
      }

      v5 += 32;
    }
  }

  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  kaldi::quasar::LazyBuffer<kaldi::quasar::TokenHeap::Token>::RemoveDeadElements(this, a2);
  result = kaldi::quasar::LazyBuffer<kaldi::quasar::TokenHeap::ForwardLink>::RemoveDeadElements(this + 16, a2 + 1);
  if (*(this + 3) >= 2u)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = (*this + v10);
      v13 = *a2;
      v14 = v12[13];
      v12[14] = *(*a2 + 4 * v12[14]);
      v12[10] = v12[10] & 0x3F | (*(v13 + ((v12[10] >> 4) & 0xFFFFFFC)) << 6);
      v12[13] = *(a2[3] + 4 * v14);
      ++v11;
      v10 += 32;
    }

    while (v11 < *(this + 3));
  }

  v15 = *(this + 7);
  if (v15 >= 2)
  {
    v16 = *a2;
    v17 = a2[3];
    v18 = (*(this + 2) + 44);
    v19 = v15 - 1;
    do
    {
      *(v18 - 4) = *(v16 + 4 * *(v18 - 4));
      *v18 = *(v17 + 4 * *v18);
      v18 += 6;
      --v19;
    }

    while (v19);
  }

  return result;
}

kaldi::quasar::TokenHeap *kaldi::quasar::TokenHeap::MarkAndTraceToken(kaldi::quasar::TokenHeap *this, unsigned int a2, int a3)
{
  if (a2)
  {
    v3 = this;
    v4 = *this + 32 * a2;
    if ((*v4 & 1) == 0)
    {
      *v4 |= 1uLL;
      for (i = *(v4 + 20); i; i = v6[5])
      {
        v6 = (*(this + 2) + 24 * i);
        *v6 |= 1u;
      }

      if (a3)
      {
        while (1)
        {
          v7 = *(v4 + 24);
          if (!v7)
          {
            break;
          }

          this = kaldi::quasar::TokenHeap::MarkAndTraceToken(v3, *(v4 + 24), 0);
          v4 = *v3 + 32 * v7;
        }
      }
    }
  }

  return this;
}

uint64_t kaldi::quasar::LazyBuffer<kaldi::quasar::TokenHeap::Token>::RemoveDeadElements(uint64_t a1, std::vector<unsigned int> *this)
{
  v4 = *(a1 + 12);
  std::vector<int>::resize(this, v4);
  if (v4 < 2)
  {
    v7 = 1;
  }

  else
  {
    v5 = 1;
    v6 = 32;
    v7 = 1;
    do
    {
      v8 = *a1;
      v9 = (*a1 + v6);
      if (*v9)
      {
        if (v5 != v7)
        {
          v10 = (v8 + 32 * v7);
          v11 = v9[1];
          *v10 = *v9;
          v10[1] = v11;
          v8 = *a1;
        }

        *(v8 + 32 * v7) &= ~1uLL;
        this->__begin_[v5] = v7++;
      }

      else
      {
        this->__begin_[v5] = -1;
      }

      ++v5;
      v6 += 32;
    }

    while (v4 != v5);
  }

  return kaldi::quasar::LazyBuffer<kaldi::quasar::TokenHeap::Token>::ShrinkBuffer(a1, v7);
}

uint64_t kaldi::quasar::LazyBuffer<kaldi::quasar::TokenHeap::ForwardLink>::RemoveDeadElements(uint64_t a1, std::vector<unsigned int> *this)
{
  v4 = *(a1 + 12);
  std::vector<int>::resize(this, v4);
  if (v4 < 2)
  {
    v7 = 1;
  }

  else
  {
    v5 = 1;
    v6 = 24;
    v7 = 1;
    do
    {
      v8 = *a1;
      v9 = *a1 + v6;
      if (*v9)
      {
        if (v5 != v7)
        {
          v10 = v8 + 24 * v7;
          v11 = *v9;
          *(v10 + 16) = *(v9 + 16);
          *v10 = v11;
          v8 = *a1;
        }

        *(v8 + 24 * v7) &= ~1u;
        this->__begin_[v5] = v7++;
      }

      else
      {
        this->__begin_[v5] = -1;
      }

      ++v5;
      v6 += 24;
    }

    while (v4 != v5);
  }

  return kaldi::quasar::LazyBuffer<kaldi::quasar::TokenHeap::ForwardLink>::ShrinkBuffer(a1, v7);
}

uint64_t kaldi::quasar::LazyBuffer<kaldi::quasar::TokenHeap::Token>::ShrinkBuffer(uint64_t a1, uint64_t a2)
{
  result = sysconf(29);
  v5 = (result - 1 + 32 * a2) & -result;
  v6 = (result - 1 + 32 * *(a1 + 12)) & -result;
  if (v6 != v5)
  {
    result = madvise((v5 + *a1), v6 - v5, 7);
    if (result)
    {
      v7 = result;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " Could not madvise: ", 20);
      v9 = strerror(v7);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, v9);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
    }
  }

  *(a1 + 12) = a2;
  return result;
}

uint64_t kaldi::quasar::LazyBuffer<kaldi::quasar::TokenHeap::ForwardLink>::ShrinkBuffer(uint64_t a1, uint64_t a2)
{
  result = sysconf(29);
  v5 = (result - 1 + 24 * a2) & -result;
  v6 = (result - 1 + 24 * *(a1 + 12)) & -result;
  if (v6 != v5)
  {
    result = madvise((v5 + *a1), v6 - v5, 7);
    if (result)
    {
      v7 = result;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " Could not madvise: ", 20);
      v9 = strerror(v7);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, v9);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
    }
  }

  *(a1 + 12) = a2;
  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,float>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,float>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,float>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
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

void ***std::unique_ptr<std::vector<kaldi::quasar::BetterTracebackWord>>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<kaldi::quasar::BetterTracebackWord>::__destroy_vector::operator()[abi:ne200100](&v3);
    return MEMORY[0x1B8C85350](v2, 0x20C40960023A9);
  }

  return result;
}

void std::vector<kaldi::quasar::BetterTracebackWord>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<kaldi::quasar::BetterTracebackWord>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<kaldi::quasar::BetterTracebackWord>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 40);
      v4 -= 40;
      v5 = v6;
      if (v6)
      {
        *(v2 - 32) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::BetterTraceback::StepBackward(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a2 >> 33;
  v32 = v4;
  if (v4 && *(*(a1 + 8) + 24) != v4)
  {
    std::vector<int>::push_back[abi:ne200100]((a1 + 136), &v32);
    v3 = *a2;
  }

  if (v3 >= 2)
  {
    v6 = v3 >> 1;
    if ((*(a1 + 72) & 0x80000000) != 0)
    {
      *(a1 + 72) = *(a1 + 64);
    }

    v7 = kaldi::TransitionModel::TransitionIdToPhone(*a1, v6);
    if (kaldi::g_kaldi_verbose_level >= 3)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v31, 3);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "BetterTraceback STEP current_frame_: ", 37);
      v9 = MEMORY[0x1B8C84C00](v8, *(a1 + 64));
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " phone: ", 8);
      v11 = *(a1 + 32);
      if (v11)
      {
        (*(*v11 + 88))(v29);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v29, "");
      }

      if ((v30 & 0x80u) == 0)
      {
        v12 = v29;
      }

      else
      {
        v12 = v29[0];
      }

      if ((v30 & 0x80u) == 0)
      {
        v13 = v30;
      }

      else
      {
        v13 = v29[1];
      }

      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " final: ", 8);
      IsFinal = kaldi::TransitionModel::IsFinal(*a1, v6);
      v17 = MEMORY[0x1B8C84BD0](v15, IsFinal);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " isloop: ", 9);
      IsSelfLoop = kaldi::TransitionModel::IsSelfLoop(*a1, v6);
      v20 = MEMORY[0x1B8C84BD0](v18, IsSelfLoop);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " current_phone_: ", 17);
      kaldi::quasar::BetterTracebackPhone::ToString(__p, (a1 + 68), *(a1 + 32));
      if ((v28 & 0x80u) == 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      if ((v28 & 0x80u) == 0)
      {
        v23 = v28;
      }

      else
      {
        v23 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }

      if (v30 < 0)
      {
        operator delete(v29[0]);
      }

      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v31);
    }

    v24 = *(a1 + 64);
    if (v24 < 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v31);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v31, "current_frame_ >= 0");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v31);
    }

    if (v7 == *(a1 + 16))
    {
      ++*(a1 + 128);
    }

    else
    {
      if (kaldi::TransitionModel::IsFinal(*a1, v6) && (*(a1 + 68) & 0x80000000) == 0)
      {
        kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::BetterTraceback::AddPhone(a1);
      }

      v25 = kaldi::TransitionModel::IsSelfLoop(*a1, v6);
      v24 = *(a1 + 64);
      if (!v25)
      {
        *(a1 + 68) = v24;
        v26 = *(a1 + 80) + *(a1 + 128);
        *(a1 + 76) = v7;
        *(a1 + 80) = v26;
        *(a1 + 128) = 0;
      }
    }

    *(a1 + 64) = v24 - 1;
  }
}

void kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::BetterTraceback::Finalize(uint64_t a1)
{
  if ((*(a1 + 68) & 0x80000000) == 0)
  {
    kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::BetterTraceback::AddPhone(a1);
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v35, 3);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "BetterTraceback FINALIZE utt_trailing_sil_start_frame_: ", 56);
    v3 = MEMORY[0x1B8C84C00](v2, *(a1 + 52));
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ", utt_speech_start_frame_: ", 27);
    MEMORY[0x1B8C84C00](v4, *(a1 + 56));
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v35);
  }

  v5 = (a1 + 160);
  v6 = (a1 + 168);
  v7 = *(a1 + 136);
  if (*(a1 + 144) != v7)
  {
    v8 = 0;
    v9 = (a1 + 168);
    do
    {
      v10 = *v9;
      if (*v9 == v5)
      {
        operator new();
      }

      v11 = *(a1 + 8);
      v14 = *(v11 + 40);
      v12 = v11 + 40;
      v13 = v14;
      v15 = *(v7 + 4 * v8);
      if (v14)
      {
        v16 = v12;
        do
        {
          if (*(v13 + 28) >= v15)
          {
            v16 = v13;
          }

          v13 = *(v13 + 8 * (*(v13 + 28) < v15));
        }

        while (v13);
        if (v16 != v12 && v15 >= *(v16 + 28))
        {
          goto LABEL_16;
        }
      }

      if (v15 == *(*(a1 + 8) + 24))
      {
LABEL_16:
        operator new();
      }

      *(v10 + 13) = v15;
      v9 = (v10 + 1);
      ++v8;
      v7 = *(a1 + 136);
    }

    while (v8 < (*(a1 + 144) - v7) >> 2);
  }

  *(a1 + 144) = v7;
  v17 = std::remove_if[abi:ne200100]<std::__list_iterator<kaldi::quasar::BetterTracebackWord,void *>,kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::BetterTraceback::Finalize(void)::{lambda(std::__list_iterator<kaldi::quasar::BetterTracebackWord,void *> const&)#1}>(*(a1 + 168), a1 + 160, a1);
  std::list<kaldi::quasar::BetterTracebackWord>::erase(a1 + 160, v17, (a1 + 160));
  if (*(a1 + 176))
  {
    v18 = *v6;
    if (*v6 != v5)
    {
      v19 = a1 + 160;
      do
      {
        v19 = *v19;
        if (v18 == v19)
        {
          break;
        }

        v20 = *(v18 + 1);
        v21 = v18[4];
        v18[2] = 0;
        v18[3] = 0;
        v18[4] = 0;
        v34 = v20;
        v35 = *(v18 + 5);
        std::vector<int>::__move_assign((v18 + 2), (v19 + 16));
        *(v18 + 5) = *(v19 + 40);
        v22 = *(v19 + 16);
        if (v22)
        {
          *(v19 + 24) = v22;
          operator delete(v22);
        }

        v23 = v35;
        *(v19 + 16) = v34;
        *(v19 + 32) = v21;
        *(v19 + 40) = v23;
        v18 = v18[1];
      }

      while (v18 != v19);
      v18 = *v6;
    }

    if (v18 != v5)
    {
      v24 = *(a1 + 56);
      do
      {
        v25 = *(v18 + 1);
        v27 = *(&v25 + 1);
        v26 = v25;
        if (v25 == *(&v25 + 1))
        {
          *(v18 + 10) = v24;
          *(v18 + 11) = v24;
        }

        else
        {
          *(v18 + 10) = *(*(&v25 + 1) - 16);
          v24 = *(v25 + 4);
          *(v18 + 11) = v24;
          if ((*(a1 + 16) & 0x80000000) != 0)
          {
            *(v18 + 12) = v24;
            do
            {
              if (!kaldi::SilencePhoneSet::isSilencePhone(*(a1 + 24), v26[2]))
              {
                break;
              }

              v28 = *v26;
              v26 += 4;
              *(v18 + 12) = v28;
            }

            while (v26 != v27);
            v25 = *(v18 + 1);
          }

          else
          {
            *(v18 + 12) = v24 - *(v25 + 12) + 1;
          }
        }

        v29 = (*(&v25 + 1) - 16);
        if (v25 != *(&v25 + 1) && v29 > v25)
        {
          v31 = v25 + 16;
          do
          {
            v35 = *(v31 - 16);
            *(v31 - 16) = *v29;
            *v29-- = v35;
            v32 = v31 >= v29;
            v31 += 16;
          }

          while (!v32);
          v25 = *(v18 + 1);
        }

        v33 = std::remove_if[abi:ne200100]<std::__wrap_iter<kaldi::quasar::BetterTracebackPhone *>,kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::BetterTraceback::Finalize(void)::{lambda(std::__wrap_iter<kaldi::quasar::BetterTracebackPhone *> const&)#2}>(v25, *(&v25 + 1), a1);
        if (v33 != v18[3])
        {
          v18[3] = v33;
        }

        v18 = v18[1];
      }

      while (v18 != v5);
    }

    if ((*(a1 + 48) & 1) != 0 && (*(a1 + 16) & 0x80000000) == 0)
    {
      *&v35 = &v35;
      *(&v35 + 1) = &v35;
      v36 = 0;
      if (*v6 != v5)
      {
        std::__list_imp<kaldi::quasar::BetterTracebackWord>::__create_node[abi:ne200100]<kaldi::quasar::BetterTracebackWord const&>();
      }

      if (v5 != &v35)
      {
        std::list<kaldi::quasar::BetterTracebackWord>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<kaldi::quasar::BetterTracebackWord,void *>,std::__list_const_iterator<kaldi::quasar::BetterTracebackWord,void *>>(v5, *(&v35 + 1), &v35);
      }

      std::__list_imp<kaldi::quasar::BetterTracebackWord>::clear(&v35);
    }
  }
}

void sub_1B54AE608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__list_imp<kaldi::quasar::BetterTracebackWord>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::BetterTraceback::GetWords@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 168);
  v5 = a1 + 160;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v4 == a1 + 160)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = v4;
    do
    {
      ++v6;
      v7 = *(v7 + 8);
    }

    while (v7 != v5);
  }

  return std::vector<kaldi::quasar::BetterTracebackWord>::__init_with_size[abi:ne200100]<std::__list_const_iterator<kaldi::quasar::BetterTracebackWord,void *>,std::__list_const_iterator<kaldi::quasar::BetterTracebackWord,void *>>(a2, v4, v5, v6);
}

double kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::BetterTraceback::BetterTraceback(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char a9)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  *(a1 + 48) = a9;
  *(a1 + 52) = a8;
  *(a1 + 56) = a8;
  *(a1 + 60) = 0;
  *(a1 + 64) = a8;
  *(a1 + 68) = xmmword_1B5AE71B0;
  v9 = *(a3 + 24);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  result = NAN;
  *(a1 + 112) = -1;
  *(a1 + 120) = -1;
  *(a1 + 124) = v9;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a1 + 160;
  *(a1 + 168) = a1 + 160;
  *(a1 + 176) = 0;
  if ((*(a3 + 56) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "info_->reorder", 14);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
  }

  return result;
}

void sub_1B54AE75C(_Unwind_Exception *a1)
{
  std::__list_imp<kaldi::quasar::BetterTracebackWord>::clear(v2);
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 144) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 96) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void std::__list_imp<kaldi::quasar::BetterTracebackWord>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = v2[1];
      std::__list_imp<std::pair<std::vector<int>,float>>::__delete_node[abi:ne200100](a1, v2);
      v2 = v5;
    }
  }
}

void *std::unique_ptr<kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::BetterTraceback,std::default_delete<kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::BetterTraceback>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__list_imp<kaldi::quasar::BetterTracebackWord>::clear(v2 + 20);
    v3 = v2[17];
    if (v3)
    {
      v2[18] = v3;
      operator delete(v3);
    }

    v4 = v2[11];
    if (v4)
    {
      v2[12] = v4;
      operator delete(v4);
    }

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

uint64_t kaldi::quasar::BetterTracebackPhone::ToString(kaldi::quasar::BetterTracebackPhone *this, const fst::SymbolTable *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v24);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "Phone(start_frame=", 18);
  v5 = MEMORY[0x1B8C84C00](v4, *this);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ", end_frame=", 12);
  v7 = MEMORY[0x1B8C84C00](v6, *(this + 1));
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", phone_id=", 11);
  v9 = MEMORY[0x1B8C84C00](v8, *(this + 2));
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", trailing_blanks=", 18);
  v11 = MEMORY[0x1B8C84C00](v10, *(this + 3));
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", phone=", 8);
  if (a2)
  {
    (*(*a2 + 88))(&__p, a2, *(this + 2));
    v13 = HIBYTE(v23);
    v15 = __p;
    v14 = v22;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v13 = 0;
    __p = 0;
    v22 = 0;
    v23 = 0;
  }

  if ((v13 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v15;
  }

  if ((v13 & 0x80u) == 0)
  {
    v17 = v13;
  }

  else
  {
    v17 = v14;
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, p_p, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ")", 1);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
  }

  std::stringbuf::str();
  v24[0] = *MEMORY[0x1E69E54D8];
  v19 = *(MEMORY[0x1E69E54D8] + 72);
  *(v24 + *(v24[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v25 = v19;
  v26 = MEMORY[0x1E69E5548] + 16;
  if (v28 < 0)
  {
    operator delete(v27[7].__locale_);
  }

  v26 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v27);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v29);
}

void kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::BetterTraceback::AddPhone(uint64_t a1)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v22, 3);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "BetterTraceback ADD current_phone_: ", 36);
    kaldi::quasar::BetterTracebackPhone::ToString(__p, (a1 + 68), *(a1 + 32));
    if ((v21 & 0x80u) == 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    if ((v21 & 0x80u) == 0)
    {
      v4 = v21;
    }

    else
    {
      v4 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v22);
  }

  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(a1 + 16) & 0x80000000) != 0)
    {
      if (kaldi::SilencePhoneSet::isSilencePhone(*(a1 + 24), *(a1 + 76)))
      {
        *(a1 + 52) = *(a1 + 68);
        goto LABEL_17;
      }
    }

    else
    {
      *(a1 + 52) = *(a1 + 72) - *(a1 + 80) + 1;
    }

    *(a1 + 60) = 1;
  }

LABEL_17:
  v5 = kaldi::WordBoundaryInfo::TypeOfPhone(*(a1 + 8), *(a1 + 76));
  v7 = *(a1 + 96);
  v6 = *(a1 + 104);
  if (v7 >= v6)
  {
    v9 = *(a1 + 88);
    v10 = (v7 - v9) >> 4;
    v11 = v10 + 1;
    if ((v10 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = v6 - v9;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1 + 88, v13);
    }

    v14 = (16 * v10);
    *v14 = *(a1 + 68);
    v8 = 16 * v10 + 16;
    v15 = *(a1 + 88);
    v16 = *(a1 + 96) - v15;
    v17 = 16 * v10 - v16;
    memcpy(v14 - v16, v15, v16);
    v18 = *(a1 + 88);
    *(a1 + 88) = v17;
    *(a1 + 96) = v8;
    *(a1 + 104) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v7 = *(a1 + 68);
    v8 = (v7 + 1);
  }

  *(a1 + 96) = v8;
  v19 = *(a1 + 68) - 1;
  *(a1 + 68) = -1;
  *(a1 + 72) = v19;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  if ((v5 & 0xFFFFFFFD) == 1)
  {
    *(a1 + 56) = *(a1 + 112);
    std::__list_imp<kaldi::quasar::BetterTracebackWord>::__create_node[abi:ne200100]<kaldi::quasar::BetterTracebackWord&>();
  }
}

void sub_1B54AED8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&a15);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::quasar::BetterTracebackPhone>::__init_with_size[abi:ne200100]<kaldi::quasar::BetterTracebackPhone*,kaldi::quasar::BetterTracebackPhone*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B54AEEA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::list<kaldi::quasar::BetterTracebackWord>::erase(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v5 = *(*a3 + 8);
    v6 = *a2;
    *(v6 + 8) = v5;
    *v5 = v6;
    do
    {
      v7 = a2[1];
      --*(a1 + 16);
      std::__list_imp<std::pair<std::vector<int>,float>>::__delete_node[abi:ne200100](a1, a2);
      a2 = v7;
    }

    while (v7 != a3);
  }

  return a3;
}

uint64_t std::remove_if[abi:ne200100]<std::__list_iterator<kaldi::quasar::BetterTracebackWord,void *>,kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::BetterTraceback::Finalize(void)::{lambda(std::__list_iterator<kaldi::quasar::BetterTracebackWord,void *> const&)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (*(v3 + 52) != *(*(a3 + 8) + 24))
    {
      v3 = *(v3 + 8);
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = *(v3 + 8); i != a2; i = *(i + 8))
      {
        if (*(i + 52) != *(*(a3 + 8) + 24))
        {
          std::vector<int>::__move_assign(v3 + 16, (i + 16));
          *(v3 + 40) = *(i + 40);
          v3 = *(v3 + 8);
        }
      }
    }
  }

  return v3;
}

_DWORD *std::remove_if[abi:ne200100]<std::__wrap_iter<kaldi::quasar::BetterTracebackPhone *>,kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::BetterTraceback::Finalize(void)::{lambda(std::__wrap_iter<kaldi::quasar::BetterTracebackPhone *> const&)#2}>(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  result = a2;
  if (a1 != a2)
  {
    result = a1;
    while (*result < *(a3 + 52))
    {
      result += 4;
      if (result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      for (i = result + 4; i != a2; ++i)
      {
        if (*i < *(a3 + 52))
        {
          *result = *i;
          result += 4;
        }
      }
    }
  }

  return result;
}

uint64_t *std::list<kaldi::quasar::BetterTracebackWord>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<kaldi::quasar::BetterTracebackWord,void *>,std::__list_const_iterator<kaldi::quasar::BetterTracebackWord,void *>>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  if (a2 != a3 && v6 != a1)
  {
    do
    {
      if (v6 != v4)
      {
        std::vector<kaldi::quasar::BetterTracebackPhone>::__assign_with_size[abi:ne200100]<kaldi::quasar::BetterTracebackPhone*,kaldi::quasar::BetterTracebackPhone*>(v6 + 2, *(v4 + 16), *(v4 + 24), (*(v4 + 24) - *(v4 + 16)) >> 4);
      }

      *(v6 + 5) = *(v4 + 40);
      v4 = *(v4 + 8);
      v6 = v6[1];
    }

    while (v4 != a3 && v6 != a1);
  }

  if (v6 == a1)
  {

    return std::list<kaldi::quasar::BetterTracebackWord>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<kaldi::quasar::BetterTracebackWord,void *>,std::__list_const_iterator<kaldi::quasar::BetterTracebackWord,void *>>(a1, a1, v4, a3);
  }

  else
  {

    return std::list<kaldi::quasar::BetterTracebackWord>::erase(a1, v6, a1);
  }
}

uint64_t std::list<kaldi::quasar::BetterTracebackWord>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<kaldi::quasar::BetterTracebackWord,void *>,std::__list_const_iterator<kaldi::quasar::BetterTracebackWord,void *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    std::__list_imp<kaldi::quasar::BetterTracebackWord>::__create_node[abi:ne200100]<kaldi::quasar::BetterTracebackWord const&>();
  }

  return a2;
}

void sub_1B54AF26C(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v3 = v2;
    v2 = *v2;
    std::__list_imp<std::pair<std::vector<int>,float>>::__delete_node[abi:ne200100](v1, v3);
  }

  while (v2);
  __cxa_rethrow();
}

void *std::vector<kaldi::quasar::BetterTracebackPhone>::__assign_with_size[abi:ne200100]<kaldi::quasar::BetterTracebackPhone*,kaldi::quasar::BetterTracebackPhone*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t std::vector<kaldi::quasar::BetterTracebackWord>::__init_with_size[abi:ne200100]<std::__list_const_iterator<kaldi::quasar::BetterTracebackWord,void *>,std::__list_const_iterator<kaldi::quasar::BetterTracebackWord,void *>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::quasar::BetterTracebackWord>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B54AF438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<kaldi::quasar::BetterTracebackWord>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::quasar::BetterTracebackWord>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::BetterTracebackWord>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::BetterTracebackWord>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::quasar::BetterTracebackWord>,std::__list_const_iterator<kaldi::quasar::BetterTracebackWord,void *>,std::__list_const_iterator<kaldi::quasar::BetterTracebackWord,void *>,kaldi::quasar::BetterTracebackWord*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      std::vector<kaldi::quasar::BetterTracebackPhone>::__init_with_size[abi:ne200100]<kaldi::quasar::BetterTracebackPhone*,kaldi::quasar::BetterTracebackPhone*>(v4, *(v6 + 16), *(v6 + 24), (*(v6 + 24) - *(v6 + 16)) >> 4);
      *(v4 + 24) = *(v6 + 40);
      v6 = *(v6 + 8);
      v4 = v11 + 40;
      v11 += 40;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::BetterTracebackWord>,kaldi::quasar::BetterTracebackWord*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::BetterTracebackWord>,kaldi::quasar::BetterTracebackWord*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::BetterTracebackWord>,kaldi::quasar::BetterTracebackWord*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::BetterTracebackWord>,kaldi::quasar::BetterTracebackWord*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 40);
      v3 -= 40;
      v4 = v5;
      if (v5)
      {
        *(v1 - 32) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void std::vector<kaldi::quasar::BetterTracebackWord>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<kaldi::quasar::BetterTracebackWord>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::__shared_ptr_emplace<quasar::LatticeGenerationContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D14D60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::LatticeGenerationContext>::__on_zero_shared(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[9];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[7];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = a1[5];
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void *std::__shared_ptr_emplace<quasar::DecoderPassData>::__shared_ptr_emplace[abi:ne200100]<quasar::DecoderPassData&,std::allocator<quasar::DecoderPassData>,0>(void *a1, const quasar::DecoderPassData *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D14DB0;
  quasar::DecoderPassData::DecoderPassData((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::DecoderPassData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D14DB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

quasar::DecoderPassData *quasar::DecoderPassData::DecoderPassData(quasar::DecoderPassData *this, const quasar::DecoderPassData *a2)
{
  *this = *a2;
  v4 = *(a2 + 1);
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 2) = *(a2 + 2);
  v5 = *(a2 + 3);
  *(this + 3) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 4) = *(a2 + 4);
  v6 = *(a2 + 5);
  *(this + 5) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 6) = *(a2 + 6);
  v7 = *(a2 + 7);
  *(this + 7) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 8) = *(a2 + 8);
  v8 = *(a2 + 9);
  *(this + 9) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 10) = *(a2 + 10);
  v9 = *(a2 + 11);
  *(this + 11) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 24) = *(a2 + 24);
  kaldi::ConstIntegerSet<int>::ConstIntegerSet(this + 104, a2 + 104);
  *(this + 21) = *(a2 + 21);
  v10 = *(a2 + 22);
  *(this + 22) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 23) = *(a2 + 23);
  v11 = *(a2 + 24);
  *(this + 24) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a2 + 25);
  *(this + 52) = *(a2 + 52);
  *(this + 25) = v12;
  *(this + 27) = *(a2 + 27);
  v13 = *(a2 + 28);
  *(this + 28) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a2 + 232);
  *(this + 31) = 0;
  *(this + 232) = v14;
  *(this + 32) = 0;
  *(this + 33) = 0;
  std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__init_with_size[abi:ne200100]<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*>(this + 248, *(a2 + 31), *(a2 + 32), (*(a2 + 32) - *(a2 + 31)) >> 4);
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>>::__init_with_size[abi:ne200100]<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*>(this + 272, *(a2 + 34), *(a2 + 35), (*(a2 + 35) - *(a2 + 34)) >> 4);
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 296, *(a2 + 37), *(a2 + 38), (*(a2 + 38) - *(a2 + 37)) >> 2);
  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 42) = 0;
  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__init_with_size[abi:ne200100]<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>(this + 320, *(a2 + 40), *(a2 + 41), (*(a2 + 41) - *(a2 + 40)) >> 5);
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 45) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 344, *(a2 + 43), *(a2 + 44), (*(a2 + 44) - *(a2 + 43)) >> 2);
  std::map<int,float>::map[abi:ne200100](this + 46, a2 + 368);
  *(this + 49) = *(a2 + 49);
  v15 = *(a2 + 50);
  *(this + 50) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  std::unordered_map<int,std::pair<int,int>>::unordered_map(this + 408, a2 + 408);
  *(this + 112) = *(a2 + 112);
  *(this + 57) = *(a2 + 57);
  v16 = *(a2 + 58);
  *(this + 58) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 59) = 0;
  *(this + 60) = 0;
  *(this + 61) = 0;
  std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__init_with_size[abi:ne200100]<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*>(this + 472, *(a2 + 59), *(a2 + 60), (*(a2 + 60) - *(a2 + 59)) >> 4);
  *(this + 62) = 0;
  *(this + 63) = 0;
  *(this + 64) = 0;
  std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>>::__init_with_size[abi:ne200100]<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*>(this + 496, *(a2 + 62), *(a2 + 63), (*(a2 + 63) - *(a2 + 62)) >> 4);
  *(this + 65) = *(a2 + 65);
  v17 = *(a2 + 66);
  *(this + 66) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 67) = *(a2 + 67);
  v18 = *(a2 + 68);
  *(this + 68) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v19 = *(a2 + 69);
  *(this + 559) = *(a2 + 559);
  *(this + 69) = v19;
  *(this + 71) = 0;
  *(this + 73) = 0;
  *(this + 72) = 0;
  std::vector<std::weak_ptr<quasar::Decoder>>::__init_with_size[abi:ne200100]<std::weak_ptr<quasar::Decoder>*,std::weak_ptr<quasar::Decoder>*>(this + 568, *(a2 + 71), *(a2 + 72), (*(a2 + 72) - *(a2 + 71)) >> 4);
  *(this + 74) = *(a2 + 74);
  v20 = *(a2 + 75);
  *(this + 75) = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 631) < 0)
  {
    std::string::__init_copy_ctor_external((this + 608), *(a2 + 76), *(a2 + 77));
  }

  else
  {
    v21 = *(a2 + 38);
    *(this + 78) = *(a2 + 78);
    *(this + 38) = v21;
  }

  if (*(a2 + 655) < 0)
  {
    std::string::__init_copy_ctor_external((this + 632), *(a2 + 79), *(a2 + 80));
  }

  else
  {
    v22 = *(a2 + 632);
    *(this + 81) = *(a2 + 81);
    *(this + 632) = v22;
  }

  v23 = *(a2 + 41);
  *(this + 84) = *(a2 + 84);
  *(this + 41) = v23;
  std::unordered_set<std::string>::unordered_set(this + 680, a2 + 680);
  *(this + 720) = *(a2 + 720);
  *(this + 91) = 0;
  *(this + 93) = 0;
  *(this + 92) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 728, *(a2 + 91), *(a2 + 92), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 92) - *(a2 + 91)) >> 3));
  *(this + 96) = 0;
  *(this + 47) = 0u;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 752, *(a2 + 94), *(a2 + 95), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 95) - *(a2 + 94)) >> 3));
  *(this + 99) = 0;
  *(this + 776) = 0u;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 776, *(a2 + 97), *(a2 + 98), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 98) - *(a2 + 97)) >> 3));
  *(this + 400) = *(a2 + 400);
  *(this + 101) = 0;
  *(this + 103) = 0;
  *(this + 102) = 0;
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(this + 808, *(a2 + 101), *(a2 + 102), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 102) - *(a2 + 101)) >> 3));
  v24 = *(a2 + 208);
  *(this + 418) = *(a2 + 418);
  *(this + 208) = v24;
  return this;
}

void sub_1B54AFD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, kaldi::SilencePhoneSet *a13, uint64_t a14)
{
  if (*(v14 + 631) < 0)
  {
    operator delete(*v15);
  }

  v17 = *(v14 + 600);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::vector<std::weak_ptr<quasar::Decoder>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v18 = *(v14 + 544);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = *(v14 + 528);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  a14 = a9;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = a10;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v20 = *(v14 + 464);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v14 + 408);
  v21 = *(v14 + 400);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  std::__tree<int>::destroy(v14 + 368, *(v14 + 376));
  v22 = *(v14 + 344);
  if (v22)
  {
    *(v14 + 352) = v22;
    operator delete(v22);
  }

  a14 = a11;
  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v23 = *(v14 + 296);
  if (v23)
  {
    *(v14 + 304) = v23;
    operator delete(v23);
  }

  a14 = a12;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v24 = *(v14 + 224);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v25 = *(v14 + 192);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v26 = *(v14 + 176);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  kaldi::SilencePhoneSet::~SilencePhoneSet(a13);
  v27 = *(v14 + 88);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = *(v14 + 72);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  v29 = *(v14 + 56);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v30 = *(v14 + 40);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v14 + 24);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = *(v14 + 8);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Unwind_Resume(a1);
}

void *std::map<int,float>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<quasar::PronType,int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<quasar::PronType,int>,std::__tree_node<std::__value_type<quasar::PronType,int>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::unordered_map<int,std::pair<int,int>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<int,std::pair<int,int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::pair<int const,std::pair<int,int>> const&>(a1, i + 4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::pair<int,int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::pair<int const,std::pair<int,int>> const&>(void *a1, int *a2)
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

void *std::__shared_ptr_emplace<quasar::DecoderChainOutput>::__shared_ptr_emplace[abi:ne200100]<quasar::DecoderChainOutput&,std::allocator<quasar::DecoderChainOutput>,0>(void *a1, const quasar::DecoderChainOutput *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D07828;
  quasar::DecoderChainOutput::DecoderChainOutput((a1 + 3), a2);
  return a1;
}

quasar::DecoderChainOutput *quasar::DecoderChainOutput::DecoderChainOutput(quasar::DecoderChainOutput *this, const quasar::DecoderChainOutput *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this, *a2, *(a2 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3));
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(this + 24, *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 48, *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 3));
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 72, *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 2);
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(this + 96, *(a2 + 12), *(a2 + 13), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 13) - *(a2 + 12)) >> 5));
  std::map<std::string,std::shared_ptr<void>>::map[abi:ne200100](this + 15, a2 + 15);
  *(this + 18) = *(a2 + 18);
  v4 = *(a2 + 19);
  *(this + 19) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 80) = *(a2 + 80);
  *(this + 21) = *(a2 + 21);
  v5 = *(a2 + 22);
  *(this + 22) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 23) = *(a2 + 23);
  v6 = *(a2 + 24);
  *(this + 24) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 200) = 0;
  *(this + 216) = 0;
  if (*(a2 + 216) == 1)
  {
    *(this + 25) = *(a2 + 25);
    v7 = *(a2 + 26);
    *(this + 26) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    *(this + 216) = 1;
  }

  *(this + 28) = *(a2 + 28);
  v8 = *(a2 + 29);
  *(this + 29) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 30) = *(a2 + 30);
  v9 = *(a2 + 31);
  *(this + 31) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 32) = *(a2 + 32);
  v10 = *(a2 + 33);
  *(this + 33) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 34) = *(a2 + 34);
  v11 = *(a2 + 35);
  *(this + 35) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 36) = *(a2 + 36);
  v12 = *(a2 + 37);
  *(this + 37) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 38) = *(a2 + 38);
  v13 = *(a2 + 39);
  *(this + 39) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 40) = *(a2 + 40);
  v14 = *(a2 + 41);
  *(this + 41) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 42) = *(a2 + 42);
  v15 = *(a2 + 43);
  *(this + 43) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 44) = *(a2 + 44);
  v16 = *(a2 + 45);
  *(this + 45) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 46) = *(a2 + 46);
  v17 = *(a2 + 47);
  *(this + 47) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 50) = 0;
  std::vector<std::set<std::string>>::__init_with_size[abi:ne200100]<std::set<std::string>*,std::set<std::string>*>(this + 384, *(a2 + 48), *(a2 + 49), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 49) - *(a2 + 48)) >> 3));
  *(this + 51) = *(a2 + 51);
  v18 = *(a2 + 52);
  *(this + 52) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 53) = *(a2 + 53);
  v19 = *(a2 + 54);
  *(this + 54) = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 55) = *(a2 + 55);
  v20 = *(a2 + 56);
  *(this + 56) = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = *(a2 + 472);
  *(this + 456) = *(a2 + 456);
  *(this + 472) = v21;
  *(this + 61) = *(a2 + 61);
  v22 = *(a2 + 62);
  *(this + 62) = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 63) = *(a2 + 63);
  v23 = *(a2 + 64);
  *(this + 64) = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  v24 = *(a2 + 520);
  v25 = *(a2 + 536);
  *(this + 69) = *(a2 + 69);
  *(this + 520) = v24;
  *(this + 536) = v25;
  *(this + 70) = *(a2 + 70);
  v26 = *(a2 + 71);
  *(this + 71) = v26;
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 72) = *(a2 + 72);
  v27 = *(a2 + 73);
  *(this + 73) = v27;
  if (v27)
  {
    atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
  }

  v28 = *(a2 + 148);
  *(this + 595) = *(a2 + 595);
  *(this + 148) = v28;
  *(this + 75) = 0;
  *(this + 77) = 0;
  *(this + 76) = 0;
  std::vector<quasar::LmeInfo>::__init_with_size[abi:ne200100]<quasar::LmeInfo*,quasar::LmeInfo*>(this + 600, *(a2 + 75), *(a2 + 76), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 76) - *(a2 + 75)) >> 3));
  *(this + 78) = *(a2 + 78);
  v29 = *(a2 + 79);
  *(this + 79) = v29;
  if (v29)
  {
    atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
  }

  v30 = *(a2 + 80);
  *(this + 162) = *(a2 + 162);
  *(this + 80) = v30;
  *(this + 82) = *(a2 + 82);
  v31 = *(a2 + 83);
  *(this + 83) = v31;
  if (v31)
  {
    atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 86) = 0;
  *(this + 42) = 0u;
  std::vector<quasar::ItnOverride>::__init_with_size[abi:ne200100]<quasar::ItnOverride*,quasar::ItnOverride*>(this + 672, *(a2 + 84), *(a2 + 85), 0x8E38E38E38E38E39 * ((*(a2 + 85) - *(a2 + 84)) >> 3));
  *(this + 696) = *(a2 + 696);
  quasar::AudioAnalytics::AudioAnalytics((this + 712), (a2 + 712));
  *(this + 109) = 0;
  *(this + 856) = 0u;
  std::vector<std::vector<kaldi::quasar::WordConf>>::__init_with_size[abi:ne200100]<std::vector<kaldi::quasar::WordConf>*,std::vector<kaldi::quasar::WordConf>*>(this + 856, *(a2 + 107), *(a2 + 108), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 108) - *(a2 + 107)) >> 3));
  *(this + 880) = *(a2 + 880);
  *(this + 888) = *(a2 + 888);
  if (*(a2 + 919) < 0)
  {
    std::string::__init_copy_ctor_external((this + 896), *(a2 + 112), *(a2 + 113));
  }

  else
  {
    v32 = *(a2 + 56);
    *(this + 114) = *(a2 + 114);
    *(this + 56) = v32;
  }

  v33 = *(a2 + 920);
  *(this + 117) = *(a2 + 117);
  *(this + 920) = v33;
  *(this + 944) = *(a2 + 944);
  if (*(a2 + 975) < 0)
  {
    std::string::__init_copy_ctor_external((this + 952), *(a2 + 119), *(a2 + 120));
  }

  else
  {
    v34 = *(a2 + 952);
    *(this + 121) = *(a2 + 121);
    *(this + 952) = v34;
  }

  v35 = *(a2 + 61);
  *(this + 124) = *(a2 + 124);
  *(this + 61) = v35;
  *(this + 125) = 0;
  *(this + 127) = 0;
  *(this + 126) = 0;
  std::vector<std::pair<int,BOOL>>::__init_with_size[abi:ne200100]<std::pair<int,BOOL>*,std::pair<int,BOOL>*>(this + 1000, *(a2 + 125), *(a2 + 126), (*(a2 + 126) - *(a2 + 125)) >> 3);
  *(this + 130) = 0;
  *(this + 64) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 1024, *(a2 + 128), *(a2 + 129), (*(a2 + 129) - *(a2 + 128)) >> 2);
  if (*(a2 + 1071) < 0)
  {
    std::string::__init_copy_ctor_external((this + 1048), *(a2 + 131), *(a2 + 132));
  }

  else
  {
    v36 = *(a2 + 1048);
    *(this + 133) = *(a2 + 133);
    *(this + 1048) = v36;
  }

  *(this + 134) = *(a2 + 134);
  v37 = *(a2 + 135);
  *(this + 135) = v37;
  if (v37)
  {
    atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
  }

  v38 = *(a2 + 68);
  v39 = *(a2 + 69);
  *(this + 280) = *(a2 + 280);
  *(this + 69) = v39;
  *(this + 68) = v38;
  *(this + 141) = 0;
  *(this + 143) = 0;
  *(this + 142) = 0;
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(this + 1128, *(a2 + 141), *(a2 + 142), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 142) - *(a2 + 141)) >> 5));
  *(this + 1152) = *(a2 + 1152);
  v40 = (this + 1160);
  if (*(a2 + 1183) < 0)
  {
    std::string::__init_copy_ctor_external(v40, *(a2 + 145), *(a2 + 146));
  }

  else
  {
    v41 = *(a2 + 1160);
    *(this + 147) = *(a2 + 147);
    *&v40->__r_.__value_.__l.__data_ = v41;
  }

  *(this + 1184) = *(a2 + 1184);
  return this;
}

void sub_1B54B0AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10, void **a11, void **a12, void **a13, void **a14, void **a15, void **a16)
{
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a16);
  v23 = *(v16 + 1080);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (*(v16 + 1071) < 0)
  {
    operator delete(*v18);
  }

  v24 = *v17;
  if (*v17)
  {
    *(v16 + 1032) = v24;
    operator delete(v24);
  }

  v25 = *v19;
  if (*v19)
  {
    *(v16 + 1008) = v25;
    operator delete(v25);
  }

  if (*(v16 + 975) < 0)
  {
    operator delete(*v21);
  }

  if (*(v16 + 919) < 0)
  {
    operator delete(*v20);
  }

  std::vector<std::vector<kaldi::quasar::WordConf>>::__destroy_vector::operator()[abi:ne200100](&a16);
  quasar::AudioAnalytics::~AudioAnalytics((v16 + 712));
  a16 = a9;
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](&a16);
  v26 = *(v16 + 664);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v27 = *(v16 + 632);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  a16 = a10;
  std::vector<quasar::LmeInfo>::__destroy_vector::operator()[abi:ne200100](&a16);
  v28 = *(v16 + 584);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  v29 = *(v16 + 568);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v30 = *(v16 + 512);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v16 + 496);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = *(v16 + 448);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v33 = *(v16 + 432);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v34 = *(v16 + 416);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  a16 = a11;
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](&a16);
  v35 = *(v16 + 376);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v36 = *(v16 + 360);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  v37 = *(v16 + 344);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v38 = *(v16 + 328);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  v39 = *(v16 + 312);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  v40 = *(v16 + 296);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  v41 = *(v16 + 280);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  v42 = *(v16 + 264);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  v43 = *(v16 + 248);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  v44 = *(v16 + 232);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  if (*(v16 + 216) == 1)
  {
    v45 = *(v16 + 208);
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }
  }

  v46 = *(v16 + 192);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  v47 = *(v16 + 176);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  v48 = *(v16 + 152);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(v16 + 120, *(v16 + 128));
  a16 = a12;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a16);
  v49 = *a13;
  if (*a13)
  {
    *(v16 + 80) = v49;
    operator delete(v49);
  }

  a16 = a14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  a16 = a15;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a16);
  a16 = v16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void *std::map<std::string,std::shared_ptr<void>>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::shared_ptr<void>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::shared_ptr<void>>,std::__tree_node<std::__value_type<std::string,std::shared_ptr<void>>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,std::shared_ptr<void>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::shared_ptr<void>>,std::__tree_node<std::__value_type<std::string,std::shared_ptr<void>>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::shared_ptr<void>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<void>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<void>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<void>> const&>(v5, (v5 + 1), v4 + 4);
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

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<void>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<void>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<void>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<void>> const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<void>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<void>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<void>>>>::__construct_node<std::pair<std::string const,std::shared_ptr<void>> const&>();
  }

  return v3;
}

uint64_t std::vector<quasar::LmeInfo>::__init_with_size[abi:ne200100]<quasar::LmeInfo*,quasar::LmeInfo*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::LmeInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B54B0FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::LmeInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::LmeInfo>,quasar::LmeInfo*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 40;
  }
}

uint64_t std::vector<std::vector<kaldi::quasar::WordConf>>::__init_with_size[abi:ne200100]<std::vector<kaldi::quasar::WordConf>*,std::vector<kaldi::quasar::WordConf>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B54B10A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<kaldi::quasar::WordConf>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<kaldi::quasar::WordConf>>,std::vector<kaldi::quasar::WordConf>*,std::vector<kaldi::quasar::WordConf>*,std::vector<kaldi::quasar::WordConf>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<kaldi::quasar::WordConf>::__init_with_size[abi:ne200100]<kaldi::quasar::WordConf*,kaldi::quasar::WordConf*>(v4, *v6, v6[1], 0xF83E0F83E0F83E1 * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<kaldi::quasar::WordConf>>,std::vector<kaldi::quasar::WordConf>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<kaldi::quasar::WordConf>::__init_with_size[abi:ne200100]<kaldi::quasar::WordConf*,kaldi::quasar::WordConf*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::quasar::WordConf>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B54B11F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<kaldi::quasar::WordConf>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::quasar::WordConf>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xF83E0F83E0F83FLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::WordConf>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::WordConf>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xF83E0F83E0F83FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::quasar::WordConf>,kaldi::quasar::WordConf*,kaldi::quasar::WordConf*,kaldi::quasar::WordConf*>(int a1, kaldi::quasar::WordConf *a2, kaldi::quasar::WordConf *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      kaldi::quasar::WordConf::WordConf(this, v6);
      v6 = (v6 + 264);
      this += 11;
      v7 -= 264;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_1B54B131C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 264);
    do
    {
      kaldi::quasar::WordConf::~WordConf(v4);
      v4 = (v5 - 264);
      v2 += 264;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *kaldi::quasar::WordConf::WordConf(std::string *this, const kaldi::quasar::WordConf *a2)
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

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = *(a2 + 3);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v7;
  }

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = *(a2 + 6);
    this[4].__r_.__value_.__r.__words[2] = *(a2 + 14);
    *&this[4].__r_.__value_.__l.__data_ = v8;
  }

  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    this[5].__r_.__value_.__r.__words[2] = *(a2 + 17);
    *&this[5].__r_.__value_.__l.__data_ = v9;
  }

  v10 = *(a2 + 9);
  v11 = *(a2 + 20);
  this[7].__r_.__value_.__r.__words[0] = 0;
  this[6].__r_.__value_.__r.__words[2] = v11;
  *&this[6].__r_.__value_.__l.__data_ = v10;
  this[7].__r_.__value_.__l.__size_ = 0;
  this[7].__r_.__value_.__r.__words[2] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&this[7], *(a2 + 21), *(a2 + 22), (*(a2 + 22) - *(a2 + 21)) >> 2);
  v12 = *(a2 + 12);
  v13 = *(a2 + 52);
  this[9].__r_.__value_.__r.__words[0] = 0;
  LODWORD(this[8].__r_.__value_.__r.__words[2]) = v13;
  *&this[8].__r_.__value_.__l.__data_ = v12;
  this[9].__r_.__value_.__l.__size_ = 0;
  this[9].__r_.__value_.__r.__words[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this[9], *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 2);
  this[10].__r_.__value_.__r.__words[0] = 0;
  this[10].__r_.__value_.__l.__size_ = 0;
  this[10].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[10], *(a2 + 30), *(a2 + 31), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 31) - *(a2 + 30)) >> 3));
  return this;
}

void sub_1B54B14E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

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

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<kaldi::quasar::WordConf>>,std::vector<kaldi::quasar::WordConf>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<kaldi::quasar::WordConf>>,std::vector<kaldi::quasar::WordConf>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<kaldi::quasar::WordConf>>,std::vector<kaldi::quasar::WordConf>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<kaldi::quasar::WordConf>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

uint64_t std::vector<std::pair<int,BOOL>>::__init_with_size[abi:ne200100]<std::pair<int,BOOL>*,std::pair<int,BOOL>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<int,BOOL>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B54B1688(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<int,BOOL>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,BOOL>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t quasar::ProfanityFilterOptions::options@<X0>(quasar::ProfanityFilterOptions *this@<X0>, void *a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(this + 2);
  v2 = this + 16;
  v5[0] = &v2[*(v3 - 24)];
  v5[1] = v2 + 152;
  v5[2] = v2 + 472;
  v5[3] = v2 + 312;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::OptionValueBase *>::__init_with_size[abi:ne200100]<quasar::OptionValueBase * const*,quasar::OptionValueBase * const*>(a2, v5, &v6, 4uLL);
}

void quasar::ProfanityFilterBlock::init(quasar::ProfanityFilterBlock *this)
{
  v2 = quasar::OptionValue<std::string>::value(this + 22);
  v3 = *(v2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(v2 + 8);
  }

  if (v3)
  {
    v4 = quasar::OptionValue<std::string>::value(this + 42);
    v5 = *(v4 + 23);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(v4 + 8);
    }

    if (v5)
    {
      v6 = *quasar::OptionValue<std::vector<std::string>>::value(this + 62);
      v7 = quasar::OptionValue<std::vector<std::string>>::value(this + 62);
      std::set<std::string>::set[abi:ne200100]<std::__wrap_iter<std::string const*>>(&v10, v6, *(v7 + 8));
      v8 = quasar::OptionValue<std::string>::value(this + 42);
      v9 = quasar::OptionValue<std::string>::value(this + 22);
      quasar::SharedProfanityFilter::getProfanityFilter(v8, v9);
    }

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
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v10, "Value needed for profanity-filter-config-file!");
  }

  else
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
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v10, "Value needed for locale!");
  }

  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v10);
}

uint64_t quasar::OptionValue<std::vector<std::string>>::value(void *a1)
{
  v2 = quasar::OptionValue<std::string>::fallback(a1) + 104;
  if ((*(*a1 + 32))(a1))
  {
    v3 = a1[11];
    v4 = v3[1];
    if (v4)
    {
      v5 = *v3;
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v6 = std::__shared_weak_count::lock(v4);
      std::__shared_weak_count::__release_weak(v4);
      if (v6)
      {
        if (v5)
        {
          v7 = *v5;
          for (i = v5[1]; v7 != i; v7 += 3)
          {
            v9 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>((a1 + 17), v7);
            if (a1 + 18 != v9)
            {
              v2 = v9 + 56;
            }
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }

  return v2;
}

void quasar::ProfanityFilterBlock::process(void *a1, uint64_t a2, uint64_t *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*quasar::OptionValue<BOOL>::value((a1 + *(a1[3] - 24) + 24)) != 1 || (v5 = *a3, v6 = a3[1], *a3 == v6))
  {
    v10 = a1 + *(*a1 - 24);

    quasar::ProcessingBlock::send(v10, a3, 0);
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    std::vector<quasar::TranslationPhraseInternal>::__init_with_size[abi:ne200100]<quasar::TranslationPhraseInternal*,quasar::TranslationPhraseInternal*>(&v21, v5, v6, 0xF83E0F83E0F83E1 * ((v6 - v5) >> 3));
    v7 = v21;
    for (i = v22; v7 != i; v7 += 264)
    {
      if (*(v7 + 200) != *(v7 + 208))
      {
        v9 = a1[82];
        quasar::TranslationPhraseInternal::convertTokensToString(&__p, v7);
        quasar::SharedProfanityFilter::mask(v9, &__p, 0, 0, &v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v20 == 1)
        {
          if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v11, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
          }

          else
          {
            v11 = v19;
          }

          v12 = v11;
          memset(&v11, 0, sizeof(v11));
          v13 = 0;
          v15 = 0;
          v16 = 0;
          v14 = 0;
          v17 = 3212836864;
          v18 = -1;
          quasar::TranslationTokenInternal::TranslationTokenInternal(&__p, &v12);
          std::vector<quasar::TranslationTokenInternal>::__assign_with_size[abi:ne200100]<quasar::TranslationTokenInternal const*,quasar::TranslationTokenInternal const*>(v7 + 200, &__p, &v31, 1uLL);
          if (v29)
          {
            v30 = v29;
            operator delete(v29);
          }

          if (v28 < 0)
          {
            operator delete(v27);
          }

          if (v25)
          {
            v26 = v25;
            operator delete(v25);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v14)
          {
            v15 = v14;
            operator delete(v14);
          }

          if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v12.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v11.__r_.__value_.__l.__data_);
          }

          *(*(v7 + 208) - 112) = 0;
          *(v7 + 146) = 1;
        }

        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }
      }
    }

    quasar::ProcessingBlock::send(a1 + *(*a1 - 24), &v21, 0);
    __p.__r_.__value_.__r.__words[0] = &v21;
    std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&__p);
  }
}

void sub_1B54B1D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  a35 = &a32;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&a35);
  _Unwind_Resume(a1);
}

void quasar::ConfiguredProcessingBlock<quasar::ProfanityFilterOptions>::setContextProvider(uint64_t a1, uint64_t *a2)
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

void sub_1B54B1EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13)
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

void quasar::ProfanityFilterBlock::~ProfanityFilterBlock(quasar::ProfanityFilterBlock *this)
{
  *this = &unk_1F2D14E40;
  v2 = (this + 672);
  *(this + 84) = &unk_1F2D14EE8;
  v3 = *(this + 83);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *this = &unk_1F2D14F80;
  *(this + 84) = off_1F2D15008;
  quasar::ProfanityFilterOptions::~ProfanityFilterOptions((this + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v2);
}

{
  *this = &unk_1F2D14E40;
  v2 = (this + 672);
  *(this + 84) = &unk_1F2D14EE8;
  v3 = *(this + 83);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *this = &unk_1F2D14F80;
  *(this + 84) = off_1F2D15008;
  quasar::ProfanityFilterOptions::~ProfanityFilterOptions((this + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v2);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toquasar::ProfanityFilterBlock::~ProfanityFilterBlock(quasar::ProfanityFilterBlock *this)
{
  v1 = this + *(*this - 24);
  *v1 = &unk_1F2D14E40;
  *(v1 + 84) = &unk_1F2D14EE8;
  v2 = *(v1 + 83);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *v1 = &unk_1F2D14F80;
  *(v1 + 84) = off_1F2D15008;
  quasar::ProfanityFilterOptions::~ProfanityFilterOptions((v1 + 8));

  quasar::ProcessingBlock::~ProcessingBlock(v1 + 84);
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_1F2D14E40;
  *(v1 + 84) = &unk_1F2D14EE8;
  v2 = *(v1 + 83);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *v1 = &unk_1F2D14F80;
  *(v1 + 84) = off_1F2D15008;
  quasar::ProfanityFilterOptions::~ProfanityFilterOptions((v1 + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v1 + 84);

  JUMPOUT(0x1B8C85350);
}

void quasar::ProfanityFilterOptions::~ProfanityFilterOptions(quasar::ProfanityFilterOptions *this)
{
  *this = &unk_1F2D14E00;
  *(this + 61) = &unk_1F2D0B940;
  std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(this + 624, *(this + 79));
  v6 = (this + 592);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  *(this + 61) = &unk_1F2D08890;
  v2 = *(this + 73);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 567) < 0)
  {
    operator delete(*(this + 68));
  }

  if (*(this + 543) < 0)
  {
    operator delete(*(this + 65));
  }

  if (*(this + 519) < 0)
  {
    operator delete(*(this + 62));
  }

  *(this + 41) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 464, *(this + 59));
  if (*(this + 455) < 0)
  {
    operator delete(*(this + 54));
  }

  *(this + 41) = &unk_1F2D08890;
  v3 = *(this + 53);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 407) < 0)
  {
    operator delete(*(this + 48));
  }

  if (*(this + 383) < 0)
  {
    operator delete(*(this + 45));
  }

  if (*(this + 359) < 0)
  {
    operator delete(*(this + 42));
  }

  *(this + 21) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 304, *(this + 39));
  if (*(this + 295) < 0)
  {
    operator delete(*(this + 34));
  }

  *(this + 21) = &unk_1F2D08890;
  v4 = *(this + 33);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 247) < 0)
  {
    operator delete(*(this + 28));
  }

  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }

  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  *(this + 3) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 144, *(this + 19));
  *(this + 3) = &unk_1F2D08890;
  v5 = *(this + 15);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }
}

void *std::set<std::string>::set[abi:ne200100]<std::__wrap_iter<std::string const*>>(void *a1, const void **a2, const void **a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(a1, v4, v6);
      v6 += 3;
    }

    while (v6 != a3);
  }

  return a1;
}

void std::vector<quasar::TranslationTokenInternal>::__assign_with_size[abi:ne200100]<quasar::TranslationTokenInternal const*,quasar::TranslationTokenInternal const*>(uint64_t a1, uint64_t a2, quasar::TranslationTokenInternal *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<quasar::TranslationTokenInternal>::__vdeallocate(a1);
    if (a4 <= 0x1E1E1E1E1E1E1E1)
    {
      v9 = 0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 16) - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
      {
        v10 = 0x1E1E1E1E1E1E1E1;
      }

      else
      {
        v10 = v9;
      }

      std::vector<quasar::TranslationTokenInternal>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xF0F0F0F0F0F0F0F1 * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<quasar::TranslationTokenInternal *,quasar::TranslationTokenInternal *,quasar::TranslationTokenInternal *>(&v14, a2, a3, v8);
    std::vector<quasar::TranslationTokenInternal>::__base_destruct_at_end[abi:ne200100](a1, v12);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<quasar::TranslationTokenInternal *,quasar::TranslationTokenInternal *,quasar::TranslationTokenInternal *>(&v13, a2, a2 + v11, v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::TranslationTokenInternal>,quasar::TranslationTokenInternal const*,quasar::TranslationTokenInternal const*,quasar::TranslationTokenInternal*>(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::TranslationTokenInternal>,quasar::TranslationTokenInternal const*,quasar::TranslationTokenInternal const*,quasar::TranslationTokenInternal*>(uint64_t a1, quasar::TranslationTokenInternal *a2, quasar::TranslationTokenInternal *a3, std::string *this)
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
      quasar::TranslationTokenInternal::TranslationTokenInternal(v4, v6);
      v6 = (v6 + 136);
      v4 = (v11 + 136);
      v11 = (v11 + 136);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TranslationTokenInternal>,quasar::TranslationTokenInternal*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void kaldi::SplitRadixComplexFft<float>::SplitRadixComplexFft(uint64_t a1, uint64_t a2, int8x8_t a3)
{
  v3 = a2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2 >= 2)
  {
    a3.i32[0] = a2;
    v4 = vcnt_s8(a3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.i32[0] < 2u)
    {
      v5 = 0;
      *(a1 + 24) = a2;
      do
      {
        ++v5;
        v6 = v3 > 3;
        LODWORD(v3) = v3 >> 1;
      }

      while (v6);
      *(a1 + 28) = v5;
      kaldi::SplitRadixComplexFft<float>::ComputeTables();
    }
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "SplitRadixComplexFft called with invalid number of points ", 58);
  MEMORY[0x1B8C84C00](v7, v3);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
}

void sub_1B54B2840(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::SplitRadixComplexFft<float>::~SplitRadixComplexFft(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    MEMORY[0x1B8C85310](v2, 0x1000C8052888210);
  }

  if (*(a1 + 40))
  {
    v3 = *(a1 + 28);
    if (v3 < 4)
    {
      goto LABEL_10;
    }

    v4 = 0;
    do
    {
      v5 = *(*(a1 + 40) + 8 * v4);
      if (v5)
      {
        MEMORY[0x1B8C85310](v5, 0x1000C8052888210);
        v3 = *(a1 + 28);
      }

      ++v4;
    }

    while (v4 < v3 - 3);
    if (*(a1 + 40))
    {
LABEL_10:
      MEMORY[0x1B8C85310]();
    }
  }

  v6 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v6;
    operator delete(v6);
  }

  return a1;
}

void sub_1B54B2CF4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void quasar::StateAccessRecordingFst::~StateAccessRecordingFst(quasar::StateAccessRecordingFst *this)
{
  *this = &unk_1F2D150B8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_1F2D150B8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::StateAccessRecordingFst::Final(quasar::StateAccessRecordingFst *this, int a2)
{
  v2 = *(this + 1);
  *(v2[2] + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  return (*(**v2 + 32))();
}

uint64_t quasar::StateAccessRecordingFst::NumArcs(quasar::StateAccessRecordingFst *this, int a2)
{
  v2 = *(this + 1);
  *(v2[2] + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  return (*(**v2 + 40))();
}

uint64_t quasar::StateAccessRecordingFst::NumInputEpsilons(quasar::StateAccessRecordingFst *this, int a2)
{
  v2 = *(this + 1);
  *(v2[2] + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  return (*(**v2 + 48))();
}

uint64_t quasar::StateAccessRecordingFst::NumOutputEpsilons(quasar::StateAccessRecordingFst *this, int a2)
{
  v2 = *(this + 1);
  *(v2[2] + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  return (*(**v2 + 56))();
}

uint64_t quasar::StateAccessRecordingFst::Write(uint64_t a1)
{
  return (*(***(a1 + 8) + 96))();
}

{
  return (*(***(a1 + 8) + 104))();
}

uint64_t quasar::StateAccessRecordingFst::GetArcs(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  *(v2[2] + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  return (*(**v2 + 80))();
}

void quasar::StateAccessRecordingFst::ResetAccessedStates(quasar::StateAccessRecordingFst *this)
{
  v1 = *(this + 1);
  v2 = v1[3];
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = v1[2];
    do
    {
      if ((*(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
      {
        ++*(v1[5] + 4 * v3);
      }

      ++v3;
    }

    while ((v2 & 0x7FFFFFFF) != v3);
  }

  v1[3] = 0;
  std::vector<BOOL>::resize((v1 + 2), v2, 0);
}

void quasar::StateAccessRecordingFst::ResetAccessedStatesCounts(quasar::StateAccessRecordingFst *this)
{
  v2 = *(this + 1);
  v3 = *(v2 + 24);
  v6 = 0;
  std::vector<BOOL>::assign((v2 + 16), v3, &v6);
  v4 = *(this + 1);
  __u = 0;
  std::vector<int>::assign((v4 + 40), v3, &__u);
}

void std::vector<BOOL>::assign(void *a1, unint64_t a2, _BYTE *a3)
{
  a1[1] = 0;
  if (a2)
  {
    v6 = a1[2];
    v7 = v6 << 6;
    if (v6 << 6 >= a2)
    {
      a1[1] = a2;
    }

    else
    {
      v14 = 0;
      v15 = 0uLL;
      if ((a2 & 0x8000000000000000) != 0)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v8 = v6 << 7;
      if (v8 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
      {
        v8 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
      }

      if (v7 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      std::vector<BOOL>::reserve(&v14, v9);
      v11 = v14;
      v12 = *(&v15 + 1);
      v14 = *a1;
      v10 = v14;
      v13 = *(a1 + 1);
      *a1 = v11;
      a1[1] = a2;
      a1[2] = v12;
      v15 = v13;
      if (v10)
      {
        operator delete(v10);
      }
    }

    if (*a3 == 1)
    {
      v14 = *a1;
      LODWORD(v15) = 0;
      std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&v14, a2);
    }

    else
    {
      v14 = *a1;
      LODWORD(v15) = 0;
      std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v14, a2);
    }
  }
}

void sub_1B54B34B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *quasar::StateAccessRecordingFst::WriteRecordedStateAccesses(void *result, uint64_t a2)
{
  v2 = *(result[1] + 48) - *(result[1] + 40);
  if ((v2 >> 2) >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = (v2 >> 2) & 0x7FFFFFFF;
    do
    {
      v7 = *(*(v4[1] + 40) + 4 * v5);
      if (v7 >= 1)
      {
        v8 = MEMORY[0x1B8C84C00](a2, v5);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ",", 1);
        v10 = MEMORY[0x1B8C84C00](v9, v7);
        result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\n", 1);
      }

      ++v5;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t quasar::StateAccessRecordingFst::getWrappedFst@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 8);
  v4 = *v2;
  v3 = v2[1];
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void quasar::StateAccessRecordingFstArcIterator::~StateAccessRecordingFstArcIterator(quasar::StateAccessRecordingFstArcIterator *this)
{
  *this = &unk_1F2D15180;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_1F2D15180;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::StateAccessRecordingFstArcIterator::Reinit(quasar::StateAccessRecordingFstArcIterator *this, int a2)
{
  v2 = *(*(*(this + 5) + 8) + 16);
  *(v2 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  return (*(**(this + 1) + 16))();
}

uint64_t std::__shared_ptr_emplace<quasar::StateAccessRecordingFst::Data>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> const&,std::allocator<quasar::StateAccessRecordingFst::Data>,0>(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F2D15200;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = v4;
    *(a1 + 32) = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    *(a1 + 24) = v4;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0;
  }

  return a1;
}

void std::__shared_ptr_emplace<quasar::StateAccessRecordingFst::Data>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D15200;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::StateAccessRecordingFst::Data>::__on_zero_shared(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t kaldi::quasar::TransducerAutoRegressiveDecodable::TransducerAutoRegressiveDecodable(uint64_t a1, uint64_t a2, kaldi::quasar::CEAcousticEncoderNet *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, int a10)
{
  *a1 = &unk_1F2D15250;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = a6;
  *(a1 + 48) = a7;
  *(a1 + 56) = a8;
  v12 = *a9;
  v13 = *(a9 + 12);
  *(a1 + 224) = 0u;
  *(a1 + 76) = v13;
  *(a1 + 64) = v12;
  *(a1 + 96) = 0u;
  v14 = (a1 + 96);
  *(a1 + 144) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  kaldi::Matrix<float>::Matrix(a1 + 272);
  *(a1 + 392) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = a1 + 392;
  *(a1 + 416) = 0u;
  *(a1 + 408) = a1 + 416;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 432) = &unk_1F2D0EE38;
  *(a1 + 472) = 0;
  *(a1 + 544) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 576) = 0;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0;
  kaldi::quasar::CEAcousticEncoderNet::InitialStates(*(a1 + 16), &v38);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__vdeallocate(v14);
  *(a1 + 96) = v38;
  *(a1 + 112) = v39;
  v39 = 0;
  v38 = 0uLL;
  v43 = &v38;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v43);
  kaldi::quasar::CELabelEncoderNet::InitialStates(*(a1 + 24), &v43);
  if (v43 != v44)
  {
    v41 = 0uLL;
    v42 = 0;
    v40 = &v41;
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(&v41, 1uLL);
  }

  *&v38 = &v43;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v38);
  v15 = *(a1 + 56);
  if (v15 && *(a1 + 68) != 0.0)
  {
    kaldi::quasar::CELabelEncoderNet::InitialStates(v15, &v43);
    if (v43 != v44)
    {
      v41 = 0uLL;
      v42 = 0;
      v40 = &v41;
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(&v41, 1uLL);
    }

    *&v38 = &v43;
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v38);
  }

  EmbeddingDim = quasar::TextEmbedder::getEmbeddingDim(*(a1 + 24));
  v18 = *(a1 + 368);
  v17 = *(a1 + 376);
  if (v18 >= v17)
  {
    v21 = 0x1555555555555555;
    v22 = *(a1 + 360);
    v23 = v18 - v22;
    v24 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v22) >> 2);
    v25 = v24 + 1;
    if (v24 + 1 > 0x1555555555555555)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v26 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v22) >> 2);
    if (2 * v26 > v25)
    {
      v25 = 2 * v26;
    }

    if (v26 < 0xAAAAAAAAAAAAAAALL)
    {
      v21 = v25;
    }

    if (v21)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<int,float,int>>>(a1 + 360, v21);
    }

    v20 = a3;
    v27 = 12 * v24;
    *v27 = 0;
    *(v27 + 4) = EmbeddingDim;
    *(v27 + 8) = 0;
    v19 = 12 * v24 + 12;
    v28 = v27 - v23;
    memcpy((v27 - v23), v22, v23);
    v29 = *(a1 + 360);
    *(a1 + 360) = v28;
    *(a1 + 368) = v19;
    *(a1 + 376) = 0;
    if (v29)
    {
      operator delete(v29);
    }
  }

  else
  {
    *v18 = 0;
    *(v18 + 1) = EmbeddingDim;
    v19 = (v18 + 12);
    *(v18 + 2) = 0;
    v20 = a3;
  }

  *(a1 + 368) = v19;
  if (*(a1 + 64) <= 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v38);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "opts_.max_label_fraction > 0", 28);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v38);
  }

  if (*(a1 + 76) <= 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v38);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "opts_.softmax_temperature > 0", 29);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v38);
  }

  if (*(a1 + 80) <= 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v38);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "opts_.nnlm_softmax_temperature > 0", 34);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v38);
  }

  if (*(a1 + 84) <= 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v38);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "opts_.ilm_softmax_temperature > 0", 33);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v38);
  }

  if (*(a1 + 72) != 0.0 && kaldi::quasar::CEJointPredictorNet::OutputsAreLogProbs(*(a1 + 32)))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v38);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "ILM subtraction requires non-softmax output from joint predictor", 64);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v38);
  }

  if (a10 < 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v38);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "chunk_size >= 0", 15);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v38);
  }

  if (a10)
  {
    v30 = kaldi::quasar::CEAcousticEncoderNet::FrameSubsamplingFactor(v20);
    v31 = kaldi::quasar::CEAcousticEncoderNet::FrameOverlap(v20) + v30 * a10;
  }

  else
  {
    v31 = 0;
  }

  *(a1 + 92) = v31;
  if (kaldi::quasar::CEAcousticEncoderNet::IsInputSizeFixed(*(a1 + 16)))
  {
    v32 = *(a1 + 92);
    if (v32 != kaldi::quasar::CEAcousticEncoderNet::InputFrameCount(*(a1 + 16)))
    {
      v34 = kaldi::quasar::CEAcousticEncoderNet::InputFrameCount(*(a1 + 16));
      v35 = kaldi::quasar::CEAcousticEncoderNet::FrameOverlap(a3);
      v36 = kaldi::quasar::CEAcousticEncoderNet::FrameSubsamplingFactor(a3);
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v38);
      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "Acoustic encoder has fixed input size which mismatches decoder; set chunk-size to ", 82);
      MEMORY[0x1B8C84C00](v37, ((v34 - v35) / v36));
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v38);
    }
  }

  return a1;
}

{
  return kaldi::quasar::TransducerAutoRegressiveDecodable::TransducerAutoRegressiveDecodable(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void sub_1B54B4294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, void **a12, uint64_t a13, void **a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v24 = *a12;
  if (*a12)
  {
    *(v20 + 70) = v24;
    operator delete(v24);
  }

  v25 = *(v20 + 60);
  if (v25)
  {
    *(v20 + 61) = v25;
    operator delete(v25);
  }

  kaldi::CuMatrix<float>::~CuMatrix(a13);
  std::__tree<int>::destroy(v20 + 408, *a14);
  std::__tree<int>::destroy(v20 + 384, *a15);
  v26 = *(v20 + 45);
  if (v26)
  {
    *(v20 + 46) = v26;
    operator delete(v26);
  }

  kaldi::Vector<float>::Destroy(v20 + 336);
  v27 = *a10;
  if (*a10)
  {
    *(v20 + 40) = v27;
    operator delete(v27);
  }

  kaldi::Matrix<float>::~Matrix(a16 + 48);
  v28 = *(v20 + 33);
  *(v20 + 33) = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  v29 = *(v20 + 32);
  *(v20 + 32) = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = *(v20 + 31);
  *(v20 + 31) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  *(v22 - 144) = a16;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100]((v22 - 144));
  *(v22 - 144) = a16 - 24;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100]((v22 - 144));
  *(v22 - 144) = a11;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100]((v22 - 144));
  v31 = *(v20 + 21);
  *(v20 + 21) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  *(v22 - 144) = a19;
  std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100]((v22 - 144));
  *(v22 - 144) = a20;
  std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100]((v22 - 144));
  *(v22 - 144) = v21;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100]((v22 - 144));
  quasar::Bitmap::~Bitmap(v20);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::TransducerAutoRegressiveDecodable::Encode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = 0;
  if (a3)
  {
    v6 = *(a2 + 20);
    v7 = kaldi::quasar::CEAcousticEncoderNet::FrameOverlap(*(a1 + 16));
    if (v6 < (kaldi::quasar::CEAcousticEncoderNet::FrameSubsamplingFactor(*(a1 + 16)) + v7))
    {
      v9 = *(a1 + 248);
      v8 = *(a1 + 256);
      *(a1 + 248) = 0;
      v76 = v9;
      if (v8)
      {
        *(a1 + 256) = 0;
      }

      v10 = *(a1 + 264);
      if (v10)
      {
        *(a1 + 264) = 0;
      }

      goto LABEL_38;
    }
  }

  v74 = 1;
  kaldi::Timer::Reset(&v71, a2);
  v75 = 0;
  v63 = 0;
  __p = 0;
  v70 = 0;
  kaldi::quasar::CEAcousticEncoderNet::Encode(*(a1 + 16), (a1 + 96), a2, a3, a1 + 96, &v63, &__p, &v70);
  *(a1 + 584) = *(a1 + 584) + kaldi::Timer::GetSeconds(5, v11) - *&v71;
  (*(*v63 + 184))(v63, 0);
  if (__p)
  {
    (*(*v63 + 184))(v63, 0);
    (*(*__p + 184))(__p, 0);
  }

  if (v70)
  {
    (*(*v63 + 184))(v63, 0);
    (*(*v70 + 184))(v70, 0);
  }

  if ((a3 & 1) != 0 || !kaldi::quasar::CEAcousticEncoderNet::NumSpeculativeOutputs(*(a1 + 16)))
  {
    v9 = v63;
    v63 = 0;
    v76 = v9;
    v8 = __p;
    if (__p)
    {
      __p = 0;
    }

    v10 = v70;
    if (v70)
    {
      v70 = 0;
    }

    v30 = *(a1 + 248);
    if (v30)
    {
      *(a1 + 248) = 0;
      (*(*v30 + 8))(v30);
    }

    v31 = *(a1 + 256);
    if (v31)
    {
      *(a1 + 256) = 0;
      (*(*v31 + 8))(v31);
    }

    v32 = *(a1 + 264);
    if (!v32)
    {
      goto LABEL_32;
    }

    *(a1 + 264) = 0;
    goto LABEL_31;
  }

  v12 = (*(*v63 + 184))(v63, 0);
  if (v12 <= kaldi::quasar::CEAcousticEncoderNet::NumSpeculativeOutputs(*(a1 + 16)))
  {
    v51 = v63;
    v63 = 0;
    v52 = *(a1 + 248);
    *(a1 + 248) = v51;
    if (v52)
    {
      (*(*v52 + 8))(v52);
    }

    v53 = __p;
    if (__p)
    {
      __p = 0;
      v54 = *(a1 + 256);
      *(a1 + 256) = v53;
      if (v54)
      {
        (*(*v54 + 8))(v54);
      }
    }

    v55 = v70;
    if (v70)
    {
      v70 = 0;
      v56 = *(a1 + 264);
      *(a1 + 264) = v55;
      if (v56)
      {
        (*(*v56 + 8))(v56);
        v9 = 0;
        v8 = 0;
        v10 = 0;
        goto LABEL_32;
      }
    }

    v9 = 0;
    v10 = 0;
    v8 = 0;
  }

  else
  {
    v13 = (*(*v63 + 184))(v63, 0);
    v14 = kaldi::quasar::CEAcousticEncoderNet::NumSpeculativeOutputs(*(a1 + 16));
    v15 = kaldi::quasar::CEAcousticEncoderNet::Engine(*(a1 + 16));
    v16 = (v13 - v14);
    (*(**v15 + 120))(&v69);
    v9 = v69;
    v76 = v69;
    v17 = *kaldi::quasar::CEAcousticEncoderNet::Engine(*(a1 + 16));
    v18 = v63;
    v19 = (*(*v63 + 184))(v63, 0);
    (*(*v17 + 120))(&v69, v17, v18, v16, v19);
    v20 = v69;
    v69 = 0;
    v21 = *(a1 + 248);
    *(a1 + 248) = v20;
    if (v21)
    {
      (*(*v21 + 8))(v21);
      v22 = v69;
      v69 = 0;
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }
    }

    if (__p)
    {
      v23 = kaldi::quasar::CEAcousticEncoderNet::Engine(*(a1 + 16));
      (*(**v23 + 120))(&v69);
      v8 = v69;
      v24 = *kaldi::quasar::CEAcousticEncoderNet::Engine(*(a1 + 16));
      v25 = __p;
      v26 = (*(*__p + 184))(__p, 0);
      (*(*v24 + 120))(&v69, v24, v25, v16, v26);
      v27 = v69;
      v69 = 0;
      v28 = *(a1 + 256);
      *(a1 + 256) = v27;
      if (v28)
      {
        (*(*v28 + 8))(v28);
        v29 = v69;
        v69 = 0;
        if (v29)
        {
          (*(*v29 + 8))(v29);
        }
      }
    }

    else
    {
      v8 = 0;
    }

    if (v70)
    {
      v57 = kaldi::quasar::CEAcousticEncoderNet::Engine(*(a1 + 16));
      (*(**v57 + 120))(&v69);
      v10 = v69;
      v58 = *kaldi::quasar::CEAcousticEncoderNet::Engine(*(a1 + 16));
      v59 = v70;
      v60 = (*(*v70 + 184))(v70, 0);
      (*(*v58 + 120))(&v69, v58, v59, v16, v60);
      v61 = v69;
      v69 = 0;
      v62 = *(a1 + 264);
      *(a1 + 264) = v61;
      if (!v62 || ((*(*v62 + 8))(v62), v32 = v69, v69 = 0, !v32))
      {
LABEL_32:
        v33 = v70;
        v70 = 0;
        if (v33)
        {
          (*(*v33 + 8))(v33);
        }

        goto LABEL_34;
      }

LABEL_31:
      (*(*v32 + 8))(v32);
      goto LABEL_32;
    }

    v10 = 0;
  }

LABEL_34:
  v34 = __p;
  __p = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  v35 = v63;
  v63 = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

LABEL_38:
  if (v9)
  {
    v36 = (*(*v9 + 184))(v9, 0);
  }

  else
  {
    v36 = 0;
  }

  *(a1 + 528) = vadd_s32(*(a1 + 528), vdup_n_s32(v36));
  v37 = kaldi::quasar::CEAcousticEncoderNet::Engine(*(a1 + 16));
  kaldi::quasar::TransducerAutoRegressiveDecodable::AppendBuffers(v37, v37, &v76, (a1 + 168));
  if (v8)
  {
    __p = 0;
    v67 = 0;
    v68 = 0;
    (*(*v8 + 56))(v8, &__p);
    v38 = kaldi::MatrixBase<float>::NumRows(a1 + 272);
    v39 = (*(*v8 + 184))(v8, 0);
    v40 = kaldi::quasar::CEAcousticEncoderNet::OutputPhoneDim(*(a1 + 16));
    v41 = v40;
    kaldi::Matrix<float>::Resize(a1 + 272, (v39 + v38), v40, 2, 0);
    kaldi::SubMatrix<float>::SubMatrix(&v71, a1 + 272, v38, v39, 0, *(a1 + 280));
    kaldi::SubMatrix<float>::SubMatrix(&v63, __p, v39, v41, v41);
    kaldi::MatrixBase<float>::CopyFromMat<float>(&v71, &v63, 111);
    quasar::Bitmap::~Bitmap(&v63);
    if (v39 >= 1)
    {
      for (i = 0; i != v39; ++i)
      {
        v43 = v71;
        v44 = v73;
        v45 = kaldi::MatrixBase<float>::NumCols(&v71);
        v65 = 0;
        v63 = v43 + 4 * v44 * i;
        v64 = v45;
        kaldi::VectorBase<float>::ApplySoftMax(&v63, v46);
        kaldi::VectorBase<float>::ApplyLog(&v63);
        LODWORD(v70) = 0;
        kaldi::VectorBase<float>::Max(&v63, &v70, v47);
        std::vector<int>::push_back[abi:ne200100]((a1 + 312), &v70);
      }
    }

    quasar::Bitmap::~Bitmap(&v71);
    if (__p)
    {
      v67 = __p;
      operator delete(__p);
    }
  }

  if (v10)
  {
    *&v71 = 0.0;
    v72 = 0;
    v73 = 0;
    (*(*v10 + 56))(v10, &v71);
    v48 = *(a1 + 344);
    v49 = (*(*v10 + 184))(v10, 0);
    kaldi::Vector<float>::Resize((a1 + 336), v49 + v48, 2);
    v64 = 0;
    v65 = 0;
    v63 = *(a1 + 336) + 4 * v48;
    LODWORD(v64) = v49;
    v68 = 0;
    __p = v71;
    v67 = v49;
    kaldi::VectorBase<float>::Sigmoid(&v63, &__p);
    if (*&v71 != 0.0)
    {
      v72 = v71;
      operator delete(v71);
    }
  }

  if (a3)
  {
    *(a1 + 576) = 1;
  }

  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  result = v76;
  if (v76)
  {
    return (*(*v76 + 8))(v76);
  }

  return result;
}

void sub_1B54B4F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (a18)
  {
    (*(*a18 + 8))(a18);
  }

  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v23 = *(v21 - 88);
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::TransducerAutoRegressiveDecodable::~TransducerAutoRegressiveDecodable(kaldi::quasar::TransducerAutoRegressiveDecodable *this)
{
  *this = &unk_1F2D15250;
  v2 = *(this + 69);
  if (v2)
  {
    *(this + 70) = v2;
    operator delete(v2);
  }

  v3 = *(this + 60);
  if (v3)
  {
    *(this + 61) = v3;
    operator delete(v3);
  }

  kaldi::CuMatrix<float>::~CuMatrix(this + 432);
  std::__tree<int>::destroy(this + 408, *(this + 52));
  std::__tree<int>::destroy(this + 384, *(this + 49));
  v4 = *(this + 45);
  if (v4)
  {
    *(this + 46) = v4;
    operator delete(v4);
  }

  kaldi::Vector<float>::Destroy(this + 336);
  v5 = *(this + 39);
  if (v5)
  {
    *(this + 40) = v5;
    operator delete(v5);
  }

  kaldi::Matrix<float>::~Matrix(this + 272);
  v6 = *(this + 33);
  *(this + 33) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 32);
  *(this + 32) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 31);
  *(this + 31) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v10 = (this + 224);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (this + 200);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (this + 176);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v9 = *(this + 21);
  *(this + 21) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = (this + 144);
  std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (this + 120);
  std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (this + 96);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v10);
  quasar::Bitmap::~Bitmap(this);
}

{
  kaldi::quasar::TransducerAutoRegressiveDecodable::~TransducerAutoRegressiveDecodable(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::quasar::TransducerAutoRegressiveDecodable::ComputeLogLikelihoods(kaldi::quasar::TransducerAutoRegressiveDecodable *this, int a2, uint64_t a3, void *a4)
{
  v100[2] = *MEMORY[0x1E69E9840];
  if (!a2 && (*(a3 + 8) - *a3 != 4 || **a3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v93);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v93, "states.size() == 1 && states[0] == 0");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v93);
  }

  if ((*(this + 576) & 1) == 0)
  {
    do
    {
      if (*(this + 134) != *(this + 132))
      {
        break;
      }

      kaldi::quasar::TransducerAutoRegressiveDecodable::EncodeNextChunk(this);
    }

    while (*(this + 576) != 1);
  }

  if (*(this + 21))
  {
    kaldi::quasar::TransducerAutoRegressiveDecodable::LookupStates(this, a3, v93);
    v67 = a4;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    if (*(a3 + 8) != *a3)
    {
      v7 = 0;
      v8 = 0;
      v9 = v95[0];
      do
      {
        v10 = *&v9[v7];
        v11 = kaldi::quasar::CELabelEncoderNet::BlankIndex(*(this + 3));
        v12 = v93[0];
        if (v10 == v11)
        {
          v13 = &v90;
        }

        else
        {
          v12 = v9;
          v13 = &v87;
        }

        std::vector<int>::push_back[abi:ne200100](v13, &v12[v7]);
        ++v8;
        v7 += 4;
      }

      while (v8 < (*(a3 + 8) - *a3) >> 2);
    }

    Ngram::getTrie(*(this + 3));
    kaldi::quasar::TransducerAutoRegressiveDecodable::GatherStates(this, this + 15, v93, v95, v85);
    Ngram::getTrie(*(this + 3));
    kaldi::quasar::TransducerAutoRegressiveDecodable::GatherOutputsBatch(this + 22, &v90, 0, v84);
    memset(v83, 0, sizeof(v83));
    if (v88 != v87)
    {
      LOBYTE(v78) = 1;
      kaldi::Timer::Reset(__p, v14);
      v79 = 0;
      kaldi::quasar::CELabelEncoderNet::EncodeBatch(*(this + 3), v86, &v87, v86, v83);
      *(this + 74) = *(this + 74) + kaldi::Timer::GetSeconds(5, v15) - *__p;
    }

    if (*(this + 18) != 0.0)
    {
      quasar::SpeechRequestData::getMultiChainMultiAudioBuffer(*(this + 4));
      kaldi::quasar::TransducerAutoRegressiveDecodable::GatherOutputsBatch(this + 25, &v90, 0, &v72);
      v69 = 0uLL;
      v70 = 0;
      if (v88 != v87)
      {
        v16 = *quasar::SpeechRequestData::getMultiChainMultiAudioBuffer(*(this + 4));
        *&v99 = (v88 - v87) >> 2;
        *(&v99 + 1) = kaldi::quasar::CEJointPredictorNet::InputDim(*(this + 4));
        __p[1] = 0;
        v77 = 0;
        __p[0] = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(__p, &v99, v100, 2uLL);
        (*(*v16 + 64))(&v82, v16, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        Trie = Ngram::getTrie(*(this + 3));
        kaldi::quasar::ComputeEngineItf::CreateConcat(*Trie, v83, 0);
        v80 = 0;
        LOBYTE(v78) = 1;
        kaldi::Timer::Reset(__p, v18);
        v79 = 0;
        kaldi::quasar::CEJointPredictorNet::Predict(*(this + 4), &v82, &v81, &v80);
        *(this + 76) = *(this + 76) + kaldi::Timer::GetSeconds(5, v19) - *__p;
        MultiChainMultiAudioBuffer = quasar::SpeechRequestData::getMultiChainMultiAudioBuffer(*(this + 4));
        kaldi::quasar::ComputeEngineItf::CreateSplitMove(*MultiChainMultiAudioBuffer, &v80, &v99);
        std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__vdeallocate(&v69);
        v69 = v99;
        v70 = v100[0];
        v100[0] = 0;
        v98 = &v99;
        v99 = 0uLL;
        std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v98);
        v21 = v80;
        v80 = 0;
        if (v21)
        {
          (*(*v21 + 8))(v21);
        }

        v22 = v81;
        v81 = 0;
        if (v22)
        {
          (*(*v22 + 8))(v22);
        }

        v23 = v82;
        v82 = 0;
        if (v23)
        {
          (*(*v23 + 8))(v23);
        }
      }

      quasar::SpeechRequestData::getMultiChainMultiAudioBuffer(*(this + 4));
      kaldi::quasar::TransducerAutoRegressiveDecodable::MergeOutputs(this, &v72, &v69, v95, __p);
      std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__vdeallocate(this + 25);
      *(this + 200) = *__p;
      *(this + 27) = v77;
      __p[1] = 0;
      v77 = 0;
      __p[0] = 0;
      *&v99 = __p;
      std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v99);
      __p[0] = &v69;
      std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](__p);
      __p[0] = &v72;
      std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](__p);
    }

    Ngram::getTrie(*(this + 3));
    kaldi::quasar::TransducerAutoRegressiveDecodable::MergeStates(this, v85, v86, v95, __p);
    std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__vdeallocate(this + 15);
    *(this + 120) = *__p;
    *(this + 17) = v77;
    __p[1] = 0;
    v77 = 0;
    __p[0] = 0;
    *&v72 = __p;
    std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v72);
    Ngram::getTrie(*(this + 3));
    kaldi::quasar::TransducerAutoRegressiveDecodable::MergeOutputs(this, v84, v83, v95, __p);
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__vdeallocate(this + 22);
    *(this + 11) = *__p;
    *(this + 24) = v77;
    __p[1] = 0;
    v77 = 0;
    __p[0] = 0;
    *&v72 = __p;
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v72);
    v24 = *(this + 7);
    if (v24 && *(this + 17) != 0.0)
    {
      Ngram::getTrie(v24);
      kaldi::quasar::TransducerAutoRegressiveDecodable::GatherStates(this, this + 18, v93, v95, __p);
      Ngram::getTrie(*(this + 7));
      kaldi::quasar::TransducerAutoRegressiveDecodable::GatherOutputsBatch(this + 28, &v90, 0, &v69);
      v99 = 0uLL;
      v100[0] = 0;
      if (v88 != v87)
      {
        LOBYTE(v74) = 1;
        kaldi::Timer::Reset(&v72, v25);
        v75 = 0;
        kaldi::quasar::CELabelEncoderNet::EncodeBatch(*(this + 7), &v78, &v87, &v78, &v99);
        *(this + 77) = *(this + 77) + kaldi::Timer::GetSeconds(5, v26) - *&v72;
      }

      Ngram::getTrie(*(this + 7));
      kaldi::quasar::TransducerAutoRegressiveDecodable::MergeStates(this, __p, &v78, v95, &v72);
      std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__vdeallocate(this + 18);
      *(this + 9) = v72;
      *(this + 20) = v73;
      v73 = 0;
      v72 = 0uLL;
      v98 = &v72;
      std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v98);
      Ngram::getTrie(*(this + 7));
      kaldi::quasar::TransducerAutoRegressiveDecodable::MergeOutputs(this, &v69, &v99, v95, &v72);
      std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__vdeallocate(this + 28);
      *(this + 14) = v72;
      *(this + 30) = v73;
      v73 = 0;
      v72 = 0uLL;
      v98 = &v72;
      std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v98);
      *&v72 = &v99;
      std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v72);
      *&v72 = &v69;
      std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v72);
      *&v72 = &v78;
      std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v72);
      *&v72 = __p;
      std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v72);
    }

    v27 = kaldi::quasar::CEAcousticEncoderNet::Engine(*(this + 2));
    kaldi::quasar::TransducerAutoRegressiveDecodable::GatherOutputs(v27, this + 21, &v96, 1, &v98);
    LOBYTE(v78) = 1;
    kaldi::Timer::Reset(__p, v28);
    v79 = 0;
    v82 = 0;
    v29 = Ngram::getTrie(*(this + 3));
    kaldi::quasar::ComputeEngineItf::CreateConcat(*v29, this + 22, 0);
    kaldi::quasar::CEJointPredictorNet::Predict(*(this + 4), &v98, &v81, &v82);
    *(this + 75) = *(this + 75) + kaldi::Timer::GetSeconds(5, v30) - *__p;
    (*(*v82 + 56))(v82, this + 480);
    v31 = v96;
    if (v97 == v96)
    {
      v33 = 0;
      v35 = 0.0;
    }

    else
    {
      v32 = 0;
      v33 = 0;
      v34 = v97 - v96;
      v35 = 0.0;
      do
      {
        v36 = v31;
        v37 = v31[v32];
        LODWORD(v80) = 0;
        *(&v72 + 1) = 0;
        v73 = 0;
        v74 = 0;
        *&v72 = &unk_1F2D3AC18;
        if (*(this + 7) && *(this + 17) != 0.0)
        {
          v38 = *(*(this + 28) + 8 * v32);
          v39 = (*(*v38 + 40))(v38, &v72);
          v39.n128_u32[0] = *(this + 20);
          kaldi::quasar::TransducerAutoRegressiveDecodable::ComputeLogSoftMax(this, &v72, 1, *(this + 88), &v80, v39.n128_f64[0]);
        }

        v40 = *(this + 60);
        v41 = (*(*this + 16))(this);
        v42 = (*(*this + 16))(this);
        v71 = 0;
        *&v69 = &unk_1F2CFCA48;
        *(&v69 + 1) = v40 + 4 * v41 * v32;
        v70 = v42;
        v44 = *(this + 135);
        if (v44 <= 0)
        {
          v44 = *(this + 132);
        }

        if (v37 == v44)
        {
          v43.i32[0] = -8388609;
          kaldi::CuVectorBase<float>::Set(&v69, v43);
          v45 = 0.0;
          if (*(this + 7))
          {
            v46 = *(this + 17);
            v31 = v36;
            if (v46 != 0.0)
            {
              v45 = v46 * logf(*&v80);
            }
          }

          else
          {
            v31 = v36;
          }

          v51 = (*(*this + 32))(this);
          *(*(&v69 + 1) + 4 * v51) = v45;
        }

        else
        {
          if (!kaldi::quasar::CEJointPredictorNet::OutputsAreLogProbs(*(this + 4)))
          {
            LODWORD(v47) = *(this + 19);
            kaldi::quasar::TransducerAutoRegressiveDecodable::ComputeLogSoftMax(this, &v69, 0, 0, 0, v47);
          }

          if (*(this + 18) != 0.0)
          {
            *(&v99 + 1) = 0;
            v100[0] = 0;
            v100[1] = 0;
            *&v99 = &unk_1F2D3AC18;
            v48 = *(*(this + 25) + 8 * v32);
            v49 = (*(*v48 + 40))(v48, &v99);
            v49.n128_u32[0] = *(this + 21);
            kaldi::quasar::TransducerAutoRegressiveDecodable::ComputeLogSoftMax(this, &v99, 1, 0, 0, v49.n128_f64[0]);
            *&v50 = -*(this + 18);
            kaldi::CuVectorBase<float>::AddVec(v50, 1.0);
            kaldi::CuVector<float>::~CuVector(&v99);
          }

          if (*(this + 7))
          {
            LODWORD(v47) = *(this + 17);
            if (*&v47 != 0.0)
            {
              kaldi::CuVectorBase<float>::AddVec(v47, 1.0);
            }
          }

          if (v37 > v33)
          {
            v33 = v37;
            v35 = *&v80;
          }

          v31 = v36;
        }

        kaldi::CuVector<float>::~CuVector(&v72);
        ++v32;
      }

      while (v34 > v32);
    }

    if (v67 && (this + 480) != v67)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v67, *(this + 60), *(this + 61), (*(this + 61) - *(this + 60)) >> 2);
    }

    v55 = *(this + 134);
    if (v33 >= v55)
    {
      *(this + 134) = v33 + 1;
      if (*(this + 39) != *(this + 40))
      {
        do
        {
          v56 = *(*(this + 39) + 4 * v55);
          if (v56 == kaldi::quasar::CEAcousticEncoderNet::SilPhoneIndex(*(this + 2)))
          {
            if (v55)
            {
              v57 = *(*(this + 70) - 4) + 1;
            }

            else
            {
              v57 = 1;
            }

            LODWORD(v72) = v57;
            std::vector<int>::push_back[abi:ne200100](this + 69, &v72);
          }

          else
          {
            LODWORD(v72) = 0;
            std::vector<int>::push_back[abi:ne200100](this + 69, &v72);
            ++*(this + 136);
          }

          ++v55;
        }

        while (v55 < *(this + 134));
        if (kaldi::EndPointer::Enabled(*(this + 5)) && (*(this + 576) != 1 || *(this + 132) != *(this + 134)))
        {
          v58 = *(this + 86) < 1 ? 0.0 : *(*(this + 42) + 4 * v33);
          v59 = *(this + 136);
          v60 = v59 < 1 ? *(*(this + 70) - 4) + *(this + 131) : *(*(this + 70) - 4);
          IsEndPoint = kaldi::EndPointer::IsEndPoint(*(this + 5), v58, v35, *(this + 134) + *(this + 129), v59 + *(this + 130), v60);
          *(this + 577) = IsEndPoint;
          if (IsEndPoint)
          {
            *(this + 135) = *(this + 134);
          }
        }

        if (kaldi::EndPointer::Enabled(*(this + 6)))
        {
          v62 = *(this + 134);
          if ((*(this + 576) != 1 || *(this + 132) != v62) && kaldi::UtteranceDetector::IsUtteranceBoundary(*(this + 6), v62, *(this + 136), *(*(this + 70) - 4)))
          {
            *(this + 135) = *(this + 134);
          }
        }
      }
    }

    std::__tree<int>::destroy(this + 408, *(this + 52));
    *(this + 52) = 0;
    *(this + 53) = 0;
    *(this + 51) = this + 416;
    ++*(this + 126);
    v63 = v81;
    v81 = 0;
    if (v63)
    {
      (*(*v63 + 8))(v63);
    }

    v64 = v82;
    v82 = 0;
    if (v64)
    {
      (*(*v64 + 8))(v64);
    }

    v65 = v98;
    v98 = 0;
    if (v65)
    {
      (*(*v65 + 1))(v65);
    }

    __p[0] = v83;
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0] = v84;
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0] = v86;
    std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0] = v85;
    std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](__p);
    if (v87)
    {
      v88 = v87;
      operator delete(v87);
    }

    if (v90)
    {
      v91 = v90;
      operator delete(v90);
    }

    if (v31)
    {
      operator delete(v31);
    }

    if (v95[0])
    {
      operator delete(v95[0]);
    }

    if (v93[0])
    {
      operator delete(v93[0]);
    }
  }

  else
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v93);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, "No frames to decode. Force decoding EOS.", 40);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v93);
    }

    LODWORD(v85[0]) = 0;
    v93[0] = v85;
    std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 384, v85)[4] = 0;
    *(this + 46) = *(this + 45);
    v52 = (*(*this + 16))(this);
    LODWORD(v85[0]) = -8388609;
    std::vector<float>::vector[abi:ne200100](v93, v52);
    v53 = (this + 480);
    v54 = *(this + 60);
    if (v54)
    {
      *(this + 61) = v54;
      operator delete(v54);
      *v53 = 0;
      *(this + 61) = 0;
      *(this + 62) = 0;
    }

    v68 = v93[0];
    *(this + 30) = *v93;
    *(this + 62) = v94;
    v68[kaldi::quasar::CELabelEncoderNet::EOSIndex(*(this + 3))] = 0;
    if (a4 && v53 != a4)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a4, *(this + 60), *(this + 61), (*(this + 61) - *(this + 60)) >> 2);
    }

    ++*(this + 126);
  }

  return 1;
}

void sub_1B54B6490(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::TransducerAutoRegressiveDecodable::EncodeNextChunk(kaldi::quasar::TransducerAutoRegressiveDecodable *this)
{
  kaldi::CuMatrix<float>::CuMatrix(&v15, *(this + 23), *(*(this + 1) + 24), 0, 0, 0);
  v2 = *(this + 113);
  if (v2 < 1)
  {
    v3 = 0;
  }

  else
  {
    *(&v13 + 1) = __PAIR64__(v2, v17);
    v14 = v18;
    v12 = &unk_1F2CFA908;
    *&v13 = v16;
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v12, this + 432, 111);
    v12 = &unk_1F2CFA908;
    v13 = 0u;
    v14 = 0u;
    quasar::Bitmap::~Bitmap(&v12);
    v3 = *(this + 113);
  }

  if (v3 < *(this + 23))
  {
    v4 = *(this + 127);
    do
    {
      if (!kaldi::OnlineFeatureMatrix::IsValidFrame(*(this + 1), v4, 1))
      {
        break;
      }

      *&v13 = v16 + 4 * v18 * v3;
      v12 = &unk_1F2CFCA48;
      *(&v13 + 1) = v17;
      *&v14 = *(&v18 + 1);
      kaldi::OnlineFeatureMatrix::GetFrame(*(this + 1), *(this + 127), v11);
      kaldi::CuVectorBase<float>::CopyFromVec<float>(&v12, v11);
      v3 = (v3 + 1);
      v4 = *(this + 127) + 1;
      *(this + 127) = v4;
    }

    while (v3 < *(this + 23));
  }

  if (v3 >= 1)
  {
    if (!kaldi::quasar::CEAcousticEncoderNet::IsInputSizeFixed(*(this + 2)) && v3 < *(this + 23))
    {
      kaldi::CuMatrix<float>::Resize(&v15, v3, *(*(this + 1) + 24), 2, 0);
    }

    IsValidFrame = kaldi::OnlineFeatureMatrix::IsValidFrame(*(this + 1), *(this + 127), 1);
    kaldi::quasar::TransducerAutoRegressiveDecodable::Encode(this, &v15, IsValidFrame ^ 1u);
    v6 = v3;
    if (v3 >= kaldi::quasar::CEAcousticEncoderNet::FrameOverlap(*(this + 2)))
    {
      v7 = kaldi::quasar::CEAcousticEncoderNet::FrameOverlap(*(this + 2));
      v8 = kaldi::quasar::CEAcousticEncoderNet::FrameOverlap(*(this + 2));
      v6 = ((v3 - v8) % kaldi::quasar::CEAcousticEncoderNet::FrameSubsamplingFactor(*(this + 2)) + v7);
    }

    kaldi::CuMatrix<float>::Resize(this + 54, v6, *(*(this + 1) + 24), 1, 0);
    v9 = v18 * (v3 - v6);
    *(&v13 + 1) = __PAIR64__(v6, v17);
    LODWORD(v14) = v18;
    DWORD1(v14) = DWORD1(v18) - v9;
    *(&v14 + 1) = *(&v18 + 1);
    v12 = &unk_1F2CFA908;
    *&v13 = v16 + 4 * v9;
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(this + 108, &v12, 111);
    v12 = &unk_1F2CFA908;
    v13 = 0u;
    v14 = 0u;
    quasar::Bitmap::~Bitmap(&v12);
  }

  return kaldi::CuMatrix<float>::~CuMatrix(&v15);
}

void sub_1B54B675C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  kaldi::CuMatrix<float>::~CuMatrix(va1);
  _Unwind_Resume(a1);
}

void kaldi::quasar::TransducerAutoRegressiveDecodable::LookupStates(uint64_t a1@<X0>, int **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (a1 + 392);
  std::__tree<int>::destroy(a1 + 384, *(a1 + 392));
  *(a1 + 384) = v6;
  v7 = 0uLL;
  *v6 = 0u;
  v25 = 0;
  v24 = 0u;
  v23 = 0;
  v22 = 0u;
  v21 = 0;
  v20 = 0u;
  v8 = *a2;
  v9 = a2[1];
  if (*a2 == v9)
  {
    v19 = 0;
    v17 = 0;
    v15 = 0;
    v16 = 0uLL;
    v18 = 0uLL;
  }

  else
  {
    do
    {
      v10 = *v6;
        ;
      }

      v12 = (*(a1 + 360) + 12 * i);
      std::vector<int>::push_back[abi:ne200100](&v24, v12);
      std::vector<int>::push_back[abi:ne200100](&v22, v12 + 1);
      std::vector<int>::push_back[abi:ne200100](&v20, v12 + 2);
      v13 = *(a1 + 400);
      LODWORD(v12) = v12[2];
      v26 = v8;
      v14 = std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 384, v8);
      *(v14 + 8) = v13;
      *(v14 + 9) = v12;
      ++v8;
    }

    while (v8 != v9);
    v7 = v24;
    v15 = v25;
    v16 = v22;
    v17 = v23;
    v18 = v20;
    v19 = v21;
  }

  *(a1 + 368) = *(a1 + 360);
  *a3 = v7;
  *(a3 + 16) = v15;
  *(a3 + 24) = v16;
  *(a3 + 40) = v17;
  *(a3 + 48) = v18;
  *(a3 + 64) = v19;
}

void sub_1B54B6930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::TransducerAutoRegressiveDecodable::GatherStates(uint64_t a1@<X0>, void *a2@<X2>, int **a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v39 = 0uLL;
  v40 = 0;
  v37 = 0uLL;
  v38 = 0;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::reserve(&v39, v6);
  std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::reserve(&v37, v6);
  v7 = a3[1];
  if (v7 - *a3 == 4)
  {
    v8 = 1;
  }

  else
  {
    std::unordered_set<int>::unordered_set<std::__wrap_iter<int const*>>(&v33, *a3, v7);
    v8 = v35 == a3[1] - *a3;
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v33);
  }

  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    do
    {
      kaldi::quasar::TransducerAutoRegressiveDecodable::GatherState(a1, v9, a3, a4, v8, &v33);
      v11 = *(&v39 + 1);
      if (*(&v39 + 1) >= v40)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * ((*(&v39 + 1) - v39) >> 3);
        v14 = v13 + 1;
        if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_29;
        }

        if (0x5555555555555556 * ((v40 - v39) >> 3) > v14)
        {
          v14 = 0x5555555555555556 * ((v40 - v39) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v40 - v39) >> 3) >= 0x555555555555555)
        {
          v15 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v15 = v14;
        }

        v45 = &v39;
        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(&v39, v15);
        }

        v16 = (8 * ((*(&v39 + 1) - v39) >> 3));
        *v16 = 0;
        v16[1] = 0;
        v16[2] = 0;
        *v16 = v33;
        v16[2] = v34;
        v33 = 0uLL;
        v34 = 0;
        v12 = 24 * v13 + 24;
        v17 = 24 * v13 - (*(&v39 + 1) - v39);
        memcpy(v16 - (*(&v39 + 1) - v39), v39, *(&v39 + 1) - v39);
        v18 = v39;
        v19 = v40;
        *&v39 = v17;
        *(&v39 + 1) = v12;
        v40 = 0;
        v43 = v18;
        v44 = v19;
        v41 = v18;
        v42 = v18;
        std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(&v41);
      }

      else
      {
        **(&v39 + 1) = 0;
        *(v11 + 8) = 0;
        *(v11 + 16) = 0;
        *v11 = v33;
        *(v11 + 16) = v34;
        v33 = 0uLL;
        v34 = 0;
        v12 = v11 + 24;
      }

      *(&v39 + 1) = v12;
      v20 = *(&v37 + 1);
      if (*(&v37 + 1) >= v38)
      {
        v22 = 0xAAAAAAAAAAAAAAABLL * ((*(&v37 + 1) - v37) >> 3);
        v23 = v22 + 1;
        if (v22 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
LABEL_29:
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v38 - v37) >> 3) > v23)
        {
          v23 = 0x5555555555555556 * ((v38 - v37) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v38 - v37) >> 3) >= 0x555555555555555)
        {
          v24 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v24 = v23;
        }

        v45 = &v37;
        if (v24)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(&v37, v24);
        }

        v25 = (8 * ((*(&v37 + 1) - v37) >> 3));
        *v25 = 0;
        v25[1] = 0;
        v25[2] = 0;
        *v25 = v35;
        v25[2] = v36;
        v35 = 0uLL;
        v36 = 0;
        v21 = 24 * v22 + 24;
        v26 = 24 * v22 - (*(&v37 + 1) - v37);
        memcpy(v25 - (*(&v37 + 1) - v37), v37, *(&v37 + 1) - v37);
        v27 = v37;
        v28 = v38;
        *&v37 = v26;
        *(&v37 + 1) = v21;
        v38 = 0;
        v43 = v27;
        v44 = v28;
        v41 = v27;
        v42 = v27;
        std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(&v41);
      }

      else
      {
        **(&v37 + 1) = 0;
        *(v20 + 8) = 0;
        *(v20 + 16) = 0;
        *v20 = v35;
        *(v20 + 16) = v36;
        v35 = 0uLL;
        v36 = 0;
        v21 = v20 + 24;
      }

      *(&v37 + 1) = v21;
      v41 = &v35;
      std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v41);
      v41 = &v33;
      std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v41);
      v9 += 3;
    }

    while (v9 != v10);
  }

  *a5 = v39;
  *(a5 + 16) = v40;
  v40 = 0;
  v39 = 0uLL;
  *(a5 + 24) = v37;
  *(a5 + 40) = v38;
  v37 = 0uLL;
  v38 = 0;
  *&v33 = &v37;
  std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v33);
  *&v33 = &v39;
  std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_1B54B6CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  a13 = &a19;
  std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&a13);
  a13 = &a23;
  std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void kaldi::quasar::TransducerAutoRegressiveDecodable::GatherOutputsBatch(void *a1@<X2>, unsigned int **a2@<X3>, char a3@<W4>, uint64_t *a4@<X8>)
{
  if (*a1 == a1[1])
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    (*(***a1 + 176))();
    v10 = a2;
    v8 = *a2;
    v9 = v10[1];
    a4[1] = 0;
    a4[2] = 0;
    *a4 = 0;
    if (((v9 - v8) & 0x3FFFFFFFCLL) != 0 && v8 != v9)
    {
      do
      {
        v12 = *v8;
        if (((a3 & 1) == 0 || (v12 & 0x80000000) == 0) && (a1[1] - *a1) >> 3 > v12)
        {
          (*(**(*a1 + 8 * v12) + 16))(&v14);
          std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::push_back[abi:ne200100](a4, &v14);
          v13 = v14;
          v14 = 0;
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }
        }

        ++v8;
      }

      while (v8 != v9);
    }
  }
}

void sub_1B54B6E78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *kaldi::quasar::TransducerAutoRegressiveDecodable::MergeOutputs@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, void *a4@<X4>, uint64_t *a5@<X8>)
{
  v6 = a3;
  v8 = *a3;
  v9 = a3[1];
  if (*a2 == a2[1])
  {
    if (v8 != v9)
    {
      result = (*(**v8 + 176))();
      if (result != 2)
      {
        goto LABEL_26;
      }

      v20 = *v6;
      v19 = v6[1];
      if ((v19 - *v6) >> 3 != (a4[1] - *a4) >> 2)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v21);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v21, "nonblank_outputs.size() == labels.size()");
        goto LABEL_33;
      }

      goto LABEL_21;
    }

    if (a4[1] == *a4)
    {
      goto LABEL_23;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v21);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v21, "labels.size() == 0");
LABEL_33:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v21);
  }

  v11 = result;
  result = (*(***a2 + 176))();
  if (v8 == v9)
  {
    if (result != 2)
    {
      goto LABEL_25;
    }

    v20 = *a2;
    v19 = a2[1];
    if ((v19 - *a2) >> 3 == (a4[1] - *a4) >> 2)
    {
      v6 = a2;
LABEL_21:
      *a5 = v20;
      a5[1] = v19;
      a5[2] = v6[2];
      a5 = v6;
LABEL_23:
      *a5 = 0;
      a5[1] = 0;
      a5[2] = 0;
      return result;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v21);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v21, "blank_outputs.size() == labels.size()");
    goto LABEL_33;
  }

  if (result != 2)
  {
LABEL_25:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v21);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v21, "blank_outputs.front()->GetNumDims() == 2");
    goto LABEL_33;
  }

  if ((*(***v6 + 176))(**v6) != 2)
  {
LABEL_26:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v21);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v21, "nonblank_outputs.front()->GetNumDims() == 2");
    goto LABEL_33;
  }

  v12 = (*(***a2 + 184))(**a2, 1);
  result = (*(***v6 + 184))(**v6, 1);
  if (v12 != result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v21);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v21, "blank_outputs.front()->GetDimSize(1) == nonblank_outputs.front()->GetDimSize(1)");
    goto LABEL_33;
  }

  v15 = a4;
  v13 = *a4;
  v14 = v15[1];
  if (((v6[1] - *v6) >> 3) + ((a2[1] - *a2) >> 3) != v14 - v13)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v21);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v21, "blank_outputs.size() + nonblank_outputs.size() == labels.size()");
    goto LABEL_33;
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (v13 != v14)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *v13;
      if (v18 == kaldi::quasar::CELabelEncoderNet::BlankIndex(v11[3]))
      {
        result = std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::push_back[abi:ne200100](a5, (*a2 + 8 * v17++));
      }

      else
      {
        result = std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::push_back[abi:ne200100](a5, (*v6 + 8 * v16++));
      }

      ++v13;
    }

    while (v13 != v14);
  }

  return result;
}

void kaldi::quasar::TransducerAutoRegressiveDecodable::MergeStates(void *a1@<X0>, uint64_t *a2@<X2>, void *a3@<X3>, int **a4@<X4>, const void **a5@<X8>)
{
  v7 = *a2;
  v6 = a2[1];
  if (v6 - *a2 != a3[1] - *a3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v29);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v29, "blank_states.size() == nonblank_states.size()");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v29);
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (v6 != v7)
  {
    v8 = a4;
    v12 = 0;
    v13 = 0;
    do
    {
      kaldi::quasar::TransducerAutoRegressiveDecodable::MergeState(a1, (v7 + v12), (*a3 + v12), v8, &v27);
      v14 = a5[1];
      v15 = a5[2];
      if (v14 >= v15)
      {
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a5) >> 3);
        v18 = v17 + 1;
        if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v19 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a5) >> 3);
        if (2 * v19 > v18)
        {
          v18 = 2 * v19;
        }

        if (v19 >= 0x555555555555555)
        {
          v20 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v20 = v18;
        }

        v29[4] = a5;
        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a5, v20);
        }

        v21 = 24 * v17;
        *v21 = 0;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *v21 = v27;
        *(v21 + 16) = v28;
        v27 = 0uLL;
        v28 = 0;
        v16 = 24 * v17 + 24;
        v22 = a5[1] - *a5;
        v23 = 24 * v17 - v22;
        memcpy((v21 - v22), *a5, v22);
        v24 = *a5;
        *a5 = v23;
        a5[1] = v16;
        v25 = a5[2];
        a5[2] = 0;
        v29[2] = v24;
        v29[3] = v25;
        v29[0] = v24;
        v29[1] = v24;
        std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(v29);
        v8 = a4;
      }

      else
      {
        *v14 = 0;
        *(v14 + 1) = 0;
        *(v14 + 2) = 0;
        *v14 = v27;
        *(v14 + 2) = v28;
        v27 = 0uLL;
        v28 = 0;
        v16 = (v14 + 24);
      }

      a5[1] = v16;
      v29[0] = &v27;
      std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](v29);
      ++v13;
      v7 = *a2;
      v12 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v13);
  }
}

void **std::pair<std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>,std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::~pair(void **a1)
{
  v3 = a1 + 3;
  std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1;
  std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void kaldi::quasar::TransducerAutoRegressiveDecodable::GatherOutputs(uint64_t *a1@<X1>, void *a2@<X2>, int **a3@<X3>, char a4@<W4>, void *a5@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a2 && ((*(**a2 + 176))(*a2), v10 = a3[1] - *a3, (v10 & 0x3FFFFFFFCLL) != 0))
  {
    v11 = (*(**a2 + 184))(*a2, 1);
    v12 = *a1;
    v20[0] = (v10 >> 2);
    v20[1] = v11;
    v18 = 0;
    v19 = 0;
    __p = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, v20, &v21, 2uLL);
    (*(*v12 + 64))(v12, &__p);
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }

    v13 = *a3;
    v14 = a3[1];
    if (*a3 != v14)
    {
      v15 = 0;
      while (1)
      {
        v16 = *v13;
        if ((a4 & 1) == 0)
        {
          break;
        }

        if ((v16 & 0x80000000) == 0)
        {
          goto LABEL_11;
        }

LABEL_13:
        v15 = (v15 + v11);
        if (++v13 == v14)
        {
          return;
        }
      }

      (*(**a2 + 184))(*a2, 0);
LABEL_11:
      if (v16 < (*(**a2 + 184))(*a2, 0))
      {
        (*(**a5 + 72))(*a5, *a2, (v16 * v11), (v16 * v11 + v11), v15);
      }

      goto LABEL_13;
    }
  }

  else
  {
    *a5 = 0;
  }
}

void sub_1B54B7728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::TransducerAutoRegressiveDecodable::ComputeLogSoftMax(uint64_t a1, uint64_t a2, int a3, int a4, float *a5, double a6)
{
  if (*&a6 != 1.0)
  {
    if (*&a6 <= 0.0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v16, "temperature > 0");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
    }

    kaldi::VectorBase<float>::Scale();
  }

  if (a3)
  {
    *(*(a2 + 8) + 4 * (*(*a1 + 48))(a1)) = -8388609;
  }

  if (a4)
  {
    v11 = *(*(a2 + 8) + 4 * (*(*a1 + 32))(a1));
    *(*(a2 + 8) + 4 * (*(*a1 + 32))(a1)) = -8388609;
  }

  else
  {
    v11 = -3.4028e38;
  }

  v12 = kaldi::VectorBase<float>::ApplySoftMax(a2 + 8, a6);
  kaldi::VectorBase<float>::ApplyLog(a2 + 8);
  if (a3)
  {
    *(*(a2 + 8) + 4 * (*(*a1 + 48))(a1)) = 0;
  }

  if (a5)
  {
    if (a4)
    {
      v13 = expf(v11);
      v14 = v13 / (v13 + expf(v12));
    }

    else
    {
      v15 = (*(*a1 + 32))(a1);
      v14 = expf(*(*(a2 + 8) + 4 * v15));
    }

    *a5 = v14;
  }
}

unint64_t kaldi::quasar::TransducerAutoRegressiveDecodable::LogLikelihood(kaldi::quasar::TransducerAutoRegressiveDecodable *this, int a2, unsigned int a3, uint64_t a4)
{
  v25 = a3;
  v26 = &v25;
  v6 = std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 384, &v25)[4];
  v7 = *(*(this + 60) + 4 * (a4 + (*(*this + 16))(this) * v6));
  v24 = v25 | (a4 << 32);
  v8 = std::__tree<std::__value_type<std::pair<int,int>,int>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,int>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,int>>>::find<std::pair<int,int>>(this + 408, &v24);
  if ((this + 416) == v8)
  {
    if (kaldi::quasar::CELabelEncoderNet::BlankIndex(*(this + 3)) == a4)
    {
      v10 = HIDWORD(v6) + 1;
    }

    else
    {
      v10 = HIDWORD(v6);
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 46) - *(this + 45)) >> 2);
    v26 = &v24;
    *(std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__emplace_unique_key_args<std::pair<int,int>,std::piecewise_construct_t const&,std::tuple<std::pair<int,int>&&>,std::tuple<>>(this + 408, &v24) + 36) = v9;
    v12 = *(this + 46);
    v11 = *(this + 47);
    if (v12 >= v11)
    {
      v14 = 0x1555555555555555;
      v15 = *(this + 45);
      v16 = v12 - v15;
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v15) >> 2);
      v18 = v17 + 1;
      if (v17 + 1 > 0x1555555555555555)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v19 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v15) >> 2);
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      if (v19 < 0xAAAAAAAAAAAAAAALL)
      {
        v14 = v18;
      }

      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<int,float,int>>>(this + 360, v14);
      }

      v20 = 12 * v17;
      *v20 = v6;
      *(v20 + 4) = a4;
      *(v20 + 8) = v10;
      v13 = 12 * v17 + 12;
      v21 = (12 * v17 - v16);
      memcpy(v21, v15, v16);
      v22 = *(this + 45);
      *(this + 45) = v21;
      *(this + 46) = v13;
      *(this + 47) = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v12 = v6;
      *(v12 + 1) = a4;
      v13 = (v12 + 12);
      *(v12 + 2) = v10;
    }

    *(this + 46) = v13;
  }

  else
  {
    v9 = v8[9];
  }

  return v7 | (v9 << 32);
}

void *std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void kaldi::quasar::TransducerAutoRegressiveDecodable::GatherState(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X3>, void *a4@<X4>, int a5@<W5>, uint64_t a6@<X8>)
{
  v7 = *a3;
  v6 = a3[1];
  v28 = 0;
  v8 = 0uLL;
  v27 = 0u;
  v26 = 0;
  v25 = 0u;
  if (v6 == v7)
  {
    v23 = 0;
    v21 = 0;
    v22 = 0uLL;
  }

  else
  {
    v24 = a6;
    v14 = 0;
    do
    {
      v15 = *(v7 + 4 * v14);
      v16 = *(*a4 + 4 * v14);
      v17 = kaldi::quasar::CELabelEncoderNet::BlankIndex(*(a1 + 24));
      v18 = (*a2 + 8 * v15);
      if (v16 == v17)
      {
        v19 = &v27;
      }

      else
      {
        v19 = &v25;
      }

      if (a5)
      {
        std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::push_back[abi:ne200100](v19, v18);
      }

      else
      {
        (*(**v18 + 16))(&v29);
        std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::push_back[abi:ne200100](v19, &v29);
        v20 = v29;
        v29 = 0;
        if (v20)
        {
          (*(*v20 + 1))(v20);
        }
      }

      ++v14;
      v7 = *a3;
    }

    while (v14 < (a3[1] - *a3) >> 2);
    v8 = v27;
    v21 = v28;
    v22 = v25;
    v23 = v26;
    a6 = v24;
  }

  *a6 = v8;
  *(a6 + 16) = v21;
  v28 = 0;
  v27 = 0uLL;
  *(a6 + 24) = v22;
  *(a6 + 40) = v23;
  v26 = 0;
  v25 = 0uLL;
  v29 = &v25;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v29);
  *&v25 = &v27;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v25);
}

void sub_1B54B7DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void ***a18)
{
  v19 = a18;
  a18 = 0;
  if (v19)
  {
    kaldi::quasar::TransducerAutoRegressiveDecodable::GatherOutputsBatch(v19);
  }

  a18 = &a11;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a18);
  a11 = &a15;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::push_back[abi:ne200100](uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

void *kaldi::quasar::TransducerAutoRegressiveDecodable::MergeState@<X0>(void *result@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, int **a4@<X4>, uint64_t *a5@<X8>)
{
  v6 = a3;
  v8 = a2[1];
  v9 = *a3;
  v10 = a3[1];
  if (*a2 == v8)
  {
    if (v9 != v10)
    {
      if ((v10 - v9) >> 3 != a4[1] - *a4)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v20, "nonblank_state.size() == labels.size()");
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    if (a4[1] == *a4)
    {
      goto LABEL_18;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v20, "labels.size() == 0");
LABEL_23:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v20);
  }

  v12 = (v8 - *a2) >> 3;
  if (v9 == v10)
  {
    if (v12 == a4[1] - *a4)
    {
      v9 = *a2;
      v10 = a2[1];
      v6 = a2;
LABEL_16:
      *a5 = v9;
      a5[1] = v10;
      a5[2] = v6[2];
      a5 = v6;
LABEL_18:
      *a5 = 0;
      a5[1] = 0;
      a5[2] = 0;
      return result;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v20, "blank_state.size() == labels.size()");
    goto LABEL_23;
  }

  v13 = v12 + ((v10 - v9) >> 3);
  if (v13 != a4[1] - *a4)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v20, "blank_state.size() + nonblank_state.size() == labels.size()");
    goto LABEL_23;
  }

  v14 = result;
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  result = std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::reserve(a5, v13);
  v16 = *a4;
  v15 = a4[1];
  if (v16 != v15)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *v16;
      if (v19 == kaldi::quasar::CELabelEncoderNet::BlankIndex(v14[3]))
      {
        result = std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::push_back[abi:ne200100](a5, (*a2 + 8 * v18++));
      }

      else
      {
        result = std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::push_back[abi:ne200100](a5, (*v6 + 8 * v17++));
      }

      ++v16;
    }

    while (v16 != v15);
  }

  return result;
}

void *std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void kaldi::quasar::TransducerAutoRegressiveDecodable::AppendBuffers(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  if (*a3)
  {
    v7 = *a4;
    if (*a4)
    {
      __p = 0;
      v16 = 0;
      v17 = 0;
      v14 = v7;
      std::vector<TVertex *>::push_back[abi:ne200100](&__p, &v14);
      v14 = *a3;
      std::vector<TVertex *>::push_back[abi:ne200100](&__p, &v14);
      (*(**a2 + 104))(&v14);
      v9 = v14;
      v14 = 0;
      v10 = *a4;
      *a4 = v9;
      if (v10)
      {
        (*(*v10 + 8))(v10);
        v11 = v14;
        v14 = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }
      }

      if (__p)
      {
        v16 = __p;
        operator delete(__p);
      }
    }

    else
    {
      *a3 = 0;
      v12 = *a4;
      *a4 = v4;
      if (v12)
      {
        v13 = *(*v12 + 8);

        v13();
      }
    }
  }
}

void sub_1B54B8370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::TransducerAutoRegressiveDecodable::Reset(uint64_t a1, int **a2)
{
  v95[2] = *MEMORY[0x1E69E9840];
  if (*(a1 + 168))
  {
    v4 = kaldi::quasar::CEAcousticEncoderNet::Engine(*(a1 + 16));
    (*(**v4 + 120))(&__p);
    v5 = __p;
    *&__p = 0.0;
    v6 = *(a1 + 168);
    *(a1 + 168) = v5;
    if (v6)
    {
      (*(*v6 + 8))(v6);
      v7 = __p;
      *&__p = 0.0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }
  }

  if (kaldi::MatrixBase<float>::NumRows(a1 + 272) >= 1)
  {
    kaldi::SubMatrix<float>::SubMatrix(&v81, a1 + 272, *(a1 + 536), *(a1 + 528) - *(a1 + 536), 0, *(a1 + 280));
    kaldi::Matrix<float>::Matrix(&__p, &v81, 111);
    quasar::Bitmap::~Bitmap(&v81);
    kaldi::Matrix<float>::Swap((a1 + 272), &__p);
    v8 = *(a1 + 536);
    if (v8)
    {
      v10 = *(a1 + 312);
      v9 = *(a1 + 320);
      v11 = (v10 + 4 * v8);
      v12 = v9 - v11;
      if (v9 != v11)
      {
        memmove(*(a1 + 312), v11, v9 - v11);
      }

      *(a1 + 320) = v10 + v12;
    }

    kaldi::Matrix<float>::~Matrix(&__p);
  }

  if (*(a1 + 344) >= 1)
  {
    v13 = *(a1 + 536);
    v14 = (*(a1 + 528) - v13);
    v82 = 0;
    v83 = 0;
    v81 = (*(a1 + 336) + 4 * v13);
    LODWORD(v82) = v14;
    v89 = 0;
    v90 = 0;
    *&__p = 0.0;
    kaldi::Vector<float>::Resize(&__p, v14, 1);
    kaldi::VectorBase<float>::CopyFromVec(&__p, &v81);
    kaldi::Vector<float>::Swap((a1 + 336), &__p);
    kaldi::Vector<float>::Destroy(&__p);
  }

  v15 = *(a1 + 120);
  v16 = *(a1 + 128);
  while (v16 != v15)
  {
    v16 -= 24;
    __p = v16;
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  *(a1 + 128) = v15;
  kaldi::quasar::CELabelEncoderNet::InitialStates(*(a1 + 24), &v81);
  v76 = a2;
  if (v81 != v82)
  {
    v86[0] = 0;
    v86[1] = 0;
    v87 = 0;
    v92 = v86;
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(v86, 1uLL);
  }

  *&__p = COERCE_DOUBLE(&v81);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v84 = 1;
  kaldi::Timer::Reset(&v81, v17);
  v85 = 0;
  v86[0] = 0;
  v86[1] = 0;
  v87 = 0;
  v18 = a2[1] - 1;
  do
  {
    if (v18 + 1 == *v76)
    {
      break;
    }

    v19 = *v18;
    if (v19 != kaldi::quasar::CELabelEncoderNet::BlankIndex(*(a1 + 24)))
    {
      std::vector<int>::push_back[abi:ne200100](v86, v18);
    }

    v21 = v86[0];
    v20 = v86[1];
    --v18;
  }

  while (kaldi::quasar::CELabelEncoderNet::ContextSize(*(a1 + 24)) != (v20 - v21) >> 2);
  v23 = v86[0];
  v22 = v86[1];
  if (kaldi::quasar::CELabelEncoderNet::ContextSize(*(a1 + 24)) != (v22 - v23) >> 2)
  {
    LODWORD(__p) = quasar::TextEmbedder::getEmbeddingDim(*(a1 + 24));
    std::vector<int>::push_back[abi:ne200100](v86, &__p);
  }

  v25 = v86[0];
  v26 = v86[1];
  v27 = v86[1] - 4;
  if (v86[0] != v86[1] && v27 > v86[0])
  {
    v29 = v86[0] + 4;
    do
    {
      v30 = *(v29 - 1);
      *(v29 - 1) = *v27;
      *v27 = v30;
      v27 -= 4;
      v31 = v29 >= v27;
      v29 += 4;
    }

    while (!v31);
  }

  for (; v25 != v26; ++v25)
  {
    v32 = *(a1 + 24);
    LODWORD(v94) = *v25;
    v89 = 0;
    v90 = 0;
    *&__p = 0.0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v94, &v94 + 4, 1uLL);
    kaldi::quasar::CELabelEncoderNet::EncodeBatch(v32, (a1 + 120), &__p, a1 + 120, a1 + 176);
    if (*&__p != 0.0)
    {
      v89 = __p;
      operator delete(__p);
    }
  }

  *(a1 + 592) = *(a1 + 592) + kaldi::Timer::GetSeconds(5, v24) - *&v81;
  if (*(a1 + 72) != 0.0)
  {
    v33 = *quasar::SpeechRequestData::getMultiChainMultiAudioBuffer(*(a1 + 32));
    *&v94 = 1;
    *(&v94 + 1) = kaldi::quasar::CEJointPredictorNet::InputDim(*(a1 + 32));
    v89 = 0;
    v90 = 0;
    *&__p = 0.0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, &v94, v95, 2uLL);
    (*(*v33 + 64))(&v93, v33, &__p);
    if (*&__p != 0.0)
    {
      v89 = __p;
      operator delete(__p);
    }

    Trie = Ngram::getTrie(*(a1 + 24));
    kaldi::quasar::ComputeEngineItf::CreateConcat(*Trie, (a1 + 176), 0);
    v79 = 0;
    LOBYTE(v91) = 1;
    kaldi::Timer::Reset(&__p, v35);
    v92 = 0;
    kaldi::quasar::CEJointPredictorNet::Predict(*(a1 + 32), &v93, &v80, &v79);
    *(a1 + 608) = *(a1 + 608) + kaldi::Timer::GetSeconds(5, v36) - *&__p;
    MultiChainMultiAudioBuffer = quasar::SpeechRequestData::getMultiChainMultiAudioBuffer(*(a1 + 32));
    kaldi::quasar::ComputeEngineItf::CreateSplitMove(*MultiChainMultiAudioBuffer, &v79, &v94);
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__vdeallocate((a1 + 200));
    *(a1 + 200) = v94;
    *(a1 + 216) = v95[0];
    v95[0] = 0;
    v94 = 0uLL;
    v77[0] = &v94;
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](v77);
    v38 = v79;
    v79 = 0;
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }

    v39 = v80;
    v80 = 0;
    if (v39)
    {
      (*(*v39 + 8))(v39);
    }

    v40 = v93;
    v93 = 0;
    if (v40)
    {
      (*(*v40 + 8))(v40);
    }
  }

  v41 = *(a1 + 56);
  if (v41 && *(a1 + 68) != 0.0)
  {
    v42 = *(a1 + 144);
    v43 = *(a1 + 152);
    if (v43 != v42)
    {
      do
      {
        v43 -= 24;
        __p = v43;
        std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&__p);
      }

      while (v43 != v42);
      v41 = *(a1 + 56);
    }

    *(a1 + 152) = v42;
    kaldi::quasar::CELabelEncoderNet::InitialStates(v41, &v94);
    if (v94 != *(&v94 + 1))
    {
      v77[0] = 0;
      v77[1] = 0;
      v78 = 0;
      v92 = v77;
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(v77, 1uLL);
    }

    *&__p = COERCE_DOUBLE(&v94);
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&__p);
    LOBYTE(v91) = 1;
    kaldi::Timer::Reset(&__p, v44);
    v92 = 0;
    v94 = 0uLL;
    v95[0] = 0;
    v45 = kaldi::quasar::CELabelEncoderNet::ContextSize(*(a1 + 24));
    if (v45 == kaldi::quasar::CELabelEncoderNet::ContextSize(*(a1 + 56)))
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v94, v86[0], v86[1], (v86[1] - v86[0]) >> 2);
      v48 = *(&v94 + 1);
      v47 = v94;
    }

    else
    {
      v49 = v76[1] - 1;
      do
      {
        if (v49 + 1 == *v76)
        {
          break;
        }

        v50 = *v49;
        if (v50 != kaldi::quasar::CELabelEncoderNet::BlankIndex(*(a1 + 24)))
        {
          std::vector<int>::push_back[abi:ne200100](&v94, v49);
        }

        v51 = v94;
        --v49;
      }

      while (kaldi::quasar::CELabelEncoderNet::ContextSize(*(a1 + 56)) != (*(&v51 + 1) - v51) >> 2);
      v52 = v94;
      if (kaldi::quasar::CELabelEncoderNet::ContextSize(*(a1 + 56)) != (*(&v52 + 1) - v52) >> 2)
      {
        LODWORD(v77[0]) = quasar::TextEmbedder::getEmbeddingDim(*(a1 + 56));
        std::vector<int>::push_back[abi:ne200100](&v94, v77);
      }

      v48 = *(&v94 + 1);
      v47 = v94;
      v53 = (*(&v94 + 1) - 4);
      if (v94 != *(&v94 + 1) && v53 > v94)
      {
        v55 = v94 + 4;
        do
        {
          v56 = *(v55 - 4);
          *(v55 - 4) = *v53;
          *v53-- = v56;
          v31 = v55 >= v53;
          v55 += 4;
        }

        while (!v31);
      }
    }

    for (; v47 != v48; ++v47)
    {
      v57 = *(a1 + 56);
      LODWORD(v93) = *v47;
      v77[1] = 0;
      v78 = 0;
      v77[0] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v77, &v93, &v93 + 4, 1uLL);
      kaldi::quasar::CELabelEncoderNet::EncodeBatch(v57, (a1 + 144), v77, a1 + 144, a1 + 224);
      if (v77[0])
      {
        v77[1] = v77[0];
        operator delete(v77[0]);
      }
    }

    *(a1 + 616) = *(a1 + 616) + kaldi::Timer::GetSeconds(5, v46) - *&__p;
    if (v94)
    {
      *(&v94 + 1) = v94;
      operator delete(v94);
    }
  }

  *(a1 + 368) = *(a1 + 360);
  v58 = kaldi::quasar::CELabelEncoderNet::BlankIndex(*(a1 + 24));
  v60 = *(a1 + 368);
  v59 = *(a1 + 376);
  if (v60 >= v59)
  {
    v62 = 0x1555555555555555;
    v63 = *(a1 + 360);
    v64 = v60 - v63;
    v65 = 0xAAAAAAAAAAAAAAABLL * ((v60 - v63) >> 2);
    v66 = v65 + 1;
    if (v65 + 1 > 0x1555555555555555)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v67 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v63) >> 2);
    if (2 * v67 > v66)
    {
      v66 = 2 * v67;
    }

    if (v67 < 0xAAAAAAAAAAAAAAALL)
    {
      v62 = v66;
    }

    if (v62)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<int,float,int>>>(a1 + 360, v62);
    }

    v68 = 12 * v65;
    *v68 = 0;
    *(v68 + 4) = v58;
    *(v68 + 8) = 0;
    v61 = 12 * v65 + 12;
    v69 = v68 - v64;
    memcpy((v68 - v64), v63, v64);
    v70 = *(a1 + 360);
    *(a1 + 360) = v69;
    *(a1 + 368) = v61;
    *(a1 + 376) = 0;
    if (v70)
    {
      operator delete(v70);
    }
  }

  else
  {
    *v60 = 0;
    *(v60 + 1) = v58;
    v61 = (v60 + 12);
    *(v60 + 2) = 0;
  }

  *(a1 + 368) = v61;
  std::__tree<int>::destroy(a1 + 384, *(a1 + 392));
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 384) = a1 + 392;
  std::__tree<int>::destroy(a1 + 408, *(a1 + 416));
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 408) = a1 + 416;
  *(a1 + 488) = *(a1 + 480);
  *(a1 + 512) += kaldi::quasar::TransducerAutoRegressiveDecodable::NumDecodedInputFrames(a1);
  *(a1 + 516) += *(a1 + 536);
  v71 = *(a1 + 544);
  *(a1 + 520) += v71;
  v72 = *(a1 + 552);
  v73 = *(a1 + 560);
  if (v72 != v73)
  {
    if (v71 <= 0)
    {
      v74 = *(v73 - 4) + *(a1 + 524);
    }

    else
    {
      v74 = *(v73 - 4);
    }

    *(a1 + 524) = v74;
  }

  *(a1 + 504) = 0;
  v75 = *(a1 + 168);
  if (v75)
  {
    LODWORD(v75) = (*(*v75 + 184))(v75, 0);
    v72 = *(a1 + 552);
  }

  *(a1 + 528) = v75;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 560) = v72;
  if (v86[0])
  {
    v86[1] = v86[0];
    operator delete(v86[0]);
  }
}

void sub_1B54B9060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v28 = *(v26 - 128);
  if (v28)
  {
    *(v26 - 120) = v28;
    operator delete(v28);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::TransducerAutoRegressiveDecodable::NumDecodedInputFrames(kaldi::quasar::TransducerAutoRegressiveDecodable *this)
{
  if (*(this + 576))
  {
    v2 = *(this + 134);
    if (*(this + 132) == v2)
    {
      return (*(this + 127) - *(this + 128));
    }
  }

  else
  {
    v2 = *(this + 134);
  }

  v4 = kaldi::quasar::CEAcousticEncoderNet::FrameSubsamplingFactor(*(this + 2));
  return kaldi::quasar::CEAcousticEncoderNet::FrameOverlap(*(this + 2)) + v4 * v2;
}

uint64_t std::tuple<std::vector<int>,std::vector<int>,std::vector<int>>::~tuple(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

void **std::pair<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~pair(void **a1)
{
  v3 = a1 + 3;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__vdeallocate(void ***a1)
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
        v3 -= 3;
        v5 = v3;
        std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *std::__tree<std::__value_type<std::pair<int,int>,int>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,int>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,int>>>::find<std::pair<int,int>>(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v6 = *a2;
  v5 = a2[1];
  v7 = v2;
  do
  {
    v8 = *(v3 + 7);
    if (v8 >= v6)
    {
      if (v6 >= v8)
      {
        if (*(v3 + 8) >= v5)
        {
          v7 = v3;
        }

        v3 += *(v3 + 8) < v5;
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

  v9 = *(v7 + 7);
  if (v6 < v9 || v9 >= v6 && v5 < *(v7 + 8))
  {
    return v2;
  }

  return v7;
}

uint64_t std::unordered_set<int>::unordered_set<std::__wrap_iter<int const*>>(uint64_t a1, int *a2, int *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1, v5++);
    }

    while (v5 != a3);
  }

  return a1;
}

void quasar::lm::srilm_ext::IterateTrie(uint64_t a1, int a2)
{
  __p[11] = *MEMORY[0x1E69E9840];
  std::vector<unsigned int>::vector[abi:ne200100](__p, a2 + 2);
  __p[6] = 0;
  operator new();
}

void sub_1B54B9694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  std::__function::__value_func<void ()(Trie<unsigned int,BOnode> const*,unsigned int,unsigned int,Trie<unsigned int,BOnode> const*)>::~__value_func[abi:ne200100](&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(Trie<unsigned int,BOnode> const*,unsigned int,unsigned int,Trie<unsigned int,BOnode> const*)>::operator()(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = a5;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v5 + 48))(v5, &v10, &v9, &v8, &v7);
}

uint64_t quasar::lm::srilm_ext::GetUnigramContextTrie(_DWORD **a1, unsigned int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = a2;
  v4[1] = -1;
  v3 = 0;
  return Trie<unsigned int,BOnode>::findTrie(a1, v4, &v3);
}

uint64_t std::__function::__value_func<void ()(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_1B54B9908(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(Trie<unsigned int,BOnode> const*,unsigned int,unsigned int,Trie<unsigned int,BOnode> const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<quasar::lm::srilm_ext::IterateTrie(Trie<unsigned int,BOnode> const&,int,std::function<void ()(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)>)::$_0,std::allocator<quasar::lm::srilm_ext::IterateTrie(Trie<unsigned int,BOnode> const&,int,std::function<void ()(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)>)::$_0>,void ()(Trie<unsigned int,BOnode> const*,unsigned int,unsigned int,Trie<unsigned int,BOnode> const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D152D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<quasar::lm::srilm_ext::IterateTrie(Trie<unsigned int,BOnode> const&,int,std::function<void ()(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)>)::$_0,std::allocator<quasar::lm::srilm_ext::IterateTrie(Trie<unsigned int,BOnode> const&,int,std::function<void ()(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)>)::$_0>,void ()(Trie<unsigned int,BOnode> const*,unsigned int,unsigned int,Trie<unsigned int,BOnode> const*)>::operator()(void *a1, uint64_t *a2, unsigned int *a3, int *a4, uint64_t *a5)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  v11 = a1[1];
  v10 = a1[2];
  *(*v11 + 4 * v7) = v8;
  std::function<void ()(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)>::operator()(v10, v6, v7, v11, v9);
  LHashIter<unsigned int,Trie<unsigned int,BOnode>>::LHashIter(v15, v6, 0);
  LHashIter<unsigned int,Trie<unsigned int,BOnode>>::init(v15);
  for (i = -1; ; std::function<void ()(Trie<unsigned int,BOnode> const*,unsigned int,unsigned int,Trie<unsigned int,BOnode> const*)>::operator()(a1[3], v12, v7 + 1, i, v6))
  {
    v12 = LHashIter<unsigned int,Trie<unsigned int,BOnode>>::next(v15, &i);
    if (!v12)
    {
      break;
    }
  }

  return LHashIter<unsigned int,double>::~LHashIter(v15);
}

void sub_1B54B9B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  LHashIter<unsigned int,double>::~LHashIter(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<quasar::lm::srilm_ext::IterateTrie(Trie<unsigned int,BOnode> const&,int,std::function<void ()(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)>)::$_0,std::allocator<quasar::lm::srilm_ext::IterateTrie(Trie<unsigned int,BOnode> const&,int,std::function<void ()(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)>)::$_0>,void ()(Trie<unsigned int,BOnode> const*,unsigned int,unsigned int,Trie<unsigned int,BOnode> const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::function<void ()(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)>::operator()(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v8 = a3;
  v7 = a5;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v5 + 48))(v5, &v9, &v8, a4, &v7);
}

void *std::__function::__value_func<void ()(Trie<unsigned int,BOnode> const*,unsigned int,unsigned int,Trie<unsigned int,BOnode> const*)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1B54B9E24(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_1B54BA2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  quasar::QuasarInfoMessage::~QuasarInfoMessage(va);
  __cxa_end_catch();

  _Unwind_Resume(a1);
}

void sub_1B54BA430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::shared_ptr<quasar::ContextualData>::operator=[abi:ne200100]<quasar::ContextualData,std::default_delete<quasar::ContextualData>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<quasar::ContextualData>::shared_ptr[abi:ne200100]<quasar::ContextualData,std::default_delete<quasar::ContextualData>,0>(&v6, a2);
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

void ***std::unique_ptr<quasar::ContextualData>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    quasar::ContextualData::~ContextualData(v2);
    MEMORY[0x1B8C85350]();
  }

  return a1;
}

void sub_1B54BA9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  quasar::ContextualData::NamedEntity::~NamedEntity(&a9);

  _Unwind_Resume(a1);
}

void sub_1B54BAF08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B54BB2F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B54BB3F8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25)
{
  std::unique_ptr<quasar::PTree>::~unique_ptr[abi:ne200100](&a9);
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    if (quasar::gLogLevel >= 4)
    {
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
      a9 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&a9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a9, "Internal C++ exception: %s", 26);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&a9);
    }
  }

  else if (quasar::gLogLevel >= 4)
  {
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
    a9 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&a9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a9, "Internal unknown exception", 26);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&a9);
  }

  v28 = v25;
  __cxa_end_catch();
  JUMPOUT(0x1B54BB3CCLL);
}

void sub_1B54BB4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a9);
  __cxa_end_catch();

  _Unwind_Resume(a1);
}

quasar::PTree **std::unique_ptr<quasar::PTree>::~unique_ptr[abi:ne200100](quasar::PTree **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    quasar::PTree::~PTree(v2);
    MEMORY[0x1B8C85350]();
  }

  return a1;
}

void quasar::ContextualData::NamedEntity::~NamedEntity(void **this)
{
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

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void quasar::ContextualData::~ContextualData(void **this)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((this + 41));
  if (*(this + 319) < 0)
  {
    operator delete(this[37]);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::destroy((this + 33), this[34]);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((this + 27));
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((this + 22));
  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((this + 14));
  std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::~__hash_table((this + 9));
  std::__hash_table<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::__unordered_map_hasher<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::hash<quasar::ContextualData::SourceFramework>,std::equal_to<quasar::ContextualData::SourceFramework>,true>,std::__unordered_map_equal<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::equal_to<quasar::ContextualData::SourceFramework>,std::hash<quasar::ContextualData::SourceFramework>,true>,std::allocator<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>>::~__hash_table((this + 4));
  v2 = this[3];
  this[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t *std::shared_ptr<quasar::ContextualData>::shared_ptr[abi:ne200100]<quasar::ContextualData,std::default_delete<quasar::ContextualData>,0>(uint64_t *result, uint64_t *a2)
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

void std::__shared_ptr_pointer<quasar::ContextualData  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void **std::__shared_ptr_pointer<quasar::ContextualData  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    quasar::ContextualData::~ContextualData(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::ContextualData  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void kaldi::TransitionModel::ComputeDerivedOfProbs(void **this)
{
  kaldi::Vector<float>::Resize(this + 27, ((this[10] - this[9]) >> 4) + 1, 0);
  if (((this[10] - this[9]) >> 4) >= 1)
  {
    v2 = 1;
    do
    {
      v3 = kaldi::TransitionModel::SelfLoopOf(this, v2);
      if (v3)
      {
        v4 = expf(*(this[24] + v3));
        if ((1.0 - v4) <= 0.0)
        {
          v5 = 1.0e-10;
          if (kaldi::g_kaldi_verbose_level >= -1)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "ComputeDerivedOfProbs(): non-self-loop prob is ", 47);
            std::ostream::operator<<();
            kaldi::KaldiWarnMessage::~KaldiWarnMessage(v8);
            v5 = 1.0e-10;
          }
        }

        else
        {
          v5 = 1.0 - v4;
        }

        v6 = logf(v5);
      }

      else
      {
        v6 = 0.0;
      }

      *(this[27] + v2) = v6;
    }

    while (v2++ < ((this[10] - this[9]) >> 4));
  }
}

BOOL kaldi::TransitionModel::IsFinal(kaldi::TransitionModel *this, int a2)
{
  v2 = *(*(this + 18) + 4 * a2);
  v3 = a2 - *(*(this + 15) + 4 * v2);
  v4 = *(this + 9) + 16 * v2;
  v5 = kaldi::HmmTopology::TopologyForPhone(this, *(v4 - 16));
  return *(*(*v5 + 32 * *(v4 - 12) + 8) + 8 * v3) + 1 == ((v5[1] - *v5) >> 5);
}

uint64_t kaldi::TransitionModel::SelfLoopOf(kaldi::TransitionModel *this, int a2)
{
  v4 = *(this + 9) + 16 * a2;
  v5 = *(v4 - 12);
  v6 = kaldi::HmmTopology::TopologyForPhone(this, *(v4 - 16));
  v7 = *(*v6 + 32 * v5 + 8);
  v8 = *(*v6 + 32 * v5 + 16) - v7;
  if ((v8 >> 3) < 1)
  {
    return 0;
  }

  v9 = 0;
  v10 = -((v8 >> 3) & 0x7FFFFFFF);
  while (1)
  {
    v11 = *v7;
    v7 += 2;
    if (v11 == v5)
    {
      break;
    }

    if (v10 == --v9)
    {
      return 0;
    }
  }

  return (*(*(this + 15) + 4 * a2) - v9);
}

BOOL kaldi::GetPdfsForPhones(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = *a3;
  v7 = *(a1 + 72);
  v6 = *(a1 + 80);
  if (((v6 - v7) >> 4) >= 1)
  {
    v8 = 1;
    do
    {
      v9 = *a2;
      v10 = *(a2 + 8);
      if (v10 != *a2)
      {
        v11 = v7 + 16 * v8;
        v12 = *(v11 - 16);
        v13 = (v10 - *a2) >> 2;
        do
        {
          v14 = v13 >> 1;
          v15 = &v9[v13 >> 1];
          v17 = *v15;
          v16 = v15 + 1;
          v13 += ~(v13 >> 1);
          if (v17 < v12)
          {
            v9 = v16;
          }

          else
          {
            v13 = v14;
          }
        }

        while (v13);
        if (v9 != v10 && v12 >= *v9)
        {
          v53 = *(v11 - 8);
          std::vector<int>::push_back[abi:ne200100](a3, &v53);
          v52 = *(*(a1 + 72) + 16 * v8 - 4);
          std::vector<int>::push_back[abi:ne200100](a3, &v52);
          v7 = *(a1 + 72);
          v6 = *(a1 + 80);
        }
      }
    }

    while (v8++ < ((v6 - v7) >> 4));
  }

  std::__sort<std::__less<int,int> &,int *>();
  v19 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::__equal_to &>(*a3, *(a3 + 8));
  v20 = *(a3 + 8);
  if (v19 != v20)
  {
    v20 = v19;
    *(a3 + 8) = v19;
  }

  v21 = *(a1 + 72);
  v22 = *(a1 + 80) - v21;
  v23 = v22 >> 4;
  if ((v22 >> 4) < 1)
  {
    return 1;
  }

  else
  {
    v24 = 0;
    v25 = *(a2 + 8);
    v26 = (v22 >> 4) & 0x7FFFFFFF;
    v27 = (v23 + 1);
    v28 = 1;
    do
    {
      if (v20 != *a3)
      {
        v29 = v21 + 16 * v28;
        v30 = *(v29 - 8);
        v31 = *a3;
        v32 = (v20 - *a3) >> 2;
        do
        {
          v33 = v32 >> 1;
          v34 = &v31[v32 >> 1];
          v36 = *v34;
          v35 = v34 + 1;
          v32 += ~(v32 >> 1);
          if (v36 < v30)
          {
            v31 = v35;
          }

          else
          {
            v32 = v33;
          }
        }

        while (v32);
        if (v31 != v20 && v30 >= *v31)
        {
          goto LABEL_32;
        }

        v37 = *(v29 - 4);
        v38 = *a3;
        v39 = (v20 - *a3) >> 2;
        do
        {
          v40 = v39 >> 1;
          v41 = &v38[v39 >> 1];
          v43 = *v41;
          v42 = v41 + 1;
          v39 += ~(v39 >> 1);
          if (v43 < v37)
          {
            v38 = v42;
          }

          else
          {
            v39 = v40;
          }
        }

        while (v39);
        if (v38 != v20 && v37 >= *v38)
        {
LABEL_32:
          if (v25 == *a2)
          {
            break;
          }

          v44 = *(v29 - 16);
          v45 = *a2;
          v46 = (v25 - *a2) >> 2;
          do
          {
            v47 = v46 >> 1;
            v48 = &v45[v46 >> 1];
            v50 = *v48;
            v49 = v48 + 1;
            v46 += ~(v46 >> 1);
            if (v50 < v44)
            {
              v45 = v49;
            }

            else
            {
              v46 = v47;
            }
          }

          while (v46);
          if (v45 == v25 || v44 < *v45)
          {
            break;
          }
        }
      }

      v24 = v28++ >= v26;
    }

    while (v28 != v27);
  }

  return v24;
}

BOOL kaldi::HmmTopology::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v6 = *(a1 + 8) - v4;
  v7 = *a2;
  if (v6 != *(a2 + 8) - v7)
  {
    return 0;
  }

  if (memcmp(v4, v7, v6))
  {
    return 0;
  }

  v9 = *(a1 + 24);
  v10 = *(a1 + 32) - v9;
  v11 = *(a2 + 24);
  if (v10 != *(a2 + 32) - v11)
  {
    return 0;
  }

  if (memcmp(v9, v11, v10))
  {
    return 0;
  }

  v13 = *(a1 + 48);
  v12 = *(a1 + 56);
  v14 = *(a2 + 48);
  if (v12 - v13 != *(a2 + 56) - v14)
  {
    return 0;
  }

  if (v13 == v12)
  {
    return 1;
  }

  do
  {
    v16 = *v13;
    v15 = *(v13 + 1);
    v17 = v15 - *v13;
    v18 = *v14;
    v19 = v14[1] - *v14;
    result = v17 == v19;
    if (v17 != v19)
    {
      break;
    }

    while (v16 != v15)
    {
      if (*v16 != *v18)
      {
        return 0;
      }

      if (*(v16 + 4) != *(v18 + 4))
      {
        return 0;
      }

      v22 = *(v16 + 8);
      v21 = *(v16 + 16);
      v23 = *(v18 + 8);
      if (v21 - v22 != *(v18 + 16) - v23)
      {
        return 0;
      }

      while (v22 != v21)
      {
        if (*v22 != *v23 || *(v22 + 4) != *(v23 + 4))
        {
          return 0;
        }

        v22 += 8;
        v23 += 8;
      }

      v16 += 32;
      v18 += 32;
    }

    v13 += 24;
    v14 += 3;
  }

  while (v13 != v12);
  return result;
}

uint64_t std::vector<kaldi::HmmTopology::HmmState>::__init_with_size[abi:ne200100]<kaldi::HmmTopology::HmmState*,kaldi::HmmTopology::HmmState*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::HmmTopology::HmmState>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B54BC074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::HmmTopology::HmmState>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::HmmTopology::HmmState>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::HmmTopology::HmmState>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::HmmTopology::HmmState>,kaldi::HmmTopology::HmmState*,kaldi::HmmTopology::HmmState*,kaldi::HmmTopology::HmmState*>(uint64_t a1, void *a2, void *a3, void *a4)
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
      v4[2] = 0;
      v4[3] = 0;
      v4[1] = 0;
      std::vector<std::pair<int,float>>::__init_with_size[abi:ne200100]<std::pair<int,float>*,std::pair<int,float>*>((v4 + 1), v6[1], v6[2], (v6[2] - v6[1]) >> 3);
      v6 += 4;
      v4 = v11 + 4;
      v11 += 4;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::HmmTopology::HmmState>,kaldi::HmmTopology::HmmState*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::HmmTopology::HmmState>,kaldi::HmmTopology::HmmState*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::vector<std::vector<kaldi::HmmTopology::HmmState>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void kaldi::quasar::GetKthNBest(void *a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, const void **a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  if (a3 >= 1)
  {
    v6 = a3;
    v10 = 0;
    v11 = 4 * a5;
    v12 = 4 * a4;
    do
    {
      v13 = *(*a1 + v11);
      if (v13 < 0 || v13 == a2)
      {
        break;
      }

      v14 = a6[2];
      if (v10 >= v14)
      {
        v15 = *a6;
        v16 = v10 - *a6;
        v17 = v16 >> 2;
        v18 = (v16 >> 2) + 1;
        if (v18 >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v19 = v14 - v15;
        if (v19 >> 1 > v18)
        {
          v18 = v19 >> 1;
        }

        v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
        v21 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v20)
        {
          v21 = v18;
        }

        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a6, v21);
        }

        *(4 * v17) = v13;
        v10 = (4 * v17 + 4);
        memcpy(0, v15, v16);
        v22 = *a6;
        *a6 = 0;
        a6[1] = v10;
        a6[2] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v10 = v13;
        v10 += 4;
      }

      v11 += v12;
      a6[1] = v10;
      --v6;
    }

    while (v6);
  }
}

void sub_1B54BC3B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

std::runtime_error *kaldi::quasar::TooManyTokensError::TooManyTokensError(std::runtime_error *this, const char *a2)
{
  result = std::runtime_error::runtime_error(this, a2);
  result->__vftable = &unk_1F2D153C8;
  return result;
}

void kaldi::quasar::TooManyTokensError::~TooManyTokensError(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1B8C85350);
}

std::runtime_error *kaldi::quasar::TooManyForwardLinksError::TooManyForwardLinksError(std::runtime_error *this, const char *a2)
{
  result = std::runtime_error::runtime_error(this, a2);
  result->__vftable = &unk_1F2D153F0;
  return result;
}

void kaldi::quasar::TooManyForwardLinksError::~TooManyForwardLinksError(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::LatticeFasterDecoder::LatticeFasterDecoder(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *a1 = 0;
  *(a1 + 80) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 8) = xmmword_1B5AE71B0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = a2;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v4 = *a3;
  v5 = a3[1];
  v6 = a3[2];
  *(a1 + 240) = *(a3 + 6);
  *(a1 + 208) = v5;
  *(a1 + 224) = v6;
  *(a1 + 192) = v4;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 1065353216;
  kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::SetSize(a1, 0x3E8uLL);
  return a1;
}

void sub_1B54BC568(_Unwind_Exception *a1)
{
  v4 = v3;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((v1 + 32));
  v6 = *v4;
  if (*v4)
  {
    v1[22] = v6;
    operator delete(v6);
  }

  kaldi::LatticeFasterOnlineDecoder::LatticeFasterOnlineDecoder(v2);
  kaldi::HashList<int,kaldi::LatticeFasterOnlineDecoder::Token *,std::hash<int>,std::equal_to<int>>::~HashList(v1);
  _Unwind_Resume(a1);
}

void kaldi::LatticeFasterDecoder::~LatticeFasterDecoder(kaldi::LatticeFasterDecoder *this)
{
  v2 = *(this + 1);
  if (v2 != -1)
  {
    v3 = *(this + 3);
    do
    {
      v4 = (v3 + 16 * v2);
      v4[1] = 0;
      v2 = *v4;
    }

    while (v2 != -1);
  }

  v5 = *this;
  *this = 0;
  *(this + 1) = -1;
  if (v5)
  {
    v6 = *(this + 6);
    do
    {
      v7 = v5;
      v5 = *(v5 + 16);
      *(v7 + 16) = v6;
      v6 = v7;
    }

    while (v5);
    *(this + 6) = v7;
  }

  kaldi::LatticeFasterDecoder::ClearActiveTokens(this);
  if (*(this + 160) == 1)
  {
    v8 = *(this + 19);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 256);
  v9 = *(this + 21);
  if (v9)
  {
    *(this + 22) = v9;
    operator delete(v9);
  }

  v10 = *(this + 16);
  if (v10)
  {
    *(this + 17) = v10;
    operator delete(v10);
  }

  v11 = *(this + 13);
  if (v11)
  {
    *(this + 14) = v11;
    operator delete(v11);
  }

  v12 = *(this + 10);
  if (v12)
  {
    *(this + 11) = v12;
    operator delete(v12);
  }

  kaldi::HashList<int,kaldi::LatticeFasterOnlineDecoder::Token *,std::hash<int>,std::equal_to<int>>::~HashList(this);
}

uint64_t kaldi::LatticeFasterDecoder::ClearActiveTokens(uint64_t this)
{
  v1 = this;
  v2 = *(this + 80);
  v3 = *(this + 88);
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 16 * v4);
      if (v5)
      {
        do
        {
          v6 = *(v5 + 8);
          if (v6)
          {
            do
            {
              v7 = *(v6 + 24);
              MEMORY[0x1B8C85350]();
              v6 = v7;
            }

            while (v7);
          }

          *(v5 + 8) = 0;
          v8 = *(v5 + 16);
          this = MEMORY[0x1B8C85350](v5, 0x1020C4023CB03E4);
          --*(v1 + 248);
          v5 = v8;
        }

        while (v8);
        v2 = *(v1 + 80);
        v3 = *(v1 + 88);
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 4);
  }

  *(v1 + 88) = v2;
  return this;
}

void kaldi::LatticeFasterDecoder::InitDecoding(kaldi::LatticeFasterDecoder *this)
{
  v2 = *(this + 1);
  if (v2 != -1)
  {
    v3 = *(this + 3);
    do
    {
      v4 = (v3 + 16 * v2);
      v4[1] = 0;
      v2 = *v4;
    }

    while (v2 != -1);
  }

  v5 = *this;
  *this = 0;
  *(this + 1) = -1;
  if (v5)
  {
    v6 = *(this + 6);
    do
    {
      v7 = v5;
      v5 = *(v5 + 16);
      *(v7 + 16) = v6;
      v6 = v7;
    }

    while (v5);
    *(this + 6) = v7;
  }

  *(this + 22) = *(this + 21);
  kaldi::LatticeFasterDecoder::ClearActiveTokens(this);
  *(this + 126) = 0;
  *(this + 62) = 0;
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(this + 32);
  (*(**(this + 19) + 24))(*(this + 19));
  std::vector<kaldi::LatticeFasterOnlineDecoder::TokenList>::resize(this + 10, 1uLL);
  operator new();
}

void kaldi::LatticeFasterDecoder::ProcessNonemitting(kaldi::LatticeFasterDecoder *this)
{
  v2 = (*(this + 11) - *(this + 10)) >> 4;
  v4 = (this + 104);
  v3 = *(this + 13);
  v5 = *this;
  if (*this)
  {
    v6 = INFINITY;
    do
    {
      std::vector<int>::push_back[abi:ne200100](v4, v5);
      v7 = *(v5 + 8);
      v5 = *(v5 + 16);
      if (*v7 < v6)
      {
        v6 = *v7;
      }
    }

    while (v5);
    v3 = *(this + 13);
    v8 = *(this + 14);
  }

  else
  {
    v8 = *(this + 14);
    v6 = INFINITY;
  }

  if (v3 == v8)
  {
    if (*(this + 252))
    {
      return;
    }

    v3 = v8;
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v25);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Error, no surviving tokens: frame is ", 37);
      MEMORY[0x1B8C84C00](v9, (v2 - 2));
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v25);
      v3 = *(this + 13);
      v8 = *(this + 14);
    }

    *(this + 252) = 1;
  }

  if (v3 != v8)
  {
    v10 = v6 + *(this + 48);
    do
    {
      v12 = *(v8 - 4);
      v8 -= 4;
      v11 = v12;
      *(this + 14) = v8;
      v13 = *(this + 3);
      v14 = *(v13 + 16 * (v12 % *(this + 2)));
      v15 = this;
      if (v14 != -1)
      {
        v15 = (*(v13 + 16 * v14 + 8) + 16);
      }

        ;
      }

      v17 = *(i + 8);
      v18 = *v17;
      if (*v17 > v10)
      {
        continue;
      }

      v19 = *(v17 + 8);
      if (v19)
      {
        do
        {
          v20 = *(v19 + 24);
          MEMORY[0x1B8C85350]();
          v19 = v20;
        }

        while (v20);
      }

      *(v17 + 8) = 0;
      v21 = *(this + 19);
      v27 = 0;
      (*(*v21 + 136))(v21, v11, v25);
      while (1)
      {
        if (!v25[0])
        {
          if (v27 >= v25[2])
          {
            goto LABEL_38;
          }

LABEL_29:
          v22 = v25[1] + 16 * v27;
          goto LABEL_30;
        }

        if ((*(*v25[0] + 24))(v25[0]))
        {
          break;
        }

        if (!v25[0])
        {
          goto LABEL_29;
        }

        v22 = (*(*v25[0] + 32))();
LABEL_30:
        if (!*v22)
        {
          v23 = v18 + *(v22 + 8);
          if (v23 < v10)
          {
            v24 = 0;
            kaldi::LatticeFasterDecoder::FindOrAddToken(this, *(v22 + 12), v2 - 1, v23, &v24);
            operator new();
          }
        }

        if (v25[0])
        {
          (*(*v25[0] + 40))(v25[0]);
        }

        else
        {
          ++v27;
        }
      }

      if (v25[0])
      {
        (*(*v25[0] + 8))();
        goto LABEL_40;
      }

LABEL_38:
      if (v26)
      {
        --*v26;
      }

LABEL_40:
      v3 = *(this + 13);
      v8 = *(this + 14);
    }

    while (v3 != v8);
  }
}

void sub_1B54BCC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::LatticeFasterDecoder::Decode(kaldi::LatticeFasterDecoder *this, kaldi::DecodableInterface *a2)
{
  if ((*(**(this + 19) + 24))(*(this + 19)) != -1)
  {
    kaldi::LatticeFasterDecoder::InitDecoding(this);
  }

  return 0;
}

void kaldi::LatticeFasterDecoder::PruneActiveTokens(kaldi::LatticeFasterDecoder *this, float a2)
{
  v3 = *(this + 10);
  v4 = (*(this + 11) - v3) >> 4;
  v5 = v4 - 1;
  v6 = *(this + 62);
  if (v4 - 1 >= 1)
  {
    v8 = 0;
    v9 = (v4 - 2);
    v10 = 16 * v5;
    v11 = v9 + 1;
    v12 = 16 * v9;
    do
    {
      if (*(v3 + v12 + v8 + 8) == 1)
      {
        LOBYTE(v17[0].__locale_) = 0;
        v18 = 0;
        kaldi::LatticeFasterDecoder::PruneForwardLinks(this, v11 - 1, v17, &v18, a2);
        v3 = *(this + 10);
        if (v10 + v8 != 16 && (v17[0].__locale_ & 1) != 0)
        {
          *(v3 + v10 + v8 - 24) = 1;
        }

        if (v18)
        {
          *(v3 + v12 + v8 + 9) = 1;
        }

        *(v3 + v12 + v8 + 8) = 0;
      }

      if (v5 > v11 && *(v3 + v10 + v8 + 9) == 1)
      {
        kaldi::LatticeFasterDecoder::PruneTokensForFrame(this, v11);
        v3 = *(this + 10);
        *(v3 + v10 + v8 + 9) = 0;
      }

      v8 -= 16;
    }

    while (v11-- > 1);
  }

  if (kaldi::g_kaldi_verbose_level > 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v17, 4);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "PruneActiveTokens: pruned tokens from ", 38);
    v15 = MEMORY[0x1B8C84C00](v14, v6);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " to ", 4);
    MEMORY[0x1B8C84C00](v16, *(this + 62));
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v17);
  }
}

void kaldi::LatticeFasterDecoder::ProcessEmitting(kaldi::LatticeFasterDecoder *this, kaldi::DecodableInterface *a2)
{
  v4 = this + 80;
  v5 = *(this + 11) - *(this + 10);
  v6 = v5 >> 4;
  std::vector<kaldi::LatticeFasterOnlineDecoder::TokenList>::resize(this + 10, (v5 >> 4) + 1);
  v8 = *(v4 - 9);
  if (v8 != -1)
  {
    v9 = *(this + 3);
    do
    {
      v10 = (v9 + 16 * v8);
      v10[1] = 0;
      v8 = *v10;
    }

    while (v8 != -1);
  }

  v11 = *this;
  *this = 0;
  *(this + 1) = -1;
  v42 = 0;
  v41 = 0.0;
  v40 = 0;
  v12 = kaldi::GetCutoffHelper<kaldi::LatticeFasterOnlineDecoder,kaldi::LatticeFasterDecoderConfig,kaldi::HashList<int,kaldi::LatticeFasterOnlineDecoder::Token *,std::hash<int>,std::equal_to<int>>::Elem>(this, this + 192, v11, &v40, &v41, &v42, 1, v7);
  *v13.i32 = *(this + 56) * v40;
  if (*(this + 2) < *v13.i32)
  {
    kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::SetSize(this, *v13.i32);
  }

  if (!v42)
  {
    v16 = 0.0;
    v18 = INFINITY;
    goto LABEL_36;
  }

  v14 = *v42;
  v15 = *(v42 + 1);
  v16 = -*v15;
  v17 = *(this + 19);
  v39 = 0;
  (*(*v17 + 136))(v17, v14, &v35);
  v18 = INFINITY;
  while (1)
  {
    if (!v35)
    {
      if (v39 >= v37)
      {
        goto LABEL_33;
      }

      goto LABEL_13;
    }

    if ((*(*v35 + 24))(v35))
    {
      break;
    }

    if (v35)
    {
      v19 = (*(*v35 + 32))();
      goto LABEL_14;
    }

LABEL_13:
    v19 = v36 + 16 * v39;
LABEL_14:
    if (*v19)
    {
      v20 = *(v19 + 4);
      v21 = *(v19 + 8);
      (**a2)(a2, (v6 - 1));
      v22 = NAN;
      if (v21 != -INFINITY)
      {
        v23 = v16 - *v13.i32;
        if (v23 != -INFINITY)
        {
          v24 = v23 == INFINITY || v21 == INFINITY;
          v25 = v21 + v23;
          if (v24)
          {
            v22 = INFINITY;
          }

          else
          {
            v22 = v25;
          }
        }
      }

      if (v20)
      {
        v13.i32[0] = *(this + 57);
      }

      else
      {
        v13 = 0;
      }

      *v13.i32 = ((v22 + *v15) + *v13.i32) + v41;
      if (*v13.i32 < v18)
      {
        v18 = *v13.i32;
      }
    }

    if (v35)
    {
      (*(*v35 + 40))(v35);
    }

    else
    {
      ++v39;
    }
  }

  if (v35)
  {
    (*(*v35 + 8))();
    goto LABEL_36;
  }

LABEL_33:
  if (v38)
  {
    --*v38;
  }

LABEL_36:
  LODWORD(v35) = 0;
  std::vector<float>::resize(this + 21, (v5 >> 4), &v35, v13);
  *(*(this + 21) + 4 * (v6 - 1)) = v16;
  if (!v11)
  {
    return;
  }

  while (2)
  {
    v26 = *(v11 + 1);
    v27 = *v26;
    if (*v26 > v12)
    {
      goto LABEL_58;
    }

    v28 = *v11;
    v29 = *(this + 19);
    v39 = 0;
    (*(*v29 + 136))(v29, v28, &v35, v27);
    while (2)
    {
      if (!v35)
      {
        if (v39 >= v37)
        {
          goto LABEL_56;
        }

        goto LABEL_44;
      }

      if (!(*(*v35 + 24))(v35))
      {
        if (v35)
        {
          v30 = (*(*v35 + 32))();
          goto LABEL_45;
        }

LABEL_44:
        v30 = v36 + 16 * v39;
LABEL_45:
        if (*v30)
        {
          (**a2)(a2, (v6 - 1));
          v32 = *(v30 + 4) ? *(this + 57) : 0.0;
          v33 = ((v16 - v31) + *v26) + (*(v30 + 8) + v32);
          if (v33 <= v18)
          {
            kaldi::LatticeFasterDecoder::FindOrAddToken(this, *(v30 + 12), v6, v33, 0);
            operator new();
          }
        }

        if (v35)
        {
          (*(*v35 + 40))(v35);
        }

        else
        {
          ++v39;
        }

        continue;
      }

      break;
    }

    if (v35)
    {
      (*(*v35 + 8))();
      goto LABEL_58;
    }

LABEL_56:
    if (v38)
    {
      --*v38;
    }

LABEL_58:
    v34 = *(v11 + 2);
    *(v11 + 2) = *(this + 6);
    *(this + 6) = v11;
    v11 = v34;
    if (v34)
    {
      continue;
    }

    break;
  }
}

void sub_1B54BD55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  else if (a12)
  {
    --*a12;
  }

  _Unwind_Resume(exception_object);
}

void kaldi::LatticeFasterDecoder::FinalizeDecoding(kaldi::LatticeFasterDecoder *this)
{
  v2 = (*(this + 11) - *(this + 10)) >> 4;
  v3 = *(this + 62);
  kaldi::LatticeFasterDecoder::PruneForwardLinksFinal(this);
  if (v2 - 1 >= 1)
  {
    do
    {
      kaldi::LatticeFasterDecoder::PruneForwardLinks(this, v2 - 2, v7, &v8, 0.0);
      kaldi::LatticeFasterDecoder::PruneTokensForFrame(this, v2 - 1);
      LODWORD(v2) = v2 - 1;
    }

    while (v2 > 1);
  }

  kaldi::LatticeFasterDecoder::PruneTokensForFrame(this, 0);
  if (kaldi::g_kaldi_verbose_level > 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v7, 4);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "pruned tokens from ", 19);
    v5 = MEMORY[0x1B8C84C00](v4, v3);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " to ", 4);
    MEMORY[0x1B8C84C00](v6, *(this + 62));
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v7);
  }
}

BOOL kaldi::LatticeFasterDecoder::GetRawLattice(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 80) == *(a1 + 88))
  {
    return 0;
  }

  v6 = *(a1 + 253);
  if (v6 == 1 && (a3 & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v45);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, "You cannot call FinalizeDecoding() and then call ", 49);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v40, "GetRawLattice() with use_final_probs == false");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v45);
  }

  v54 = 0u;
  v55 = 0u;
  v56 = 1065353216;
  v7 = (a1 + 256);
  if (!v6)
  {
    v7 = &v54;
  }

  v43 = v7;
  if (a3 && (v6 & 1) == 0)
  {
    kaldi::LatticeFasterOnlineDecoder::ComputeFinalCosts(a1, &v54, 0, 0);
  }

  (*(*a2 + 224))(a2);
  v9 = *(a1 + 80);
  v8 = *(a1 + 88);
  v10 = *(a1 + 248) / 2 + 3;
  memset(v52, 0, sizeof(v52));
  v53 = 1065353216;
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(v52, v10);
  v11 = 0;
  v41 = ((v8 - v9) >> 4) + 0xFFFFFFFF;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v12 = ((v8 - v9) >> 4);
  while (1)
  {
    v13 = *(*(a1 + 80) + 16 * v11);
    if (!v13)
    {
      break;
    }

    kaldi::LatticeFasterDecoder::TopSortTokens(v13, &v49);
    v15 = v49;
    v14 = v50;
    if (v50 != v49)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        if (*&v15[8 * v17])
        {
          v18 = (*(*a2 + 200))(a2);
          v45.__locale_ = &v49[v16];
          *(std::__hash_table<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::__unordered_map_hasher<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::__unordered_map_equal<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::allocator<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>>>::__emplace_unique_key_args<kaldi::LatticeFasterOnlineDecoder::Token *,std::piecewise_construct_t const&,std::tuple<kaldi::LatticeFasterOnlineDecoder::Token * const&>,std::tuple<>>(v52, &v49[v16]) + 6) = v18;
          v15 = v49;
          v14 = v50;
        }

        ++v17;
        v16 += 8;
      }

      while (v17 < (v14 - v15) >> 3);
    }

    if (++v11 == v12)
    {
      (*(*a2 + 176))(a2, 0);
      if (kaldi::g_kaldi_verbose_level >= 4)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(&v45, 4);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, "init:", 5);
        v20 = MEMORY[0x1B8C84C00](v19, (*(a1 + 248) / 2 + 3));
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " buckets:", 9);
        v22 = MEMORY[0x1B8C84C30](v21, v52[1]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " load:", 6);
        v26 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " max:", 5);
        std::ostream::operator<<();
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v45);
      }

      v42 = v12;
      v27 = 0;
      if (v6)
      {
        v28 = (a1 + 280);
      }

      else
      {
        v28 = &v55 + 1;
      }

      do
      {
        for (i = *(*(a1 + 80) + 16 * v27); ; i = *(v44 + 16))
        {
          v44 = i;
          if (!i)
          {
            break;
          }

          v45.__locale_ = &v44;
          v30 = *(std::__hash_table<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::__unordered_map_hasher<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::__unordered_map_equal<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::allocator<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>>>::__emplace_unique_key_args<kaldi::LatticeFasterOnlineDecoder::Token *,std::piecewise_construct_t const&,std::tuple<kaldi::LatticeFasterOnlineDecoder::Token * const&>,std::tuple<>>(v52, &v44) + 6);
          for (j = *(v44 + 8); j; j = *(j + 24))
          {
            v32 = std::__hash_table<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::__unordered_map_hasher<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::__unordered_map_equal<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::allocator<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>>>::find<kaldi::LatticeFasterOnlineDecoder::Token *>(v52, j);
            if (*(j + 8))
            {
              v33 = *(*(a1 + 168) + 4 * v27);
            }

            else
            {
              v33 = 0.0;
            }

            v34 = *(v32 + 6);
            v35 = *(j + 12);
            v36 = *(j + 16);
            v37 = *(j + 20) - v33;
            LODWORD(v45.__locale_) = *(j + 8);
            HIDWORD(v45.__locale_) = v35;
            v46 = v36;
            v47 = v37;
            v48 = v34;
            (*(*a2 + 208))(a2, v30, &v45);
          }

          if (v27 == v41)
          {
            if (a3 && *v28)
            {
              v38 = std::__hash_table<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,float>,std::__unordered_map_hasher<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,float>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::__unordered_map_equal<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,float>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::allocator<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,float>>>::find<kaldi::LatticeFasterOnlineDecoder::Token *>(v43, &v44);
              if (v38)
              {
                v45.__locale_ = *(v38 + 6);
                (*(*a2 + 184))(a2, v30, &v45);
              }
            }

            else
            {
              v45.__locale_ = 0;
              (*(*a2 + 184))(a2, v30, &v45);
            }
          }
        }

        ++v27;
      }

      while (v27 != v42);
      v23 = (*(*a2 + 160))(a2) > 0;
      goto LABEL_42;
    }
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v45);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, "GetRawLattice: no tokens active on frame ", 41);
    v25 = MEMORY[0x1B8C84C00](v24, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ": not producing lattice.\n", 25);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v45);
  }

  v23 = 0;
LABEL_42:
  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v52);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v54);
  return v23;
}

uint64_t kaldi::LatticeFasterDecoder::TopSortTokens(void *a1, void *a2)
{
  v34 = 0u;
  v35 = 0u;
  v36 = 1065353216;
  if (a1)
  {
    v2 = -1;
    v3 = a1;
    do
    {
      v3 = v3[2];
      ++v2;
    }

    while (v3);
    __p = a1;
    v4 = 0;
    do
    {
      *&v31 = &__p;
      *(std::__hash_table<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::__unordered_map_hasher<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::__unordered_map_equal<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::allocator<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>>>::__emplace_unique_key_args<kaldi::LatticeFasterOnlineDecoder::Token *,std::piecewise_construct_t const&,std::tuple<kaldi::LatticeFasterOnlineDecoder::Token * const&>,std::tuple<>>(&v34, &__p) + 6) = v2 + v4;
      __p = *(__p + 2);
      --v4;
    }

    while (__p);
    v5 = v35;
    v31 = 0u;
    v32 = 0u;
    v33 = 1065353216;
    v6 = -v4;
    if (v35)
    {
      do
      {
        __p = v5[2];
        v7 = *(__p + 1);
        if (v7)
        {
          v8 = *(v5 + 6);
          do
          {
            if (!*(v7 + 8))
            {
              v9 = std::__hash_table<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::__unordered_map_hasher<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::__unordered_map_equal<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::allocator<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>>>::find<kaldi::LatticeFasterOnlineDecoder::Token *>(&v34, v7);
              if (v9)
              {
                if (*(v9 + 6) < v8)
                {
                  *(v9 + 6) = v6;
                  std::__hash_table<kaldi::LatticeFasterOnlineDecoder::Token *,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::allocator<kaldi::LatticeFasterOnlineDecoder::Token *>>::__emplace_unique_key_args<kaldi::LatticeFasterOnlineDecoder::Token *,kaldi::LatticeFasterOnlineDecoder::Token * const&>(&v31, v7);
                  ++v6;
                }
              }
            }

            v7 = *(v7 + 24);
          }

          while (v7);
        }

        std::__hash_table<kaldi::LatticeFasterOnlineDecoder::Token *,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::allocator<kaldi::LatticeFasterOnlineDecoder::Token *>>::__erase_unique<kaldi::LatticeFasterOnlineDecoder::Token *>(&v31, &__p);
        v5 = *v5;
      }

      while (v5);
      if (*(&v32 + 1))
      {
        v10 = 0;
        do
        {
          __p = 0;
          v29 = 0;
          v30 = 0;
          v11 = v32;
          if (v32)
          {
            v12 = 0;
            do
            {
              if (v12 >= v30)
              {
                v13 = (v12 - __p) >> 3;
                if ((v13 + 1) >> 61)
                {
                  std::vector<int>::__throw_length_error[abi:ne200100]();
                }

                v14 = (v30 - __p) >> 2;
                if (v14 <= v13 + 1)
                {
                  v14 = v13 + 1;
                }

                if (v30 - __p >= 0x7FFFFFFFFFFFFFF8)
                {
                  v15 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v15 = v14;
                }

                if (v15)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(&__p, v15);
                }

                *(8 * v13) = v11[2];
                v12 = (8 * v13 + 8);
                v16 = (8 * v13 - (v29 - __p));
                memcpy(v16, __p, v29 - __p);
                v17 = __p;
                __p = v16;
                v29 = v12;
                v30 = 0;
                if (v17)
                {
                  operator delete(v17);
                }
              }

              else
              {
                *v12 = v11[2];
                v12 += 8;
              }

              v29 = v12;
              v11 = *v11;
            }

            while (v11);
          }

          std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(&v31);
          v18 = __p;
          if (__p != v29)
          {
            do
            {
              v27 = *v18;
              v37 = &v27;
              v19 = std::__hash_table<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::__unordered_map_hasher<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::__unordered_map_equal<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::allocator<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>>>::__emplace_unique_key_args<kaldi::LatticeFasterOnlineDecoder::Token *,std::piecewise_construct_t const&,std::tuple<kaldi::LatticeFasterOnlineDecoder::Token * const&>,std::tuple<>>(&v34, &v27);
              v20 = *(v27 + 8);
              if (v20)
              {
                v21 = *(v19 + 6);
                do
                {
                  if (!*(v20 + 8))
                  {
                    v22 = std::__hash_table<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::__unordered_map_hasher<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::__unordered_map_equal<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::allocator<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>>>::find<kaldi::LatticeFasterOnlineDecoder::Token *>(&v34, v20);
                    if (v22)
                    {
                      if (*(v22 + 6) < v21)
                      {
                        *(v22 + 6) = v6;
                        std::__hash_table<kaldi::LatticeFasterOnlineDecoder::Token *,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::allocator<kaldi::LatticeFasterOnlineDecoder::Token *>>::__emplace_unique_key_args<kaldi::LatticeFasterOnlineDecoder::Token *,kaldi::LatticeFasterOnlineDecoder::Token * const&>(&v31, v20);
                        ++v6;
                      }
                    }
                  }

                  v20 = *(v20 + 24);
                }

                while (v20);
              }

              v18 += 8;
            }

            while (v18 != v29);
            v18 = __p;
          }

          if (v18)
          {
            v29 = v18;
            operator delete(v18);
          }

          if (!*(&v32 + 1))
          {
            break;
          }
        }

        while (v10++ < 0xF423F);
      }
    }
  }

  else
  {
    v6 = 0;
    v31 = 0u;
    v32 = 0u;
    v33 = 1065353216;
  }

  a2[1] = *a2;
  __p = 0;
  std::vector<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::resize(a2, v6, &__p);
  for (i = v35; i; i = *i)
  {
    *(*a2 + 8 * *(i + 6)) = i[2];
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v31);
  return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v34);
}