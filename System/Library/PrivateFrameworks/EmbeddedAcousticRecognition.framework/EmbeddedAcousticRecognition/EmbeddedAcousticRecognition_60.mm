BOOL quasar::DecoderChainOutput::scaleResultLattice(quasar::DecoderChainOutput *this, float a2, float a3, char a4)
{
  v4 = a3;
  v5 = a2;
  v7 = *(this + 130);
  if ((a4 & 1) == 0)
  {
    v4 = v7 * a3;
    v5 = *(this + 131) * a2;
  }

  v8 = *(this + 131);
  v9 = v5 != v8 || v4 != v7;
  if (v9)
  {
    std::vector<std::vector<double>>::vector[abi:ne200100](v14, 2uLL);
    v15 = 0;
    std::vector<double>::resize(v14[0], 2uLL, &v15);
    v15 = 0;
    std::vector<double>::resize(v14[0] + 3, 2uLL, &v15);
    v10 = v14[0];
    **v14[0] = (v5 / v8);
    v10[3][1] = (v4 / v7);
    fst::ScaleLattice<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,double>(v14, *(this + 21));
    v15 = v14;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v15);
  }

  v11 = *(this + 63);
  if (v11)
  {
    v12 = *(this + 130);
    if (v4 != v12)
    {
      kaldi::LatticeScoreCache::ScaleAcousticScores(v11, v4 / v12);
    }
  }

  *(this + 130) = v4;
  *(this + 131) = v5;
  return v9;
}

void sub_1B548776C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void quasar::DecoderChainOutput::getWordHypLattice(quasar::DecoderChainOutput *this@<X0>, const quasar::DecoderPassData *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 10);
  (*(**(*a2 + 16) + 32))(*(*a2 + 16));

  quasar::DecoderChainOutput::getWordHypLattice(this, v5, a3);
}

void quasar::DecoderChainOutput::getWordHypLattice(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 880))
  {
    if (*(a1 + 216) == 1)
    {
      v5 = *(a1 + 208);
      *a3 = *(a1 + 200);
      a3[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      return;
    }

    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    *(a1 + 216) = 1;
    v8 = *(a1 + 352);
    if (v8)
    {
      v9 = *(a1 + 504);
    }

    else
    {
      v10 = *(a1 + 184);
      if (!v10)
      {
        _ZNSt3__115allocate_sharedB8ne200100IN3fst9VectorFstINS1_6ArcTplINS1_23CompactLatticeWeightTplINS1_16LatticeWeightTplIfEEiEEiEENS1_11VectorStateIS8_NS_9allocatorIS8_EEEEEENSA_ISD_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
      }

      v11 = *(a1 + 192);
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = *(a1 + 352);
      v9 = *(a1 + 504);
      if (!v8)
      {
LABEL_17:
        kaldi::WordHypLattice::getWordHypLattice(a2, v9, v10);
      }
    }

    v10 = v8 + 8;
    goto LABEL_17;
  }

  if (*(a1 + 216) == 1)
  {
    v6 = *(a1 + 208);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    *(a1 + 216) = 0;
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_1B5487CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::QuasarInfoMessage::~QuasarInfoMessage(va);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

uint64_t std::optional<std::shared_ptr<kaldi::WordHypLattice>>::operator=[abi:ne200100]<std::shared_ptr<kaldi::WordHypLattice>&,void>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*(a1 + 16) == 1)
  {
    v4 = a2[1];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = *(a1 + 8);
    *a1 = v3;
    *(a1 + 8) = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    v6 = a2[1];
    *a1 = v3;
    *(a1 + 8) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 16) = 1;
  }

  return a1;
}

void std::__shared_ptr_emplace<kaldi::LatticeScoreCache>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D13950;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void quasar::corrective_reranking::PhoneticMatcher::PhoneticMatcher(quasar::corrective_reranking::PhoneticMatcher *this, const quasar::corrective_reranking::PhoneticMatcherConfig *a2)
{
  *this = *a2;
  v4 = *(a2 + 1);
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 1);
  *(this + 32) = *(a2 + 32);
  *(this + 1) = v5;
  *(this + 5) = *(a2 + 5);
  v6 = *(a2 + 6);
  *(this + 6) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 7) = 0;
  *(this + 8) = *(a2 + 2);
  std::unordered_map<std::string const*,std::__list_iterator<std::pair<std::string,std::optional<kaldi::CuVector<float>>>,void *>,kaldi::LRUCacheMap<std::string,std::optional<kaldi::CuVector<float>>,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,kaldi::LRUCacheMap<std::string,std::optional<kaldi::CuVector<float>>,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,std::allocator<std::pair<std::string const* const,std::__list_iterator<std::pair<std::string,std::optional<kaldi::CuVector<float>>>,void *>>>>::unordered_map(this + 72, 0, __p, &v8);
  *(this + 15) = this + 120;
  *(this + 16) = this + 120;
  *(this + 17) = 0;
  *(this + 18) = 0;
  v7 = *a2;
  if (*a2)
  {
    v10 = 0;
    __p[0] = 0;
    quasar::QuasarEuclid::createQuasarEuclid(v7, 0, 0);
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "config.euclidSysConfig", 22);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
}

void quasar::corrective_reranking::PhoneticMatcher::~PhoneticMatcher(quasar::corrective_reranking::PhoneticMatcher *this)
{
  std::__list_imp<std::pair<std::string,std::optional<kaldi::CuVector<float>>>>::clear(this + 15);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 72);
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

float quasar::corrective_reranking::PhoneticMatcher::phoneticSimilarity(uint64_t a1, uint64_t a2, uint64_t a3)
{
  quasar::copyAndTrim(a2, &v36);
  quasar::copyAndTrim(a3, &v35);
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v36.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    goto LABEL_58;
  }

  v6 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v35.__r_.__value_.__l.__size_;
  }

  if (v6)
  {
    if (size == v6 && ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v7 = &v36) : (v7 = v36.__r_.__value_.__r.__words[0]), (v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v8 = &v35) : (v8 = v35.__r_.__value_.__r.__words[0]), !memcmp(v7, v8, size)))
    {
      v17 = 0.0;
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      v34 = 1065353216;
      v29 = 0u;
      v30 = 0u;
      v31 = 1065353216;
      if (*(a1 + 24) == 1)
      {
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v32, &v36.__r_.__value_.__l.__data_);
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v29, &v35.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 25) == 1)
      {
        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = &v36;
        }

        else
        {
          v9 = v36.__r_.__value_.__r.__words[0];
        }

        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v10 = v36.__r_.__value_.__l.__size_;
        }

        quasar::utf8::convertToLowerCaseOrThrow(v9, v10, &__p);
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(&v32, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &v35;
        }

        else
        {
          v11 = v35.__r_.__value_.__r.__words[0];
        }

        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v12 = v35.__r_.__value_.__l.__size_;
        }

        quasar::utf8::convertToLowerCaseOrThrow(v11, v12, &__p);
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(&v29, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (*(a1 + 26) == 1)
      {
        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &v36;
        }

        else
        {
          v13 = v36.__r_.__value_.__r.__words[0];
        }

        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v14 = v36.__r_.__value_.__l.__size_;
        }

        quasar::utf8::convertToUpperCaseOrThrow(v13, v14, &__p);
        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &v35;
        }

        else
        {
          v15 = v35.__r_.__value_.__r.__words[0];
        }

        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v16 = v35.__r_.__value_.__l.__size_;
        }

        quasar::utf8::convertToUpperCaseOrThrow(v15, v16, &v25);
        if ((*(a1 + 28) & 0x80000000) == 0)
        {
          quasar::utf::toU32String();
        }

        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v32, &__p.__r_.__value_.__l.__data_);
        if ((*(a1 + 28) & 0x80000000) == 0)
        {
          quasar::utf::toU32String();
        }

        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v29, &v25.__r_.__value_.__l.__data_);
        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (*(a1 + 32) == 1)
      {
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v32, &v36.__r_.__value_.__l.__data_);
        quasar::utf::toU32String();
      }

      v18 = v33;
      if (v33)
      {
        v17 = INFINITY;
        while (1)
        {
          quasar::corrective_reranking::PhoneticMatcher::computeEmbedding(a1, (v18 + 2), &__p);
          v19 = v30;
          if (v28 == 1 && v30 != 0)
          {
            break;
          }

          if (v28)
          {
            goto LABEL_68;
          }

LABEL_69:
          v18 = *v18;
          if (!v18)
          {
            goto LABEL_82;
          }
        }

        do
        {
          quasar::corrective_reranking::PhoneticMatcher::computeEmbedding(a1, (v19 + 2), &v25);
          if (v26)
          {
            LODWORD(v21) = -1.0;
            kaldi::CuVectorBase<float>::AddVec(v21, 1.0);
            kaldi::CuVectorBase<float>::ApplyPow(&v25, 2.0);
            v22 = kaldi::CuVectorBase<float>::Sum(&v25);
            if (*&v22 < 0.0)
            {
              *&v22 = 0.0;
            }

            v23 = sqrtf(*&v22);
            if (v17 > v23)
            {
              v17 = v23;
            }

            if (v26)
            {
              kaldi::CuVector<float>::~CuVector(&v25);
            }
          }

          v19 = *v19;
        }

        while (v19);
        if ((v28 & 1) == 0)
        {
          goto LABEL_69;
        }

LABEL_68:
        kaldi::CuVector<float>::~CuVector(&__p);
        goto LABEL_69;
      }

      v17 = INFINITY;
LABEL_82:
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v29);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v32);
    }
  }

  else
  {
LABEL_58:
    v17 = INFINITY;
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  return v17;
}

void sub_1B5488590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a29);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v29 - 144);
  if (*(v29 - 73) < 0)
  {
    operator delete(*(v29 - 96));
  }

  if (*(v29 - 49) < 0)
  {
    operator delete(*(v29 - 72));
  }

  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::PhoneticMatcher::computeEmbedding(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  quasar::QuasarEuclid::preprocessInput(*(a1 + 56), a2, 1, __p);
  v5 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  *a3 = 0;
  *(a3 + 32) = 0;
  if (v5)
  {
    if (kaldi::LRUCacheMap<std::string,std::optional<kaldi::CuVector<float>>,std::hash<std::string>,std::equal_to<std::string>>::Get(a1 + 64, __p, a3))
    {
      goto LABEL_8;
    }

    (*(**(a1 + 56) + 24))(v6);
    std::__optional_storage_base<kaldi::CuVector<float>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<kaldi::CuVector<float>,false>>(a3, v6);
    if (v7 == 1)
    {
      kaldi::CuVector<float>::~CuVector(v6);
    }

    if (*(a3 + 32))
    {
LABEL_8:
      ++*(a1 + 144);
    }

    else
    {
      ++*(a1 + 148);
      quasar::QuasarEuclid::inferEmbeddingVectorWithPreprocessedInput(*(a1 + 56), __p, v6);
      std::__optional_storage_base<kaldi::CuVector<float>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<kaldi::CuVector<float>,false>>(a3, v6);
      if (v7 == 1)
      {
        kaldi::CuVector<float>::~CuVector(v6);
      }

      if (*(a1 + 64))
      {
        kaldi::LRUCacheMap<std::string,std::optional<kaldi::CuVector<float>>,std::hash<std::string>,std::equal_to<std::string>>::InsertWithValueFunction<kaldi::LRUCacheMap<std::string,std::optional<kaldi::CuVector<float>>,std::hash<std::string>,std::equal_to<std::string>>::Insert(std::string const&,std::optional<kaldi::CuVector<float>> const&)::{lambda(std::optional<kaldi::CuVector<float>>&)#1}>((a1 + 64), __p, a3);
      }
    }
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B54887C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a13 == 1)
  {
    kaldi::CuVector<float>::~CuVector(&a9);
  }

  if (*(v19 + 32) == 1)
  {
    kaldi::CuVector<float>::~CuVector(v19);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL kaldi::LRUCacheMap<std::string,std::optional<kaldi::CuVector<float>>,std::hash<std::string>,std::equal_to<std::string>>::Get(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = 0;
  v4 = kaldi::LRUCacheMap<std::string,std::optional<kaldi::CuVector<float>>,std::hash<std::string>,std::equal_to<std::string>>::Get(a1, a2, &v6);
  if (v4)
  {
    std::__optional_storage_base<kaldi::CuVector<float>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<kaldi::CuVector<float>,false>>(a3, v6);
  }

  return v4;
}

{
  if (!a3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "v != nullptr");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  v12[0] = a2;
  v5 = std::__hash_table<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,std::__unordered_map_hasher<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,false>,std::__unordered_map_equal<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>>>::find<std::string const*>((a1 + 8), v12);
  if (v5)
  {
    v6 = v5[3];
    v7 = *(a1 + 64);
    if (v6 != v7)
    {
      v8 = v6[1];
      if (v8 != v7)
      {
        v9 = *v6;
        *(v9 + 8) = v8;
        *v8 = v9;
        v10 = *v7;
        *(v10 + 8) = v6;
        *v6 = v10;
        *v7 = v6;
        v6[1] = v7;
      }
    }

    *a3 = v6 + 5;
  }

  return v5 != 0;
}

void quasar::corrective_reranking::PhoneticMatcher::clearCache(quasar::corrective_reranking::PhoneticMatcher *this)
{
  if (quasar::gLogLevel >= 5)
  {
    memset(v7, 0, sizeof(v7));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Clearing phonetic matcher cache, size=", 38);
    v3 = MEMORY[0x1B8C84C30](v2, *(this + 17));
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ", hits=", 7);
    v5 = MEMORY[0x1B8C84C00](v4, *(this + 36));
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ", misses=", 9);
    MEMORY[0x1B8C84C00](v6, *(this + 37));
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v7);
  }

  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(this + 9);
  std::__list_imp<std::pair<std::string,std::optional<kaldi::CuVector<float>>>>::clear(this + 15);
  *(this + 18) = 0;
}

void std::__list_imp<std::pair<std::string,std::optional<kaldi::CuVector<float>>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        std::__destroy_at[abi:ne200100]<std::pair<std::string,std::optional<kaldi::CuVector<float>>>,0>((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string,std::optional<kaldi::CuVector<float>>>,0>(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    kaldi::CuVector<float>::~CuVector((a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void *std::__optional_storage_base<kaldi::CuVector<float>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<kaldi::CuVector<float>,false>>(void *result, uint64_t a2)
{
  if (*(result + 32) == *(a2 + 32))
  {
    if (*(result + 32))
    {

      return kaldi::CuVector<float>::operator=(result, a2);
    }
  }

  else if (*(result + 32))
  {
    result = kaldi::CuVector<float>::~CuVector(result);
    *(result + 32) = 0;
  }

  else
  {
    result = kaldi::CuVector<float>::CuVector(result, a2);
    *(result + 32) = 1;
  }

  return result;
}

uint64_t std::unordered_map<std::string const*,std::__list_iterator<std::pair<std::string,std::optional<kaldi::CuVector<float>>>,void *>,kaldi::LRUCacheMap<std::string,std::optional<kaldi::CuVector<float>>,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,kaldi::LRUCacheMap<std::string,std::optional<kaldi::CuVector<float>>,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,std::allocator<std::pair<std::string const* const,std::__list_iterator<std::pair<std::string,std::optional<kaldi::CuVector<float>>>,void *>>>>::unordered_map(uint64_t a1, size_t a2, char *a3, char *a4)
{
  v5 = *a3;
  v6 = *a4;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = v5;
  *(a1 + 36) = 1065353216;
  *(a1 + 40) = v6;
  std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::__rehash<true>(a1, a2);
  return a1;
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(void *a1, const void **a2)
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

uint64_t *kaldi::LRUCacheMap<std::string,std::optional<kaldi::CuVector<float>>,std::hash<std::string>,std::equal_to<std::string>>::InsertWithValueFunction<kaldi::LRUCacheMap<std::string,std::optional<kaldi::CuVector<float>>,std::hash<std::string>,std::equal_to<std::string>>::Insert(std::string const&,std::optional<kaldi::CuVector<float>> const&)::{lambda(std::optional<kaldi::CuVector<float>>&)#1}>(unint64_t *a1, std::string::size_type a2, uint64_t a3)
{
  v23 = &v23;
  v24 = &v23;
  v25 = 0;
  v22.__r_.__value_.__r.__words[0] = a2;
  v6 = std::__hash_table<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,std::__unordered_map_hasher<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,false>,std::__unordered_map_equal<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>>>::find<std::string const*>(a1 + 1, &v22);
  if (v6)
  {
    v7 = v6[3];
    if (&v23 != v7)
    {
      v8 = v7[1];
      if (v8 != &v23)
      {
        v9 = *v7;
        *(v9 + 8) = v8;
        *v8 = v9;
        v10 = v23;
        v23[1] = v7;
        *v7 = v10;
        v7[1] = &v23;
        --a1[9];
        v23 = v7;
        ++v25;
      }
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(a1 + 1, v6);
  }

  else
  {
    v11 = a1[9];
    if (v11 < *a1)
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v22, *a2, *(a2 + 8));
      }

      else
      {
        v22 = *a2;
      }

      operator new();
    }

    v12 = a1[7];
    if (&v23 != v12)
    {
      v13 = v12[1];
      if (v13 != &v23)
      {
        v14 = *v12;
        *(v14 + 8) = v13;
        *v13 = v14;
        v15 = v23;
        v23[1] = v12;
        *v12 = v15;
        v12[1] = &v23;
        a1[9] = v11 - 1;
        v23 = v12;
        ++v25;
      }
    }

    v22.__r_.__value_.__r.__words[0] = (v24 + 2);
    std::__hash_table<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,std::__unordered_map_hasher<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,false>,std::__unordered_map_equal<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>>>::__erase_unique<std::string const*>(a1 + 1, &v22);
    std::string::operator=((v24 + 2), a2);
  }

  v16 = v24;
  std::__optional_storage_base<kaldi::CuVector<float>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<kaldi::CuVector<float>,false>>(v24 + 5, a3);
  v22.__r_.__value_.__r.__words[0] = (v16 + 2);
  v22.__r_.__value_.__l.__size_ = v16;
  std::__hash_table<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,std::__unordered_map_hasher<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,false>,std::__unordered_map_equal<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>>>::__emplace_unique_key_args<std::string const*,std::pair<std::string const* const,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>>(a1 + 1, &v22);
  v17 = a1[8];
  if (v17 != v16)
  {
    v18 = v16[1];
    if (v18 != v17)
    {
      v19 = *v16;
      *(v19 + 8) = v18;
      *v18 = v19;
      v20 = *v17;
      *(v20 + 8) = v16;
      *v16 = v20;
      *v17 = v16;
      v16[1] = v17;
      --v25;
      ++a1[9];
    }
  }

  std::__list_imp<std::pair<std::string,std::optional<kaldi::CuVector<float>>>>::clear(&v23);
  return v16 + 5;
}

uint64_t quasar::DoublePartialLogic::handlePartial(uint64_t this, int a2, int a3, int a4, BOOL *a5)
{
  v5 = a3 & ~a4;
  if (!a2)
  {
    v5 = 0;
  }

  *(this + 16) = v5;
  v6 = *this;
  if (a3 && a4 && (*v6 != 1 || (a2 & 1) == 0))
  {
    *a5 = 1;
  }

  else
  {
    *a5 = 0;
    *v6 = 0;
  }

  return this;
}

void *quasar::DoublePartialLogic::getIsLastPartialTrailingPunctuationHidden@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this[1];
  *a2 = *this;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void std::__shared_ptr_emplace<BOOL>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D139A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void sdapi::SdapiTokenizer::~SdapiTokenizer(sdapi::SdapiTokenizer *this)
{
  *this = &unk_1F2D139F0;
  SharedMutex = sdapi::SdapiUtil::getSharedMutex(this);
  std::recursive_mutex::lock(SharedMutex);
  if (*(this + 4) != -1)
  {
    TPToken_Close();
    *(this + 4) = -1;
  }

  if (*(this + 3) != -1)
  {
    TPLexicon_Close();
    *(this + 3) = -1;
  }

  if (*(this + 2) != -1)
  {
    SDVoc_Delete();
    *(this + 2) = -1;
  }

  std::recursive_mutex::unlock(SharedMutex);

  quasar::Bitmap::~Bitmap(this);
}

{
  sdapi::SdapiTokenizer::~SdapiTokenizer(this);

  JUMPOUT(0x1B8C85350);
}

void sdapi::SdapiTokenizer::createSdapiTokenizer(sdapi::SdapiUtil *a1)
{
  SharedMutex = sdapi::SdapiUtil::getSharedMutex(a1);
  std::recursive_mutex::lock(SharedMutex);
  operator new();
}

void sub_1B548942C(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v3 + 8))(v3);
  std::recursive_mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void sdapi::SdapiTokenizer::loadModels(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  SharedMutex = sdapi::SdapiUtil::getSharedMutex(a1);
  std::recursive_mutex::lock(SharedMutex);
  a1[2] = a2;
  LexiconHandle = sdapi::SdapiUtil::fetchLexiconHandle(a2, a3);
  a1[3] = LexiconHandle;
  a1[4] = sdapi::SdapiUtil::fetchTokenHandle(a1[2], LexiconHandle, a4);
  if (SDApi_HasErrored())
  {
    memset(v10, 0, sizeof(v10));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Sdapi has errored. Dying.", 25);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v10);
  }

  std::recursive_mutex::unlock(SharedMutex);
}

uint64_t sdapi::SdapiTokenizer::tokenize(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  SharedMutex = sdapi::SdapiUtil::getSharedMutex(a1);
  std::recursive_mutex::lock(SharedMutex);
  v72 = 0;
  if (TPToken_Tokenize())
  {
    if (quasar::gLogLevel >= 1)
    {
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
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v55);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "Could not tokenize", 18);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v55);
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  if (TPToken_GetResultInfo())
  {
    if (quasar::gLogLevel >= 1)
    {
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
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v55);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "Could not get info from tokenized result", 40);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v55);
    }

    goto LABEL_7;
  }

  memset(&__p, 0, sizeof(__p));
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v38 = v50;
  std::vector<TPTokenTrans>::resize(&v43, v50);
  v39 = v51;
  std::vector<quasar::PreTokenToPostTokenItnMap>::resize(&v44 + 1, v51);
  v40 = __sz_4;
  std::vector<int>::resize(&__p, __sz_4);
  v41 = __sz;
  std::vector<int>::resize((&v47 + 8), __sz);
  v42 = v52;
  if (v52 <= *(&v46 + 1) - v46)
  {
    if (v52 < *(&v46 + 1) - v46)
    {
      *(&v46 + 1) = v46 + v52;
    }
  }

  else
  {
    std::vector<signed char>::__append(&v46, v52 - (*(&v46 + 1) - v46));
  }

  ResultData = TPToken_GetResultData();
  if (ResultData)
  {
    if (quasar::gLogLevel >= 1)
    {
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
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v55);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "Failed TPToken_GetResultData with error code : ", 47);
      MEMORY[0x1B8C84BB0](v9, ResultData);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v55);
    }

LABEL_19:
    v6 = 0;
    goto LABEL_20;
  }

  v10 = TPToken_DeleteResult();
  if (v10)
  {
    if (quasar::gLogLevel >= 1)
    {
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
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v55);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "Failed TPToken_DeleteResult with error code : ", 46);
      MEMORY[0x1B8C84BB0](v11, v10);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v55);
    }

    goto LABEL_19;
  }

  if (!v41)
  {
    if (quasar::gLogLevel >= 1)
    {
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
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v55);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "No starting states!", 19);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v55);
    }

    goto LABEL_19;
  }

  v35 = 0;
  v36 = 0;
  v34 = 0;
  v12 = *(&v44 + 1);
  if (!*(*(&v44 + 1) + 12))
  {
    goto LABEL_86;
  }

  do
  {
    v13 = (v43 + 32 * *(v12 + 8));
    v14 = *v13;
    memset(&v32, 0, sizeof(v32));
    std::string::basic_string[abi:ne200100]<0>(v29, (v46 + v14));
    v15 = a1[8];
    SdapiAnnotatedText::SdapiAnnotatedText(&v55, v29);
    v16 = BYTE7(v56);
    v17 = *(&v55 + 1);
    if ((SBYTE7(v56) & 0x80u) == 0)
    {
      v18 = BYTE7(v56);
    }

    else
    {
      v18 = *(&v55 + 1);
    }

    if (!v18)
    {
      std::string::basic_string[abi:ne200100]<0>(&v31, "");
      goto LABEL_71;
    }

    v19 = HIBYTE(v57);
    if (v57 < 0)
    {
      v19 = v57;
    }

    if (!v19)
    {
      if (v15)
      {
        if ((SBYTE7(v59) & 0x80u) == 0)
        {
          v26 = BYTE7(v59);
        }

        else
        {
          v26 = *(&v58 + 1);
        }

        v27 = &v58;
        if (v26)
        {
          v16 = BYTE7(v59);
        }

        else
        {
          v27 = &v55;
        }

        if ((v16 & 0x80) == 0)
        {
          *&v31.__r_.__value_.__l.__data_ = *v27;
          v28 = *(v27 + 2);
LABEL_65:
          v31.__r_.__value_.__r.__words[2] = v28;
          goto LABEL_71;
        }

        if (v26)
        {
          v17 = *(&v58 + 1);
        }
      }

      else
      {
        if ((SBYTE7(v56) & 0x80000000) == 0)
        {
          *&v31.__r_.__value_.__l.__data_ = v55;
          v28 = v56;
          goto LABEL_65;
        }

        v27 = &v55;
      }

      std::string::__init_copy_ctor_external(&v31, *v27, v17);
      goto LABEL_71;
    }

    std::string::basic_string[abi:ne200100](&v73, v18 + 1);
    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v73;
    }

    else
    {
      v20 = v73.__r_.__value_.__r.__words[0];
    }

    if ((SBYTE7(v56) & 0x80u) == 0)
    {
      v21 = &v55;
    }

    else
    {
      v21 = v55;
    }

    memmove(v20, v21, v18);
    *(&v20->__r_.__value_.__l.__data_ + v18) = 92;
    if (v57 >= 0)
    {
      v22 = &v56 + 8;
    }

    else
    {
      v22 = *(&v56 + 1);
    }

    if (v57 >= 0)
    {
      v23 = HIBYTE(v57);
    }

    else
    {
      v23 = v57;
    }

    v24 = std::string::append(&v73, v22, v23);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

LABEL_71:
    if (SBYTE7(v59) < 0)
    {
      operator delete(v58);
    }

    if (SHIBYTE(v57) < 0)
    {
      operator delete(*(&v56 + 1));
    }

    if (SBYTE7(v56) < 0)
    {
      operator delete(v55);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    v32 = v31;
    *(&v31.__r_.__value_.__s + 23) = 0;
    v31.__r_.__value_.__s.__data_[0] = 0;
    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    v33 = 0;
    std::vector<quasar::TextTokenizer::Token>::push_back[abi:ne200100](&v34, &v32);
    *v12 = *(*(&v44 + 1) + 16 * v13[2]);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }
  }

  while (*(v12 + 12));
  if (v34 != v35)
  {
    v37 = 0;
    std::vector<quasar::TextTokenizer::TokenString>::emplace_back<quasar::TextTokenizer::TokenString const&>(a3, &v34);
  }

LABEL_86:
  *&v55 = &v34;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v55);
  v6 = 1;
LABEL_20:
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (*(&v47 + 1))
  {
    *&v48 = *(&v47 + 1);
    operator delete(*(&v47 + 1));
  }

  if (v46)
  {
    *(&v46 + 1) = v46;
    operator delete(v46);
  }

  if (*(&v44 + 1))
  {
    *&v45 = *(&v44 + 1);
    operator delete(*(&v44 + 1));
  }

  if (v43)
  {
    *(&v43 + 1) = v43;
    operator delete(v43);
  }

LABEL_8:
  std::recursive_mutex::unlock(SharedMutex);
  return v6;
}

void sub_1B5489BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, std::locale a53)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a53);
  sdapi::SdapiTokenizer::TTokenizerResult::~TTokenizerResult(&a32);
  std::recursive_mutex::unlock(v53);
  _Unwind_Resume(a1);
}

void std::vector<TPTokenTrans>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 32 * a2;
    }
  }

  else
  {
    std::vector<TPTokenTrans>::__append(a1, a2 - v2);
  }
}

void sdapi::SdapiTokenizer::TTokenizerResult::~TTokenizerResult(sdapi::SdapiTokenizer::TTokenizerResult *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
  }
}

void std::vector<TPTokenTrans>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 5)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 32 * a2);
      v5 += 32 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 4 > v7)
    {
      v7 = v8 >> 4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TPTokenTrans>>(a1, v9);
    }

    v10 = (32 * (v6 >> 5));
    bzero(v10, 32 * a2);
    v11 = &v10[32 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TPTokenTrans>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<quasar::TextTokenizer::TokenString>::emplace_back<quasar::TextTokenizer::TokenString const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    v4 = std::vector<quasar::TextTokenizer::TokenString>::__emplace_back_slow_path<quasar::TextTokenizer::TokenString const&>(a1, a2);
  }

  else
  {
    std::vector<quasar::TextTokenizer::TokenString>::__construct_one_at_end[abi:ne200100]<quasar::TextTokenizer::TokenString const&>(a1, a2);
    v4 = v3 + 32;
  }

  *(a1 + 8) = v4;
  return v4 - 32;
}

uint64_t *kaldi::quasar::EspressoNDArray::EspressoNDArray(uint64_t *a1, __int128 *a2, int a3)
{
  v4 = 0;
  v20 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = a2[2];
  *(a1 + 1) = a2[1];
  *(a1 + 2) = v6;
  *a1 = v5;
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[6];
  *(a1 + 5) = a2[5];
  *(a1 + 6) = v9;
  *(a1 + 3) = v7;
  *(a1 + 4) = v8;
  v10 = a2[7];
  v11 = a2[8];
  v12 = a2[9];
  a1[20] = *(a2 + 20);
  *(a1 + 8) = v11;
  *(a1 + 9) = v12;
  *(a1 + 7) = v10;
  a1[21] = 0;
  if (a3)
  {
    v4 = *a1;
  }

  a1[22] = v4;
  v13 = *(a1 + 40);
  if (v13 != 65568)
  {
    if (v13)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::to_string(&v18, *(a1 + 40));
      v16 = std::string::insert(&v18, 0, "Unsupported storage type ");
      v17 = *&v16->__r_.__value_.__l.__data_;
      v19.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v19.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(exception, &v19);
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    *(a1 + 40) = 65568;
  }

  espresso_buffer_unpack_tensor_shape();
  return a1;
}

void sub_1B548A094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      v25 = *(v21 + 176);
      *(v21 + 176) = 0;
      if (v25)
      {
        free(v25);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

void *kaldi::quasar::EspressoNDArray::InitBufferMemory(kaldi::quasar::EspressoNDArray *this, size_t count)
{
  *(this + 20) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 40) = 65568;
  result = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
  v4 = *(this + 22);
  *(this + 22) = result;
  if (v4)
  {
    free(v4);
    result = *(this + 22);
  }

  *this = result;
  return result;
}

uint64_t kaldi::MelBanks::MelBanks(uint64_t a1, unsigned int *a2, uint64_t a3, float a4)
{
  v5 = (a1 + 24);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 49) = *(a2 + 21);
  v6 = *a2;
  if (v6 <= 2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v76);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v76, "Must have at least 3 mel bins", 29);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v76);
  }

  if (*(a3 + 52) <= 0.0)
  {
    v7 = *a3;
  }

  else
  {
    v7 = *(a3 + 52);
  }

  v8 = v7 * 0.001 * *(a3 + 8);
  v9 = v8;
  if (*(a3 + 48) == 1)
  {
    v9 = kaldi::RoundUpToNearestPowerOfTwo(v8);
  }

  v10 = v7 * 0.5;
  v12 = *(a2 + 1);
  v11 = *(a2 + 2);
  if (v11 <= 0.0)
  {
    v13 = (v7 * 0.5) + v11;
  }

  else
  {
    v13 = *(a2 + 2);
  }

  v14 = v12 >= 0.0 && v12 < v10;
  v71 = v13;
  if (!v14 || (v13 > 0.0 ? (v15 = v13 <= v10) : (v15 = 0), v15 ? (v16 = v13 > v12) : (v16 = 0), !v16))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v76);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v76, "Bad values in options: low-freq ", 32);
    v61 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, " and high-freq ", 15);
    v62 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, " vs. nyquist ", 13);
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v76);
  }

  v17 = logf((v12 / 700.0) + 1.0);
  v18 = logf((v13 / 700.0) + 1.0);
  *(a1 + 48) = *(a2 + 20);
  v19 = *(a2 + 4);
  v73 = *(a2 + 3);
  if (v19 < 0.0)
  {
    v19 = v10 + v19;
  }

  v72 = v19;
  if (a4 != 1.0 && (v73 < 0.0 || v73 <= v12 || v73 >= v13 || v19 <= 0.0 || v19 >= v13 || v19 <= v73))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v76);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v76, "Bad values in options: vtln-low ", 32);
    v63 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, " and vtln-high ", 15);
    v64 = std::ostream::operator<<();
    v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, ", versus ", 9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "low-freq ", 9);
    v66 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, " and high-freq ", 15);
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v76);
  }

  std::vector<std::pair<int,kaldi::Vector<float>>>::resize(v5, v6);
  kaldi::Vector<float>::Resize(a1, v6, 0);
  v20 = 0;
  v21 = (v9 >> 1);
  v74 = v7 / v9;
  v22 = v17 * 1127.0;
  v23 = (v18 * 1127.0) - (v17 * 1127.0);
  v24 = -1.0;
  v68 = v22;
  v69 = v23 / (v6 + 1);
  do
  {
    v25 = v22 + (v20 * v69);
    v26 = v20 + 1;
    v27 = v22 + ((v20 + 1) * v69);
    v28 = v22 + ((v20 + 2) * v69);
    if (a4 != 1.0)
    {
      v29 = (expf(v25 / 1127.0) + v24) * 700.0;
      v31 = kaldi::MelBanks::VtlnWarpFreq(v30, v73, v72, v12, v71, a4, v29);
      v25 = logf((v31 / 700.0) + 1.0) * 1127.0;
      v32 = expf(v27 / 1127.0);
      v34 = kaldi::MelBanks::VtlnWarpFreq(v33, v73, v72, v12, v71, a4, (v32 + -1.0) * 700.0);
      v24 = -1.0;
      v27 = logf((v34 / 700.0) + 1.0) * 1127.0;
      v35 = expf(v28 / 1127.0);
      v37 = kaldi::MelBanks::VtlnWarpFreq(v36, v73, v72, v12, v71, a4, (v35 + -1.0) * 700.0);
      v28 = logf((v37 / 700.0) + 1.0) * 1127.0;
    }

    *(*a1 + 4 * v20) = (expf(v27 / 1127.0) + v24) * 700.0;
    memset(v75, 0, sizeof(v75));
    kaldi::Vector<float>::Resize(v75, v21, 0);
    if (v21 < 1)
    {
      goto LABEL_62;
    }

    v38 = 0;
    v39 = -1;
    v40 = v75[0];
    v41 = -1;
    do
    {
      v42 = logf(((v74 * v38) / 700.0) + 1.0) * 1127.0;
      if (v42 > v25 && v42 < v28)
      {
        v15 = v42 > v27;
        v44 = (v28 - v42) / (v28 - v27);
        v45 = (v42 - v25) / (v27 - v25);
        if (v15)
        {
          v45 = v44;
        }

        v40[v38] = v45;
        if (v41 == -1)
        {
          v41 = v38;
        }

        v39 = v38;
      }

      ++v38;
    }

    while (v21 != v38);
    if (v41 == -1 || (v46 = v39 - v41, v39 < v41))
    {
LABEL_62:
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v76);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v76, "Invalid indexing. You may have set --num-mel-bins too large.", 60);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v76);
    }

    v47 = *v5 + 32 * v20;
    *v47 = v41;
    v48 = v46 + 1;
    kaldi::Vector<float>::Resize((v47 + 8), (v46 + 1), 0);
    v49 = *v5;
    v78 = 0;
    v79 = 0;
    v76.__locale_ = (v75[0] + 4 * v41);
    v77 = v48;
    kaldi::VectorBase<float>::CopyFromVec(v49 + 32 * v20 + 8, &v76.__locale_);
    v22 = v68;
    v24 = -1.0;
    if (v68 != 0.0 && !v20 && (*(a2 + 21) & 1) != 0)
    {
      **(*v5 + 8) = 0;
    }

    kaldi::Vector<float>::Destroy(v75);
    ++v20;
  }

  while (v26 != v6);
  if (*(a1 + 48) == 1)
  {
    v51 = *(a1 + 24);
    v50 = *(a1 + 32);
    if (v50 != v51)
    {
      v52 = 0;
      v53 = 0;
      v54 = kaldi::g_kaldi_verbose_level;
      do
      {
        if ((v54 & 0x80000000) == 0)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v76);
          v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v76, "bin ", 4);
          v56 = MEMORY[0x1B8C84C30](v55, v53);
          v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, ", offset = ", 11);
          v58 = MEMORY[0x1B8C84C00](v57, *(*v5 + v52));
          v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ", vec = ", 8);
          kaldi::VectorBase<float>::Write(*v5 + v52 + 8, v59, 0);
          kaldi::KaldiLogMessage::~KaldiLogMessage(&v76);
          v54 = kaldi::g_kaldi_verbose_level;
          v51 = *(a1 + 24);
          v50 = *(a1 + 32);
        }

        ++v53;
        v52 += 32;
      }

      while (v53 < (v50 - v51) >> 5);
    }
  }

  return a1;
}

void sub_1B548A838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::Vector<float>::Destroy(va);
  std::vector<std::pair<int,kaldi::Vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  kaldi::Vector<float>::Destroy(v8);
  _Unwind_Resume(a1);
}

float kaldi::MelBanks::VtlnWarpFreq(kaldi::MelBanks *this, float a2, float a3, float a4, float a5, float a6, float a7)
{
  if (a7 < a4 || a7 > a5)
  {
    return a7;
  }

  v9 = fmaxf(a6, 1.0) * a2;
  v10 = 1.0 / a6;
  if (v9 > a7)
  {
    return a4 + ((((v10 * v9) - a4) / (v9 - a4)) * (a7 - a4));
  }

  v11 = fminf(a6, 1.0) * a3;
  if (v11 > a7)
  {
    return v10 * a7;
  }

  return a5 + (((a5 - (v10 * v11)) / (a5 - v11)) * (a7 - a5));
}

void kaldi::ComputeLifterCoeffs(unsigned int *a1, float a2)
{
  v2 = a1[2];
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = vdupq_n_s64(v2 - 1);
    v5 = xmmword_1B5AE0050;
    v6 = xmmword_1B5AE0060;
    v31 = vdupq_n_s64(4uLL);
    v32 = vdupq_n_s64(0x400921FB54442D18uLL);
    *&v7 = a2;
    v8 = (v2 + 3) & 0xFFFFFFFC;
    v29 = vdupq_lane_s64(v7, 0);
    v30 = vdupq_lane_s64(COERCE__INT64(*&v7 * 0.5), 0);
    v9 = (*a1 + 8);
    __asm { FMOV            V6.2D, #1.0 }

    v33 = v4;
    v28 = _Q6;
    do
    {
      v39 = v6;
      v40 = v5;
      v15 = vorr_s8(vdup_n_s32(v3), 0x300000002);
      v16 = vmovn_s64(vcgeq_u64(v4, v6));
      v38 = vuzp1_s16(v16, v15).u8[0];
      v17.i64[0] = v15.u32[0];
      v17.i64[1] = v15.u32[1];
      v18 = vcvtq_f64_u64(v17);
      v17.i64[0] = v3;
      v17.i64[1] = (v3 + 1);
      v41 = vdivq_f64(vmulq_f64(v18, v32), v29);
      __x = vdivq_f64(vmulq_f64(vcvtq_f64_u64(v17), v32), v29);
      v36 = sin(__x.f64[1]);
      v19.f64[0] = sin(__x.f64[0]);
      v19.f64[1] = v36;
      __xa = v19;
      v37 = sin(v41.f64[1]);
      v20.f64[0] = sin(v41.f64[0]);
      v21 = vmlaq_f64(v28, __xa, v30);
      if (v38)
      {
        v22 = v21.f64[0];
        *(v9 - 2) = v22;
      }

      if (vuzp1_s16(v16, *&v20).i8[2])
      {
        v23 = v21.f64[1];
        *(v9 - 1) = v23;
      }

      v20.f64[1] = v37;
      v24 = vmlaq_f64(v28, v20, v30);
      v4 = v33;
      v25 = vmovn_s64(vcgeq_u64(v33, v40));
      if (vuzp1_s16(v25, v25).i32[1])
      {
        v26 = v24.f64[0];
        *v9 = v26;
        v27 = v24.f64[1];
        v9[1] = v27;
      }

      v3 += 4;
      v5 = vaddq_s64(v40, v31);
      v6 = vaddq_s64(v39, v31);
      v9 += 4;
    }

    while (v8 != v3);
  }
}

uint64_t quasar::MergerOptions::options@<X0>(quasar::MergerOptions *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = this + 16;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::OptionValueBase *>::__init_with_size[abi:ne200100]<quasar::OptionValueBase * const*,quasar::OptionValueBase * const*>(a2, &v3, &v4, 1uLL);
}

uint64_t quasar::MergerBlock::init(quasar::MergerBlock *this)
{
  result = quasar::OptionValue<std::string>::value(this + 3);
  v3 = *(result + 23);
  if (v3 < 0)
  {
    if (*(result + 8) != 3)
    {
      goto LABEL_12;
    }

    result = *result;
  }

  else if (v3 != 3)
  {
    goto LABEL_12;
  }

  if (*result != 28257 || *(result + 2) != 121)
  {
LABEL_12:
    memset(v7, 0, sizeof(v7));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Unsupported merge-style: ", 25);
    v6 = quasar::OptionValue<std::string>::value(this + 3);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, v6);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v7);
  }

  return result;
}

void quasar::ConfiguredProcessingBlock<quasar::MergerOptions>::setContextProvider(uint64_t a1, uint64_t *a2)
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

void sub_1B548ADBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13)
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

void quasar::MergerBlock::~MergerBlock(quasar::MergerBlock *this)
{
  v1 = quasar::ConfiguredProcessingBlock<quasar::MergerOptions>::~ConfiguredProcessingBlock(this, &off_1F2D13B80);
  quasar::ProcessingBlock::~ProcessingBlock((v1 + 184));
}

{
  v1 = quasar::ConfiguredProcessingBlock<quasar::MergerOptions>::~ConfiguredProcessingBlock(this, &off_1F2D13B80);
  quasar::ProcessingBlock::~ProcessingBlock((v1 + 184));

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toquasar::MergerBlock::~MergerBlock(quasar::MergerBlock *this)
{
  v1 = (quasar::ConfiguredProcessingBlock<quasar::MergerOptions>::~ConfiguredProcessingBlock(this + *(*this - 24), &off_1F2D13B80) + 184);

  quasar::ProcessingBlock::~ProcessingBlock(v1);
}

{
  v1 = (this + *(*this - 24));
  quasar::ConfiguredProcessingBlock<quasar::MergerOptions>::~ConfiguredProcessingBlock(v1, &off_1F2D13B80);
  quasar::ProcessingBlock::~ProcessingBlock(v1 + 23);

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::ConfiguredProcessingBlock<quasar::MergerOptions>::~ConfiguredProcessingBlock(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[1];
  *(a1 + 8) = &unk_1F2D13A30;
  *(a1 + 24) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 160, *(a1 + 168));
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  *(a1 + 24) = &unk_1F2D08890;
  v4 = *(a1 + 120);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void fst::quasar::MergeTrieFstImpl::MergeTrieFstImpl(uint64_t a1, uint64_t a2, int a3, int a4, __int128 *a5)
{
  *a1 = &unk_1F2D13CE8;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a5, *(a5 + 1));
    a3 = *(a1 + 8);
  }

  else
  {
    v7 = *a5;
    *(a1 + 32) = *(a5 + 2);
    *(a1 + 16) = v7;
  }

  *(a1 + 48) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 64) = 0u;
  if (a3 >= 1 && a3 <= *(a1 + 12))
  {
    v8 = *a2;
    if (*a2 != *(a2 + 8))
    {
      if (*v8 && ((*(**v8 + 24))(*v8) & 0x80000000) == 0)
      {
        v9 = *v8;
        v10 = (*(**v8 + 24))(*v8);
        if ((*(*v9 + 40))(v9, v10))
        {
          operator new();
        }
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "FstNonNullAndHasArcs(fst)", 25);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v11);
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "!fsts.empty()", 13);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v11);
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(&v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "disambig_sym_start_ > 0 && disambig_sym_end_ > 0 && disambig_sym_start_ <= disambig_sym_end_", 92);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v11);
}

uint64_t *std::unique_ptr<fst::quasar::FstData>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v3)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      else
      {
        v4 = v3[3];
        if (v4)
        {
          --*v4;
        }
      }

      MEMORY[0x1B8C85350](v3, 0x1070C401ACC3EEFLL);
    }

    v5 = *(v2 + 8);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    MEMORY[0x1B8C85350](v2, 0x20C40960023A9);
  }

  return a1;
}

uint64_t *std::unique_ptr<fst::quasar::State>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      *(v2 + 32) = v3;
      operator delete(v3);
    }

    v5 = v2;
    std::vector<std::unique_ptr<fst::quasar::SubPath>>::__destroy_vector::operator()[abi:ne200100](&v5);
    MEMORY[0x1B8C85350](v2, 0x1020C40FB1A5927);
  }

  return a1;
}

uint64_t fst::quasar::GetWordsAndCosts(uint64_t a1, uint64_t a2)
{
  *&v40[4] = *MEMORY[0x1E69E9840];
  result = (*(*a1 + 24))(a1);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v5 = (*(*a1 + 24))(a1);
  v38 = 0;
  (*(*a1 + 136))(a1, v5, v36);
  *v39 = (*(*a1 + 24))(a1);
  *&v39[4] = 0;
  v34 = 0;
  v35 = 0;
  __src = 0;
  std::vector<fst::quasar::GetWordsAndCosts(fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const&,std::map<int,float> &)::DfsState,std::allocator<fst::quasar::GetWordsAndCosts(fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const&,std::map<int,float> &)::DfsState>>::__init_with_size[abi:ne200100]<fst::quasar::GetWordsAndCosts(fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const&,std::map<int,float> &)::DfsState const*,fst::quasar::GetWordsAndCosts(fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const&,std::map<int,float> &)::DfsState const*>(&__src, v39, v40, 1uLL);
  v6 = __src;
  v7 = v34;
  if (__src == v34)
  {
    goto LABEL_39;
  }

  v8 = (a2 + 8);
  do
  {
    v10 = *(v7 - 3);
    v9 = v7 - 12;
    v11 = *(v9 + 1);
    v12 = *(v9 + 2);
    v34 = v9;
    fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Reinit(v36, a1, v10);
    while (v36[0])
    {
      if ((*(*v36[0] + 24))(v36[0]))
      {
        goto LABEL_38;
      }

      if (v36[0])
      {
        v13 = (*(*v36[0] + 32))(v36[0]);
        goto LABEL_11;
      }

LABEL_10:
      v13 = v36[1] + 16 * v38;
LABEL_11:
      v14 = *(v13 + 8);
      v15 = *(v13 + 4);
      if (!v15)
      {
        v15 = v12;
      }

      v32 = v15;
      v16 = (*(*a1 + 32))(a1, *(v13 + 12));
      v17 = v11 + v14;
      if (v16 == INFINITY)
      {
        v21 = v34;
        if (v34 >= v35)
        {
          v24 = __src;
          v25 = v34 - __src;
          v26 = 0xAAAAAAAAAAAAAAABLL * ((v34 - __src) >> 2);
          v27 = v26 + 1;
          if (v26 + 1 > 0x1555555555555555)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v35 - __src) >> 2) > v27)
          {
            v27 = 0x5555555555555556 * ((v35 - __src) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v35 - __src) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v27 = 0x1555555555555555;
          }

          if (v27)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<int,float,int>>>(&__src, v27);
          }

          v28 = 4 * ((v34 - __src) >> 2);
          v29 = v32;
          *v28 = *(v13 + 12);
          *(v28 + 4) = v17;
          *(v28 + 8) = v29;
          v23 = 12 * v26 + 12;
          v30 = (v28 - v25);
          memcpy((v28 - v25), v24, v25);
          v31 = __src;
          __src = v30;
          v34 = v23;
          v35 = 0;
          if (v31)
          {
            operator delete(v31);
          }
        }

        else
        {
          v22 = v32;
          *v34 = *(v13 + 12);
          *(v21 + 1) = v17;
          *(v21 + 2) = v22;
          v23 = (v21 + 12);
        }

        v34 = v23;
      }

      else
      {
        v18 = v17 + v16;
        v19 = *v8;
        if (!*v8)
        {
          goto LABEL_22;
        }

        v20 = a2 + 8;
        do
        {
          if (*(v19 + 28) >= v32)
          {
            v20 = v19;
          }

          v19 = *(v19 + 8 * (*(v19 + 28) < v32));
        }

        while (v19);
        if (v20 == v8 || v32 < *(v20 + 28) || v18 < *(v20 + 32))
        {
LABEL_22:
          *v39 = &v32;
          *(std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a2, &v32) + 8) = v18;
        }
      }

      if (v36[0])
      {
        (*(*v36[0] + 40))(v36[0]);
      }

      else
      {
        ++v38;
      }
    }

    if (v38 < v36[2])
    {
      goto LABEL_10;
    }

LABEL_38:
    v6 = __src;
    v7 = v34;
  }

  while (__src != v34);
LABEL_39:
  if (v6)
  {
    v34 = v6;
    operator delete(v6);
  }

  result = v36[0];
  if (v36[0])
  {
    return (*(*v36[0] + 8))(v36[0]);
  }

  if (v37)
  {
    --*v37;
  }

  return result;
}

uint64_t fst::quasar::BuildUnigramFst(void *a1, uint64_t a2)
{
  result = (*(*a2 + 224))(a2);
  if (a1[2])
  {
    v5 = (*(*a2 + 200))(a2);
    (*(*a2 + 176))(a2, v5);
    v6 = (*(*a2 + 200))(a2);
    (*(*a2 + 184))(a2, v6, 0.0);
    (*(*a2 + 256))(a2, v5, a1[2]);
    v9 = *a1;
    v7 = a1 + 1;
    v8 = v9;
    if (v9 != v7)
    {
      do
      {
        v10 = *(v8 + 8);
        v14[0] = *(v8 + 7);
        v14[1] = v14[0];
        v14[2] = v10;
        v14[3] = v6;
        (*(*a2 + 208))(a2, v5, v14);
        v11 = v8[1];
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
            v12 = v8[2];
            v13 = *v12 == v8;
            v8 = v12;
          }

          while (!v13);
        }

        v8 = v12;
      }

      while (v12 != v7);
    }

    return (*(*a2 + 192))(a2, 0x5685A950000, 0x3FFFFFFF0007);
  }

  return result;
}

void fst::quasar::MergeTrieFstImpl::~MergeTrieFstImpl(fst::quasar::MergeTrieFstImpl *this)
{
  *this = &unk_1F2D13CE8;
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "MergeTrieFst[", 13);
    v3 = *(this + 39);
    if (v3 >= 0)
    {
      v4 = this + 16;
    }

    else
    {
      v4 = *(this + 2);
    }

    if (v3 >= 0)
    {
      v5 = *(this + 39);
    }

    else
    {
      v5 = *(this + 3);
    }

    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v5);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "]:", 2);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " num_states ", 12);
    v9 = MEMORY[0x1B8C84C30](v8, (*(this + 10) - *(this + 9)) >> 3);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " num_states_expanded ", 21);
    v11 = MEMORY[0x1B8C84C00](v10, *(this + 24));
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " num_arcs ", 10);
    MEMORY[0x1B8C84C00](v12, *(this + 25));
    kaldi::KaldiLogMessage::~KaldiLogMessage(v14);
  }

  v13 = *(this + 14);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14[0].__locale_ = (this + 72);
  std::vector<std::unique_ptr<fst::quasar::State>>::__destroy_vector::operator()[abi:ne200100](v14);
  v14[0].__locale_ = (this + 48);
  std::vector<std::unique_ptr<fst::quasar::FstData>>::__destroy_vector::operator()[abi:ne200100](v14);
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  fst::quasar::MergeTrieFstImpl::~MergeTrieFstImpl(this);

  JUMPOUT(0x1B8C85350);
}

void fst::quasar::MergeTrieFstImpl::ExpandAll(fst::quasar::MergeTrieFstImpl *this, __n128 a2)
{
  if (*(this + 10) != *(this + 9))
  {
    v3 = 0;
    do
    {
      fst::quasar::MergeTrieFstImpl::Expand(this, v3++, a2);
    }

    while (v3 < (*(this + 10) - *(this + 9)) >> 3);
  }
}

void fst::quasar::MergeTrieFstImpl::Expand(fst::quasar::MergeTrieFstImpl *this, int a2, __n128 a3)
{
  v3 = *(this + 9);
  if (a2 >= ((*(this + 10) - v3) >> 3))
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  v4 = *(v3 + 8 * a2);
  if ((v4[6] & 1) == 0)
  {
    *(v4 + 48) = 1;
    ++*(this + 24);
    v141 = 0;
    v142 = 0;
    v143 = 0;
    v6 = *v4;
    v132 = v4[1];
    v130 = v4;
    if (*v4 != v132)
    {
      while (1)
      {
        v7 = *v6;
        v8 = *(*v6 + 2);
        if (v8 != -2)
        {
          break;
        }

        v9 = *(this + 2);
        if (!v9)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v140);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v140, "sub_arc.ilabel != 0", 19);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v140);
        }

        v11 = *(v7 + 3);
        v10 = *(v7 + 4);
        v12 = v142;
        if (v142 >= v143)
        {
          v32 = 0xAAAAAAAAAAAAAAABLL * ((v142 - v141) >> 3);
          v33 = v32 + 1;
          if (v32 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v143 - v141) >> 3) > v33)
          {
            v33 = 0x5555555555555556 * ((v143 - v141) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v143 - v141) >> 3) >= 0x555555555555555)
          {
            v34 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v34 = v33;
          }

          if (v34)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<fst::quasar::SubPath *,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&v141, v34);
          }

          v35 = 8 * ((v142 - v141) >> 3);
          *v35 = v7;
          *(v35 + 8) = v9;
          *(v35 + 12) = v11;
          *(v35 + 16) = v10;
          *(v35 + 20) = -3;
          v13 = 24 * v32 + 24;
          memcpy((24 * v32 - (v142 - v141)), v141, v142 - v141);
          v36 = v141;
          v141 = (24 * v32 - (v142 - v141));
          v142 = v13;
          v143 = 0;
          if (v36)
          {
            operator delete(v36);
          }
        }

        else
        {
          *v142 = v7;
          *(v12 + 2) = v9;
          *(v12 + 3) = v11;
          v13 = (v12 + 24);
          *(v12 + 4) = v10;
          *(v12 + 5) = -3;
        }

        v142 = v13;
LABEL_56:
        if (++v6 == v132)
        {
          v37 = v141;
          v38 = v142;
          goto LABEL_59;
        }
      }

      v14 = *v7;
      fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Reinit((*v7)[2], **v7, v8);
      while (1)
      {
        v15 = v14[2];
        if (!*v15)
        {
          break;
        }

        if ((*(**v15 + 24))(*v15))
        {
          goto LABEL_56;
        }

        v15 = v14[2];
        if (!*v15)
        {
          goto LABEL_14;
        }

        v16 = (*(**v15 + 32))(*v15);
LABEL_15:
        v17 = *v16;
        if (*(this + 2) <= *v16 && *(this + 3) >= v17)
        {
          v17 = *(this + 2);
        }

        v18 = *(v16 + 4);
        v19 = *v6;
        if (!v18)
        {
          v18 = *(v19 + 3);
        }

        a3.n128_u32[0] = *(v19 + 4);
        v20 = 2143289344;
        if (a3.n128_f32[0] != -INFINITY)
        {
          v21 = *(v16 + 8);
          if (v21 != -INFINITY)
          {
            v22 = v21 == INFINITY || a3.n128_f32[0] == INFINITY;
            a3.n128_f32[0] = a3.n128_f32[0] + v21;
            if (v22)
            {
              v20 = 2139095040;
            }

            else
            {
              v20 = a3.n128_u32[0];
            }
          }
        }

        if (!v17)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v140);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v140, "sub_arc.ilabel != 0", 19);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v140);
        }

        v23 = *(v16 + 12);
        v24 = v142;
        if (v142 >= v143)
        {
          v26 = 0xAAAAAAAAAAAAAAABLL * ((v142 - v141) >> 3);
          v27 = v26 + 1;
          if (v26 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v143 - v141) >> 3) > v27)
          {
            v27 = 0x5555555555555556 * ((v143 - v141) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v143 - v141) >> 3) >= 0x555555555555555)
          {
            v28 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v28 = v27;
          }

          if (v28)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<fst::quasar::SubPath *,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&v141, v28);
          }

          v29 = 8 * ((v142 - v141) >> 3);
          *v29 = v19;
          *(v29 + 8) = v17;
          *(v29 + 12) = v18;
          *(v29 + 16) = v20;
          *(v29 + 20) = v23;
          v25 = 24 * v26 + 24;
          memcpy((24 * v26 - (v142 - v141)), v141, v142 - v141);
          v30 = v141;
          v141 = (24 * v26 - (v142 - v141));
          v142 = v25;
          v143 = 0;
          if (v30)
          {
            operator delete(v30);
          }

          v4 = v130;
        }

        else
        {
          *v142 = v19;
          *(v24 + 2) = v17;
          *(v24 + 3) = v18;
          v25 = (v24 + 24);
          *(v24 + 4) = v20;
          *(v24 + 5) = v23;
        }

        v142 = v25;
        v31 = v14[2];
        if (*v31)
        {
          (*(**v31 + 40))(*v31);
        }

        else
        {
          ++v31[4];
        }
      }

      if (v15[4] >= v15[2])
      {
        goto LABEL_56;
      }

LABEL_14:
      v16 = v15[1] + 16 * v15[4];
      goto LABEL_15;
    }

    v38 = 0;
    v37 = 0;
LABEL_59:
    v39 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v38 - v37) >> 3));
    if (v38 == v37)
    {
      v40 = 0;
    }

    else
    {
      v40 = v39;
    }

    std::__introsort<std::_ClassicAlgPolicy,fst::quasar::MergeTrieFstImpl::Expand(int)::$_0 &,std::pair<fst::quasar::SubPath *,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *,false>(v37, v38, v40, 1, a3);
    __p = 0;
    v138 = 0;
    v139 = 0;
    v41 = v141;
    v42 = v142;
    if (v142 == v141)
    {
      v44 = 0;
      if (!v141)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      do
      {
        v47 = &v41[v43];
        v48 = *&v41[v43 + 8];
        if (v48 != *(this + 2) || (v49 = v48 + v46, *(v47 + 2) = v49, ++v46, v49 <= *(this + 3)))
        {
          if (v44 >= v139)
          {
            v51 = 0xAAAAAAAAAAAAAAABLL * ((v44 - __p) >> 3);
            v52 = v51 + 1;
            if (v51 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v139 - __p) >> 3) > v52)
            {
              v52 = 0x5555555555555556 * ((v139 - __p) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v139 - __p) >> 3) >= 0x555555555555555)
            {
              v53 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v53 = v52;
            }

            if (v53)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<fst::quasar::SubPath *,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&__p, v53);
            }

            v54 = 8 * ((v44 - __p) >> 3);
            v55 = *v47;
            *(v54 + 16) = *(v47 + 2);
            *v54 = v55;
            v44 = 24 * v51 + 24;
            memcpy((24 * v51 - (v138 - __p)), __p, v138 - __p);
            v56 = __p;
            __p = (24 * v51 - (v138 - __p));
            v138 = v44;
            v139 = 0;
            if (v56)
            {
              operator delete(v56);
            }

            v4 = v130;
          }

          else
          {
            v50 = *v47;
            *(v44 + 16) = *(v47 + 2);
            *v44 = v50;
            v44 += 24;
          }

          v138 = v44;
          v41 = v141;
          v42 = v142;
        }

        ++v45;
        v43 += 24;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v42 - v41) >> 3) > v45);
      if (!v41)
      {
        goto LABEL_83;
      }
    }

    v142 = v41;
    operator delete(v41);
    v44 = v138;
LABEL_83:
    v57 = __p;
    v141 = __p;
    v142 = v44;
    v143 = v139;
    v138 = 0;
    v139 = 0;
    v136 = 0;
    __p = 0;
    __src = 0;
    v135 = 0;
    if (v44 != v57)
    {
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v57) >> 3);
      do
      {
        v63 = &v57[v58];
        if (!v61 || v63 == 16)
        {
          goto LABEL_91;
        }

        v64 = *(v63 + 2);
        v65 = *(v63 - 4);
        if (v64 <= v65 && (v64 != v65 || *&v57[v58 + 16] < *&v57[v58 - 8]))
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v140);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v140, "!prev_arc || (current_arc->ilabel > prev_arc->ilabel) || (current_arc->ilabel == prev_arc->ilabel && current_arc->weight.Value() >= prev_arc->weight.Value())", 157);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v140);
        }

        if (v65 != v64)
        {
LABEL_91:
          if (v60 >= v136)
          {
            v66 = __src;
            v67 = v60 - __src;
            v68 = (v60 - __src) >> 3;
            v69 = v68 + 1;
            if ((v68 + 1) >> 61)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v70 = v136 - __src;
            if ((v136 - __src) >> 2 > v69)
            {
              v69 = v70 >> 2;
            }

            if (v70 >= 0x7FFFFFFFFFFFFFF8)
            {
              v69 = 0x1FFFFFFFFFFFFFFFLL;
            }

            if (v69)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v69);
            }

            v71 = (8 * v68);
            *v71 = v61;
            v71[1] = -1;
            v59 = (8 * v68 + 8);
            memcpy(0, v66, v67);
            v72 = __src;
            __src = 0;
            v135 = v59;
            v136 = 0;
            if (v72)
            {
              operator delete(v72);
            }

            v4 = v130;
          }

          else
          {
            *v60 = v61;
            *(v60 + 1) = -1;
            v59 = (v60 + 8);
          }

          v135 = v59;
          v60 = v59;
        }

        v73 = v61 + 1;
        if (v61 + 1 == v62 || *(v63 + 8) != *(v63 + 2))
        {
          *(v59 - 1) = v61;
          v60 = v59;
        }

        v57 = v141;
        v62 = 0xAAAAAAAAAAAAAAABLL * ((v142 - v141) >> 3);
        v58 += 24;
        ++v61;
      }

      while (v62 > v73);
      v74 = __src;
      if (__src != v59)
      {
        v75 = -1;
        do
        {
          v76 = v74[1];
          v77 = *v74;
          if (v76 < v77)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v140);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v140, "group_size > 0", 14);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v140);
          }

          v133 = &v141[24 * v77];
          v78 = *(v133 + 2);
          if (*(this + 2) <= v78)
          {
            v131 = v76 != v77;
            if (v76 != v77 && *(this + 3) >= v78)
            {
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v140);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v140, "!IsDisambigSym(first_sub_arc.ilabel) || (group_size == 1)", 57);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v140);
            }
          }

          else
          {
            v131 = v76 != v77;
          }

          if (v78 <= v75)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v140);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v140, "first_sub_arc.ilabel > prev_group_ilabel", 40);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v140);
          }

          v129 = v59;
          v80 = v77 - 1;
          v81 = 24 * v77;
          do
          {
            v82 = &v141[v81];
            if (*&v141[v81 + 8] != *(v133 + 2))
            {
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v140);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v140, "sub_arc.ilabel == first_sub_arc.ilabel", 38);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v140);
            }

            v83 = 0.0;
            if (*(v82 + 5) != -3)
            {
              v83 = (*(****v82 + 32))(***v82, 0.0);
              *&v140 = v83;
              if (v83 == INFINITY)
              {
                if (v131)
                {
                  v98 = 0;
                }

                else
                {
                  v98 = *&v141[v81 + 12];
                }

                v99 = *(this + 10) - *(this + 9);
                v100 = v4[4];
                v101 = v4[5];
                if (v100 >= v101)
                {
                  v114 = v4[3];
                  v115 = (v100 - v114) >> 4;
                  v116 = v115 + 1;
                  if ((v115 + 1) >> 60)
                  {
                    std::vector<int>::__throw_length_error[abi:ne200100]();
                  }

                  v117 = v101 - v114;
                  if (v117 >> 3 > v116)
                  {
                    v116 = v117 >> 3;
                  }

                  if (v117 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v118 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v118 = v116;
                  }

                  if (v118)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>((v130 + 3), v118);
                  }

                  v124 = (16 * v115);
                  *v124 = *(v82 + 2);
                  v124[1] = v98;
                  v124[2] = *(v133 + 4);
                  v124[3] = v99 >> 3;
                  v102 = 16 * v115 + 16;
                  v4 = v130;
                  v125 = v130[3];
                  v126 = v130[4] - v125;
                  v127 = v124 - v126;
                  memcpy(v124 - v126, v125, v126);
                  v128 = v130[3];
                  v130[3] = v127;
                  v130[4] = v102;
                  v130[5] = 0;
                  if (v128)
                  {
                    operator delete(v128);
                  }
                }

                else
                {
                  *v100 = *(v82 + 2);
                  v100[1] = v98;
                  v100[2] = *(v133 + 4);
                  v100[3] = v99 >> 3;
                  v102 = (v100 + 4);
                }

                v4[4] = v102;
                ++*(this + 25);
                operator new();
              }
            }

            *&v140 = v83;
            if (v83 != 0.0)
            {
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v140);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v140, "sub_arc_nextstate_final == Weight::One()", 40);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v140);
            }

            if (v131)
            {
              v84 = *(this + 10) - *(this + 9);
              v85 = v4[4];
              v86 = v4[5];
              if (v85 >= v86)
              {
                v103 = v4[3];
                v104 = (v85 - v103) >> 4;
                v105 = v104 + 1;
                if ((v104 + 1) >> 60)
                {
                  std::vector<int>::__throw_length_error[abi:ne200100]();
                }

                v106 = v86 - v103;
                if (v106 >> 3 > v105)
                {
                  v105 = v106 >> 3;
                }

                if (v106 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v107 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v107 = v105;
                }

                if (v107)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>((v4 + 3), v107);
                }

                v119 = (16 * v104);
                *v119 = *(v82 + 2);
                v119[1] = 0;
                v119[2] = *(v133 + 4);
                v119[3] = v84 >> 3;
                v87 = 16 * v104 + 16;
                v120 = v4[3];
                v121 = v4[4] - v120;
                v122 = (16 * v104 - v121);
                memcpy(v122, v120, v121);
                v123 = v4[3];
                v4[3] = v122;
                v4[4] = v87;
                v4[5] = 0;
                if (v123)
                {
                  operator delete(v123);
                }
              }

              else
              {
                *v85 = *(v82 + 2);
                v85[1] = 0;
                v85[2] = *(v133 + 4);
                v85[3] = v84 >> 3;
                v87 = (v85 + 4);
              }

              v4[4] = v87;
              ++*(this + 25);
              operator new();
            }

            v88 = &v141[v81];
            v89 = v4[4];
            v90 = v4[5];
            if (v89 >= v90)
            {
              v93 = v4[3];
              v94 = (v89 - v93) >> 4;
              v95 = v94 + 1;
              if ((v94 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v96 = v90 - v93;
              if (v96 >> 3 > v95)
              {
                v95 = v96 >> 3;
              }

              if (v96 >= 0x7FFFFFFFFFFFFFF0)
              {
                v97 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v97 = v95;
              }

              if (v97)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>((v4 + 3), v97);
              }

              v108 = 16 * v94;
              v109 = *(this + 11);
              *v108 = *(v82 + 1);
              *(v108 + 8) = *(v88 + 4);
              *(v108 + 12) = v109;
              v92 = 16 * v94 + 16;
              v110 = v4[3];
              v111 = v4[4] - v110;
              v112 = 16 * v94 - v111;
              memcpy((v108 - v111), v110, v111);
              v113 = v4[3];
              v4[3] = v112;
              v4[4] = v92;
              v4[5] = 0;
              if (v113)
              {
                operator delete(v113);
              }
            }

            else
            {
              v91 = *(this + 11);
              *v89 = *(v82 + 1);
              *(v89 + 8) = *(v88 + 4);
              *(v89 + 12) = v91;
              v92 = v89 + 16;
            }

            v4[4] = v92;
            ++*(this + 25);
            ++v80;
            v81 += 24;
          }

          while (v80 < v74[1]);
          v75 = *(v133 + 2);
          v74 += 2;
          v59 = v129;
        }

        while (v74 != v129);
        v74 = __src;
      }

      if (v74)
      {
        v135 = v74;
        operator delete(v74);
      }
    }

    if (__p)
    {
      v138 = __p;
      operator delete(__p);
    }

    if (v141)
    {
      v142 = v141;
      operator delete(v141);
    }
  }
}

void sub_1B548D654()
{
  if (v0)
  {
    operator delete(v0);
  }

  if (v1)
  {
    operator delete(v1);
  }

  JUMPOUT(0x1B548D688);
}

uint64_t fst::quasar::MergeTrieFstImpl::NumArcs(fst::quasar::MergeTrieFstImpl *this, int a2, __n128 a3)
{
  fst::quasar::MergeTrieFstImpl::Expand(this, a2, a3);
  v5 = *(this + 9);
  if (a2 >= ((*(this + 10) - v5) >> 3))
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  return (*(*(v5 + 8 * a2) + 32) - *(*(v5 + 8 * a2) + 24)) >> 4;
}

uint64_t fst::quasar::MergeTrieFstImpl::NumOutputEpsilons(fst::quasar::MergeTrieFstImpl *this, int a2, __n128 a3)
{
  fst::quasar::MergeTrieFstImpl::Expand(this, a2, a3);
  v5 = *(this + 9);
  if (a2 >= ((*(this + 10) - v5) >> 3))
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  v6 = *(v5 + 8 * a2);
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  if (v7 == v8)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    if (*(v7 + 4))
    {
      result = result;
    }

    else
    {
      result = (result + 1);
    }

    v7 += 16;
  }

  while (v7 != v8);
  return result;
}

void fst::quasar::MergeTrieFstImpl::Type(fst::quasar::MergeTrieFstImpl *this)
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void fst::quasar::MergeTrieFstImpl::Write()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void fst::quasar::MergeTrieFstImpl::InitArcIterator(fst::quasar::MergeTrieFstImpl *a1, int a2, void *a3, __n128 a4)
{
  fst::quasar::MergeTrieFstImpl::Expand(a1, a2, a4);
  *a3 = 0;
  v7 = *(a1 + 9);
  if (a2 >= ((*(a1 + 10) - v7) >> 3))
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  v8 = *(*(v7 + 8 * a2) + 24);
  v9 = (*(*(v7 + 8 * a2) + 32) - v8) >> 4;
  a3[1] = v8;
  a3[2] = v9;
  a3[3] = 0;
}

uint64_t fst::quasar::MergeTrieFst::CurrentUnigramFst@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 8);
  v4 = *(v2 + 104);
  v3 = *(v2 + 112);
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

float fst::quasar::MergeTrieFst::Final(fst::quasar::MergeTrieFst *this, int a2)
{
  result = INFINITY;
  if (*(*(this + 1) + 44) == a2)
  {
    return 0.0;
  }

  return result;
}

void fst::quasar::MergeTrieFst::Copy(fst::quasar::MergeTrieFst *this, int a2)
{
  if (!a2)
  {
    operator new();
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "!safe");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
}

void fst::quasar::MergeTrieFst::Write()
{
  fst::quasar::MergeTrieFstImpl::Write();
}

{
  fst::quasar::MergeTrieFstImpl::Write();
}

void fst::quasar::MergeTrieFst::InitStateIterator(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = *(a1 + 8);
  fst::quasar::MergeTrieFstImpl::ExpandAll(v4, a3);
  *a2 = 0;
  *(a2 + 8) = (*(v4 + 10) - *(v4 + 9)) >> 3;
}

void fst::quasar::MergeTrieFst::~MergeTrieFst(fst::quasar::MergeTrieFst *this)
{
  *this = &unk_1F2D13D08;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_1F2D13D08;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t std::vector<fst::quasar::GetWordsAndCosts(fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const&,std::map<int,float> &)::DfsState,std::allocator<fst::quasar::GetWordsAndCosts(fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const&,std::map<int,float> &)::DfsState>>::__init_with_size[abi:ne200100]<fst::quasar::GetWordsAndCosts(fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const&,std::map<int,float> &)::DfsState const*,fst::quasar::GetWordsAndCosts(fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const&,std::map<int,float> &)::DfsState const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B548DBC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::unique_ptr<fst::quasar::FstData>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<fst::quasar::FstData>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<fst::quasar::State>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<fst::quasar::State>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void fst::quasar::FstData::FstData(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a1 = *a2;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    v3 = *a2;
  }

  (*(*v3 + 24))(v3);
  operator new();
}

void sub_1B548DDAC(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x1070C401ACC3EEFLL);
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::unique_ptr<fst::quasar::FstData>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<fst::quasar::FstData>::~unique_ptr[abi:ne200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::unique_ptr<fst::quasar::SubPath>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<fst::quasar::SubPath>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::unique_ptr<fst::quasar::SubPath>>::__base_destruct_at_end[abi:ne200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      result = MEMORY[0x1B8C85350](result, 0x1020C405AF6BDC9);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<fst::quasar::State>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<fst::quasar::State>::~unique_ptr[abi:ne200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<std::unique_ptr<fst::quasar::SubPath>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<fst::quasar::SubPath>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<std::unique_ptr<fst::quasar::SubPath>>::__destruct_at_end[abi:ne200100](uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      *(v4 + 16) = v2;
      *v2 = 0;
      if (v5)
      {
        result = MEMORY[0x1B8C85350](result, 0x1020C405AF6BDC9);
        v2 = *(v4 + 16);
      }
    }

    while (v2 != a2);
  }

  return result;
}

void _ZNSt3__120__shared_ptr_emplaceIN3fst9VectorFstINS1_6ArcTplINS1_17TropicalWeightTplIfEEiEENS1_11VectorStateIS6_NS_9allocatorIS6_EEEEEENS8_ISB_EEEC2B8ne200100IJESC_Li0EEESC_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D0EFC0;
  fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFst();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<fst::quasar::SubPath *,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,fst::quasar::MergeTrieFstImpl::Expand(int)::$_0 &,std::pair<fst::quasar::SubPath *,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v9 = (a2 - 16);
  v277 = (a2 - 40);
  v10 = (a2 - 64);
  v11 = a1;
  while (1)
  {
    a1 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 3);
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return;
    }

    if (v13 == 2)
    {
      v167 = (a2 - 16);
      v168 = *(a2 - 16);
      v169 = (v11 + 8);
      v170 = *(v11 + 8);
      v171 = v168 == v170;
      v172 = v168 < v170;
      if (v171)
      {
        v172 = *(a2 - 8) < *(v11 + 16);
      }

      if (v172)
      {
        v173 = *v11;
        *v11 = *(a2 - 24);
        *(a2 - 24) = v173;
LABEL_180:
        v296 = *v169;
        *v169 = *v167;
        *v167 = v296;
        return;
      }

      return;
    }

LABEL_9:
    if (v12 <= 575)
    {
      v185 = (v11 + 24);
      v187 = v11 == a2 || v185 == a2;
      if (a4)
      {
        if (!v187)
        {
          v188 = 0;
          v189 = v11;
          do
          {
            v190 = v185;
            v191 = *(v189 + 8);
            v192 = *(v189 + 2);
            v193 = *(v189 + 10);
            v171 = v191 == v192;
            v194 = v191 < v192;
            if (v171)
            {
              v194 = v193 < *(v189 + 4);
            }

            if (v194)
            {
              v195 = *v190;
              v196 = *(v189 + 9);
              v197 = v188;
              v198 = *(v189 + 11);
              while (1)
              {
                v199 = v11 + v197;
                *(v199 + 24) = *(v11 + v197);
                *(v199 + 32) = *(v11 + v197 + 8);
                if (!v197)
                {
                  break;
                }

                v200 = *(v199 - 16);
                v171 = v191 == v200;
                v201 = v191 < v200;
                if (v171)
                {
                  v201 = v193 < *(v199 - 8);
                }

                v197 -= 24;
                if (!v201)
                {
                  v202 = v11 + v197 + 24;
                  goto LABEL_212;
                }
              }

              v202 = v11;
LABEL_212:
              *v202 = v195;
              *(v199 + 8) = v191;
              *(v202 + 12) = v196;
              *(v202 + 16) = v193;
              *(v202 + 20) = v198;
            }

            v185 = v190 + 3;
            v188 += 24;
            v189 = v190;
          }

          while (v190 + 3 != a2);
        }
      }

      else if (!v187)
      {
        v262 = (v11 + 44);
        do
        {
          v263 = v185;
          v264 = *(a1 + 32);
          v265 = *(a1 + 8);
          v266 = *(a1 + 40);
          v171 = v264 == v265;
          v267 = v264 < v265;
          if (v171)
          {
            v267 = v266 < *(a1 + 16);
          }

          if (v267)
          {
            v268 = *v263;
            v269 = *(a1 + 36);
            v270 = v262;
            v271 = *(a1 + 44);
            do
            {
              *(v270 - 5) = *(v270 - 11);
              *(v270 - 3) = *(v270 - 9);
              v272 = *(v270 - 15);
              v171 = v264 == v272;
              v273 = v264 < v272;
              if (v171)
              {
                v273 = v266 < *(v270 - 13);
              }

              v270 -= 6;
            }

            while (v273);
            *(v270 - 5) = v268;
            *(v270 - 3) = v264;
            *(v270 - 2) = v269;
            *(v270 - 1) = v266;
            *v270 = v271;
          }

          v185 = v263 + 3;
          v262 += 6;
          a1 = v263;
        }

        while (v263 + 3 != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v203 = (v13 - 2) >> 1;
        v204 = v203;
        do
        {
          v205 = v204;
          if (v203 >= v204)
          {
            v206 = (2 * v204) | 1;
            v207 = v11 + 24 * v206;
            if (2 * v205 + 2 < v13)
            {
              v208 = *(v207 + 8);
              v209 = *(v207 + 32);
              v171 = v208 == v209;
              v210 = v208 < v209;
              if (v171)
              {
                v210 = *(v207 + 16) < *(v207 + 40);
              }

              v211 = !v210;
              if (v210)
              {
                v212 = 24;
              }

              else
              {
                v212 = 0;
              }

              v207 += v212;
              if (!v211)
              {
                v206 = 2 * v205 + 2;
              }
            }

            v213 = v11 + 24 * v205;
            v214 = *(v207 + 8);
            v215 = *(v213 + 8);
            v216 = *(v213 + 16);
            v171 = v214 == v215;
            v217 = v214 < v215;
            if (v171)
            {
              v217 = *(v207 + 16) < v216;
            }

            if (!v217)
            {
              v218 = *v213;
              v219 = *(v213 + 12);
              v220 = *(v213 + 20);
              do
              {
                v221 = v213;
                v213 = v207;
                *v221 = *v207;
                *(v221 + 8) = *(v207 + 8);
                if (v203 < v206)
                {
                  break;
                }

                v222 = (2 * v206) | 1;
                v207 = v11 + 24 * v222;
                v223 = 2 * v206 + 2;
                if (v223 < v13)
                {
                  v224 = *(v207 + 8);
                  v225 = *(v207 + 32);
                  v171 = v224 == v225;
                  v226 = v224 < v225;
                  if (v171)
                  {
                    v226 = *(v207 + 16) < *(v207 + 40);
                  }

                  v227 = !v226;
                  if (v226)
                  {
                    v228 = 24;
                  }

                  else
                  {
                    v228 = 0;
                  }

                  v207 += v228;
                  if (!v227)
                  {
                    v222 = v223;
                  }
                }

                v229 = *(v207 + 8);
                v230 = *(v207 + 16) < v216;
                v171 = v229 == v215;
                v231 = v229 < v215;
                if (!v171)
                {
                  v230 = v231;
                }

                v206 = v222;
              }

              while (!v230);
              *v213 = v218;
              *(v213 + 8) = v215;
              *(v213 + 12) = v219;
              *(v213 + 16) = v216;
              *(v213 + 20) = v220;
            }
          }

          v204 = v205 - 1;
        }

        while (v205);
        v232 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
        do
        {
          v233 = 0;
          v234 = *v11;
          v298 = *(v11 + 8);
          v235 = v11;
          do
          {
            v236 = v235 + 24 * v233;
            v237 = v236 + 24;
            v238 = (2 * v233) | 1;
            v233 = 2 * v233 + 2;
            if (v233 >= v232)
            {
              v233 = v238;
            }

            else
            {
              v239 = *(v236 + 32);
              v240 = *(v236 + 56);
              v171 = v239 == v240;
              v241 = v239 < v240;
              if (v171)
              {
                v241 = *(v236 + 40) < *(v236 + 64);
              }

              v242 = v236 + 48;
              if (v241)
              {
                v237 = v242;
              }

              else
              {
                v233 = v238;
              }
            }

            *v235 = *v237;
            *(v235 + 8) = *(v237 + 8);
            v235 = v237;
          }

          while (v233 <= ((v232 - 2) >> 1));
          if (v237 == a2 - 24)
          {
            *v237 = v234;
            *(v237 + 8) = v298;
          }

          else
          {
            *v237 = *(a2 - 24);
            *(v237 + 8) = *(a2 - 16);
            *(a2 - 24) = v234;
            *(a2 - 16) = v298;
            v243 = v237 - v11 + 24;
            if (v243 >= 25)
            {
              v244 = (-2 - 0x5555555555555555 * (v243 >> 3)) >> 1;
              v245 = v11 + 24 * v244;
              v246 = *(v245 + 8);
              v247 = *(v237 + 8);
              v248 = *(v237 + 16);
              v171 = v246 == v247;
              v249 = v246 < v247;
              if (v171)
              {
                v249 = *(v245 + 16) < v248;
              }

              if (v249)
              {
                v250 = *v237;
                v251 = *(v237 + 12);
                v252 = *(v237 + 20);
                do
                {
                  v253 = v237;
                  v237 = v245;
                  *v253 = *v245;
                  *(v253 + 8) = *(v245 + 8);
                  if (!v244)
                  {
                    break;
                  }

                  v244 = (v244 - 1) >> 1;
                  v245 = v11 + 24 * v244;
                  v254 = *(v245 + 8);
                  v171 = v254 == v247;
                  v255 = v254 < v247;
                  if (v171)
                  {
                    v255 = *(v245 + 16) < v248;
                  }
                }

                while (v255);
                *v237 = v250;
                *(v237 + 8) = v247;
                *(v237 + 12) = v251;
                *(v237 + 16) = v248;
                *(v237 + 20) = v252;
              }
            }
          }

          a2 -= 24;
        }

        while (v232-- > 2);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = v11 + 24 * (v13 >> 1);
    v16 = *(a2 - 16);
    v17 = *(a2 - 8);
    if (v12 >= 0xC01)
    {
      v18 = (v15 + 8);
      v19 = *(v15 + 8);
      v20 = (v11 + 8);
      v21 = *(v11 + 8);
      v22 = *(v15 + 16);
      v171 = v19 == v21;
      v23 = v19 < v21;
      if (v171)
      {
        v23 = v22 < *(v11 + 16);
      }

      v171 = v16 == v19;
      v24 = v16 < v19;
      if (v171)
      {
        v25 = v17 < v22;
      }

      else
      {
        v25 = v24;
      }

      if (v23)
      {
        v26 = *v11;
        if (v25)
        {
          *v11 = *(a2 - 24);
          *(a2 - 24) = v26;
          v278 = *v20;
          *v20 = *v9;
          goto LABEL_42;
        }

        *v11 = *v15;
        *v15 = v26;
        v283 = *v20;
        *v20 = *v18;
        *v18 = v283;
        v42 = *(a2 - 16);
        v43 = *(v15 + 8);
        v171 = v42 == v43;
        v44 = v42 < v43;
        if (v171)
        {
          v44 = *(a2 - 8) < *(v15 + 16);
        }

        if (v44)
        {
          v45 = *v15;
          *v15 = *(a2 - 24);
          *(a2 - 24) = v45;
          v278 = *v18;
          *v18 = *v9;
LABEL_42:
          *v9 = v278;
        }
      }

      else if (v25)
      {
        v34 = *v15;
        *v15 = *(a2 - 24);
        *(a2 - 24) = v34;
        v280 = *v18;
        *v18 = *v9;
        *v9 = v280;
        LODWORD(v34) = *(v15 + 8);
        v35 = *(v11 + 8);
        v171 = v34 == v35;
        v36 = v34 < v35;
        if (v171)
        {
          v36 = *(v15 + 16) < *(v11 + 16);
        }

        if (v36)
        {
          v37 = *v11;
          *v11 = *v15;
          *v15 = v37;
          v281 = *v20;
          *v20 = *v18;
          *v18 = v281;
        }
      }

      v46 = v11 + 24 * v14;
      v49 = *(v46 - 16);
      v47 = v46 - 16;
      v48 = v49;
      v50 = (v47 - 8);
      v51 = (v11 + 32);
      v52 = *(v11 + 32);
      v53 = *(v47 + 8);
      v54 = v53 < *(v11 + 40);
      v171 = v49 == v52;
      v55 = v49 < v52;
      if (!v171)
      {
        v54 = v55;
      }

      v56 = *(a2 - 40);
      v171 = v56 == v48;
      v57 = v56 < v48;
      if (v171)
      {
        v58 = *(a2 - 32) < v53;
      }

      else
      {
        v58 = v57;
      }

      if (v54)
      {
        v59 = *(v11 + 24);
        if (v58)
        {
          *(v11 + 24) = *(a2 - 48);
          *(a2 - 48) = v59;
          v60 = *v51;
          *v51 = *v277;
          *v277 = v60;
        }

        else
        {
          *(v11 + 24) = *v50;
          *v50 = v59;
          v70 = *v51;
          *v51 = *v47;
          *v47 = v70;
          v71 = *(a2 - 40);
          v171 = v71 == *v47;
          v72 = v71 < *v47;
          if (v171)
          {
            v72 = *(a2 - 32) < *(v47 + 8);
          }

          if (v72)
          {
            v73 = *v50;
            *v50 = *(a2 - 48);
            *(a2 - 48) = v73;
            v286 = *v47;
            *v47 = *v277;
            *v277 = v286;
          }
        }
      }

      else if (v58)
      {
        v61 = *v50;
        *v50 = *(a2 - 48);
        *(a2 - 48) = v61;
        v284 = *v47;
        *v47 = *v277;
        *v277 = v284;
        v62 = *(v11 + 32);
        v63 = *v47 < v62;
        if (*v47 == v62)
        {
          v63 = *(v47 + 8) < *(v11 + 40);
        }

        if (v63)
        {
          v64 = *(v11 + 24);
          *(v11 + 24) = *v50;
          *v50 = v64;
          v65 = *v51;
          *v51 = *v47;
          *v47 = v65;
        }
      }

      v74 = v11 + 24 * v14;
      v77 = *(v74 + 32);
      v75 = (v74 + 32);
      v76 = v77;
      v78 = &v75[-1].n128_u64[1];
      v79 = (v11 + 56);
      v80 = *(v11 + 56);
      v81 = v75->n128_f32[2];
      v82 = v81 < *(v11 + 64);
      v171 = v77 == v80;
      v83 = v77 < v80;
      if (!v171)
      {
        v82 = v83;
      }

      v84 = *(a2 - 64);
      v171 = v84 == v76;
      v85 = v84 < v76;
      if (v171)
      {
        v86 = *(a2 - 56) < v81;
      }

      else
      {
        v86 = v85;
      }

      if (v82)
      {
        v87 = *(v11 + 48);
        if (v86)
        {
          *(v11 + 48) = *(a2 - 72);
          *(a2 - 72) = v87;
          v88 = *v79;
          *v79 = *v10;
          goto LABEL_82;
        }

        *(v11 + 48) = *v78;
        *v78 = v87;
        v94 = *v79;
        *v79 = *v75;
        *v75 = v94;
        v95 = *(a2 - 64);
        v171 = v95 == v75->n128_u32[0];
        v96 = v95 < v75->n128_u32[0];
        if (v171)
        {
          v96 = *(a2 - 56) < v75->n128_f32[2];
        }

        if (v96)
        {
          v97 = *v78;
          *v78 = *(a2 - 72);
          *(a2 - 72) = v97;
          v288 = *v75;
          *v75 = *v10;
          v88 = v288;
LABEL_82:
          *v10 = v88;
        }
      }

      else if (v86)
      {
        v89 = *v78;
        *v78 = *(a2 - 72);
        *(a2 - 72) = v89;
        v287 = *v75;
        *v75 = *v10;
        *v10 = v287;
        v90 = *(v11 + 56);
        v91 = v75->n128_u32[0] < v90;
        if (v75->n128_u32[0] == v90)
        {
          v91 = v75->n128_f32[2] < *(v11 + 64);
        }

        if (v91)
        {
          v92 = *(v11 + 48);
          *(v11 + 48) = *v78;
          *v78 = v92;
          v93 = *v79;
          *v79 = *v75;
          *v75 = v93;
        }
      }

      v98 = *(v15 + 8);
      v99 = *(v15 + 16);
      v100 = v99 < *(v47 + 8);
      if (v98 != *v47)
      {
        v100 = v98 < *v47;
      }

      v171 = v75->n128_u32[0] == v98;
      v101 = v75->n128_u32[0] < v98;
      if (v171)
      {
        v102 = v75->n128_f32[2] < v99;
      }

      else
      {
        v102 = v101;
      }

      if (v100)
      {
        v103 = *v50;
        if (v102)
        {
          *v50 = *v78;
          *v78 = v103;
          v289 = *v47;
          *v47 = *v75;
          goto LABEL_100;
        }

        *v50 = *v15;
        *v15 = v103;
        v292 = *v47;
        *v47 = *v18;
        *v18 = v292;
        v108 = *(v15 + 8);
        v109 = v75->n128_u32[0] < v108;
        if (v75->n128_u32[0] == v108)
        {
          v109 = v75->n128_f32[2] < *(v15 + 16);
        }

        if (v109)
        {
          v110 = *v15;
          *v15 = *v78;
          *v78 = v110;
          v289 = *v18;
          *v18 = *v75;
LABEL_100:
          *v75 = v289;
        }
      }

      else if (v102)
      {
        v104 = *v15;
        *v15 = *v78;
        *v78 = v104;
        v290 = *v18;
        *v18 = *v75;
        *v75 = v290;
        v105 = *(v15 + 8);
        v171 = v105 == *v47;
        v106 = v105 < *v47;
        if (v171)
        {
          v106 = *(v15 + 16) < *(v47 + 8);
        }

        if (v106)
        {
          v107 = *v50;
          *v50 = *v15;
          *v15 = v107;
          v291 = *v47;
          *v47 = *v18;
          *v18 = v291;
        }
      }

      v111 = *v11;
      *v11 = *v15;
      *v15 = v111;
LABEL_102:
      v293 = *v20;
      *v20 = *v18;
      a5 = v293;
      *v18 = v293;
      goto LABEL_103;
    }

    v18 = (v11 + 8);
    v27 = *(v11 + 8);
    v20 = (v15 + 8);
    v28 = *(v15 + 8);
    v29 = *(v11 + 16);
    v171 = v27 == v28;
    v30 = v27 < v28;
    if (v171)
    {
      v30 = v29 < *(v15 + 16);
    }

    v171 = v16 == v27;
    v31 = v16 < v27;
    if (v171)
    {
      v32 = v17 < v29;
    }

    else
    {
      v32 = v31;
    }

    if (v30)
    {
      v33 = *v15;
      if (v32)
      {
        *v15 = *(a2 - 24);
        *(a2 - 24) = v33;
        v279 = *v20;
        *v20 = *v9;
LABEL_60:
        a5 = v279;
        *v9 = v279;
        goto LABEL_103;
      }

      *v15 = *v11;
      *v11 = v33;
      v285 = *v20;
      *v20 = *v18;
      a5 = v285;
      *v18 = v285;
      v66 = *(a2 - 16);
      v67 = *(v11 + 8);
      v171 = v66 == v67;
      v68 = v66 < v67;
      if (v171)
      {
        v68 = *(a2 - 8) < *(v11 + 16);
      }

      if (v68)
      {
        v69 = *v11;
        *v11 = *(a2 - 24);
        *(a2 - 24) = v69;
        v279 = *v18;
        *v18 = *v9;
        goto LABEL_60;
      }
    }

    else if (v32)
    {
      v38 = *v11;
      *v11 = *(a2 - 24);
      *(a2 - 24) = v38;
      v282 = *v18;
      *v18 = *v9;
      a5 = v282;
      *v9 = v282;
      LODWORD(v38) = *(v11 + 8);
      v39 = *(v15 + 8);
      v171 = v38 == v39;
      v40 = v38 < v39;
      if (v171)
      {
        v40 = *(v11 + 16) < *(v15 + 16);
      }

      if (v40)
      {
        v41 = *v15;
        *v15 = *v11;
        *v11 = v41;
        goto LABEL_102;
      }
    }

LABEL_103:
    --a3;
    if (a4)
    {
      v112 = *(v11 + 8);
      a5.n128_u32[0] = *(v11 + 16);
      goto LABEL_108;
    }

    v113 = *(v11 - 16);
    v112 = *(v11 + 8);
    a5.n128_u32[0] = *(v11 + 16);
    v171 = v113 == v112;
    v114 = v113 < v112;
    if (v171)
    {
      v114 = *(v11 - 8) < a5.n128_f32[0];
    }

    if (v114)
    {
LABEL_108:
      v115 = 0;
      v116 = *v11;
      v117 = *(v11 + 12);
      v118 = *(v11 + 20);
      do
      {
        v119 = *(v11 + v115 + 32);
        v120 = *(v11 + v115 + 40) < a5.n128_f32[0];
        v171 = v119 == v112;
        v121 = v119 < v112;
        if (!v171)
        {
          v120 = v121;
        }

        v115 += 24;
      }

      while (v120);
      v122 = v11 + v115;
      v123 = a2;
      if (v115 == 24)
      {
        v128 = a2;
        while (v122 < v128)
        {
          v124 = v128 - 24;
          v129 = *(v128 - 16);
          v130 = *(v128 - 8) < a5.n128_f32[0];
          v171 = v129 == v112;
          v131 = v129 < v112;
          if (v171)
          {
            v131 = v130;
          }

          v128 = v124;
          if (v131)
          {
            goto LABEL_124;
          }
        }

        v124 = v128;
      }

      else
      {
        do
        {
          v124 = v123 - 24;
          v125 = *(v123 - 16);
          v126 = *(v123 - 8) < a5.n128_f32[0];
          v171 = v125 == v112;
          v127 = v125 < v112;
          if (v171)
          {
            v127 = v126;
          }

          v123 = v124;
        }

        while (!v127);
      }

LABEL_124:
      v11 = v122;
      if (v122 < v124)
      {
        v132 = v124;
        do
        {
          v133 = *v11;
          *v11 = *v132;
          *v132 = v133;
          v294 = *(v11 + 8);
          *(v11 + 8) = *(v132 + 8);
          *(v132 + 8) = v294;
          do
          {
            v134 = *(v11 + 32);
            v135 = *(v11 + 40);
            v11 += 24;
            v171 = v134 == v112;
            v136 = v134 < v112;
            if (v171)
            {
              v136 = v135 < a5.n128_f32[0];
            }
          }

          while (v136);
          do
          {
            v137 = *(v132 - 16);
            v138 = *(v132 - 8);
            v132 -= 24;
            v171 = v137 == v112;
            v139 = v137 < v112;
            if (v171)
            {
              v139 = v138 < a5.n128_f32[0];
            }
          }

          while (!v139);
        }

        while (v11 < v132);
      }

      if (v11 - 24 != a1)
      {
        *a1 = *(v11 - 24);
        *(a1 + 8) = *(v11 - 16);
      }

      *(v11 - 24) = v116;
      *(v11 - 16) = v112;
      *(v11 - 12) = v117;
      *(v11 - 8) = a5.n128_u32[0];
      *(v11 - 4) = v118;
      if (v122 < v124)
      {
        goto LABEL_139;
      }

      v140 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::quasar::MergeTrieFstImpl::Expand(int)::$_0 &,std::pair<fst::quasar::SubPath *,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>(a1, v11 - 24, a5);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::quasar::MergeTrieFstImpl::Expand(int)::$_0 &,std::pair<fst::quasar::SubPath *,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>(v11, a2, v141))
      {
        a2 = v11 - 24;
        if (!v140)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v140)
      {
LABEL_139:
        std::__introsort<std::_ClassicAlgPolicy,fst::quasar::MergeTrieFstImpl::Expand(int)::$_0 &,std::pair<fst::quasar::SubPath *,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *,false>(a1, v11 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v142 = *(a2 - 16);
      v171 = v112 == v142;
      v143 = v112 < v142;
      if (v171)
      {
        v143 = a5.n128_f32[0] < *(a2 - 8);
      }

      if (v143)
      {
        v144 = v11;
        do
        {
          v11 = v144 + 24;
          v145 = *(v144 + 32);
          v146 = a5.n128_f32[0] < *(v144 + 40);
          v171 = v112 == v145;
          v147 = v112 < v145;
          if (v171)
          {
            v147 = v146;
          }

          v144 = v11;
        }

        while (!v147);
      }

      else
      {
        v148 = v11 + 24;
        do
        {
          v11 = v148;
          if (v148 >= a2)
          {
            break;
          }

          v149 = *(v148 + 8);
          v150 = a5.n128_f32[0] < *(v11 + 16);
          v171 = v112 == v149;
          v151 = v112 < v149;
          if (!v171)
          {
            v150 = v151;
          }

          v148 = v11 + 24;
        }

        while (!v150);
      }

      v152 = a2;
      if (v11 < a2)
      {
        v153 = a2;
        do
        {
          v152 = v153 - 24;
          v154 = *(v153 - 16);
          v155 = a5.n128_f32[0] < *(v153 - 8);
          v171 = v112 == v154;
          v156 = v112 < v154;
          if (v171)
          {
            v156 = v155;
          }

          v153 = v152;
        }

        while (v156);
      }

      v157 = *a1;
      v158 = *(a1 + 12);
      v159 = *(a1 + 20);
      while (v11 < v152)
      {
        v160 = *v11;
        *v11 = *v152;
        *v152 = v160;
        v295 = *(v11 + 8);
        *(v11 + 8) = *(v152 + 8);
        *(v152 + 8) = v295;
        do
        {
          v161 = *(v11 + 32);
          v162 = *(v11 + 40);
          v11 += 24;
          v171 = v112 == v161;
          v163 = v112 < v161;
          if (v171)
          {
            v163 = a5.n128_f32[0] < v162;
          }
        }

        while (!v163);
        do
        {
          v164 = *(v152 - 16);
          v165 = *(v152 - 8);
          v152 -= 24;
          v171 = v112 == v164;
          v166 = v112 < v164;
          if (v171)
          {
            v166 = a5.n128_f32[0] < v165;
          }
        }

        while (v166);
      }

      if (v11 - 24 != a1)
      {
        *a1 = *(v11 - 24);
        *(a1 + 8) = *(v11 - 16);
      }

      a4 = 0;
      *(v11 - 24) = v157;
      *(v11 - 16) = v112;
      *(v11 - 12) = v158;
      *(v11 - 8) = a5.n128_u32[0];
      *(v11 - 4) = v159;
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::quasar::MergeTrieFstImpl::Expand(int)::$_0 &,std::pair<fst::quasar::SubPath *,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *,0>(v11, (v11 + 24), (v11 + 48), (a2 - 24), a5);
      return;
    }

    if (v13 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::quasar::MergeTrieFstImpl::Expand(int)::$_0 &,std::pair<fst::quasar::SubPath *,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *,0>(v11, v11 + 24, v11 + 48, v11 + 72, a2 - 24, a5);
      return;
    }

    goto LABEL_9;
  }

  v167 = (v11 + 32);
  v174 = *(v11 + 32);
  v169 = (v11 + 8);
  v175 = *(v11 + 8);
  v176 = *(v11 + 40);
  v171 = v174 == v175;
  v177 = v174 < v175;
  if (v171)
  {
    v178 = v176 < *(v11 + 16);
  }

  else
  {
    v178 = v177;
  }

  v179 = (a2 - 16);
  v180 = *(a2 - 16);
  v171 = v180 == v174;
  v181 = v180 < v174;
  if (v171)
  {
    v182 = *(a2 - 8) < v176;
  }

  else
  {
    v182 = v181;
  }

  if (v178)
  {
    v183 = *v11;
    if (v182)
    {
      *v11 = *(a2 - 24);
      *(a2 - 24) = v183;
      v297 = *v169;
      *v169 = *v179;
      v184 = v297;
    }

    else
    {
      *v11 = *(v11 + 24);
      *(v11 + 24) = v183;
      v299 = *v169;
      *v169 = *v167;
      *v167 = v299;
      v274 = *(a2 - 16);
      v275 = *(v11 + 32);
      v171 = v274 == v275;
      v276 = v274 < v275;
      if (v171)
      {
        v276 = *(a2 - 8) < *(v11 + 40);
      }

      if (!v276)
      {
        return;
      }

      *(v11 + 24) = *(a2 - 24);
      *(a2 - 24) = v183;
      v184 = *v167;
      *v167 = *v179;
    }

    *v179 = v184;
    return;
  }

  if (v182)
  {
    v257 = *(v11 + 24);
    *(v11 + 24) = *(a2 - 24);
    *(a2 - 24) = v257;
    v258 = *v167;
    *v167 = *v179;
    *v179 = v258;
    v259 = *(v11 + 32);
    LODWORD(v257) = *(v11 + 8);
    v171 = v259 == v257;
    v260 = v259 < v257;
    if (v171)
    {
      v260 = *(v11 + 40) < *(v11 + 16);
    }

    if (v260)
    {
      v261 = *v11;
      *v11 = *(v11 + 24);
      *(v11 + 24) = v261;
      goto LABEL_180;
    }
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::quasar::MergeTrieFstImpl::Expand(int)::$_0 &,std::pair<fst::quasar::SubPath *,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, __n128 result)
{
  v5 = (a2 + 1);
  v6 = *(a2 + 2);
  v7 = (a1 + 1);
  v8 = *(a1 + 2);
  v9 = *(a2 + 4);
  v10 = v6 == v8;
  v11 = v6 < v8;
  if (v10)
  {
    v12 = v9 < *(a1 + 4);
  }

  else
  {
    v12 = v11;
  }

  v13 = (a3 + 1);
  v14 = *(a3 + 2);
  v10 = v14 == v6;
  v15 = v14 < v6;
  if (v10)
  {
    v16 = *(a3 + 4) < v9;
  }

  else
  {
    v16 = v15;
  }

  if (v12)
  {
    v17 = *a1;
    if (v16)
    {
      *a1 = *a3;
      *a3 = v17;
      result = *v7;
      *v7 = *v13;
LABEL_19:
      *v13 = result;
      goto LABEL_20;
    }

    *a1 = *a2;
    *a2 = v17;
    result = *v7;
    *v7 = *v5;
    *v5 = result;
    v22 = *(a3 + 2);
    v23 = *(a2 + 2);
    v10 = v22 == v23;
    v24 = v22 < v23;
    if (v10)
    {
      v24 = *(a3 + 4) < *(a2 + 4);
    }

    if (v24)
    {
      v25 = *a2;
      *a2 = *a3;
      *a3 = v25;
      result = *v5;
      *v5 = *v13;
      goto LABEL_19;
    }
  }

  else if (v16)
  {
    v18 = *a2;
    *a2 = *a3;
    *a3 = v18;
    result = *v5;
    *v5 = *v13;
    *v13 = result;
    LODWORD(v18) = *(a2 + 2);
    v19 = *(a1 + 2);
    v10 = v18 == v19;
    v20 = v18 < v19;
    if (v10)
    {
      v20 = *(a2 + 4) < *(a1 + 4);
    }

    if (v20)
    {
      v21 = *a1;
      *a1 = *a2;
      *a2 = v21;
      result = *v7;
      *v7 = *v5;
      *v5 = result;
    }
  }

LABEL_20:
  v26 = (a4 + 1);
  v27 = *(a4 + 2);
  v28 = *(a3 + 2);
  result.n128_u32[0] = *(a4 + 4);
  v10 = v27 == v28;
  v29 = v27 < v28;
  if (v10)
  {
    v29 = result.n128_f32[0] < *(a3 + 4);
  }

  if (v29)
  {
    v30 = *a3;
    *a3 = *a4;
    *a4 = v30;
    result = *v13;
    *v13 = *v26;
    *v26 = result;
    v31 = *(a3 + 2);
    LODWORD(v30) = *(a2 + 2);
    result.n128_u32[0] = *(a3 + 4);
    v10 = v31 == v30;
    v32 = v31 < v30;
    if (v10)
    {
      v32 = result.n128_f32[0] < *(a2 + 4);
    }

    if (v32)
    {
      v33 = *a2;
      *a2 = *a3;
      *a3 = v33;
      result = *v5;
      *v5 = *v13;
      *v13 = result;
      v34 = *(a2 + 2);
      LODWORD(v33) = *(a1 + 2);
      result.n128_u32[0] = *(a2 + 4);
      v10 = v34 == v33;
      v35 = v34 < v33;
      if (v10)
      {
        v35 = result.n128_f32[0] < *(a1 + 4);
      }

      if (v35)
      {
        v36 = *a1;
        *a1 = *a2;
        *a2 = v36;
        result = *v7;
        *v7 = *v5;
        *v5 = result;
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::quasar::MergeTrieFstImpl::Expand(int)::$_0 &,std::pair<fst::quasar::SubPath *,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::quasar::MergeTrieFstImpl::Expand(int)::$_0 &,std::pair<fst::quasar::SubPath *,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *,0>(a1, a2, a3, a4, a6);
  v11 = (a5 + 8);
  v12 = *(a5 + 8);
  v13 = (a4 + 8);
  v14 = *(a4 + 8);
  result.n128_u32[0] = *(a5 + 16);
  v16 = v12 == v14;
  v17 = v12 < v14;
  if (v16)
  {
    v17 = result.n128_f32[0] < *(a4 + 16);
  }

  if (v17)
  {
    v18 = *a4;
    *a4 = *a5;
    *a5 = v18;
    result = *v13;
    *v13 = *v11;
    *v11 = result;
    v19 = (a3 + 8);
    LODWORD(v18) = *(a3 + 8);
    v20 = *(a4 + 8);
    result.n128_u32[0] = *(a4 + 16);
    v16 = v20 == v18;
    v21 = v20 < v18;
    if (v16)
    {
      v21 = result.n128_f32[0] < *(a3 + 16);
    }

    if (v21)
    {
      v22 = *a3;
      *a3 = *a4;
      *a4 = v22;
      result = *v19;
      *v19 = *v13;
      *v13 = result;
      v23 = (a2 + 8);
      LODWORD(v22) = *(a2 + 8);
      v24 = *(a3 + 8);
      result.n128_u32[0] = *(a3 + 16);
      v16 = v24 == v22;
      v25 = v24 < v22;
      if (v16)
      {
        v25 = result.n128_f32[0] < *(a2 + 16);
      }

      if (v25)
      {
        v26 = *a2;
        *a2 = *a3;
        *a3 = v26;
        result = *v23;
        *v23 = *v19;
        *v19 = result;
        v27 = (a1 + 8);
        LODWORD(v26) = *(a1 + 8);
        v28 = *(a2 + 8);
        result.n128_u32[0] = *(a2 + 16);
        v16 = v28 == v26;
        v29 = v28 < v26;
        if (v16)
        {
          v29 = result.n128_f32[0] < *(a1 + 16);
        }

        if (v29)
        {
          v30 = *a1;
          *a1 = *a2;
          *a2 = v30;
          result = *v27;
          *v27 = *v23;
          *v23 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::quasar::MergeTrieFstImpl::Expand(int)::$_0 &,std::pair<fst::quasar::SubPath *,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      if (v3 == 4)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::quasar::MergeTrieFstImpl::Expand(int)::$_0 &,std::pair<fst::quasar::SubPath *,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *,0>(a1, (a1 + 24), (a1 + 48), (a2 - 24), a3);
        return 1;
      }

      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::quasar::MergeTrieFstImpl::Expand(int)::$_0 &,std::pair<fst::quasar::SubPath *,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *,0>(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 24, a3);
        return 1;
      }

      goto LABEL_22;
    }

    v4 = (a1 + 32);
    v12 = *(a1 + 32);
    v6 = (a1 + 8);
    v13 = *(a1 + 8);
    v14 = *(a1 + 40);
    v8 = v12 == v13;
    v15 = v12 < v13;
    if (v8)
    {
      v16 = v14 < *(a1 + 16);
    }

    else
    {
      v16 = v15;
    }

    v17 = (a2 - 16);
    v18 = *(a2 - 16);
    v8 = v18 == v12;
    v19 = v18 < v12;
    if (v8)
    {
      v20 = *(a2 - 8) < v14;
    }

    else
    {
      v20 = v19;
    }

    if (!v16)
    {
      if (!v20)
      {
        return 1;
      }

      v36 = *(a1 + 24);
      *(a1 + 24) = *(a2 - 24);
      *(a2 - 24) = v36;
      v37 = *v4;
      *v4 = *v17;
      *v17 = v37;
      v38 = *(a1 + 32);
      LODWORD(v36) = *(a1 + 8);
      v8 = v38 == v36;
      v39 = v38 < v36;
      if (v8)
      {
        v39 = *(a1 + 40) < *(a1 + 16);
      }

      if (!v39)
      {
        return 1;
      }

      v40 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 24) = v40;
LABEL_8:
      v11 = *v6;
      *v6 = *v4;
      *v4 = v11;
      return 1;
    }

    v21 = *a1;
    if (v20)
    {
      *a1 = *(a2 - 24);
      *(a2 - 24) = v21;
      v22 = *v6;
      *v6 = *v17;
    }

    else
    {
      *a1 = *(a1 + 24);
      *(a1 + 24) = v21;
      v48 = *v6;
      *v6 = *v4;
      *v4 = v48;
      v49 = *(a2 - 16);
      v50 = *(a1 + 32);
      v8 = v49 == v50;
      v51 = v49 < v50;
      if (v8)
      {
        v51 = *(a2 - 8) < *(a1 + 40);
      }

      if (!v51)
      {
        return 1;
      }

      *(a1 + 24) = *(a2 - 24);
      *(a2 - 24) = v21;
      v22 = *v4;
      *v4 = *v17;
    }

    *v17 = v22;
    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = (a2 - 16);
    v5 = *(a2 - 16);
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    v8 = v5 == v7;
    v9 = v5 < v7;
    if (v8)
    {
      v9 = *(a2 - 8) < *(a1 + 16);
    }

    if (!v9)
    {
      return 1;
    }

    v10 = *a1;
    *a1 = *(a2 - 24);
    *(a2 - 24) = v10;
    goto LABEL_8;
  }

LABEL_22:
  v23 = (a1 + 32);
  v24 = *(a1 + 32);
  v25 = (a1 + 8);
  v26 = *(a1 + 8);
  v27 = *(a1 + 40);
  v28 = *(a1 + 16);
  if (v24 == v26)
  {
    v29 = v27 < v28;
  }

  else
  {
    v29 = v24 < v26;
  }

  v30 = (a1 + 56);
  v31 = *(a1 + 56);
  v32 = *(a1 + 64);
  v8 = v31 == v24;
  v33 = v31 < v24;
  if (v8)
  {
    v33 = v32 < v27;
  }

  if (v29)
  {
    v34 = *a1;
    if (v33)
    {
      *a1 = *(a1 + 48);
      *(a1 + 48) = v34;
      v35 = *v25;
      *v25 = *v30;
LABEL_50:
      *v30 = v35;
      goto LABEL_51;
    }

    *a1 = *(a1 + 24);
    *(a1 + 24) = v34;
    v52 = *v25;
    *v25 = *v23;
    *v23 = v52;
    v53 = *(a1 + 32);
    v8 = v31 == v53;
    v54 = v31 < v53;
    if (v8)
    {
      v54 = v32 < *(a1 + 40);
    }

    if (v54)
    {
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 48) = v34;
      v35 = *v23;
      *v23 = *v30;
      goto LABEL_50;
    }
  }

  else if (v33)
  {
    v41 = *(a1 + 24);
    v42 = *(a1 + 48);
    *(a1 + 24) = v42;
    *(a1 + 48) = v41;
    v43 = *v23;
    *v23 = *v30;
    *v30 = v43;
    v44 = *(a1 + 32);
    v8 = v44 == v26;
    v45 = v44 < v26;
    if (v8)
    {
      v45 = *(a1 + 40) < v28;
    }

    if (v45)
    {
      v46 = *a1;
      *a1 = v42;
      *(a1 + 24) = v46;
      v47 = *v25;
      *v25 = *v23;
      *v23 = v47;
    }
  }

LABEL_51:
  v55 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v56 = 0;
  v57 = 0;
  v58 = a1 + 48;
  while (1)
  {
    v59 = *(v55 + 8);
    v60 = *(v58 + 8);
    v61 = *(v55 + 16);
    v62 = v61 < *(v58 + 16);
    v8 = v59 == v60;
    v63 = v59 < v60;
    if (!v8)
    {
      v62 = v63;
    }

    if (v62)
    {
      v64 = *v55;
      v65 = *(v55 + 12);
      v66 = v56;
      v67 = *(v55 + 20);
      while (1)
      {
        v68 = a1 + v66;
        *(v68 + 72) = *(a1 + v66 + 48);
        *(v68 + 80) = *(a1 + v66 + 56);
        if (v66 == -48)
        {
          break;
        }

        v69 = *(v68 + 32);
        v8 = v59 == v69;
        v70 = v59 < v69;
        if (v8)
        {
          v70 = v61 < *(v68 + 40);
        }

        v66 -= 24;
        if (!v70)
        {
          v71 = a1 + v66 + 72;
          goto LABEL_63;
        }
      }

      v71 = a1;
LABEL_63:
      *v71 = v64;
      *(v68 + 56) = v59;
      *(v71 + 12) = v65;
      *(v71 + 16) = v61;
      ++v57;
      *(v71 + 20) = v67;
      if (v57 == 8)
      {
        return v55 + 24 == a2;
      }
    }

    v58 = v55;
    v56 += 24;
    v55 += 24;
    if (v55 == a2)
    {
      return 1;
    }
  }
}

void std::__shared_ptr_emplace<fst::quasar::MergeTrieFstImpl>::__shared_ptr_emplace[abi:ne200100]<std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> const&,int &,int &,std::string const&,std::allocator<fst::quasar::MergeTrieFstImpl>,0>(void *a1, uint64_t a2, int *a3, int *a4, __int128 *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D13DE0;
  fst::quasar::MergeTrieFstImpl::MergeTrieFstImpl((a1 + 3), a2, *a3, *a4, a5);
}

void std::__shared_ptr_emplace<fst::quasar::MergeTrieFstImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D13DE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t sdapi::SDAPIOSLog(sdapi *this, os_log_type_t a2, void *a3, const char *a4, ...)
{
  if ((atomic_load_explicit(&qword_1EB90B768, memory_order_acquire) & 1) == 0)
  {
    sdapi::SDAPIOSLog();
  }

  return os_log_with_args();
}

uint64_t sdapi::SdapiUtil::initializeSdapi(sdapi::SdapiUtil *this)
{
  if (sdapi::SdapiUtil::getSharedMutex(void)::onceToken != -1)
  {
    sdapi::SdapiUtil::initializeSdapi();
  }

  v1 = sdapi::SdapiUtil::getSharedMutex(void)::mutex;
  std::recursive_mutex::lock(sdapi::SdapiUtil::getSharedMutex(void)::mutex);
  v2 = SDApi_Initialize();
  if (v2 != 1)
  {
    if (quasar::gLogLevel >= 1)
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
      v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Initialized profile service failed ", 35);
      MEMORY[0x1B8C84BB0](v3, v2);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v10);
    }

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  if (quasar::gLogLevel >= 4)
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
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Initialization of profile service succeeded ", 44);
    MEMORY[0x1B8C84BB0](v4, 1);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v10);
  }

  v5 = partial apply();
  if (v5)
  {
    if (quasar::gLogLevel >= 1)
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
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Initialization of textproc failed ", 34);
      MEMORY[0x1B8C84BB0](v6, v5);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v10);
    }

    goto LABEL_11;
  }

  if (quasar::gLogLevel >= 4)
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
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Initialization of textproc succeeded ", 37);
    MEMORY[0x1B8C84BB0](v9, 0);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v10);
  }

  v7 = 1;
LABEL_12:
  std::recursive_mutex::unlock(v1);
  return v7;
}

uint64_t sdapi::SdapiUtil::getSharedMutex(sdapi::SdapiUtil *this)
{
  if (sdapi::SdapiUtil::getSharedMutex(void)::onceToken != -1)
  {
    sdapi::SdapiUtil::initializeSdapi();
  }

  return sdapi::SdapiUtil::getSharedMutex(void)::mutex;
}

uint64_t sdapi::SdapiUtil::loadGeneralVoc(uint64_t a1, uint64_t a2)
{
  if (sdapi::SdapiUtil::getSharedMutex(void)::onceToken != -1)
  {
    sdapi::SdapiUtil::initializeSdapi();
  }

  v4 = sdapi::SdapiUtil::getSharedMutex(void)::mutex;
  std::recursive_mutex::lock(sdapi::SdapiUtil::getSharedMutex(void)::mutex);
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = SDVoc_New();
  if (v7 == -1)
  {
    if (quasar::gLogLevel >= 1)
    {
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
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v24);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "Loading of general voc failed for voc=", 38);
      v16 = strlen(v5);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v5, v16);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", svc=", 6);
      v19 = strlen(v6);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v6, v19);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " with value=", 12);
      MEMORY[0x1B8C84BB0](v21, -1);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v24);
    }
  }

  else if (quasar::gLogLevel >= 4)
  {
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
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v24);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "Loading succeeded for voc=", 26);
    v9 = strlen(v5);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v5, v9);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " and svc=", 9);
    v12 = strlen(v6);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v6, v12);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " with value=", 12);
    MEMORY[0x1B8C84BB0](v14, v7);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v24);
  }

  sdapi::SdapiUtil::allowCollation();
  SDVoc_GetInfo();
  if (v23 == 1)
  {
    if (quasar::gLogLevel >= 4)
    {
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
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v24);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "Loaded CP1252 voc\n", 18);
      goto LABEL_20;
    }
  }

  else if (v23 == 2 && quasar::gLogLevel >= 4)
  {
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
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "Loaded UTF8 voc\n", 16);
LABEL_20:
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v24);
  }

  std::recursive_mutex::unlock(v4);
  return v7;
}

void sub_1B549044C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  quasar::QuasarInfoMessage::~QuasarInfoMessage(va);
  std::recursive_mutex::unlock(v17);
  _Unwind_Resume(a1);
}

void sdapi::SdapiUtil::allowCollation()
{
  v8 = *MEMORY[0x1E69E9840];
  if (sdapi::SdapiUtil::getSharedMutex(void)::onceToken != -1)
  {
    sdapi::SdapiUtil::initializeSdapi();
  }

  v0 = sdapi::SdapiUtil::getSharedMutex(void)::mutex;
  std::recursive_mutex::lock(sdapi::SdapiUtil::getSharedMutex(void)::mutex);
  memset(v7, 0, sizeof(v7));
  Colls = SDVoc_GetColls();
  if (!Colls)
  {
    goto LABEL_11;
  }

  v2 = 0;
  v3 = 8 * Colls;
  while (1)
  {
    if (*(v7 + v2) != -2)
    {
      SDVoc_GetCollationName();
      if (*&v6[0] == 0x6C6F636E656B6F74 && WORD4(v6[0]) == 108)
      {
        break;
      }
    }

    v2 += 8;
    if (v3 == v2)
    {
      goto LABEL_11;
    }
  }

  v5 = *(v7 + v2);
  if (v5 == -1)
  {
LABEL_11:
    memset(v6, 0, 272);
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Error: Voc does not contain the tokencoll collation table", 57);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v6);
  }

  SDVoc_SetAllowedWordCollations();
  std::recursive_mutex::unlock(v0);
}

void sub_1B5490650(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5490670);
}

void sdapi::SdapiUtil::readConfig()
{
  v1 = *MEMORY[0x1E69E9840];
  if (sdapi::SdapiUtil::getSharedMutex(void)::onceToken != -1)
  {
    sdapi::SdapiUtil::initializeSdapi();
  }

  std::recursive_mutex::lock(sdapi::SdapiUtil::getSharedMutex(void)::mutex);
  quasar::PTree::PTree(v0);
  quasar::PTree::readJsonFromFile();
}

uint64_t sdapi::SdapiUtil::fetchLexiconHandle(uint64_t a1, uint64_t a2)
{
  if (sdapi::SdapiUtil::getSharedMutex(void)::onceToken != -1)
  {
    sdapi::SdapiUtil::initializeSdapi();
  }

  v3 = sdapi::SdapiUtil::getSharedMutex(void)::mutex;
  std::recursive_mutex::lock(sdapi::SdapiUtil::getSharedMutex(void)::mutex);
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v32 = 1;
  v33 = v4;
  v31 = -1;
  v5 = TPLexicon_Open();
  if (v5)
  {
    v13 = v5;
    if (quasar::gLogLevel >= 1)
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
      v14 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v14);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "oh no:", 6);
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
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " gave us ", 9);
      MEMORY[0x1B8C84BB0](v12, v13);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v14);
    }

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
    v14 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "Could not open lexicon", 22);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v14);
  }

  std::recursive_mutex::unlock(v3);
  return v31;
}

void sub_1B5491E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::QuasarErrorMessage::~QuasarErrorMessage(va);
  std::recursive_mutex::unlock(v3);
  _Unwind_Resume(a1);
}

uint64_t sdapi::SdapiUtil::fetchItnHandle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sdapi::SdapiUtil::getSharedMutex(void)::onceToken != -1)
  {
    sdapi::SdapiUtil::initializeSdapi();
  }

  v4 = sdapi::SdapiUtil::getSharedMutex(void)::mutex;
  std::recursive_mutex::lock(sdapi::SdapiUtil::getSharedMutex(void)::mutex);
  if (*(a3 + 23) >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  v33 = 1;
  v34 = v5;
  v32 = -1;
  v6 = TPItn_Open();
  if (v6)
  {
    v14 = v6;
    if (quasar::gLogLevel >= 1)
    {
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
      v16 = 0u;
      v17 = 0u;
      v15 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v15);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "oh no:", 6);
      v9 = *(a3 + 23);
      if (v9 >= 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = *a3;
      }

      if (v9 >= 0)
      {
        v11 = *(a3 + 23);
      }

      else
      {
        v11 = *(a3 + 8);
      }

      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " gave us ", 9);
      MEMORY[0x1B8C84BB0](v13, v14);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v15);
    }

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
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Could not open ITN", 18);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v15);
  }

  std::recursive_mutex::unlock(v4);
  return v32;
}

void sub_1B5492068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::QuasarErrorMessage::~QuasarErrorMessage(va);
  std::recursive_mutex::unlock(v3);
  _Unwind_Resume(a1);
}

uint64_t sdapi::SdapiUtil::fetchTokenHandle(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (sdapi::SdapiUtil::getSharedMutex(void)::onceToken != -1)
  {
    sdapi::SdapiUtil::initializeSdapi();
  }

  v4 = sdapi::SdapiUtil::getSharedMutex(void)::mutex;
  std::recursive_mutex::lock(sdapi::SdapiUtil::getSharedMutex(void)::mutex);
  if (*(a3 + 23) >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  v9 = 1;
  v10 = v5;
  v8 = -1;
  if (TPToken_Open())
  {
    memset(v7, 0, sizeof(v7));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Could not do TPToken_Open", 25);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v7);
  }

  std::recursive_mutex::unlock(v4);
  return v8;
}

uint64_t std::__tree<std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

void sub_1B5492CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AudioConverterFillComplexBuffer_BlockInvoke(OpaqueAudioConverter *a1, unsigned int *a2, AudioBufferList *a3, AudioStreamPacketDescription **a4, void *a5)
{
  v8 = MEMORY[0x1B8C868A0](a5);
  v9 = (v8)[2](v8, a2, a3, a4);

  return v9;
}

void quasar::BitmapLoaderImpl::~BitmapLoaderImpl(quasar::BitmapLoaderImpl *this)
{
  quasar::Bitmap::~Bitmap(this);

  JUMPOUT(0x1B8C85350);
}

void LM::LM(LM *this, Vocab *a2)
{
  *(this + 8) = 0;
  v3 = MEMORY[0x1E69E5300];
  *(this + 3) = 0;
  *(this + 2) = v3;
  *(this + 3) = a2;
  *this = &unk_1F2D13F28;
  SubVocab::SubVocab((this + 32), a2, 0);
  *(this + 36) = 65792;
  *(this + 17) = defaultStateTag;
  *(this + 148) = 0;
  (*(*this + 16))(this, LM::initialDebugLevel);
}

float LM::wordProb(LM *this, const char *const *a2, const char *const *a3)
{
  v6 = Vocab::length(a3, a2);
  v7 = (v6 + 1);
  if (v6 != -1)
  {
    Array<unsigned int>::alloc();
  }

  v8 = (*(*this + 224))(this);
  v9 = *(this + 3);
  if (v8)
  {
    (*(*v9 + 256))(*(this + 3), a3, HIDWORD(v7), v7);
  }

  else
  {
    v10 = (*(*v9 + 88))(*(this + 3));
    (*(*v9 + 272))(v9, a3, HIDWORD(v7), v7, *v10);
  }

  v11 = *(this + 3);
  v12 = (*(*v11 + 88))(v11);
  v13 = (*(*v11 + 40))(v11, a2, *v12);
  return (*(*this + 48))(this, v13, HIDWORD(v7));
}

void sub_1B5493454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x1B8C85310](a11, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LM::updateRanks(const Vocab **this, float a2, const unsigned int *a3, double *a4, double *a5, double *a6, double a7)
{
  v13 = 0.0;
  if (a2 != -INFINITY)
  {
    v13 = exp(a2 * 2.30258509);
  }

  v14 = (*(*this + 34))(this, 0);
  VocabIter::VocabIter(v25, this[3], 0);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v24 = 0;
  while (VocabIter::next(v25, &v24))
  {
    if (!(*(*this + 29))(this, v24))
    {
      v18 = *this;
      if (v16)
      {
        v19 = (v18 + 64);
      }

      else
      {
        v19 = (v18 + 48);
      }

      v20 = (*v19)(this, v24, a3);
      v21 = 0.0;
      if (v20 != -INFINITY)
      {
        v21 = exp(v20 * 2.30258509);
      }

      if (vabdd_f64(v21, v13) >= 0.000003)
      {
        if (v21 > v13)
        {
          ++v17;
        }
      }

      else
      {
        ++v15;
      }

      v16 = 1;
      if (v17 + (v15 >> 1) >= 0xB)
      {
        break;
      }
    }
  }

  v22 = v17 + (v15 >> 1);
  if (v22 <= 9)
  {
    *a6 = *a6 + a7;
    if (v22 <= 4)
    {
      *a5 = *a5 + a7;
      if (!v22)
      {
        *a4 = *a4 + a7;
      }
    }
  }

  (*(*this + 34))(this, v14);
  return LHashIter<char const*,unsigned int>::~LHashIter(v25);
}

void sub_1B5493738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  LHashIter<char const*,unsigned int>::~LHashIter(va);
  _Unwind_Resume(a1);
}

double LM::wordProbSum(const Vocab **this, const unsigned int *a2)
{
  VocabIter::VocabIter(v13, this[3], 0);
  v12 = 0;
  v4 = (*(*this + 34))(this, 0);
  v5 = 0;
  v6 = 0.0;
  while (VocabIter::next(v13, &v12))
  {
    if (!(*(*this + 29))(this, v12))
    {
      v7 = *this;
      if (v5)
      {
        v8 = (v7 + 64);
      }

      else
      {
        v8 = (v7 + 48);
      }

      v9 = (*v8)(this, v12, a2);
      v10 = 0.0;
      if (v9 != -INFINITY)
      {
        v10 = exp(v9 * 2.30258509);
      }

      v6 = v6 + v10;
      v5 = 1;
    }
  }

  (*(*this + 34))(this, v4);
  LHashIter<char const*,unsigned int>::~LHashIter(v13);
  return v6;
}

void sub_1B5493908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  LHashIter<char const*,unsigned int>::~LHashIter(va);
  _Unwind_Resume(a1);
}

float LM::sentenceProb(void *a1, const char *const *this, uint64_t a3, uint64_t a4)
{
  v8 = Vocab::length(this, this);
  v9 = (v8 + 1);
  if (v8 != -1)
  {
    Array<unsigned int>::alloc();
  }

  v10 = (*(*a1 + 224))(a1);
  v11 = a1[3];
  if (v10)
  {
    (*(*v11 + 256))(a1[3], this, HIDWORD(v9), v9);
  }

  else
  {
    v12 = (*(*v11 + 88))(a1[3]);
    (*(*v11 + 272))(v11, this, HIDWORD(v9), v9, *v12);
  }

  return (*(*a1 + 72))(a1, HIDWORD(v9), a3, a4);
}

void sub_1B5493AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x1B8C85310](a11, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LM::prepareSentence(LM *this, const unsigned int *a2, unsigned int *a3, unsigned int a4)
{
  if (!*(this + 146) || *(*(**(this + 3) + 120))(*(this + 3)) == -1)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_12;
    }

LABEL_24:
    if (*(this + 145))
    {
      v17 = *(*(**(this + 3) + 104))(*(this + 3));
    }

    else
    {
      v17 = -1;
    }

    a3[v10++] = v17;
    goto LABEL_28;
  }

  if (!a4 || (*(this + 144) ? (v8 = 0) : (v8 = a4 - 1), v9 = a2[v8], v9 != *(*(**(this + 3) + 120))(*(this + 3))))
  {
    *a3 = *(*(**(this + 3) + 120))(*(this + 3));
    v10 = 1;
    if (a4)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v10 = 0;
LABEL_12:
  v11 = 1;
  v12 = a4 - 1;
  do
  {
    if (*(this + 144))
    {
      v13 = v11 - 1;
    }

    else
    {
      v13 = v12;
    }

    v14 = a2[v13];
    if (v14 != *(*(**(this + 3) + 136))(*(this + 3)) && !Vocab::getWord((this + 32), v14))
    {
      a3[v10++] = v14;
    }

    ++v11;
    --v12;
  }

  while (v11 <= a4);
  if (*(this + 144))
  {
    v15 = a4 - 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = a2[v15];
  if (v16 != *(*(**(this + 3) + 104))(*(this + 3)))
  {
    goto LABEL_24;
  }

LABEL_28:
  a3[v10] = -1;
  return (v10 - 2);
}

unsigned int *LM::removeNoise(LM *this, unsigned int *a2)
{
  v3 = *a2;
  if (*a2 == -1)
  {
    v8 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 1;
    v7 = a2;
    do
    {
      if (v3 != *(*(**(this + 3) + 136))(*(this + 3)) && !Vocab::getWord((this + 32), *v7))
      {
        a2[v5++] = *v7;
      }

      v7 = &a2[v6];
      v3 = *v7;
      ++v6;
    }

    while (*v7 != -1);
    v8 = v5;
  }

  a2[v8] = -1;
  return a2;
}

float LM::sentenceProb(uint64_t a1, Vocab *this, uint64_t a3)
{
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v6 = Vocab::length(this, this);
  *&v42[8] = 0;
  v43 = 0;
  v41 = 0;
  *v42 = (v6 + 3);
  if (v6 != -3)
  {
    Array<unsigned int>::alloc();
  }

  v7 = (*(*a1 + 272))(a1, 1);
  v8 = LM::prepareSentence(a1, this, (*&v42[4] - 4 * v41), 0xFFFFFFFD);
  v35 = v7;
  v9 = (*(*a1 + 296))(a1);
  if (v9)
  {
    NgramCounts<unsigned long>::NgramCounts(v38, *(a1 + 24), v9);
    v38[0] = &unk_1F2D140E8;
    Vocab::reverse(*&v42[4] - 4 * v41, v10);
    v11 = *&v42[4];
    v12 = v41;
    if (*(*&v42[4] + 4 * -v41) != -1)
    {
      v13 = 0;
      v14 = v8;
      do
      {
        if (v14 >= v9)
        {
          v15 = v9;
        }

        else
        {
          v15 = v14;
        }

        if (v13)
        {
          v16 = v15;
        }

        else
        {
          v16 = 1;
        }

        NgramCounts<unsigned long>::incrementCounts(v38, v11 - 4 * v12 + 4 * v13++, v16, 1);
        v11 = *&v42[4];
        v12 = v41;
        --v14;
      }

      while (*(*&v42[4] + 4 * (v13 - v41)) != -1);
    }

    (*(*a1 + 304))(a1, v38);
    Vocab::reverse(*&v42[4] - 4 * v41, v17);
    v38[0] = &unk_1F2D12C98;
    Trie<unsigned int,unsigned long>::~Trie(&v40);
    quasar::Bitmap::~Bitmap(v38);
  }

  if ((v8 & 0x80000000) == 0)
  {
    v18 = (*(**(a1 + 24) + 32))(*(a1 + 24), *(*&v42[4] - 4 * v41 + 4 * v8));
    std::string::basic_string[abi:ne200100]<0>(v38, v18);
    v19 = (*(**(a1 + 24) + 32))(*(a1 + 24), *(*&v42[4] + 4 * (v8 - v41 + 1)));
    std::string::basic_string[abi:ne200100]<0>(&__p, v19);
    if (!*(a1 + 8) && (Debug::debugAll > 1 || *(a1 + 12) >= 2u))
    {
      v20 = (*(*a1 + 24))(a1);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\tp( ", 4);
      v22 = (v39 & 0x80u) == 0 ? v38 : v38[0];
      v23 = (v39 & 0x80u) == 0 ? v39 : v38[1];
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " | ", 3);
      if (*(*&v42[4] + 4 * (v8 - v41 + 1)) == -1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v36, "");
      }

      else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v36, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v36 = __p;
      }

      v26 = (v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v36 : v36.__r_.__value_.__r.__words[0];
      v27 = (v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v36.__r_.__value_.__r.__words[2]) : v36.__r_.__value_.__l.__size_;
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " ", 1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ") \t= ", 5);
      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      if (!*(a1 + 8))
      {
        if (Debug::debugAll > 2)
        {
          if (Debug::debugAll != 3)
          {
            goto LABEL_38;
          }

          v30 = *(a1 + 12);
        }

        else
        {
          v30 = *(a1 + 12);
          if (v30 < 3)
          {
            goto LABEL_38;
          }
        }

        if (v30 <= 3)
        {
          (*(*a1 + 160))(a1, *&v42[4] + 4 * (v8 - v41 + 1));
        }
      }
    }

LABEL_38:
    std::allocate_shared[abi:ne200100]<WordInfo,std::allocator<WordInfo>,std::string &,std::string &,0>();
  }

  (*(*a1 + 272))(a1, v35);
  v31 = *(*&v42[4] - 4 * v41);
  if (v31 == *(*(**(a1 + 24) + 120))(*(a1 + 24)))
  {
    *&v45 = 0x3FF0000000000000;
  }

  else
  {
    ++v8;
  }

  *(&v45 + 1) = *(&v45 + 1) + v8;
  v32 = TextStats::increment(a3, &v44);
  v33 = *&v44;
  if (*&v42[4])
  {
    MEMORY[0x1B8C85310](*&v42[4], 0x1000C8052888210, v32);
  }

  return v33;
}

void sub_1B549491C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, std::__shared_weak_count *a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  std::locale::~locale((v54 - 160));
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a54)
  {
    MEMORY[0x1B8C85310](a54, 0x1000C8052888210);
  }

  _Unwind_Resume(a1);
}

float LM::contextProb(LM *this, Vocab *a2, unsigned int a3)
{
  v6 = Vocab::length(a2, a2);
  v7 = 0.0;
  if (v6 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    v9 = v6;
    v10 = (*(*this + 272))(this, 0);
    v11 = 0;
    v12 = *(a2 + v8);
    *(a2 + v8) = -1;
    if (v9 >= a3)
    {
      v13 = a3;
    }

    else
    {
      v13 = v9;
    }

    v14 = a2 + 4 * v13;
    do
    {
      v15 = *(v14 - 1);
      if (!v11 && v15 == *(*(**(this + 3) + 104))(*(this + 3)))
      {
        v15 = *(*(**(this + 3) + 120))(*(this + 3));
      }

      v16 = (*(*this + 48))(this, v15, v14);
      if (v16 != -INFINITY || !(*(**(this + 3) + 176))(*(this + 3), v15))
      {
        v7 = v7 + v16;
      }

      v14 -= 4;
      ++v11;
    }

    while (v13 != v11);
    (*(*this + 272))(this, v10);
    *(a2 + v8) = v12;
  }

  return v7;
}

void LM::countsProb<unsigned long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((*(*a1 + 296))(a1))
  {
    (*(*a1 + 304))(a1, a2);
  }

  *&v74[8] = 0;
  v75 = 0;
  v73 = 0;
  *v74 = (a4 + 1);
  if (a4 != -1)
  {
    Array<unsigned int>::alloc();
  }

  (*(*a1 + 272))(a1, 1);
  v10 = 0.0;
  v11 = 1;
LABEL_6:
  v12 = *&v74[4];
  v13 = v73;
  if (*(a1 + 8) || Debug::debugAll <= 1 && *(a1 + 12) < 2u)
  {
    v14 = 0;
  }

  else
  {
    v15 = v11;
    v14 = Vocab::compareIndex(*(a1 + 24));
    v11 = v15;
  }

  v65 = v11;
  TrieIter2<unsigned int,unsigned long>::TrieIter2(v72, a2 + 160, v12 - 4 * v13, v11, v14);
  while (1)
  {
    do
    {
      v16 = TrieIter2<unsigned int,unsigned long>::next(v72);
      v18 = v16;
      if (!v16)
      {
        TrieIter2<unsigned int,unsigned int>::~TrieIter2(v72);
        v11 = (v65 + 1);
        goto LABEL_6;
      }

      v70 = 0u;
      *v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v67 = 0u;
      memset(v66, 0, sizeof(v66));
    }

    while (!*(v16 + 8));
    Vocab::reverse(*&v74[4] - 4 * v73, v17);
    if (!*(a1 + 8) && (Debug::debugAll > 1 || *(a1 + 12) >= 2u))
    {
      v19 = (*(*a1 + 24))(a1);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "\tp( ", 4);
      v21 = (*(**(a1 + 24) + 32))(*(a1 + 24), *(*&v74[4] - 4 * v73));
      v22 = strlen(v21);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v21, v22);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " | ", 3);
      (*(**(a1 + 24) + 328))(*(a1 + 24));
      v25 = operator<<(v24, (*&v74[4] + 4 * (1 - v73)));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ") \t= ", 6);
    }

    v26 = (*(*a1 + 48))(a1, *(*&v74[4] + 4 * -v73), *&v74[4] + 4 * (1 - v73));
    v27 = 0.0;
    if (a5)
    {
      v27 = (*(*a1 + 104))(a1, *&v74[4] - 4 * v73, a4, 0.0);
    }

    v28 = *(v18 + 8);
    v29 = 0.0;
    if (v27 != -INFINITY)
    {
      v29 = exp(v27 * 2.30258509);
    }

    v30 = v29 * v28;
    if (!*(a1 + 8) && (Debug::debugAll > 1 || *(a1 + 12) >= 2u))
    {
      break;
    }

LABEL_49:
    v55 = *(*&v74[4] - 4 * v73);
    v56 = (*(**(a1 + 24) + 120))(*(a1 + 24));
    v57 = *(v18 + 8);
    v58 = 24;
    if (v55 == *v56)
    {
      v58 = 16;
    }

    *(v66 + v58) = v57;
    if (v26 == -INFINITY)
    {
      v59 = *(*&v74[4] - 4 * v73);
      v60 = (*(**(a1 + 24) + 88))(*(a1 + 24));
      v61 = *(v18 + 8);
      if (v59 == *v60)
      {
        *&v67 = *(v18 + 8);
        goto LABEL_59;
      }

      *(v66 + 1) = *(v18 + 8);
      v71[0] = v61;
    }

    else
    {
      *v66 = v30 * v26;
      v10 = *v66 + v10;
      v62 = 1.0 - exp(v26 * 2.30258509);
      if (v62 < 0.0)
      {
        v62 = 0.0;
      }

      v63 = v62 * v62 * v57;
      v61 = v62 * v57;
      v71[0] = v63;
    }

    v71[1] = v61;
LABEL_59:
    TextStats::increment(a3, v66);
    Vocab::reverse(*&v74[4] - 4 * v73, v64);
  }

  v31 = (*(*a1 + 24))(a1);
  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " ", 1);
  v33.n128_u64[0] = 0;
  if (v26 != -INFINITY)
  {
    v33.n128_f64[0] = exp(v26 * 2.30258509);
  }

  v34 = MEMORY[0x1B8C84BE0](v32, v33);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " [ ", 3);
  std::ostream::operator<<();
  if (v30 != 1.0)
  {
    v35 = (*(*a1 + 24))(a1);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " *", 2);
    MEMORY[0x1B8C84BE0](v36, v30);
  }

  v37 = (*(*a1 + 24))(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " ]", 2);
  if (!*(a1 + 8))
  {
    v38 = Debug::debugAll;
    if (Debug::debugAll > 3 || *(a1 + 12) >= 4u)
    {
      v39 = *(*&v74[4] - 4 * v73);
      v40 = (*(**(a1 + 24) + 120))(*(a1 + 24));
      v41 = 40;
      if (v39 == *v40)
      {
        v41 = 64;
      }

      v42 = 48;
      if (v39 == *v40)
      {
        v42 = 72;
      }

      v43 = 56;
      if (v39 == *v40)
      {
        v43 = 80;
      }

      LM::updateRanks(a1, v26, (*&v74[4] + 4 * (1 - v73)), (v66 + v41), (v66 + v42), (v66 + v43), *(v18 + 8));
      *(&v70 + 1) = *(v18 + 8);
      if (*(a1 + 8))
      {
        goto LABEL_48;
      }

      v38 = Debug::debugAll;
    }

    if (v38 <= 2)
    {
      v44 = *(a1 + 12);
      if (v44 < 3)
      {
        goto LABEL_48;
      }

LABEL_45:
      if (v44 <= 3)
      {
        v45 = (*(*a1 + 160))(a1, *&v74[4] + 4 * (1 - v73));
        v46 = (*(*a1 + 24))(a1);
        v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, " / ", 3);
        MEMORY[0x1B8C84BE0](v47, v45);
        if (fabs(v45 + -1.0) > 0.0001)
        {
          v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "\nwarning: word probs for this context sum to ", 45);
          v49 = MEMORY[0x1B8C84BE0](v48, v45);
          v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " != 1 : ", 8);
          (*(**(a1 + 24) + 328))(*(a1 + 24));
          v51 = operator<<(v50, (*&v74[4] + 4 * (1 - v73)));
          std::ios_base::getloc((v51 + *(*v51 - 24)));
          v52 = std::locale::use_facet(&v76, MEMORY[0x1E69E5318]);
          (v52->__vftable[2].~facet_0)(v52, 10);
          std::locale::~locale(&v76);
          std::ostream::put();
          std::ostream::flush();
        }
      }

      goto LABEL_48;
    }

    if (v38 == 3)
    {
      v44 = *(a1 + 12);
      goto LABEL_45;
    }
  }

LABEL_48:
  v53 = (*(*a1 + 24))(a1);
  std::ios_base::getloc((v53 + *(*v53 - 24)));
  v54 = std::locale::use_facet(&v76, MEMORY[0x1E69E5318]);
  (v54->__vftable[2].~facet_0)(v54, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  goto LABEL_49;
}

void sub_1B54955E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  v30 = *(v28 - 176);
  if (v30)
  {
    MEMORY[0x1B8C85310](v30, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void LM::countsProb<double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((*(*a1 + 296))(a1))
  {
    (*(*a1 + 320))(a1, a2);
  }

  *&v72[8] = 0;
  v73 = 0;
  v71 = 0;
  *v72 = (a4 + 1);
  if (a4 != -1)
  {
    Array<unsigned int>::alloc();
  }

  (*(*a1 + 272))(a1, 1);
  v10 = 0.0;
  v11 = 1;
LABEL_6:
  v12 = *&v72[4];
  v13 = v71;
  if (*(a1 + 8) || Debug::debugAll <= 1 && *(a1 + 12) < 2u)
  {
    v14 = 0;
  }

  else
  {
    v14 = Vocab::compareIndex(*(a1 + 24));
  }

  TrieIter2<unsigned int,double>::TrieIter2(v70, a2 + 160, v12 - 4 * v13, v11, v14);
  while (1)
  {
    do
    {
      v15 = TrieIter2<unsigned int,double>::next(v70);
      v17 = v15;
      if (!v15)
      {
        TrieIter2<unsigned int,unsigned int>::~TrieIter2(v70);
        v11 = (v11 + 1);
        goto LABEL_6;
      }

      v68 = 0u;
      *v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v65 = 0u;
      memset(v64, 0, sizeof(v64));
    }

    while (*(v15 + 8) == 0.0);
    Vocab::reverse(*&v72[4] - 4 * v71, v16);
    if (!*(a1 + 8) && (Debug::debugAll > 1 || *(a1 + 12) >= 2u))
    {
      v18 = (*(*a1 + 24))(a1);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\tp( ", 4);
      v20 = (*(**(a1 + 24) + 32))(*(a1 + 24), *(*&v72[4] - 4 * v71));
      v21 = strlen(v20);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " | ", 3);
      (*(**(a1 + 24) + 328))(*(a1 + 24));
      v24 = operator<<(v23, (*&v72[4] + 4 * (1 - v71)));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ") \t= ", 6);
    }

    v25 = (*(*a1 + 48))(a1, *(*&v72[4] + 4 * -v71), *&v72[4] + 4 * (1 - v71));
    v26 = 0.0;
    if (a5)
    {
      v26 = (*(*a1 + 104))(a1, *&v72[4] - 4 * v71, a4, 0.0);
    }

    v27 = *(v17 + 8);
    v28 = 0.0;
    if (v26 != -INFINITY)
    {
      v28 = exp(v26 * 2.30258509);
    }

    v29 = v27 * v28;
    if (!*(a1 + 8) && (Debug::debugAll > 1 || *(a1 + 12) >= 2u))
    {
      break;
    }

LABEL_49:
    v54 = *(*&v72[4] - 4 * v71);
    v55 = (*(**(a1 + 24) + 120))(*(a1 + 24));
    v56 = *(v17 + 8);
    v57 = 24;
    if (v54 == *v55)
    {
      v57 = 16;
    }

    *(v64 + v57) = v56;
    if (v25 == -INFINITY)
    {
      v58 = *(*&v72[4] - 4 * v71);
      v59 = (*(**(a1 + 24) + 88))(*(a1 + 24));
      v60 = *(v17 + 8);
      if (v58 == *v59)
      {
        *&v65 = *(v17 + 8);
        goto LABEL_59;
      }

      *(&v64[0] + 1) = *(v17 + 8);
      v69[0] = v60;
      v62 = *(v17 + 8);
    }

    else
    {
      *v64 = v29 * v25;
      v10 = *v64 + v10;
      v61 = 1.0 - exp(v25 * 2.30258509);
      if (v61 < 0.0)
      {
        v61 = 0.0;
      }

      v69[0] = v61 * v61 * v56;
      v62 = v61 * *(v17 + 8);
    }

    v69[1] = v62;
LABEL_59:
    TextStats::increment(a3, v64);
    Vocab::reverse(*&v72[4] - 4 * v71, v63);
  }

  v30 = (*(*a1 + 24))(a1);
  v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " ", 1);
  v32.n128_u64[0] = 0;
  if (v25 != -INFINITY)
  {
    v32.n128_f64[0] = exp(v25 * 2.30258509);
  }

  v33 = MEMORY[0x1B8C84BE0](v31, v32);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " [ ", 3);
  std::ostream::operator<<();
  if (v29 != 1.0)
  {
    v34 = (*(*a1 + 24))(a1);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " *", 2);
    MEMORY[0x1B8C84BE0](v35, v29);
  }

  v36 = (*(*a1 + 24))(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " ]", 2);
  if (!*(a1 + 8))
  {
    v37 = Debug::debugAll;
    if (Debug::debugAll > 3 || *(a1 + 12) >= 4u)
    {
      v38 = *(*&v72[4] - 4 * v71);
      v39 = (*(**(a1 + 24) + 120))(*(a1 + 24));
      v40 = 40;
      if (v38 == *v39)
      {
        v40 = 64;
      }

      v41 = 48;
      if (v38 == *v39)
      {
        v41 = 72;
      }

      v42 = 56;
      if (v38 == *v39)
      {
        v42 = 80;
      }

      LM::updateRanks(a1, v25, (*&v72[4] + 4 * (1 - v71)), (v64 + v40), (v64 + v41), (v64 + v42), *(v17 + 8));
      *(&v68 + 1) = *(v17 + 8);
      if (*(a1 + 8))
      {
        goto LABEL_48;
      }

      v37 = Debug::debugAll;
    }

    if (v37 <= 2)
    {
      v43 = *(a1 + 12);
      if (v43 < 3)
      {
        goto LABEL_48;
      }

LABEL_45:
      if (v43 <= 3)
      {
        v44 = (*(*a1 + 160))(a1, *&v72[4] + 4 * (1 - v71));
        v45 = (*(*a1 + 24))(a1);
        v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " / ", 3);
        MEMORY[0x1B8C84BE0](v46, v44);
        if (fabs(v44 + -1.0) > 0.0001)
        {
          v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "\nwarning: word probs for this context sum to ", 45);
          v48 = MEMORY[0x1B8C84BE0](v47, v44);
          v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, " != 1 : ", 8);
          (*(**(a1 + 24) + 328))(*(a1 + 24));
          v50 = operator<<(v49, (*&v72[4] + 4 * (1 - v71)));
          std::ios_base::getloc((v50 + *(*v50 - 24)));
          v51 = std::locale::use_facet(&v74, MEMORY[0x1E69E5318]);
          (v51->__vftable[2].~facet_0)(v51, 10);
          std::locale::~locale(&v74);
          std::ostream::put();
          std::ostream::flush();
        }
      }

      goto LABEL_48;
    }

    if (v37 == 3)
    {
      v43 = *(a1 + 12);
      goto LABEL_45;
    }
  }

LABEL_48:
  v52 = (*(*a1 + 24))(a1);
  std::ios_base::getloc((v52 + *(*v52 - 24)));
  v53 = std::locale::use_facet(&v74, MEMORY[0x1E69E5318]);
  (v53->__vftable[2].~facet_0)(v53, 10);
  std::locale::~locale(&v74);
  std::ostream::put();
  std::ostream::flush();
  goto LABEL_49;
}

void sub_1B5496018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  v30 = *(v28 - 176);
  if (v30)
  {
    MEMORY[0x1B8C85310](v30, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

unint64_t LM::pplCountsFile<unsigned long>(uint64_t a1, File *a2, uint64_t a3, uint64_t a4, char *__s, int a6, void *a7)
{
  v58 = *MEMORY[0x1E69E9840];
  if (__s)
  {
    v12 = strlen(__s);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 136);
  if (v13)
  {
    v14 = strlen(v13);
  }

  else
  {
    v14 = 0;
  }

  memset(v57, 0, 512);
  *&v53[8] = 0;
  v54 = 0;
  v52 = 0;
  *v53 = (a3 + 1);
  v41 = a3 + 1;
  if (a3 != -1)
  {
    Array<unsigned int>::alloc();
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v15 = a7;
  v45 = 0u;
  v43 = a7;
  if (!a7)
  {
    operator new();
  }

LABEL_11:
  v16 = 0;
  while (1)
  {
    v17 = File::getline(a2);
    v19 = v17;
    if (!v17)
    {
      break;
    }

    if (__s && !strncmp(v17, __s, v12))
    {
      if (v16)
      {
        LM::countsProb<unsigned long>(a1, v15, &v45, a3, a6);
        if (!*(a1 + 8) && (Debug::debugAll || *(a1 + 12)))
        {
          v31 = (*(*a1 + 24))(a1);
          v32 = operator<<(v31, &v45);
          std::ios_base::getloc((v32 + *(*v32 - 24)));
          v33 = std::locale::use_facet(&v56, MEMORY[0x1E69E5318]);
          (v33->__vftable[2].~facet_0)(v33, 10);
          std::locale::~locale(&v56);
          std::ostream::put();
          std::ostream::flush();
        }

        TextStats::increment(a4, &v45);
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v45 = 0u;
        if (!v43)
        {
          (*(*v15 + 8))(v15);
          operator new();
        }

        LHash<unsigned int,Trie<unsigned int,unsigned long>>::clear(v15 + 20, 0);
      }

      v34 = (*(*a1 + 24))(a1);
      v35 = strlen(v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v19, v35);
      goto LABEL_11;
    }

    v20 = *(a1 + 136);
    if (v20 && !strncmp(v19, v20, v14))
    {
      (*(*a1 + 152))(a1, &v19[v14]);
    }

    else
    {
      v56.__locale_ = 0;
      if (NgramCounts<unsigned long>::parseNgram(v19, v57, 0x65, &v56))
      {
        v21 = (*(*a1 + 224))(a1);
        v22 = *(a1 + 24);
        v23 = *&v53[4];
        v24 = v52;
        if (v21)
        {
          (*(*v22 + 256))(*(a1 + 24), v57, *&v53[4] - 4 * v52, v41);
        }

        else
        {
          v28 = (*(*v22 + 88))(*(a1 + 24));
          (*(*v22 + 272))(v22, v57, v23 - 4 * v24, v41, *v28);
        }

        locale = v56.__locale_;
        v55 = 0;
        inserted = Trie<unsigned int,unsigned long>::insertTrie(v15 + 20, (*&v53[4] - 4 * v52), &v55);
        inserted[1] += locale;
        v16 = 1;
      }

      else
      {
        v25 = File::position(a2, MEMORY[0x1E69E5300]);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "malformed N-gram count or more than ", 36);
        v27 = MEMORY[0x1B8C84C10](v26, 100);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " words per line\n", 16);
      }
    }
  }

  if (v16)
  {
    LM::countsProb<unsigned long>(a1, v15, &v45, a3, a6);
    if (!*(a1 + 8) && (Debug::debugAll || *(a1 + 12)))
    {
      v36 = (*(*a1 + 24))(a1);
      v37 = operator<<(v36, &v45);
      std::ios_base::getloc((v37 + *(*v37 - 24)));
      v38 = std::locale::use_facet(&v56, MEMORY[0x1E69E5318]);
      (v38->__vftable[2].~facet_0)(v38, 10);
      std::locale::~locale(&v56);
      std::ostream::put();
      std::ostream::flush();
    }

    v18.n128_f64[0] = TextStats::increment(a4, &v45);
  }

  v39 = *(a4 + 24);
  if (*&v53[4])
  {
    MEMORY[0x1B8C85310](*&v53[4], 0x1000C8052888210, v18);
  }

  return v39;
}

void sub_1B54966E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::locale a32)
{
  MEMORY[0x1B8C85350](v32, 0x10A1C40C5E9EE53);
  if (a29)
  {
    MEMORY[0x1B8C85310](a29, 0x1000C8052888210);
  }

  _Unwind_Resume(a1);
}

double LM::pplCountsFile<double>(uint64_t a1, File *a2, uint64_t a3, uint64_t a4, char *__s, int a6, void *a7)
{
  v58 = *MEMORY[0x1E69E9840];
  if (__s)
  {
    v12 = strlen(__s);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 136);
  if (v13)
  {
    v14 = strlen(v13);
  }

  else
  {
    v14 = 0;
  }

  memset(v57, 0, 512);
  *&v53[8] = 0;
  v54 = 0;
  v52 = 0;
  *v53 = (a3 + 1);
  v41 = a3 + 1;
  if (a3 != -1)
  {
    Array<unsigned int>::alloc();
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v15 = a7;
  v45 = 0u;
  v43 = a7;
  if (!a7)
  {
    operator new();
  }

LABEL_11:
  v16 = 0;
  while (1)
  {
    v17 = File::getline(a2);
    v19 = v17;
    if (!v17)
    {
      break;
    }

    if (__s && !strncmp(v17, __s, v12))
    {
      if (v16)
      {
        LM::countsProb<double>(a1, v15, &v45, a3, a6);
        if (!*(a1 + 8) && (Debug::debugAll || *(a1 + 12)))
        {
          v31 = (*(*a1 + 24))(a1);
          v32 = operator<<(v31, &v45);
          std::ios_base::getloc((v32 + *(*v32 - 24)));
          v33 = std::locale::use_facet(&v56, MEMORY[0x1E69E5318]);
          (v33->__vftable[2].~facet_0)(v33, 10);
          std::locale::~locale(&v56);
          std::ostream::put();
          std::ostream::flush();
        }

        TextStats::increment(a4, &v45);
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v45 = 0u;
        if (!v43)
        {
          (*(*v15 + 8))(v15);
          operator new();
        }

        LHash<unsigned int,Trie<unsigned int,unsigned long>>::clear(v15 + 20, 0);
      }

      v34 = (*(*a1 + 24))(a1);
      v35 = strlen(v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v19, v35);
      goto LABEL_11;
    }

    v20 = *(a1 + 136);
    if (v20 && !strncmp(v19, v20, v14))
    {
      (*(*a1 + 152))(a1, &v19[v14]);
    }

    else
    {
      *&v56.__locale_ = 0.0;
      if (NgramCounts<double>::parseNgram(v19, v57, 0x65, &v56))
      {
        v21 = (*(*a1 + 224))(a1);
        v22 = *(a1 + 24);
        v23 = *&v53[4];
        v24 = v52;
        if (v21)
        {
          (*(*v22 + 256))(*(a1 + 24), v57, *&v53[4] - 4 * v52, v41);
        }

        else
        {
          v28 = (*(*v22 + 88))(*(a1 + 24));
          (*(*v22 + 272))(v22, v57, v23 - 4 * v24, v41, *v28);
        }

        locale = v56.__locale_;
        v55 = 0;
        inserted = Trie<unsigned int,unsigned long>::insertTrie(v15 + 20, (*&v53[4] - 4 * v52), &v55);
        inserted[1] = *&locale + inserted[1];
        v16 = 1;
      }

      else
      {
        v25 = File::position(a2, MEMORY[0x1E69E5300]);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "malformed N-gram count or more than ", 36);
        v27 = MEMORY[0x1B8C84C10](v26, 100);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " words per line\n", 16);
      }
    }
  }

  if (v16)
  {
    LM::countsProb<double>(a1, v15, &v45, a3, a6);
    if (!*(a1 + 8) && (Debug::debugAll || *(a1 + 12)))
    {
      v36 = (*(*a1 + 24))(a1);
      v37 = operator<<(v36, &v45);
      std::ios_base::getloc((v37 + *(*v37 - 24)));
      v38 = std::locale::use_facet(&v56, MEMORY[0x1E69E5318]);
      (v38->__vftable[2].~facet_0)(v38, 10);
      std::locale::~locale(&v56);
      std::ostream::put();
      std::ostream::flush();
    }

    v18.n128_f64[0] = TextStats::increment(a4, &v45);
  }

  v39 = *(a4 + 24);
  if (*&v53[4])
  {
    MEMORY[0x1B8C85310](*&v53[4], 0x1000C8052888210, v18);
  }

  return v39;
}

void sub_1B5496DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::locale a32)
{
  MEMORY[0x1B8C85350](v32, 0x10A1C40C5E9EE53);
  if (a29)
  {
    MEMORY[0x1B8C85310](a29, 0x1000C8052888210);
  }

  _Unwind_Resume(a1);
}

uint64_t LM::pplFile(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v41 = v4;
  v40 = v5;
  v7 = v6;
  v8 = v1;
  v93 = *MEMORY[0x1E69E9840];
  if (v2)
  {
    v9 = strlen(v2);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v8 + 136);
  if (v10)
  {
    v11 = strlen(v10);
  }

  else
  {
    v11 = 0;
  }

  v42 = 0;
  v12 = 0;
  v13 = 0;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
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
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  *v61 = 0u;
  v62 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  memset(&__p, 0, sizeof(__p));
  while (1)
  {
    v14 = File::getline(v7);
    v16 = v14;
    if (!v14)
    {
      break;
    }

    if (v3 && !strncmp(v14, v3, v9))
    {
      if (v12 && !*(v8 + 12))
      {
        v20 = (*(*v8 + 24))(v8);
        v21 = operator<<(v20, &v53);
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v22 = std::locale::use_facet(v45, MEMORY[0x1E69E5318]);
        (v22->__vftable[2].~facet_0)(v22, 10);
        std::locale::~locale(v45);
        std::ostream::put();
        std::ostream::flush();
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v13 = 1;
        v53 = 0u;
      }

      v23 = (*(*v8 + 24))(v8);
      v24 = strlen(v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v16, v24);
      std::string::basic_string[abi:ne200100]<0>(v45, &v16[v9]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[2] = v46;
      *&__p.__r_.__value_.__l.__data_ = *&v45[0].__locale_;
      p_p = &__p;
      if ((SBYTE7(v46) & 0x80u) == 0)
      {
        locale = BYTE7(v46);
      }

      else
      {
        p_p = v45[0].__locale_;
        locale = v45[1].__locale_;
      }

      v27 = p_p - 1;
      while (locale)
      {
        if (!memchr(" \n\r\t", v27[locale--], 4uLL))
        {
          v29 = locale + 1;
          goto LABEL_29;
        }
      }

      v29 = 0;
LABEL_29:
      std::string::erase(&__p, v29, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v17 = *(v8 + 136);
      if (v17 && !strncmp(v16, v17, v11))
      {
        (*(*v8 + 152))(v8, &v16[v11]);
      }

      else
      {
        v18 = Vocab::parseWords(v16, v61, 0xC351, v15);
        ++v12;
        if (v18 == 50001)
        {
          v19 = File::position(v7, MEMORY[0x1E69E5300]);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "too many words per sentence\n", 28);
        }

        else
        {
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          *&v45[0].__locale_ = 0u;
          if (!*(v8 + 8) && (Debug::debugAll || *(v8 + 12)))
          {
            v30 = (*(*v8 + 24))(v8);
            v31 = operator<<(v30, v61);
            std::ios_base::getloc((v31 + *(*v31 - 24)));
            v32 = std::locale::use_facet(&v43, MEMORY[0x1E69E5318]);
            (v32->__vftable[2].~facet_0)(v32, 10);
            std::locale::~locale(&v43);
            std::ostream::put();
            std::ostream::flush();
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v43, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v43 = __p;
          }

          memset(v44, 0, sizeof(v44));
          std::vector<SentenceInfo>::push_back[abi:ne200100](v41, &v43);
          v60 = v44;
          std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v60);
          if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v43.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            *__p.__r_.__value_.__l.__data_ = 0;
            __p.__r_.__value_.__l.__size_ = 0;
          }

          else
          {
            __p.__r_.__value_.__s.__data_[0] = 0;
            *(&__p.__r_.__value_.__s + 23) = 0;
          }

          (*(*v8 + 88))(v8, v61, v45, v41[1] - 24);
          if (!*(v8 + 8) && (Debug::debugAll || *(v8 + 12)))
          {
            v33 = (*(*v8 + 24))(v8);
            v34 = operator<<(v33, v45);
            std::ios_base::getloc((v34 + *(*v34 - 24)));
            v35 = std::locale::use_facet(&v43, MEMORY[0x1E69E5318]);
            (v35->__vftable[2].~facet_0)(v35, 10);
            std::locale::~locale(&v43);
            std::ostream::put();
            std::ostream::flush();
          }

          TextStats::increment(v40, v45);
          TextStats::increment(&v53, v45);
          v42 += v18;
        }
      }
    }
  }

  if (v13)
  {
    v36 = (*(*v8 + 24))(v8);
    v37 = operator<<(v36, &v53);
    std::ios_base::getloc((v37 + *(*v37 - 24)));
    v38 = std::locale::use_facet(v45, MEMORY[0x1E69E5318]);
    (v38->__vftable[2].~facet_0)(v38, 10);
    std::locale::~locale(v45);
    std::ostream::put();
    std::ostream::flush();
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v42;
}

void sub_1B5497530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<SentenceInfo>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<SentenceInfo>::__emplace_back_slow_path<SentenceInfo>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t LM::rescoreFile(LM *this, File *a2, double a3, double a4, LM *a5, double a6, double a7, const char *a8)
{
  if (a8)
  {
    v16 = strlen(a8);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(this + 17);
  if (v17)
  {
    v18 = strlen(v17);
  }

  else
  {
    v18 = 0;
  }

  v19 = File::getline(a2);
  if (!v19)
  {
    return 0;
  }

  v20 = v19;
  v21 = 0;
  v22 = MEMORY[0x1E69E9858];
  do
  {
    if (a8 && !strncmp(v20, a8, v16))
    {
      fputs(v20, *v22);
    }

    else
    {
      v23 = *(this + 17);
      if (v23 && !strncmp(v20, v23, v18))
      {
        (*(*this + 152))(this, &v20[v18]);
      }

      else
      {
        NBestHyp::NBestHyp(v31);
        if (NBestHyp::parse(v31, v20, *(this + 3), 0, 0.0, 0, 0))
        {
          NBestHyp::decipherFix(v31, a5, a6, a7);
          NBestHyp::rescore(v31, this, a3, a4);
          v30 = a5;
          fprintf(*v22, "%g %g %lu", *&v31[2], *&v31[3], v31[4]);
          if (*v31[0] != -1)
          {
            v24 = 1;
            do
            {
              v25 = *v22;
              v26 = (*(**(this + 3) + 32))(*(this + 3));
              fprintf(v25, " %s", v26);
              v27 = *(v31[0] + 4 * v24++);
            }

            while (v27 != -1);
          }

          fputc(10, *v22);
          a5 = v30;
        }

        else
        {
          v28 = File::position(a2, MEMORY[0x1E69E5300]);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "bad n-best hyp format\n", 22);
        }

        v21 = (v21 + 1);
        NBestHyp::~NBestHyp(v31);
      }
    }

    v20 = File::getline(a2);
  }

  while (v20);
  return v21;
}

void sub_1B549787C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  NBestHyp::~NBestHyp(va);
  _Unwind_Resume(a1);
}

uint64_t LM::probServer(LM *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  v112 = v2;
  v4 = v3;
  v5 = v1;
  v125 = *MEMORY[0x1E69E9840];
  v6 = socket(2, 1, 0);
  if (v6 == -1)
  {
    v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "could not create socket: ", 25);
    v74 = __error();
    v75 = srilm_ts_strerror(*v74);
    v76 = strlen(v75);
    v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, v75, v76);
    std::ios_base::getloc((v77 + *(*v77 - 24)));
    v78 = std::locale::use_facet(v121, MEMORY[0x1E69E5318]);
    (v78->__vftable[2].~facet_0)(v78, 10);
    std::locale::~locale(v121);
    std::ostream::put();
    std::ostream::flush();
  }

  else
  {
    *&v124.sa_len = 512;
    *&v124.sa_data[6] = 0;
    *v124.sa_data = bswap32(v4) >> 16;
    v111 = v6;
    if (bind(v6, &v124, 0x10u) == -1 || (v112 ? (v7 = 10 * v112) : (v7 = 1000), listen(v111, v7) == -1))
    {
      v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "could not bind socket: ", 23);
      v80 = __error();
      v81 = srilm_ts_strerror(*v80);
      v82 = strlen(v81);
      v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, v81, v82);
      std::ios_base::getloc((v83 + *(*v83 - 24)));
      v84 = std::locale::use_facet(v121, MEMORY[0x1E69E5318]);
      (v84->__vftable[2].~facet_0)(v84, 10);
      std::locale::~locale(v121);
      std::ostream::put();
      std::ostream::flush();
      close(v111);
      return 0;
    }

    v8 = 0;
    while (1)
    {
LABEL_8:
      while (waitpid(-1, 0, 1) >= 1)
      {
        --v8;
      }

      if (v112 - 1 >= v8)
      {
        break;
      }

      sleep(5u);
    }

    v118 = 16;
    v114 = accept(v111, &v123, &v118);
    if (v114 == -1)
    {
      v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "could not accept connection: ", 29);
      goto LABEL_87;
    }

    if (v112 == 1)
    {
      goto LABEL_17;
    }

    v9 = fork();
    if ((v9 & 0x80000000) == 0)
    {
      if (v9)
      {
        close(v114);
        ++v8;
        goto LABEL_8;
      }

LABEL_17:
      v10.s_addr = *&v123.sa_data[2];
      v11 = inet_ntoa(v10);
      v12 = *v123.sa_data;
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "client ", 7);
      v14 = bswap32(v12) >> 16;
      v15 = MEMORY[0x1B8C84C10](v13, v14);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "@", 1);
      v17 = strlen(v11);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v11, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ": connection accepted\n", 22);
      v110 = (*(*v5 + 272))(v5, 1);
      if (send(v114, "probserver ready\n", 0x11uLL, 0) == -1)
      {
        v102 = std::operator<<[abi:ne200100]<std::char_traits<char>>(MEMORY[0x1E69E5300], "client ");
        v103 = MEMORY[0x1B8C84C10](v102, v14);
        v104 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v103, "@");
        v105 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v104, v11);
        v106 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v105, ": send: ");
        v107 = __error();
        v108 = srilm_ts_strerror(*v107);
        v109 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v106, v108);
        std::endl[abi:ne200100]<char,std::char_traits<char>>(v109);
        exit(-1);
      }

      v19 = recv(v114, v122, 0x1388uLL, 0);
      if ((v19 + 1) < 2)
      {
        v20 = 0;
        goto LABEL_80;
      }

      v20 = 0;
      v21 = 1;
      v113 = v8;
      while (1)
      {
        v122[v19] = 0;
        std::string::basic_string[abi:ne200100]<0>(&v117, "");
        *v116 = 0;
        for (i = MStringTokUtil::strtok_r(v122, "\n", v116, v22); i; i = MStringTokUtil::strtok_r(0, "\n", v116, v35))
        {
          if (!*(v5 + 8) && (Debug::debugAll > 1 || *(v5 + 12) >= 2u))
          {
            v25 = (*(*v5 + 24))(v5);
            v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "client ", 7);
            v27 = MEMORY[0x1B8C84C10](v26, v14);
            v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "@", 1);
            v29 = strlen(v11);
            v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v11, v29);
            v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ": ", 2);
            v32 = strlen(i);
            v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, i, v32);
            std::ios_base::getloc((v33 + *(*v33 - 24)));
            v34 = std::locale::use_facet(v121, MEMORY[0x1E69E5318]);
            (v34->__vftable[2].~facet_0)(v34, 10);
            std::locale::~locale(v121);
            std::ostream::put();
            std::ostream::flush();
          }

          memset(v121, 0, 512);
          v36 = Vocab::parseWords(i, v121, 0xC352, v23);
          if (v36)
          {
            if (!*(v5 + 8) && (Debug::debugAll > 1 || *(v5 + 12) >= 2u))
            {
              v37 = (*(*v5 + 24))(v5);
              v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "client ", 7);
              v39 = MEMORY[0x1B8C84C10](v38, v14);
              v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "@", 1);
              v41 = strlen(v11);
              v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, v11, v41);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, ": ", 2);
            }

            locale = v121[0].__locale_;
            if (!strcmp(v121[0].__locale_, "_R_E_M_O_T_E_L_M_V=2"))
            {
              snprintf(v120, 0x100uLL, "%s\n");
            }

            else
            {
              if (v21 == 1)
              {
LABEL_34:
                v45 = v36 - 1;
                v46 = v121[v36 - 1].__locale_;
                v121[v45].__locale_ = 0;
                if (v21 <= 1)
                {
                  v47 = v121;
                }

                else
                {
                  v47 = &v121[1];
                }

                Vocab::reverse(v47, v44);
                (*(*v5 + 56))(v5, v46, v47);
                if (v21 == 1)
                {
                  snprintf(v120, 0x100uLL, "%g\n");
                }

                else
                {
                  snprintf(v120, 0x100uLL, "%s %g\n");
                }

                v20 = (v20 + 1);
                goto LABEL_56;
              }

              v48 = *locale;
              if (v48 == 66)
              {
                if (*(locale + 1))
                {
                  goto LABEL_54;
                }

                v115 = 0;
                sscanf(v121[v36 - 1].__locale_, "%u", &v115);
                v121[v36 - 1].__locale_ = 0;
                v53 = *(v5 + 24);
                v54 = (*(*v53 + 88))(v53);
                (*(*v53 + 272))(v53, &v121[1], v119, 50000, *v54);
                Vocab::reverse(v119, v55);
                (*(*v5 + 216))(v5, v119, v115);
                snprintf(v120, 0x100uLL, "%s %g\n");
              }

              else if (v48 == 67)
              {
                v49 = *(locale + 1);
                if (v49 == 50)
                {
                  if (*(locale + 2))
                  {
                    goto LABEL_54;
                  }

                  v56 = *(v5 + 24);
                  v57 = (*(*v56 + 88))(v56);
                  (*(*v56 + 272))(v56, &v121[1], v119, 50000, *v57);
                  v58 = v36 - 1;
                  v59 = v119[v36 - 1];
                  v119[v58] = -1;
                  Vocab::reverse(v119, v60);
                  v115 = 0;
                  (*(*v5 + 208))(v5, v59, v119, &v115);
                }

                else
                {
                  if (v49 != 49 || *(locale + 2))
                  {
                    goto LABEL_54;
                  }

                  v50 = *(v5 + 24);
                  v51 = (*(*v50 + 88))(v50);
                  (*(*v50 + 272))(v50, &v121[1], v119, 50000, *v51);
                  Vocab::reverse(v119, v52);
                  v115 = 0;
                  (*(*v5 + 200))(v5, v119, &v115);
                }

                snprintf(v120, 0x100uLL, "%s %llu %u\n");
              }

              else
              {
                if (v48 == 87 && !*(locale + 1))
                {
                  goto LABEL_34;
                }

LABEL_54:
                snprintf(v120, 0x100uLL, "%s command unknown\n");
              }
            }

            v21 = 2;
LABEL_56:
            std::string::append(&v117, v120);
            continue;
          }
        }

        if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v61 = &v117;
        }

        else
        {
          v61 = v117.__r_.__value_.__r.__words[0];
        }

        if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v117.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v117.__r_.__value_.__l.__size_;
        }

        if (send(v114, v61, size, 0) == -1)
        {
          v92 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "client ", 7);
          v93 = MEMORY[0x1B8C84C10](v92, v14);
          v94 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, "@", 1);
          v95 = strlen(v11);
          v96 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v94, v11, v95);
          v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, ": send: ", 8);
          v98 = __error();
          v99 = srilm_ts_strerror(*v98);
          v100 = strlen(v99);
          v101 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, v99, v100);
          std::endl[abi:ne200100]<char,std::char_traits<char>>(v101);
          exit(-1);
        }

        if (!*(v5 + 8) && (Debug::debugAll > 1 || *(v5 + 12) >= 2u))
        {
          v63 = (*(*v5 + 24))(v5);
          if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v64 = &v117;
          }

          else
          {
            v64 = v117.__r_.__value_.__r.__words[0];
          }

          if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v65 = HIBYTE(v117.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v65 = v117.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, v64, v65);
        }

        if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v117.__r_.__value_.__l.__data_);
        }

        v19 = recv(v114, v122, 0x1388uLL, 0);
        v8 = v113;
        if ((v19 + 1) < 2)
        {
LABEL_80:
          close(v114);
          (*(*v5 + 272))(v5, v110);
          v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "client ", 7);
          v67 = MEMORY[0x1B8C84C10](v66, v14);
          v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "@", 1);
          v69 = strlen(v11);
          v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, v11, v69);
          v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, ": ", 2);
          v72 = MEMORY[0x1B8C84C10](v71, v20);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, " probabilities served\n", 22);
          if (v112 != 1)
          {
            exit(0);
          }

          goto LABEL_8;
        }
      }
    }

    v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "fork failed: ", 13);
    v111 = v114;
LABEL_87:
    v86 = __error();
    v87 = srilm_ts_strerror(*v86);
    v88 = strlen(v87);
    v89 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, v87, v88);
    std::ios_base::getloc((v89 + *(*v89 - 24)));
    v90 = std::locale::use_facet(v121, MEMORY[0x1E69E5318]);
    (v90->__vftable[2].~facet_0)(v90, 10);
    std::locale::~locale(v121);
    std::ostream::put();
    std::ostream::flush();
    close(v111);
  }

  return 0;
}

uint64_t LM::generateWord(const Vocab **this, const unsigned int *a2)
{
  v22 = -1;
  v4 = MEMORY[0x1E69E5318];
  do
  {
    v5 = drand48();
    VocabIter::VocabIter(v21, this[3], 0);
    v6 = 0.0;
    if (v5 >= 0.0)
    {
      v7 = 0;
      v8 = 0.0;
      do
      {
        if (!VocabIter::next(v21, &v22))
        {
          break;
        }

        v9 = *this;
        if (v7)
        {
          v10 = (v9 + 64);
        }

        else
        {
          v10 = (v9 + 48);
        }

        v11 = (*v10)(this, v22, a2);
        v6 = 0.0;
        if (v11 != -INFINITY)
        {
          v6 = exp(v11 * 2.30258509);
        }

        v8 = v8 + v6;
        v7 = 1;
      }

      while (v8 <= v5);
    }

    if ((*(*this + 29))(this, v22))
    {
      if (v6 > 0.0 && !*(this + 8) && (Debug::debugAll > 1 || *(this + 3) >= 2u))
      {
        v12 = (*(*this + 3))(this);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "nonword ", 8);
        v14 = (*(*this[3] + 32))(this[3], v22);
        v15 = strlen(v14);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " has nonzero probability ", 25);
        v18 = MEMORY[0x1B8C84BE0](v17, v6);
        std::ios_base::getloc((v18 + *(*v18 - 24)));
        v19 = std::locale::use_facet(&v23, v4);
        (v19->__vftable[2].~facet_0)(v19, 10);
        std::locale::~locale(&v23);
        std::ostream::put();
        std::ostream::flush();
      }

      v22 = -1;
    }

    LHashIter<char const*,unsigned int>::~LHashIter(v21);
    result = v22;
  }

  while (v22 == -1);
  return result;
}

void sub_1B5498B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::locale a14)
{
  std::locale::~locale(&a14);
  LHashIter<char const*,unsigned int>::~LHashIter(&a9);
  _Unwind_Resume(a1);
}

void LM::generateSentence(LM *this, int a2, unsigned int *a3, unsigned int *a4)
{
  v8 = viDefaultResultSize();
  v9 = *v8;
  if (!*v8)
  {
    v10 = v8;
    v9 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
    *v10 = v9;
  }

  v11 = viDefaultResult();
  v13 = *v11;
  if (*v11)
  {
    if (a3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v14 = v11;
    v13 = malloc_type_calloc(1uLL, 8uLL, 0x10040436913F5uLL);
    *v14 = v13;
    if (a3)
    {
      goto LABEL_11;
    }
  }

  v15 = *v13;
  if ((a2 + 1) > *v9)
  {
    *v9 = a2 + 1;
    if (v15)
    {
      MEMORY[0x1B8C85310](v15, 0x1000C8052888210);
    }

    operator new[]();
  }

LABEL_11:
  if (a4)
  {
    Vocab::length(a4, v12);
  }

  else
  {
    (*(**(this + 3) + 104))(*(this + 3));
  }

  Array<unsigned int>::alloc();
}

void sub_1B5498EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x1B8C85310](a11, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

const char **LM::generateSentence(LM *this, uint64_t a2, const char **a3, const char **a4)
{
  v8 = vsDefaultResultSize();
  v9 = *v8;
  if (!*v8)
  {
    v10 = v8;
    v9 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
    *v10 = v9;
  }

  v11 = vsDefaultResult();
  v13 = *v11;
  if (*v11)
  {
    if (a3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v14 = v11;
    v13 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
    *v14 = v13;
    if (a3)
    {
      goto LABEL_11;
    }
  }

  a3 = *v13;
  if ((a2 + 1) > *v9)
  {
    *v9 = a2 + 1;
    if (a3)
    {
      MEMORY[0x1B8C85310](a3, 0x50C80EE9192B6);
    }

    operator new[]();
  }

LABEL_11:
  if (a4)
  {
    v15 = Vocab::length(a4, v12);
    v16 = (v15 + 1);
    if (v15 != -1)
    {
      Array<unsigned int>::alloc();
    }

    v17 = *(this + 3);
    v18 = (*(*v17 + 88))(v17);
    (*(*v17 + 272))(v17, a4, 0, v16, *v18);
    v19 = (*(*this + 176))(this, a2, 0, HIDWORD(v16));
  }

  else
  {
    v19 = (*(*this + 176))(this, a2, 0, 0);
  }

  (*(**(this + 3) + 248))(*(this + 3), v19, a3, (a2 + 1));
  return a3;
}

void sub_1B5499194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x1B8C85310](a11, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void LM::freeThread(LM *this)
{
  v1 = viDefaultResult();
  v2 = *v1;
  if (!*v1)
  {
    v2 = malloc_type_calloc(1uLL, 8uLL, 0x10040436913F5uLL);
    *v1 = v2;
  }

  v3 = *v2;
  v4 = vsDefaultResult();
  v5 = *v4;
  if (!*v4)
  {
    v5 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
    *v4 = v5;
  }

  v6 = *v5;
  if (v3)
  {
    MEMORY[0x1B8C85310](v3, 0x1000C8052888210);
  }

  if (v6)
  {
    MEMORY[0x1B8C85310](v6, 0x50C80EE9192B6);
  }

  v7 = viDefaultResultSize();
  if (*v7)
  {
    free(*v7);
    *v7 = 0;
  }

  if (*v1)
  {
    free(*v1);
    *v1 = 0;
  }

  v8 = vsDefaultResultSize();
  if (*v8)
  {
    free(*v8);
    *v8 = 0;
  }

  if (*v4)
  {
    free(*v4);
    *v4 = 0;
  }
}

uint64_t LM::writeBinary(_BYTE *a1)
{
  v2 = a1[148];
  a1[148] = 1;
  result = (*(*a1 + 248))(a1);
  a1[148] = v2;
  return result;
}

void _LM_FollowIter::_LM_FollowIter(_LM_FollowIter *this, const Vocab **a2, const unsigned int *a3)
{
  *this = &unk_1F2D14088;
  *(this + 1) = a2;
  *(this + 2) = a3;
  VocabIter::VocabIter((this + 24), a2[3], 0);
}

uint64_t _LM_FollowIter::next(_LM_FollowIter *this)
{
  v2 = -1;
  VocabIter::next((this + 24), &v2);
  return v2;
}

uint64_t _LM_FollowIter::next(_LM_FollowIter *this, float *a2)
{
  v4 = 0xFFFFFFFFLL;
  v6 = -1;
  VocabIter::next((this + 24), &v6);
  if (v6 != -1)
  {
    *a2 = (*(**(this + 1) + 48))(*(this + 1));
    return v6;
  }

  return v4;
}

void _LM_FollowIter::~_LM_FollowIter(_LM_FollowIter *this)
{
  *this = &unk_1F2D14088;
  LHashIter<char const*,unsigned int>::~LHashIter(this + 24);
}

{
  *this = &unk_1F2D14088;
  LHashIter<char const*,unsigned int>::~LHashIter(this + 24);

  JUMPOUT(0x1B8C85350);
}

void NgramStats::~NgramStats(NgramStats *this)
{
  *this = &unk_1F2D12C98;
  Trie<unsigned int,unsigned long>::~Trie(this + 160);
  quasar::Bitmap::~Bitmap(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D12C98;
  Trie<unsigned int,unsigned long>::~Trie(this + 160);

  quasar::Bitmap::~Bitmap(this);
}

void SentenceInfo::~SentenceInfo(void **this)
{
  v2 = this + 3;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

std::string *std::__shared_ptr_emplace<WordInfo>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::string &,std::allocator<WordInfo>,0>(std::string *a1, __int128 *a2, __int128 *a3)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F2D14188;
  WordInfo::WordInfo(a1 + 1, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<WordInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D14188;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void WordInfo::WordInfo(std::string *this, __int128 *a2, __int128 *a3)
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
}

void sub_1B54998C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<SentenceInfo>::__emplace_back_slow_path<SentenceInfo>(uint64_t *a1, __int128 *a2)
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

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<std::string>>>>(a1, v6);
  }

  v7 = 48 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *&v17 = 48 * v2 + 48;
  v9 = a1[1];
  v10 = 48 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SentenceInfo>,SentenceInfo*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<SentenceInfo>::~__split_buffer(&v15);
  return v14;
}

void sub_1B5499A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<SentenceInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SentenceInfo>,SentenceInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
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
      v7 += 48;
      a4 += 48;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      std::allocator<SentenceInfo>::destroy[abi:ne200100](a1, v5);
      v5 += 48;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SentenceInfo>,SentenceInfo*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

void std::allocator<SentenceInfo>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SentenceInfo>,SentenceInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<SentenceInfo>,SentenceInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<SentenceInfo>,SentenceInfo*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 48;
      std::allocator<SentenceInfo>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<SentenceInfo>::~__split_buffer(void **a1)
{
  std::__split_buffer<SentenceInfo>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<SentenceInfo>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<SentenceInfo>::destroy[abi:ne200100](v4, i - 48);
  }
}

quasar::PdecPhraseBookOptions *quasar::PdecPhraseBookOptions::PdecPhraseBookOptions(quasar::PdecPhraseBookOptions *this)
{
  *quasar::PDecOptions::PDecOptions(this) = &unk_1F2D141D8;
  std::string::basic_string[abi:ne200100]<0>(&__str, "phrase_book_only");
  std::string::basic_string[abi:ne200100]<0>(&__p, "<default>");
  std::string::operator=((this + 424), &__str);
  std::string::operator=((this + 352), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B5499D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  quasar::PDecOptions::~PDecOptions(v20);
  _Unwind_Resume(a1);
}

void quasar::PDecPhraseBookBlock::~PDecPhraseBookBlock(quasar::PDecPhraseBookBlock *this, uint64_t a2)
{
  v4 = *(this + 413);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::unique_ptr<kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::reset[abi:ne200100](this + 409, 0);
  std::unique_ptr<kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::reset[abi:ne200100](this + 408, 0);
  std::unique_ptr<kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::reset[abi:ne200100](this + 407, 0);
  v5 = *(this + 406);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a2 + 8);
  *this = v6;
  *(this + *(v6 - 24)) = *(a2 + 16);
  quasar::PDecOptions::~PDecOptions((this + 8));
}

void quasar::PDecPhraseBookBlock::~PDecPhraseBookBlock(quasar::PDecPhraseBookBlock *this)
{
  quasar::ProcessingBlock::~ProcessingBlock((v1 + 3312));
}

{
  quasar::ProcessingBlock::~ProcessingBlock((v1 + 3312));

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toquasar::PDecPhraseBookBlock::~PDecPhraseBookBlock(quasar::PDecPhraseBookBlock *this)
{
  v2 = (v1 + 3312);

  quasar::ProcessingBlock::~ProcessingBlock(v2);
}

{
  quasar::PDecPhraseBookBlock::~PDecPhraseBookBlock((this + *(*this - 24)));
}

void quasar::PDecPhraseBookBlock::process(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a3 == *(a3 + 8))
  {
    if (quasar::gLogLevel >= 1)
    {
      memset(v10, 0, sizeof(v10));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Empty token received", 20);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(v10);
    }

    quasar::ProcessingBlock::send(a1 + *(*a1 - 24), a3, 0);
  }

  else if (*(*a3 + 144))
  {
    v5 = quasar::OptionValue<BOOL>::value(a1 + 195);
    quasar::PDecEngineBlockMixin::processImplementation(a1 + 405, a3, *v5, 0, 0, v10);
    v6 = *(*a1 - 24);
    if (*&v10[0] == *(&v10[0] + 1))
    {
      quasar::ProcessingBlock::send(a1 + v6, a3, 0);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "final");
      quasar::ProcessingBlock::send(a1 + v6, __p, v10, 0);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    __p[0] = v10;
    std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  else
  {
    v7 = a1 + *(*a1 - 24);

    quasar::ProcessingBlock::send(v7, a3, 0);
  }
}

void sub_1B549A0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  __p = &a16;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void sub_1B549A120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  quasar::QuasarErrorMessage::~QuasarErrorMessage(va);
  JUMPOUT(0x1B549A118);
}

void quasar::PDecPhraseBookBlock::createDecoder(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = quasar::OptionValue<std::string>::value(a3 + 40);
  if ((quasar::PDecEngineBlockMixin::getPhraseBookMode(v8) & 0xFFFFFFFD) != 1 && quasar::gLogLevel >= 1)
  {
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
    v20 = 0u;
    v21 = 0u;
    *v19 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Illegal value for 'phrase-book-mode' in 'PDecPhraseBookBlock': ", 63);
    v11 = quasar::OptionValue<std::string>::value(a3 + 40);
    v12 = *(v11 + 23);
    if (v12 >= 0)
    {
      v13 = v11;
    }

    else
    {
      v13 = *v11;
    }

    if (v12 >= 0)
    {
      v14 = *(v11 + 23);
    }

    else
    {
      v14 = *(v11 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v13, v14);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(v19);
  }

  std::string::basic_string[abi:ne200100]<0>(v19, "");
  std::string::basic_string[abi:ne200100]<0>(v17, "");
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  quasar::PDecEngineBlockMixin::createDecoder(a1 + 3240, a2, a3, v19, v17, 50, 0, 0, a4, -1.0, 0.5, 0, __p, 0);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (SBYTE7(v20) < 0)
  {
    operator delete(v19[0]);
  }
}

void sub_1B549A49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a20 < 0)
  {
    operator delete(__p);
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

void quasar::ConfiguredProcessingBlock<quasar::PdecPhraseBookOptions>::setContextProvider(uint64_t a1, uint64_t *a2)
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

void sub_1B549A60C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13)
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

uint64_t std::unique_ptr<kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~DecodeOptions(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

uint64_t kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DecodeOptions(uint64_t a1, int a2, int a3, float a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = a2;
  *(a1 + 164) = 0x4F0000004F000000;
  *(a1 + 176) = 0;
  *(a1 + 172) = 0;
  *(a1 + 184) = 1;
  *(a1 + 192) = 1;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = a3;
  *(a1 + 220) = 0x40A000003F800000;
  *(a1 + 228) = a4;
  *(a1 + 232) = 0;
  *(a1 + 252) = 0;
  *(a1 + 260) = 0;
  *(a1 + 236) = 0;
  *(a1 + 244) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 264), "");
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0x10000;
  *(a1 + 308) = 0;
  *(a1 + 312) = 0;
  *(a1 + 316) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  return a1;
}

void sub_1B549A7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 240);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (*(v10 + 159) < 0)
  {
    operator delete(*(v10 + 136));
  }

  if (*(v10 + 135) < 0)
  {
    operator delete(*(v10 + 112));
  }

  if (*(v10 + 111) < 0)
  {
    operator delete(*(v10 + 88));
  }

  if (*(v10 + 87) < 0)
  {
    operator delete(*(v10 + 64));
  }

  if (*(v10 + 63) < 0)
  {
    operator delete(*(v10 + 40));
  }

  if (*(v10 + 39) < 0)
  {
    operator delete(*v11);
  }

  _Unwind_Resume(a1);
}

__CFString *hexString(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 bytes];
    v5 = malloc_type_malloc((2 * v3) | 1, 0x100004077774924uLL);
    if (v5)
    {
      v6 = v5;
      v7 = 1;
      v8 = v5;
      do
      {
        v9 = v8;
        *v8 = a0123456789abcd[*v4 >> 4];
        v10 = *v4++;
        v8[1] = a0123456789abcd[v10 & 0xF];
        v11 = v3 > v7++;
        v8 += 2;
      }

      while (v11);
      v9[2] = 0;
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
      free(v6);
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Failed to allocate memory" arguments:0];
      v12 = 0;
    }
  }

  else
  {
    v12 = &stru_1F2D44B60;
  }

  return v12;
}

id sha256Data(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 bytes];
  v3 = [v1 length];

  CC_SHA256(v2, v3, md);
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:32];

  return v4;
}

uint64_t quasar::corrective_reranking::TargetIndexFilter::TargetIndexFilter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v88[19] = *MEMORY[0x1E69E9840];
  *a1 = a3;
  *(a1 + 8) = 0;
  v6 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v7 = (a1 + 32);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 32) = &unk_1F2D0EE38;
  *(a1 + 72) = 0;
  v8 = (a1 + 80);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 80) = &unk_1F2D3AC18;
  *(a1 + 88) = 0;
  *(a1 + 112) = *(a2 + 24);
  *(a1 + 116) = *(a2 + 28);
  std::ifstream::basic_ifstream(v86);
  v9 = v86[0];
  if ((v87[*(v86[0] - 24) + 16] & 5) != 0)
  {
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
    v69 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v69);
    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, "Could not open filter file ", 27);
    v56 = *(a2 + 23);
    if (v56 >= 0)
    {
      v57 = a2;
    }

    else
    {
      v57 = *a2;
    }

    if (v56 >= 0)
    {
      v58 = *(a2 + 23);
    }

    else
    {
      v58 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, v57, v58);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v69);
  }

  memset(&__str, 0, sizeof(__str));
  while (1)
  {
    std::ios_base::getloc((v86 + *(v9 - 24)));
    v10 = std::locale::use_facet(&v69, MEMORY[0x1E69E5318]);
    v11 = (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v69);
    v12 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v86, &__str, v11);
    if ((*(v12 + *(*v12 - 24) + 32) & 5) != 0)
    {
      break;
    }

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
      size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size < 1)
    {
      goto LABEL_39;
    }

    v15 = p_str + size;
    v16 = p_str;
    while (1)
    {
      v17 = memchr(v16, 32, size);
      if (!v17)
      {
        goto LABEL_39;
      }

      if (*v17 == 32)
      {
        break;
      }

      v16 = (v17 + 1);
      size = v15 - v16;
      if (v15 - v16 < 1)
      {
        goto LABEL_39;
      }
    }

    if (v17 == v15 || (v18 = v17 - p_str, v17 - p_str == -1))
    {
LABEL_39:
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v69);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, "end != std::string::npos", 24);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v69);
    }

    std::string::basic_string(&v62, &__str, 0, v18, &v69);
    std::string::basic_string(&v60, &__str, v18 + 1, 0xFFFFFFFFFFFFFFFFLL, &v69);
    quasar::trim(&v62);
    quasar::trim(&v60);
    v19 = std::stoi(&v62, 0, 10);
    if (v19)
    {
      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v65, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
      }

      else
      {
        v65 = v60;
      }

      v66 = v19;
      v20 = *(a1 + 16);
      v21 = *(a1 + 24);
      if (v20 >= v21)
      {
        v23 = (v20 - *v6) >> 5;
        v24 = v23 + 1;
        if ((v23 + 1) >> 59)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v25 = v21 - *v6;
        if (v25 >> 4 > v24)
        {
          v24 = v25 >> 4;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFE0)
        {
          v26 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v24;
        }

        *&v71 = v6;
        if (v26)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TextTokenizer::Token>>(v6, v26);
        }

        v27 = v8;
        v28 = v7;
        v29 = 32 * v23;
        v30 = *&v65.__r_.__value_.__l.__data_;
        *(v29 + 16) = *(&v65.__r_.__value_.__l + 2);
        *v29 = v30;
        memset(&v65, 0, sizeof(v65));
        *(v29 + 24) = v66;
        v31 = 32 * v23 + 32;
        v32 = *(a1 + 8);
        v33 = *(a1 + 16) - v32;
        v34 = (32 * v23 - v33);
        memcpy(v34, v32, v33);
        v35 = *(a1 + 8);
        *(a1 + 8) = v34;
        *(a1 + 16) = v31;
        v36 = *(a1 + 24);
        *(a1 + 24) = 0;
        *&v70 = v35;
        *(&v70 + 1) = v36;
        *&v69 = v35;
        *(&v69 + 1) = v35;
        std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(&v69);
        v37 = SHIBYTE(v65.__r_.__value_.__r.__words[2]);
        *(a1 + 16) = v31;
        v7 = v28;
        v8 = v27;
        if (v37 < 0)
        {
          operator delete(v65.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v22 = *&v65.__r_.__value_.__l.__data_;
        *(v20 + 16) = *(&v65.__r_.__value_.__l + 2);
        *v20 = v22;
        memset(&v65, 0, sizeof(v65));
        *(v20 + 24) = v66;
        *(a1 + 16) = v20 + 32;
      }
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    v9 = v86[0];
  }

  v38 = *(a1 + 8);
  if (*(a1 + 16) == v38)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v69);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, "embeddingTargetIndexUtterance.size() > 0", 40);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v69);
  }

  quasar::corrective_reranking::PhoneticMatcher::computeEmbedding(*a3, v38, &v65);
  v59 = v8;
  if ((v67 & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v69);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, "textEmbedding.has_value() == true", 33);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v69);
  }

  v39 = *(a1 + 16) - *(a1 + 8);
  v40 = LODWORD(v65.__r_.__value_.__r.__words[2]);
  kaldi::CuMatrix<float>::Resize(v7, v39 >> 5, LODWORD(v65.__r_.__value_.__r.__words[2]), 1, 0);
  if ((v39 >> 5) >= 1)
  {
    v41 = 0;
    v42 = 23;
    do
    {
      quasar::corrective_reranking::PhoneticMatcher::computeEmbedding(*a3, *v6 + v42 - 23, &v62);
      if (v67 != 1)
      {
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
        v69 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v69);
        v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, "Could not compute embedding for ", 32);
        v47 = (*v6 + v42);
        v48 = *v47;
        v49 = *(v47 - 15);
        v52 = *(v47 - 23);
        v50 = v47 - 23;
        v51 = v52;
        if ((v48 & 0x80u) == 0)
        {
          v53 = v50;
        }

        else
        {
          v53 = v51;
        }

        if ((v48 & 0x80u) == 0)
        {
          v54 = v48;
        }

        else
        {
          v54 = v49;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v53, v54);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v69);
      }

      v43 = *(a1 + 48);
      v44 = *(a1 + 64);
      *(&v69 + 1) = *(a1 + 40) + 4 * *(a1 + 56) * v41;
      *&v69 = &unk_1F2CFCA48;
      *&v70 = v43;
      *(&v70 + 1) = v44;
      *&v60.__r_.__value_.__r.__words[1] = 0uLL;
      v61 = 0;
      v60.__r_.__value_.__r.__words[0] = &unk_1F2D3AC18;
      kaldi::CuVector<float>::Resize(&v60, v40, 0);
      if ((v64 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      kaldi::CuVectorBase<float>::CopyFromVec(&v60, &v62);
      kaldi::CuVectorBase<float>::CopyFromVec(&v69, &v60);
      kaldi::CuVector<float>::~CuVector(&v60);
      if (v64 == 1)
      {
        kaldi::CuVector<float>::~CuVector(&v62);
      }

      ++v41;
      v42 += 32;
    }

    while (((v39 >> 5) & 0x7FFFFFFF) != v41);
  }

  kaldi::CuMatrix<float>::CuMatrix(&v69, v7, 111);
  kaldi::CuMatrixBase<float>::MulElements(&v69, &v69);
  v63 = 0;
  v62.__r_.__value_.__r.__words[0] = &unk_1F2D3AC18;
  *&v62.__r_.__value_.__r.__words[1] = 0uLL;
  kaldi::CuVector<float>::Resize(&v62, DWORD1(v70), 0);
  kaldi::CuVectorBase<float>::AddColSumMat(&v62, &v69);
  kaldi::CuVector<float>::Resize(v59, LODWORD(v62.__r_.__value_.__r.__words[2]), 1);
  kaldi::CuVectorBase<float>::CopyFromVec(v59, &v62);
  kaldi::CuVector<float>::~CuVector(&v62);
  kaldi::CuMatrix<float>::~CuMatrix(&v69);
  if (v67 == 1)
  {
    kaldi::CuVector<float>::~CuVector(&v65);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v86[0] = *MEMORY[0x1E69E54C8];
  *(v86 + *(v86[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C84A00](v87);
  std::istream::~istream();
  MEMORY[0x1B8C85200](v88);
  return a1;
}