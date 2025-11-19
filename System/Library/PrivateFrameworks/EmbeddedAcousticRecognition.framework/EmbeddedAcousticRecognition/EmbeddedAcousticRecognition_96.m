void sub_1B5737470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char **__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  a15 = &a18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  std::__hash_table<std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::SpokenFormSection>>>::~__hash_table(&a21);
  _Unwind_Resume(a1);
}

uint64_t quasar::PMBuilder::buildLFst(quasar::PMBuilder *this)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(this + 424) == 1)
  {
    if (quasar::gLogLevel >= 5)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      v3 = 0u;
      v4 = 0u;
      *v2 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Building L FST ... ", 19);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v2);
    }

    fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFst();
  }

  return 0;
}

void sub_1B5737830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  quasar::LexiconFST::~LexiconFST(&a18);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst((v18 - 136));
  _Unwind_Resume(a1);
}

void quasar::LexiconFST::~LexiconFST(quasar::LexiconFST *this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::~__hash_table(this + 1616);
  quasar::SystemConfig::~SystemConfig((this + 56));
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t quasar::PMBuilder::buildAlignedLFst(quasar::PMBuilder *this)
{
  if (*(this + 424) == 1)
  {
    if (quasar::gLogLevel >= 5)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      v3 = 0u;
      v4 = 0u;
      *v2 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Building Aligned-L FST ... ", 27);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v2);
    }

    quasar::LexiconFST::LexiconFST(v2);
  }

  return 0;
}

void sub_1B5737A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  fst::SymbolTable::~SymbolTable(&a18);
  quasar::LexiconFST::~LexiconFST(&a20);
  _Unwind_Resume(a1);
}

uint64_t quasar::PMBuilder::composeLGFsts(quasar::PMBuilder *this)
{
  result = *(this + 424);
  if (result == 1)
  {
    v4 = *(this + 5);
    v3 = *(this + 6);
    if (v3 != v4)
    {
      v5 = v3 - 2;
      v6 = v3 - 2;
      v7 = v3 - 2;
      do
      {
        v8 = *v7;
        v7 -= 2;
        (*v8)(v6);
        v5 -= 2;
        v9 = v6 == v4;
        v6 = v7;
      }

      while (!v9);
    }

    *(this + 6) = v4;
    fst::MatcherFst<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::LabelLookAheadMatcher<fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,1760u,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>>,&(quasar::olabel_lookahead_fst_type),fst::LabelLookAheadRelabeler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LabelReachableData<int>>,fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>>::MatcherFst();
  }

  return result;
}

void sub_1B57380C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::locale a27)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a27);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(&a25);
  fst::ImplToFst<fst::AddOnImpl<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst((v27 - 104));
  _Unwind_Resume(a1);
}

uint64_t fst::LabelLookAheadRelabeler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LabelReachableData<int>>::Relabel<fst::MatcherFst<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::LabelLookAheadMatcher<fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,1760u,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>>,&(quasar::olabel_lookahead_fst_type),fst::LabelLookAheadRelabeler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LabelReachableData<int>>,fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>>>(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(*(a2 + 8) + 80);
  v6 = *v5;
  if (!*v5)
  {
    v6 = v5[1];
  }

  fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::LabelReachable(v8, v6, 0);
  fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::Relabel(v8, a1, a3);
  return fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::~LabelReachable(v8);
}

void sub_1B57381CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::~LabelReachable(va);
  _Unwind_Resume(a1);
}

uint64_t quasar::PMBuilder::combineFsts(quasar::PMBuilder *this)
{
  if (*(this + 424) == 1)
  {
    v67 = 0;
    v68 = 0;
    v69 = 0;
    std::unordered_map<std::string,quasar::SpokenFormSection>::unordered_map(v66, this + 144);
    v2 = *(this + 13);
    v64 = &unk_1F2D06B30;
    v65 = v2;
    ++*(v2 + 168);
    v3 = *(this + 43);
    v4 = *(this + 44);
    if (v3 == v4)
    {
LABEL_59:
      fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFst();
    }

    v5 = 0;
    while (1)
    {
      v6 = *(v3 + 23);
      if (v6 < 0)
      {
        if (*(v3 + 8) != 4)
        {
          goto LABEL_10;
        }

        v7 = *v3;
      }

      else
      {
        v7 = v3;
        if (v6 != 4)
        {
          goto LABEL_10;
        }
      }

      if (*v7 != 1953460082)
      {
LABEL_10:
        __p[0] = v3;
        v8 = std::__hash_table<std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::SpokenFormSection>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v66, v3);
        if (quasar::SpokenFormSection::containsSubgrammar((v8 + 5)))
        {
          if (quasar::gLogLevel >= 5)
          {
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
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
            *__p = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
            v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Not combining $", 15);
            v10 = *(v3 + 23);
            if (v10 >= 0)
            {
              v11 = v3;
            }

            else
            {
              v11 = *v3;
            }

            if (v10 >= 0)
            {
              v12 = *(v3 + 23);
            }

            else
            {
              v12 = *(v3 + 8);
            }

            v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " with root because it contains subgrammars", 42);
            quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
          }

          goto LABEL_58;
        }

        std::operator+<char>();
        v14 = v65;
        v15 = fst::internal::DenseSymbolMap::Find((v65 + 40), __p);
        v16 = v15;
        if (v15 != -1)
        {
          v17 = *(v14 + 32);
          v18 = __OFSUB__(v15, v17);
          v19 = v15 - v17;
          if (v19 < 0 == v18)
          {
            v16 = *(*(v14 + 120) + 8 * v19);
          }
        }

        if (SBYTE7(v48) < 0)
        {
          operator delete(__p[0]);
        }

        if (quasar::gLogLevel >= 5)
        {
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
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
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "<", 1);
          v21 = MEMORY[0x1B8C84C00](v20, v16);
          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", ", 2);
          v23 = *(v3 + 23);
          if (v23 >= 0)
          {
            v24 = v3;
          }

          else
          {
            v24 = *v3;
          }

          if (v23 >= 0)
          {
            v25 = *(v3 + 23);
          }

          else
          {
            v25 = *(v3 + 8);
          }

          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v24, v25);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ">", 1);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
        }

        v27 = *(this + 5) + v5;
        v28 = v68;
        if (v68 >= v69)
        {
          v29 = v67;
          v30 = v68 - v67;
          v31 = (v68 - v67) >> 4;
          v32 = v31 + 1;
          if ((v31 + 1) >> 60)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v33 = v69 - v67;
          if ((v69 - v67) >> 3 > v32)
          {
            v32 = v33 >> 3;
          }

          v34 = v33 >= 0x7FFFFFFFFFFFFFF0;
          v35 = 0xFFFFFFFFFFFFFFFLL;
          if (!v34)
          {
            v35 = v32;
          }

          if (v35)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*>>>(&v67, v35);
          }

          v42 = (v68 - v67) >> 4;
          v43 = 16 * v31;
          *v43 = v16;
          *(v43 + 8) = v27;
LABEL_55:
          v37 = (v43 + 16);
          v44 = (v43 - 16 * v42);
          memcpy(v44, v29, v30);
          v45 = v67;
          v67 = v44;
          v68 = v37;
          v69 = 0;
          if (v45)
          {
            operator delete(v45);
          }

          goto LABEL_57;
        }

        *v68 = v16;
        *(v28 + 1) = v27;
        goto LABEL_45;
      }

      if (quasar::gLogLevel >= 5)
      {
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
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
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "<-2, root>", 10);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
      }

      v36 = *(this + 5) + v5;
      v28 = v68;
      if (v68 >= v69)
      {
        v29 = v67;
        v30 = v68 - v67;
        v38 = (v68 - v67) >> 4;
        v39 = v38 + 1;
        if ((v38 + 1) >> 60)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v40 = v69 - v67;
        if ((v69 - v67) >> 3 > v39)
        {
          v39 = v40 >> 3;
        }

        v34 = v40 >= 0x7FFFFFFFFFFFFFF0;
        v41 = 0xFFFFFFFFFFFFFFFLL;
        if (!v34)
        {
          v41 = v39;
        }

        if (v41)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*>>>(&v67, v41);
        }

        v42 = (v68 - v67) >> 4;
        v43 = 16 * v38;
        *v43 = -2;
        *(v43 + 8) = v36;
        goto LABEL_55;
      }

      *v68 = -2;
      *(v28 + 1) = v36;
LABEL_45:
      v37 = v28 + 4;
LABEL_57:
      v68 = v37;
LABEL_58:
      v3 += 24;
      v5 += 16;
      if (v3 == v4)
      {
        goto LABEL_59;
      }
    }
  }

  return 0;
}

void sub_1B5738DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(&a22);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(&a24);
  fst::SymbolTable::~SymbolTable((v31 - 192));
  std::__hash_table<std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::SpokenFormSection>>>::~__hash_table(v31 - 176);
  v33 = *(v31 - 136);
  if (v33)
  {
    *(v31 - 128) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::SpokenFormSection::containsSubgrammar(quasar::SpokenFormSection *this)
{
  v1 = *(this + 3);
  v2 = *(this + 4);
  if (v1 == v2)
  {
    return 0;
  }

  while (1)
  {
    if (*(v1 + 87) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, *(v1 + 64), *(v1 + 72));
    }

    else
    {
      v9 = *(v1 + 64);
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      break;
    }

    if (*(&v9.__r_.__value_.__s + 23))
    {
      return 1;
    }

LABEL_9:
    v6 = 0;
    v7 = 0;
    v8 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v6, *(v1 + 88), *(v1 + 96), 0xAAAAAAAAAAAAAAABLL * ((*(v1 + 96) - *(v1 + 88)) >> 3));
    v3 = v6;
    v4 = v7;
    v10 = &v6;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (v3 != v4)
    {
      return 1;
    }

    v1 += 112;
    if (v1 == v2)
    {
      return 0;
    }
  }

  if (!v9.__r_.__value_.__l.__size_)
  {
    goto LABEL_9;
  }

  operator delete(v9.__r_.__value_.__l.__data_);
  return 1;
}

void sub_1B573903C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::SpokenFormSection>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::SpokenFormSection>>>::clear(a1);
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

void std::__hash_table<std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::SpokenFormSection>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::SpokenFormSection>>>::__deallocate_node(a1, *(a1 + 16));
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

void std::vector<quasar::RegexReplacementRule>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<quasar::RegexReplacementRule>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t std::unordered_map<std::string,quasar::SpokenFormSection>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::SpokenFormSection>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,quasar::SpokenFormSection> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::SpokenFormSection>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,quasar::SpokenFormSection> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::SpokenFormSection>>>::__construct_node_hash<std::pair<std::string const,quasar::SpokenFormSection> const&>();
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

void sub_1B5739464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,quasar::SpokenFormSection>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5739504(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,quasar::SpokenFormSection>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,quasar::SpokenFormSection>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  this[2].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  std::vector<quasar::SpokenFormLine>::__init_with_size[abi:ne200100]<quasar::SpokenFormLine*,quasar::SpokenFormLine*>(&this[2], *(a2 + 6), *(a2 + 7), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 7) - *(a2 + 6)) >> 4));
  return this;
}

void sub_1B57395C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::SpokenFormLine>::__init_with_size[abi:ne200100]<quasar::SpokenFormLine*,quasar::SpokenFormLine*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::SpokenFormLine>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5739664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::SpokenFormLine>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::SpokenFormLine>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::SpokenFormLine>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::SpokenFormLine>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

quasar::SpokenFormLine *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::SpokenFormLine>,quasar::SpokenFormLine*,quasar::SpokenFormLine*,quasar::SpokenFormLine*>(uint64_t a1, quasar::SpokenFormLine *a2, quasar::SpokenFormLine *a3, quasar::SpokenFormLine *this)
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
      quasar::SpokenFormLine::SpokenFormLine(v4, v6);
      v6 = (v6 + 112);
      v4 = (v11 + 112);
      v11 = (v11 + 112);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::SpokenFormLine>,quasar::SpokenFormLine*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::SpokenFormLine>,quasar::SpokenFormLine*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<quasar::SpokenFormLine>,std::reverse_iterator<quasar::SpokenFormLine*>,std::reverse_iterator<quasar::SpokenFormLine*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<quasar::SpokenFormLine>,std::reverse_iterator<quasar::SpokenFormLine*>,std::reverse_iterator<quasar::SpokenFormLine*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v9[3] = v5;
    v9[4] = v6;
    v8 = a3;
    do
    {
      v9[0] = (v8 - 24);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v9);
      if (*(v8 - 25) < 0)
      {
        operator delete(*(v8 - 48));
      }

      if (*(v8 - 57) < 0)
      {
        operator delete(*(v8 - 80));
      }

      if (*(v8 - 81) < 0)
      {
        operator delete(*(v8 - 104));
      }

      v8 -= 112;
    }

    while (v8 != a5);
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,quasar::SpokenFormSection>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = (a2 + 64);
    std::vector<quasar::SpokenFormLine>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a2 + 63) < 0)
    {
      operator delete(*(a2 + 40));
    }

    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void quasar::GrammarFST::GrammarFST(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, __int128 *a6, const void ***a7)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = *a2;
  v11 = a2[1];
  *(a1 + 32) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = 0;
  *(a1 + 40) = a4;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 48, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1065353216;
  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 112), *a6, *(a6 + 1));
  }

  else
  {
    v12 = *a6;
    *(a1 + 128) = *(a6 + 2);
    *(a1 + 112) = v12;
  }

  std::set<std::string>::set[abi:ne200100]((a1 + 136), a7);
  quasar::PMRegexEnumerator::loadEnumeratorsFromConfigFile(a5, v13);
}

void sub_1B5739A24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(v3);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  v5 = *(v2 + 32);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>>>::clear(a1);
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

void std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>>>::__deallocate_node(a1, *(a1 + 16));
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

void std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<quasar::PMRegexEnumerator>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<quasar::PMRegexEnumerator>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void quasar::GrammarFST::~GrammarFST(quasar::GrammarFST *this)
{
  std::__tree<std::string>::destroy(this + 136, *(this + 18));
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(this + 72);
  v3 = (this + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void quasar::LexiconFST::LexiconFST(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  quasar::SystemConfig::SystemConfig((a1 + 56));
}

void sub_1B5739FAC(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::~__hash_table(v1 + 1616);
  quasar::SystemConfig::~SystemConfig((v1 + 56));
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 32);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t *fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusLogArc>::RemoveEpsLocalClass(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  if ((*(*a2 + 24))(a2) != -1)
  {
    *(a1 + 2) = (*(**a1 + 200))();
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusLogArc>::InitNumArcs(a1);
    v4 = (*(**a1 + 160))();
    if (v4 >= 1)
    {
      v5 = 0;
      do
      {
        for (i = 0; i < (*(**a1 + 40))(*a1, v5); ++i)
        {
          fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusLogArc>::RemoveEps(a1, v5, i);
        }

        v5 = (v5 + 1);
      }

      while (v5 != v4);
    }

    fst::Connect<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a2);
  }

  return a1;
}

void sub_1B573A170(_Unwind_Exception *exception_object)
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

uint64_t fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusLogArc>::InitNumArcs(void *a1)
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

void sub_1B573A434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusLogArc>::RemoveEps(uint64_t *a1, uint64_t a2, uint64_t a3)
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
        fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusLogArc>::RemoveEpsPattern2(a1, a2, a3, v7, *(&v7 + 1));
      }
    }

    else
    {
      fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusLogArc>::RemoveEpsPattern1(a1, a2, a3, v7, *(&v7 + 1));
    }
  }
}

void sub_1B573A5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
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

void fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusLogArc>::RemoveEpsPattern1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v9 = HIDWORD(a5);
  v42 = 0;
  v43 = 0;
  v44 = 0;
  (*(**a1 + 296))();
  v10 = a5 >> 32;
  v11 = INFINITY;
  v12 = INFINITY;
  while (!(*(*v41 + 24))(v41))
  {
    v40 = *(*(*v41 + 32))(v41);
    if (HIDWORD(v40) != *(a1 + 2))
    {
      CanCombineArcs = fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::CanCombineArcs(a1, &v45, &v40, &v39);
      v14 = *(&v40 + 2);
      if (CanCombineArcs)
      {
        if (v12 == INFINITY)
        {
          v12 = *(&v40 + 2);
        }

        else if (*(&v40 + 2) != INFINITY)
        {
          if (v12 <= *(&v40 + 2))
          {
            v17 = expf(-(*(&v40 + 2) - v12));
            v12 = v12 - logf(v17 + 1.0);
          }

          else
          {
            v15 = expf(-(v12 - *(&v40 + 2)));
            v12 = v14 - logf(v15 + 1.0);
          }
        }

        --*(a1[5] + 4 * v10);
        --*(a1[2] + 4 * SHIDWORD(v40));
        HIDWORD(v40) = *(a1 + 2);
        (*(*v41 + 88))(v41, &v40);
        std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](&v42, &v39);
      }

      else if (v11 == INFINITY)
      {
        v11 = *(&v40 + 2);
      }

      else if (*(&v40 + 2) != INFINITY)
      {
        if (v11 <= *(&v40 + 2))
        {
          v18 = expf(-(*(&v40 + 2) - v11));
          v11 = v11 - logf(v18 + 1.0);
        }

        else
        {
          v16 = expf(-(v11 - *(&v40 + 2)));
          v11 = v14 - logf(v16 + 1.0);
        }
      }
    }

    (*(*v41 + 40))(v41);
  }

  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  v20 = (*(**a1 + 32))(*a1, v9);
  *&v40 = v20;
  LODWORD(v39) = 2139095040;
  if (v20 == INFINITY)
  {
    goto LABEL_42;
  }

  if (v45)
  {
    if (v11 == INFINITY)
    {
      v11 = v20;
    }

    else if (v20 != INFINITY)
    {
      if (v11 <= v20)
      {
        v25 = expf(-(v20 - v11));
        v11 = v11 - logf(v25 + 1.0);
      }

      else
      {
        v23 = expf(-(v11 - v20));
        v11 = v20 - logf(v23 + 1.0);
      }
    }

LABEL_42:
    v20 = v12;
    goto LABEL_58;
  }

  v21 = NAN;
  if (*&v46 != -INFINITY && v20 != -INFINITY)
  {
    if (*&v46 == INFINITY || v20 == INFINITY)
    {
      v21 = INFINITY;
    }

    else
    {
      v21 = v20 + *&v46;
    }
  }

  if (v12 != INFINITY)
  {
    if (v20 == INFINITY)
    {
      v20 = v12;
    }

    else if (v12 <= v20)
    {
      v26 = expf(-(v20 - v12));
      v20 = v12 - logf(v26 + 1.0);
    }

    else
    {
      v24 = expf(-(v12 - v20));
      v20 = v20 - logf(v24 + 1.0);
    }
  }

  LODWORD(v40) = (*(**a1 + 32))(*a1, a2);
  LODWORD(v39) = 2139095040;
  if (*&v40 == INFINITY)
  {
    ++*(a1[5] + 4 * a2);
  }

  v27 = *a1;
  v28.n128_f32[0] = (*(**a1 + 32))(*a1, a2);
  if (v28.n128_f32[0] >= v21)
  {
    v29 = v21;
  }

  else
  {
    v29 = v28.n128_f32[0];
  }

  v31 = v21 == -INFINITY || v28.n128_f32[0] == -INFINITY;
  v28.n128_u32[0] = 2143289344;
  if (!v31)
  {
    v28.n128_f32[0] = v29;
  }

  (*(*v27 + 184))(v27, a2, v28);
  --*(a1[5] + 4 * v10);
  (*(**a1 + 184))(*a1, v9, INFINITY);
LABEL_58:
  *&v40 = v20;
  LODWORD(v39) = 2139095040;
  v19.n128_f32[0] = v20;
  if (v20 != INFINITY)
  {
    *&v40 = v11;
    LODWORD(v39) = 2139095040;
    v19.n128_f32[0] = v11;
    if (v11 == INFINITY)
    {
      --*(a1[5] + 4 * a2);
      --*(a1[2] + 4 * SHIDWORD(v46));
      HIDWORD(v46) = *(a1 + 2);
      (*(**a1 + 296))(v19);
      (*(*v40 + 64))(v40, a3);
      (*(*v40 + 88))(v40, &v45);
      if (v40)
      {
        (*(*v40 + 8))(v40);
      }
    }

    else
    {
      v32 = v11;
      if (v20 != INFINITY)
      {
        if (v11 == INFINITY)
        {
          v32 = v20;
        }

        else if (v20 <= v11)
        {
          v34 = expf(-(v11 - v20));
          v32 = v20 - logf(v34 + 1.0);
        }

        else
        {
          v33 = expf(-(v20 - v11));
          v32 = v11 - logf(v33 + 1.0);
        }
      }

      v35 = NAN;
      if (v11 != -INFINITY && (LODWORD(v32) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v35 = INFINITY;
        if (v11 != INFINITY)
        {
          v35 = v11 - v32;
        }
      }

      fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusLogArc>::Reweight(a1, a2, a3, v35);
    }
  }

  v36 = v42;
  if (v43 != v42)
  {
    v37 = 0;
    v38 = 0;
    do
    {
      ++*(a1[5] + 4 * a2);
      ++*(a1[2] + 4 * *&v36[v37 + 12]);
      (*(**a1 + 208))(*a1, a2, v19);
      ++v38;
      v36 = v42;
      v37 += 16;
    }

    while (v38 < (v43 - v42) >> 4);
  }

  if (v36)
  {
    v43 = v36;
    operator delete(v36);
  }
}

void sub_1B573ADEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusLogArc>::RemoveEpsPattern2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void sub_1B573B360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusLogArc>::Reweight(void *a1, uint64_t a2, uint64_t a3, float a4)
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

void sub_1B573B764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

void *fst::ImplToFst<fst::AddOnImpl<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D2DAC8;
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

uint64_t fst::ImplToFst<fst::AddOnImpl<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
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

void std::vector<quasar::DataFeed>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<quasar::DataFeed>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::vector<quasar::DataFeed>::__init_with_size[abi:ne200100]<quasar::DataFeed*,quasar::DataFeed*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::DataFeed>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B573BA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::DataFeed>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::DataFeed>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::DataFeed>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

quasar::DataFeed *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::DataFeed>,quasar::DataFeed*,quasar::DataFeed*,quasar::DataFeed*>(uint64_t a1, quasar::DataFeed *a2, quasar::DataFeed *a3, quasar::DataFeed *this)
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
      quasar::DataFeed::DataFeed(v4, v6);
      v6 = (v6 + 160);
      v4 = (v11 + 160);
      v11 = (v11 + 160);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::DataFeed>,quasar::DataFeed*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,quasar::DataFeed>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::DataFeed>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::DataFeed>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::DataFeed>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,quasar::DataFeed>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::DataFeed>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::DataFeed>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::DataFeed>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,quasar::DataFeed>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::DataFeed>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::DataFeed>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::DataFeed>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::string const,quasar::DataFeed>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::pair<std::string const,quasar::DataFeed>::~pair(uint64_t a1)
{
  v2 = (a1 + 24);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(a1 + 136);
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v4 = (a1 + 72);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v4 = v2;
  std::vector<quasar::DataFeedItem>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::SpokenFormSection>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::SpokenFormSection>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1B573BEEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,quasar::SpokenFormSection>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B573BFC0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,quasar::SpokenFormSection>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::vector<quasar::SpokenFormLine>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<quasar::SpokenFormLine>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::vector<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__emplace_back_slow_path<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> const&>(void *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 3 > v6)
  {
    v6 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>(a1, v6);
  }

  v9 = (16 * v5);
  v15 = 0;
  v16 = v9;
  *(&v17 + 1) = 0;
  v10 = *(a2 + 8);
  v9[1] = v10;
  ++*(v10 + 56);
  *v9 = &unk_1F2D04A58;
  *&v17 = 16 * v5 + 16;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>*>(a1, v3, v4, 0);
  v11 = *a1;
  *a1 = 0;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~__split_buffer(&v15);
  return v14;
}

void sub_1B573C148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_1B573C1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::MatcherFst<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::LabelLookAheadMatcher<fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,1760u,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>>,&(quasar::olabel_lookahead_fst_type),fst::LabelLookAheadRelabeler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LabelReachableData<int>>,fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>>::~MatcherFst(void *a1)
{
  fst::ImplToFst<fst::AddOnImpl<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::MatcherFst<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::LabelLookAheadMatcher<fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,1760u,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>>,&(quasar::olabel_lookahead_fst_type),fst::LabelLookAheadRelabeler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LabelReachableData<int>>,fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(*(result + 8) + 72);
  *a2 = 0;
  *(a2 + 8) = *(v2 + 96);
  return result;
}

uint64_t fst::MatcherFst<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::LabelLookAheadMatcher<fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,1760u,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>>,&(quasar::olabel_lookahead_fst_type),fst::LabelLookAheadRelabeler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LabelReachableData<int>>,fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(*(*(result + 8) + 72) + 80) + 20 * a2;
  v5 = *(v3 + 4);
  v4 = *(v3 + 8);
  v6 = *(*(*(result + 8) + 72) + 88) + 16 * v5;
  *a3 = 0;
  a3[1] = v6;
  a3[2] = v4;
  a3[3] = 0;
  return result;
}

void fst::MatcherFst<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::LabelLookAheadMatcher<fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,1760u,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>>,&(quasar::olabel_lookahead_fst_type),fst::LabelLookAheadRelabeler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LabelReachableData<int>>,fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>>::CreateImpl(uint64_t a1)
{
  v2 = 0;
  v3 = xmmword_1B5B20780;
  v1 = &unk_1F2D2DC80;
  fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>::SortedMatcher(&v4, a1, 0, 1);
}

void sub_1B573C5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  fst::LabelLookAheadMatcher<fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,1760u,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>>::~LabelLookAheadMatcher(&a11);
  fst::LabelLookAheadMatcher<fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,1760u,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>>::~LabelLookAheadMatcher(&a36);
  _Unwind_Resume(a1);
}

uint64_t fst::AddOnImpl<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>>::SetAddOn(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 80);
  if (result != a2)
  {
    if (result)
    {
      v5 = *(result + 16) - 1;
      *(result + 16) = v5;
      if (!v5)
      {
        v6 = fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>::~AddOnPair(result);
        result = MEMORY[0x1B8C85350](v6, 0x1020C40EDCEB4C7);
      }
    }

    *(a1 + 80) = a2;
    if (a2)
    {
      ++*(a2 + 16);
    }
  }

  return result;
}

void fst::LabelLookAheadMatcher<fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,1760u,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>>::LabelLookAheadMatcher(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = 0;
  *(a1 + 12) = xmmword_1B5B20780;
  *a1 = &unk_1F2D2DC80;
  fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>::SortedMatcher(a1 + 32, a2, a3, 1);
}

void sub_1B573C764(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C40F647C574);
  fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>::~SortedMatcher((v1 + 32));
  _Unwind_Resume(a1);
}

void fst::LabelLookAheadMatcher<fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,1760u,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>>::~LabelLookAheadMatcher(void *a1)
{
  fst::LabelLookAheadMatcher<fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,1760u,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>>::~LabelLookAheadMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::LabelLookAheadMatcher<fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,1760u,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 106))
  {
    result = a2 | 4;
  }

  else
  {
    result = a2;
  }

  if (*(a1 + 198))
  {
    return a2 | 4;
  }

  v4 = *(a1 + 184);
  if (v4)
  {
    if ((*(v4 + 113) & 1) != 0 || *(*(v4 + 88) + 48) == 1)
    {
      return a2 | 4;
    }
  }

  return result;
}

uint64_t fst::LabelLookAheadMatcher<fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,1760u,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>>::Flags(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (!v1)
  {
    return 0;
  }

  if (**(v1 + 80))
  {
    return 1776;
  }

  return 1760;
}

uint64_t fst::LabelLookAheadMatcher<fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,1760u,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>>::SetState_(uint64_t result, int a2)
{
  if (*(result + 192) != a2)
  {
    *(result + 192) = a2;
    *(result + 196) = 0;
  }

  return result;
}

uint64_t fst::LabelLookAheadMatcher<fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,1760u,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>>::Value_(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    return a1 + 88;
  }

  else
  {
    return **(a1 + 56) + 16 * *(*(a1 + 56) + 16);
  }
}

uint64_t fst::LabelLookAheadMatcher<fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,1760u,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>>::Next_(uint64_t result)
{
  if (*(result + 104) == 1)
  {
    *(result + 104) = 0;
  }

  else
  {
    ++*(*(result + 56) + 16);
  }

  return result;
}

void fst::LabelLookAheadMatcher<fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,1760u,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>>::InitLookAheadFst(void *a1, uint64_t a2, char a3)
{
  a1[22] = a2;
  if (a1[23])
  {
    v6 = (*(*a1 + 24))(a1, 0) == 1;
    v7 = a1[23];

    fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::ReachInit<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(v7, a2, v6, a3);
  }
}

void fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>::SortedMatcher(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = &unk_1F2D2DD48;
  *(a1 + 8) = (*(*a2 + 88))(a2, 0);
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  *(a1 + 36) = a4;
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_1B5AE3080;
  *(a1 + 74) = 0;
  fst::MemoryPool<fst::ArcIterator<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>>::MemoryPool((a1 + 80), 1);
}

void sub_1B573CB80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::MemoryPool<fst::ArcIterator<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>>::~MemoryPool((v18 + 80));
  _Unwind_Resume(a1);
}

void fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>::~SortedMatcher(void *a1)
{
  fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>::~SortedMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>::Type(uint64_t a1, uint64_t a2)
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

uint64_t fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>::Properties(uint64_t a1, uint64_t a2)
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

uint64_t fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>::Value_(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    return a1 + 56;
  }

  else
  {
    return **(a1 + 24) + 16 * *(*(a1 + 24) + 16);
  }
}

uint64_t fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>::Next_(uint64_t result)
{
  if (*(result + 72) == 1)
  {
    *(result + 72) = 0;
  }

  else
  {
    ++*(*(result + 24) + 16);
  }

  return result;
}

void fst::MemoryPool<fst::ArcIterator<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D2DDE0;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D2DDE0;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D2DE20;
  a1[1] = 32 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B573CF48(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D2DE20;
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

void fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>::SortedMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D2DD48;
  *(a1 + 8) = (*(**(a2 + 8) + 88))(*(a2 + 8), a3);
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 74) = *(a2 + 74);
  fst::MemoryPool<fst::ArcIterator<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>>::MemoryPool((a1 + 80), 1);
}

void fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>::SetState(uint64_t a1, int a2)
{
  if (*(a1 + 16) != a2)
  {
    *(a1 + 16) = a2;
    if (*(a1 + 32) == 3)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      v4 = fst::LogMessage::LogMessage(&v13, __p);
      v5 = fst::cerr(v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "SortedMatcher: bad match type", 29);
      fst::LogMessage::~LogMessage(&v13);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      *(a1 + 74) = 1;
    }

    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = *(*(*(a1 + 8) + 8) + 80) + 20 * a2;
      *v6 = *(*(*(a1 + 8) + 8) + 88) + 16 * *(v7 + 4);
      v8 = *(v7 + 8);
      v6[1] = v8;
      v6[2] = 0;
    }

    else
    {
      v9 = *(a1 + 136);
      if (v9)
      {
        *(a1 + 136) = v9[3];
      }

      else
      {
        v9 = fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>::Link>::Allocate((a1 + 88), 1);
        v9[3] = 0;
      }

      v10 = *(*(*(a1 + 8) + 8) + 80) + 20 * a2;
      *v9 = *(*(*(a1 + 8) + 8) + 88) + 16 * *(v10 + 4);
      v8 = *(v10 + 8);
      v9[1] = v8;
      v9[2] = 0;
      *(a1 + 24) = v9;
    }

    *(a1 + 48) = v8;
    *(a1 + 68) = a2;
  }
}

void sub_1B573D2A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>::Find(uint64_t a1, int a2)
{
  *(a1 + 73) = 1;
  if (*(a1 + 74) == 1)
  {
    result = 0;
    *(a1 + 72) = 0;
    *(a1 + 40) = -1;
    return result;
  }

  result = a2 == 0;
  *(a1 + 72) = result;
  if (a2 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  *(a1 + 40) = v4;
  v5 = *(a1 + 32);
  if (v4 < *(a1 + 36))
  {
    v6 = *(a1 + 24);
    v7 = v6[1];
    if (v7)
    {
      v8 = 0;
      v9 = *v6;
      while (1)
      {
        v10 = v9 + 1;
        if (!v5)
        {
          v10 = v9;
        }

        v11 = *v10;
        v12 = v11 == v4;
        v13 = v11 <= v4 ? 0 : 7;
        if (v12)
        {
          v13 = 1;
        }

        if (v13)
        {
          break;
        }

        ++v8;
        v9 += 4;
        if (v7 == v8)
        {
          v8 = v6[1];
          goto LABEL_34;
        }
      }

      if (v13 == 1)
      {
        v6[2] = v8;
        return 1;
      }
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_34;
  }

  v14 = *(a1 + 48);
  v6 = *(a1 + 24);
  v8 = 0;
  if (!v14)
  {
LABEL_34:
    v6[2] = v8;
    return result;
  }

  v15 = *v6;
  while (1)
  {
    v16 = (v14 + v8) >> 1;
    v17 = &v15[4 * v16];
    if (v5)
    {
      ++v17;
    }

    v18 = *v17;
    if (v18 <= v4)
    {
      break;
    }

    v14 = (v14 + v8) >> 1;
LABEL_29:
    if (v8 >= v14)
    {
      goto LABEL_34;
    }
  }

  if (v18 < v4)
  {
    v8 = v16 + 1;
    goto LABEL_29;
  }

  v6[2] = v16;
  v19 = &v15[4 * ((v14 + v8) >> 1) - 4];
  while (v16 > v8)
  {
    v6[2] = --v16;
    v20 = (v19 + 4);
    if (!v5)
    {
      v20 = v19;
    }

    v19 -= 16;
    if (*v20 != v4)
    {
      v6[2] = (v16 + 1);
      return 1;
    }
  }

  return 1;
}

BOOL fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>::Done(uint64_t a1)
{
  if (*(a1 + 72))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = v2[2];
  if (v3 >= v2[1])
  {
    return 1;
  }

  if (*(a1 + 73) != 1)
  {
    return 0;
  }

  v4 = (*v2 + 16 * v3);
  if (*(a1 + 32))
  {
    ++v4;
  }

  return *v4 != *(a1 + 40);
}

uint64_t fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::LabelReachable(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  *(result + 8) = -1;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 1065353216;
  *(result + 80) = a2;
  if (!a3)
  {
    operator new();
  }

  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 88) = a3;
  *(result + 112) = 0;
  ++*(a2 + 8);
  return result;
}

void sub_1B573D574(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x10A0C4057A1BE17);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v2);
  _Unwind_Resume(a1);
}

void sub_1B573D764(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C4057A1BE17);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::TransformFst(uint64_t *a1)
{
  v2 = (*(**a1 + 160))(*a1);
  v20 = 0;
  std::vector<long>::vector[abi:ne200100](__p, v2);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = v2;
    do
    {
      v5 = *a1;
      v20 = &unk_1F2D04CD8;
      v23 = 0;
      fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(v5);
      v6 = *(v5 + 8);
      v7 = *(*(v6 + 64) + 8 * v3);
      v21 = v7;
      v22 = v6 + 8;
      for (i = v23; ; i = ++v23)
      {
        v9 = *(v7 + 24);
        if (i >= (*(v7 + 32) - v9) >> 4)
        {
          break;
        }

        v19 = *(v9 + 16 * i);
        if (*a1[10])
        {
          v10 = &v19;
        }

        else
        {
          v10 = &v19.n128_u8[4];
        }

        v18 = v10->n128_u32[0];
        if (v18)
        {
          if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a1 + 2, &v18))
          {
            v25 = &v18;
            *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(a1 + 2, &v18) + 5) = v2;
            v25 = 0;
            std::vector<long long>::push_back[abi:ne200100](__p, &v25);
            ++v2;
          }

          v25 = &v18;
          v19.n128_u32[3] = *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(a1 + 2, &v18) + 5);
          fst::MutableArcIterator<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::SetValue(&v20, &v19);
          v7 = v21;
        }

        ++*(__p[0] + v19.n128_i32[3]);
      }

      v11 = (*(**a1 + 32))(*a1, v3);
      *&v20 = v11;
      v19.n128_u32[0] = 2139095040;
      if (v11 != INFINITY)
      {
        if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a1 + 2, &fst::kNoLabel))
        {
          v20 = &fst::kNoLabel;
          *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(a1 + 2, &fst::kNoLabel) + 5) = v2;
          v20 = 0;
          std::vector<long long>::push_back[abi:ne200100](__p, &v20);
          ++v2;
        }

        v19.n128_u64[0] = &fst::kNoLabel;
        v12 = *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(a1 + 2, &fst::kNoLabel) + 5);
        v20 = -1;
        v21 = __PAIR64__(v12, LODWORD(v11));
        (*(**a1 + 208))(*a1, v3, &v20);
        ++*(__p[0] + SHIDWORD(v21));
        (*(**a1 + 184))(*a1, v3, INFINITY);
      }

      ++v3;
    }

    while (v3 != v4);
  }

  while (1)
  {
    v14 = (*(**a1 + 160))();
    v15 = *(**a1 + 200);
    if (v14 >= v2)
    {
      break;
    }

    v13 = v15();
    (*(**a1 + 184))(*a1, v13, 0.0);
  }

  v16 = v15();
  (*(**a1 + 176))(*a1, v16);
  if (v16 >= 1)
  {
    v17 = 0;
    do
    {
      if (!*(__p[0] + v17))
      {
        v20 = 0;
        LODWORD(v21) = 0;
        HIDWORD(v21) = v17;
        (*(**a1 + 208))(*a1, v16, &v20);
      }

      ++v17;
    }

    while (v16 != v17);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1B573DC08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::FindIntervals(uint64_t a1, uint64_t a2)
{
  fst::StateReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::StateReachable(v37, *a1);
  if (v42 == 1)
  {
    *(a1 + 113) = v42;
  }

  else
  {
    v4 = (*(a1 + 80) + 56);
    if (v4 != &v38)
    {
      std::vector<fst::IntervalSet<int>>::__assign_with_size[abi:ne200100]<fst::IntervalSet<int>*,fst::IntervalSet<int>*>((*(a1 + 80) + 56), v38, v39, (v39 - v38) >> 5);
    }

    v5 = a2;
    std::vector<fst::IntervalSet<int>>::resize(v4, a2);
    v6 = fst::LabelReachableData<int>::Label2Index(*(a1 + 80));
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = v6;
      do
      {
        v9 = *(v7 + 5);
        v36 = *(v7 + 4);
        v10 = *(v40 + v9);
        __p[0] = &v36;
        *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v8, &v36) + 5) = v10;
        v7 = *v7;
      }

      while (v7);
    }

    std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear((a1 + 16));
    v33 = a2;
    if (a2 < 1)
    {
      v13 = 0;
      v14 = 0.0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0.0;
      do
      {
        v15 = (*(*v4 + v11 + 8) - *(*v4 + v11)) >> 3;
        if (v15 >= 2)
        {
          ++v13;
          if (FLAGS_v >= 3)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
            v16 = fst::LogMessage::LogMessage(&v36, __p);
            v17 = fst::cerr(v16);
            v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "state: ", 7);
            v19 = MEMORY[0x1B8C84C20](v18, v12);
            v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " # of intervals: ", 17);
            MEMORY[0x1B8C84C00](v20, (*(*v4 + v11 + 8) - *(*v4 + v11)) >> 3);
            fst::LogMessage::~LogMessage(&v36);
            if (v35 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        v14 = v14 + v15;
        ++v12;
        v11 += 32;
      }

      while (v5 != v12);
    }

    if (FLAGS_v > 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
      v21 = fst::LogMessage::LogMessage(&v36, __p);
      v22 = fst::cerr(v21);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "# of states: ", 13);
      MEMORY[0x1B8C84C00](v23, v33);
      fst::LogMessage::~LogMessage(&v36);
      if (v35 < 0)
      {
        operator delete(__p[0]);
      }

      if (FLAGS_v >= 2)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
        v24 = fst::LogMessage::LogMessage(&v36, __p);
        v25 = fst::cerr(v24);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "# of intervals: ", 16);
        MEMORY[0x1B8C84BE0](v26, v14);
        fst::LogMessage::~LogMessage(&v36);
        if (v35 < 0)
        {
          operator delete(__p[0]);
        }

        if (FLAGS_v >= 2)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
          v27 = fst::LogMessage::LogMessage(&v36, __p);
          v28 = fst::cerr(v27);
          v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "# of intervals/state: ", 22);
          MEMORY[0x1B8C84BE0](v29, v14 / v33);
          fst::LogMessage::~LogMessage(&v36);
          if (v35 < 0)
          {
            operator delete(__p[0]);
          }

          if (FLAGS_v >= 2)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
            v30 = fst::LogMessage::LogMessage(&v36, __p);
            v31 = fst::cerr(v30);
            v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "# of non-interval states: ", 26);
            MEMORY[0x1B8C84C20](v32, v13);
            fst::LogMessage::~LogMessage(&v36);
            if (v35 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }
    }
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  __p[0] = &v38;
  std::vector<fst::IntervalSet<int>>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1B573DFF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, char a17, __int16 a18, char a19, char a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::StateReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::~StateReachable(&a19);
  _Unwind_Resume(a1);
}

void *std::vector<long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B573E12C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::IntervalSet<int>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 32 * a2;
      if (v3 != v6)
      {
        v7 = a1[1];
        do
        {
          v9 = *(v7 - 32);
          v7 -= 32;
          v8 = v9;
          if (v9)
          {
            *(v3 - 24) = v8;
            operator delete(v8);
          }

          v3 = v7;
        }

        while (v7 != v6);
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<fst::IntervalSet<int>>::__append(a1, v5);
  }
}

uint64_t fst::LabelReachableData<int>::Label2Index(uint64_t a1)
{
  if ((*(a1 + 2) & 1) == 0)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v2 = fst::LogMessage::LogMessage(&v7, __p);
    v3 = fst::cerr(v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "LabelReachableData: no relabeling data", 38);
    fst::LogMessage::~LogMessage(&v7);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return a1 + 16;
}

void sub_1B573E298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::StateReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::~StateReachable(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 8);
  std::vector<fst::IntervalSet<int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

uint64_t fst::StateReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::StateReachable(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (!(*(*a2 + 64))(a2, 0x800000000, 1))
  {
    fst::StateReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::CyclicStateReachable();
  }

  fst::StateReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::AcyclicStateReachable(a1, a2);
  return a1;
}

void sub_1B573E3B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 + 32);
  if (v4)
  {
    *(v2 + 40) = v4;
    operator delete(v4);
  }

  std::vector<fst::IntervalSet<int>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t fst::StateReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::AcyclicStateReachable(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 32;
  v5 = *(a1 + 32);
  v6 = (a1 + 8);
  v9[0] = a2;
  v9[1] = v6;
  v9[2] = v4;
  if (v5 == *(v4 + 8))
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  v10 = v7;
  v11 = 0;
  std::vector<fst::IntervalSet<int>>::clear[abi:ne200100](v6);
  result = fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntervalReachVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a2, v9);
  if (v11 == 1)
  {
    *(a1 + 56) = 1;
  }

  return result;
}

void sub_1B573E714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  fst::LogMessage::~LogMessage((v27 - 68));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  fst::StateReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::~StateReachable(&a18);
  if (a26)
  {
    a27 = a26;
    operator delete(a26);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst((v27 - 88));
  _Unwind_Resume(a1);
}

void std::vector<fst::IntervalSet<int>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 32);
      v4 -= 32;
      v5 = v6;
      if (v6)
      {
        *(v2 - 24) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntervalReachVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2)
{
  *(a2 + 28) = 0;
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    memset(&v7, 0, sizeof(v7));
    v5 = 0u;
    v6 = 0u;
    v4 = 0u;
    fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MemoryPool(v3, 64);
  }

  return result;
}

void sub_1B573EF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v9 = *(v7 - 112);
  if (v9)
  {
    *(v7 - 104) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::IntervalReachVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::InitState(void *a1, uint64_t a2)
{
  v4 = a2;
  v5 = a1[1];
  if (a2 >= ((v5[1] - *v5) >> 5))
  {
    do
    {
      __p = 0;
      v18 = 0;
      v19 = 0;
      v20 = -1;
      std::vector<fst::IntervalSet<int>>::push_back[abi:ne200100](v5, &__p);
      if (__p)
      {
        v18 = __p;
        operator delete(__p);
      }

      v5 = a1[1];
    }

    while (v4 >= (v5[1] - *v5) >> 5);
  }

  for (i = a1[2]; v4 >= (*(i + 8) - *i) >> 2; i = a1[2])
  {
    LODWORD(__p) = -1;
    std::vector<int>::push_back[abi:ne200100](i, &__p);
  }

  LODWORD(__p) = (*(**a1 + 32))(*a1, a2);
  v21 = 2139095040;
  if (*&__p == INFINITY)
  {
    return 1;
  }

  v7 = *a1[1] + 32 * v4;
  v8 = *(a1 + 6);
  if ((v8 & 0x80000000) == 0)
  {
    LODWORD(__p) = *(a1 + 6);
    HIDWORD(__p) = v8 + 1;
    std::vector<std::pair<int,int>>::push_back[abi:ne200100](v7, &__p);
    v9 = *(a1 + 6);
    *(a1 + 6) = v9 + 1;
    *(*a1[2] + 4 * v4) = v9;
    return 1;
  }

  if ((*(**a1 + 40))(*a1, a2))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    }

    v11 = fst::LogMessage::LogMessage(&v21, &__p);
    v12 = fst::cerr(v11);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "IntervalReachVisitor: state2index map must be empty ", 52);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "for this FST", 12);
  }

  else
  {
    v13 = *(*a1[2] + 4 * v4);
    if ((v13 & 0x80000000) == 0)
    {
      LODWORD(__p) = *(*a1[2] + 4 * v4);
      HIDWORD(__p) = v13 + 1;
      std::vector<std::pair<int,int>>::push_back[abi:ne200100](v7, &__p);
      return 1;
    }

    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    }

    v15 = fst::LogMessage::LogMessage(&v21, &__p);
    v16 = fst::cerr(v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "IntervalReachVisitor: state2index map incomplete", 48);
  }

  fst::LogMessage::~LogMessage(&v21);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  result = 0;
  *(a1 + 28) = 1;
  return result;
}

void sub_1B573F2A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  fst::LogMessage::~LogMessage((v15 - 36));
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::IntervalReachVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::FinishState(uint64_t a1, int a2, int a3, int8x16_t a4)
{
  if ((*(a1 + 24) & 0x80000000) == 0)
  {
    *a4.i32 = (*(**a1 + 32))();
    if (*a4.i32 != INFINITY)
    {
      *(*(**(a1 + 8) + 32 * a2) + 4) = *(a1 + 24);
    }
  }

  fst::IntervalSet<int>::Normalize(**(a1 + 8) + 32 * a2, a4);
  if (a3 != -1)
  {
    v7 = **(a1 + 8);

    fst::IntervalSet<int>::Union(v7 + 32 * a3, (v7 + 32 * a2));
  }
}

uint64_t fst::IntervalReachVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::BackArc(uint64_t a1)
{
  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  }

  v2 = fst::LogMessage::LogMessage(&v7, __p);
  v3 = fst::cerr(v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "IntervalReachVisitor: cyclic input", 34);
  fst::LogMessage::~LogMessage(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 28) = 1;
  return 0;
}

void sub_1B573F4B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<fst::IntervalSet<int>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::IntervalSet<int>>::__emplace_back_slow_path<fst::IntervalSet<int>>(a1, a2);
  }

  else
  {
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(v3 + 24) = *(a2 + 24);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<fst::IntervalSet<int>>::__emplace_back_slow_path<fst::IntervalSet<int>>(uint64_t *a1, uint64_t a2)
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

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TextTokenizer::TokenString>>(a1, v7);
  }

  v8 = 32 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = *a2;
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v8 + 24) = *(a2 + 24);
  *&v17 = 32 * v2 + 32;
  v9 = a1[1];
  v10 = 32 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::IntervalSet<int>>,fst::IntervalSet<int>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<fst::IntervalSet<int>>::~__split_buffer(&v15);
  return v14;
}

void sub_1B573F668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::IntervalSet<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::IntervalSet<int>>,fst::IntervalSet<int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::IntervalSet<int>>,fst::IntervalSet<int>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::IntervalSet<int>>,fst::IntervalSet<int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<fst::IntervalSet<int>>,fst::IntervalSet<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<fst::IntervalSet<int>>,fst::IntervalSet<int>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 32);
      v3 -= 32;
      v4 = v5;
      if (v5)
      {
        *(v1 - 24) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::__split_buffer<fst::IntervalSet<int>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<fst::IntervalSet<int>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<fst::IntervalSet<int>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 32);
    *(a1 + 16) = v2 - 32;
    if (v5)
    {
      *(v2 - 24) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

void fst::IntervalSet<int>::Normalize(uint64_t a1, int8x16_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = 126 - 2 * __clz((v4 - v3) >> 3);
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::IntervalSet<int>::Interval *,false>(v3, v4, &v20, v6, 1, a2);
  *(a1 + 24) = 0;
  v7 = *a1;
  v8 = *(a1 + 8);
  if (v8 == *a1)
  {
    v19 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = (v8 - *a1) >> 3;
    do
    {
      v13 = &v7->i32[2 * v9];
      v14 = *v13;
      v15 = v13[1];
      if (*v13 != v15)
      {
        LODWORD(v16) = v11 + 1;
        if (v12 > v11 + 1)
        {
          v16 = v16;
          v17 = &v7->i32[2 * v16 + 1];
          do
          {
            if (*(v17 - 1) > v15)
            {
              break;
            }

            v18 = *v17;
            if (*v17 > v15)
            {
              v13[1] = v18;
              v15 = v18;
            }

            ++v11;
            ++v16;
            v17 += 2;
          }

          while (v12 > v16);
        }

        *(a1 + 24) += v15 - v14;
        v7->i64[v10++] = *v13;
        v7 = *a1;
        v8 = *(a1 + 8);
      }

      v9 = ++v11;
      v12 = (v8 - v7) >> 3;
    }

    while (v12 > v11);
    v19 = v10;
  }

  std::vector<kaldi::quasar::LmeFst::Stats>::resize(a1, v19);
}

void fst::IntervalSet<int>::Union(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*a2 != a2[1])
  {
    v5 = *(a1 + 8);
    do
    {
      v6 = *(a1 + 16);
      if (v5 >= v6)
      {
        v7 = (v5 - *a1) >> 3;
        if ((v7 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v8 = v6 - *a1;
        v9 = v8 >> 2;
        if (v8 >> 2 <= (v7 + 1))
        {
          v9 = v7 + 1;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (v10)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
        }

        *(8 * v7) = *v2;
        v5 = (8 * v7 + 8);
        v11 = *(a1 + 8) - *a1;
        v12 = (8 * v7 - v11);
        memcpy(v12, *a1, v11);
        v13 = *a1;
        *a1 = v12;
        *(a1 + 8) = v5;
        *(a1 + 16) = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v5++ = *v2;
      }

      *(a1 + 8) = v5;
      ++v2;
    }

    while (v2 != a2[1]);
  }
}

int8x16_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::IntervalSet<int>::Interval *,false>(int8x16_t *a1, int8x16_t *a2, uint64_t a3, uint64_t a4, char a5, int8x16_t result)
{
LABEL_1:
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
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
        v65 = a2[-1].i32[2];
        if (v65 >= v10->i32[0] && (v65 != v10->i32[0] || a2[-1].i32[3] <= v10->i32[1]))
        {
          return result;
        }

LABEL_146:
        v68 = v10->i64[0];
        v10->i64[0] = a2[-1].i64[1];
LABEL_147:
        a2[-1].i64[1] = v68;
        return result;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::IntervalSet<int>::Interval *,0>(v10->i64, &v10->i32[2], v10[1].i64, &a2[-1].i64[1]);
      return result;
    }

    if (v13 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::IntervalSet<int>::Interval *,0>(v10->i64, &v10->i32[2], v10[1].i64, &v10[1].i64[1]);
      v69 = a2[-1].i32[2];
      v70 = v10[1].i32[2];
      if (v69 < v70 || v69 == v70 && a2[-1].i32[3] > v10[1].i32[3])
      {
        v71 = v10[1].i64[1];
        v10[1].i64[1] = a2[-1].i64[1];
        a2[-1].i64[1] = v71;
        v72 = v10[1].i32[2];
        v73 = v10[1].i32[0];
        if (v72 < v73 || v72 == v73 && v10[1].i32[3] > v10[1].i32[1])
        {
          v75 = v10[1].i64[0];
          v74 = v10[1].i64[1];
          v10[1].i64[0] = v74;
          v10[1].i64[1] = v75;
          v76 = v10->i32[2];
          if (v76 > v74 || v76 == v74 && v10->i32[3] < SHIDWORD(v74))
          {
            v77 = v10->i64[1];
            v10->i64[1] = v74;
            v10[1].i64[0] = v77;
            if (v10->i32[0] > v74 || v10->i32[0] == v74 && v10->i32[1] < SHIDWORD(v74))
            {
              v78 = v10->i64[0];
              v10->i64[0] = v74;
              v10->i64[1] = v78;
            }
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v13 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::IntervalSet<int>::Interval *>(v10, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::IntervalSet<int>::Interval *>(v10->i64, a2->i64);
      }

      return result;
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::IntervalSet<int>::Interval *,fst::IntervalSet<int>::Interval *>(v10, a2->i64, a2->i64, a3);
      }

      return result;
    }

    v14 = &v10->i32[2 * (v13 >> 1)];
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = *v14;
      if (*v14 < v10->i32[0] || v16 == v10->i32[0] && v14[1] > v10->i32[1])
      {
        v17 = a2[-1].i32[2];
        if (v17 < v16 || v17 == v16 && a2[-1].i32[3] > v14[1])
        {
          v18 = v10->i64[0];
          v10->i64[0] = a2[-1].i64[1];
        }

        else
        {
          v18 = v10->i64[0];
          v10->i64[0] = *v14;
          *v14 = v18;
          v28 = a2[-1].i32[2];
          if (v28 >= v18 && (v28 != v18 || a2[-1].i32[3] <= SHIDWORD(v18)))
          {
            goto LABEL_35;
          }

          *v14 = a2[-1].i64[1];
        }

        a2[-1].i64[1] = v18;
        goto LABEL_35;
      }

      v22 = a2[-1].i32[2];
      if (v22 < v16 || v22 == v16 && a2[-1].i32[3] > v14[1])
      {
        v23 = *v14;
        *v14 = a2[-1].i64[1];
        a2[-1].i64[1] = v23;
        if (*v14 < v10->i32[0] || *v14 == v10->i32[0] && v14[1] > v10->i32[1])
        {
          v24 = v10->i64[0];
          v10->i64[0] = *v14;
          *v14 = v24;
        }
      }

LABEL_35:
      v29 = (v14 - 2);
      v30 = *(v14 - 2);
      v31 = v10->i32[2];
      if (v30 < v31 || v30 == v31 && *(v14 - 1) > v10->i32[3])
      {
        v32 = a2[-1].i32[0];
        if (v32 < v30 || v32 == v30 && a2[-1].i32[1] > *(v14 - 1))
        {
          v33 = v10->i64[1];
          v10->i64[1] = a2[-1].i64[0];
        }

        else
        {
          v33 = v10->i64[1];
          v10->i64[1] = v29->i64[0];
          v29->i64[0] = v33;
          v39 = a2[-1].i32[0];
          if (v39 >= v33 && (v39 != v33 || a2[-1].i32[1] <= SHIDWORD(v33)))
          {
            goto LABEL_54;
          }

          v29->i64[0] = a2[-1].i64[0];
        }

        a2[-1].i64[0] = v33;
        goto LABEL_54;
      }

      v34 = a2[-1].i32[0];
      if (v34 < v30 || v34 == v30 && a2[-1].i32[1] > *(v14 - 1))
      {
        v35 = v29->i64[0];
        v29->i64[0] = a2[-1].i64[0];
        a2[-1].i64[0] = v35;
        v36 = v10->i32[2];
        if (v29->i32[0] < v36 || v29->i32[0] == v36 && *(v14 - 1) > v10->i32[3])
        {
          v37 = v10->i64[1];
          v10->i64[1] = v29->i64[0];
          v29->i64[0] = v37;
        }
      }

LABEL_54:
      v42 = v14[2];
      v40 = v14 + 2;
      v41 = v42;
      v43 = v10[1].i32[0];
      v44 = v42 == v43;
      if (v42 >= v43 && (!v44 || v40[1] <= v10[1].i32[1]))
      {
        v47 = a2[-2].i32[2];
        if (v47 < v41 || v47 == v41 && a2[-2].i32[3] > v40[1])
        {
          v48 = *v40;
          *v40 = a2[-2].i64[1];
          a2[-2].i64[1] = v48;
          v49 = v10[1].i32[0];
          if (*v40 < v49 || *v40 == v49 && v40[1] > v10[1].i32[1])
          {
            v50 = v10[1].i64[0];
            v10[1].i64[0] = *v40;
            *v40 = v50;
          }
        }

LABEL_68:
        v52 = *v15;
        v53 = v29->i32[0];
        if (*v15 < v29->i32[0] || v52 == v53 && v15[1] > v29->i32[1])
        {
          v54 = *v40;
          if (*v40 < v52 || v54 == v52 && v40[1] > v15[1])
          {
            v55 = v29->i64[0];
            v29->i64[0] = *v40;
            *v40 = v55;
          }

          else
          {
            v59 = *v29;
            *v29 = vextq_s8(*v29, *v29, 8uLL);
            if (v54 < v59.i32[0] || v54 == v59.i32[0] && v40[1] > v59.i32[1])
            {
              *v15 = *v40;
              *v40 = v59.i64[0];
            }
          }
        }

        else if (*v40 < v52 || *v40 == v52 && v40[1] > v15[1])
        {
          v56 = *v15;
          v57 = *v40;
          *v15 = *v40;
          *v40 = v56;
          if (v53 > v57 || v53 == v57 && v29->i32[1] < SHIDWORD(v57))
          {
            v58 = v29->i64[0];
            v29->i64[0] = v57;
            *v15 = v58;
          }
        }

        v60 = v10->i64[0];
        v10->i64[0] = *v15;
        *v15 = v60;
        if (a5)
        {
          goto LABEL_129;
        }

        goto LABEL_126;
      }

      v45 = a2[-2].i32[2];
      if (v45 < v41 || v45 == v41 && a2[-2].i32[3] > v40[1])
      {
        v46 = v10[1].i64[0];
        v10[1].i64[0] = a2[-2].i64[1];
      }

      else
      {
        v46 = v10[1].i64[0];
        v10[1].i64[0] = *v40;
        *v40 = v46;
        v51 = a2[-2].i32[2];
        if (v51 >= v46 && (v51 != v46 || a2[-2].i32[3] <= SHIDWORD(v46)))
        {
          goto LABEL_68;
        }

        *v40 = a2[-2].i64[1];
      }

      a2[-2].i64[1] = v46;
      goto LABEL_68;
    }

    v19 = v10->i32[0];
    if (v10->i32[0] < *v15 || v19 == *v15 && v10->i32[1] > v15[1])
    {
      v20 = a2[-1].i32[2];
      if (v20 < v19 || v20 == v19 && a2[-1].i32[3] > v10->i32[1])
      {
        v21 = *v15;
        *v15 = a2[-1].i64[1];
      }

      else
      {
        v21 = *v15;
        *v15 = v10->i64[0];
        v10->i64[0] = v21;
        v38 = a2[-1].i32[2];
        if (v38 >= v21 && (v38 != v21 || a2[-1].i32[3] <= SHIDWORD(v21)))
        {
          goto LABEL_109;
        }

        v10->i64[0] = a2[-1].i64[1];
      }

      a2[-1].i64[1] = v21;
      if (a5)
      {
        goto LABEL_129;
      }
    }

    else
    {
      v25 = a2[-1].i32[2];
      if (v25 >= v19 && (v25 != v19 || a2[-1].i32[3] <= v10->i32[1]) || (v26 = v10->i64[0], v10->i64[0] = a2[-1].i64[1], a2[-1].i64[1] = v26, v10->i32[0] >= *v15) && (v10->i32[0] != *v15 || v10->i32[1] <= v15[1]))
      {
LABEL_109:
        if (a5)
        {
          goto LABEL_129;
        }

        goto LABEL_126;
      }

      v27 = *v15;
      *v15 = v10->i64[0];
      v10->i64[0] = v27;
      if (a5)
      {
        goto LABEL_129;
      }
    }

LABEL_126:
    v61 = v10[-1].i32[2];
    if (v61 >= v10->i32[0] && (v61 != v10->i32[0] || v10[-1].i32[3] <= v10->i32[1]))
    {
      v10 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::IntervalSet<int>::Interval *,std::__less<void,void> &>(v10, a2);
      goto LABEL_134;
    }

LABEL_129:
    v62 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::IntervalSet<int>::Interval *,std::__less<void,void> &>(v10->i64, a2);
    if ((v63 & 1) == 0)
    {
      goto LABEL_132;
    }

    v64 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::IntervalSet<int>::Interval *>(v10, v62);
    v10 = (v62 + 1);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::IntervalSet<int>::Interval *>((v62 + 1), a2))
    {
      a4 = -v12;
      a2 = v62;
      if (v64)
      {
        return result;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v64)
    {
LABEL_132:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::IntervalSet<int>::Interval *,false>(a1, v62, a3, -v12, a5 & 1);
      v10 = (v62 + 1);
LABEL_134:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  v66 = v10->i32[2];
  if (v66 < v10->i32[0] || v66 == v10->i32[0] && v10->i32[3] > v10->i32[1])
  {
    v67 = a2[-1].i32[2];
    if (v67 < v66 || v67 == v66 && a2[-1].i32[3] > v10->i32[3])
    {
      goto LABEL_146;
    }

    result = *v10;
    *v10 = vextq_s8(*v10, *v10, 8uLL);
    v82 = a2[-1].i32[2];
    v68 = result.i64[0];
    if (v82 < result.i32[0] || v82 == result.i32[0] && a2[-1].i32[3] > result.i32[1])
    {
      v10->i64[1] = a2[-1].i64[1];
      goto LABEL_147;
    }
  }

  else
  {
    v79 = a2[-1].i32[2];
    if (v79 < v66 || v79 == v66 && a2[-1].i32[3] > v10->i32[3])
    {
      v80 = v10->i64[1];
      v10->i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v80;
      v81 = v10->i32[2];
      if (v81 < v10->i32[0] || v81 == v10->i32[0] && v10->i32[3] > v10->i32[1])
      {
        result = vextq_s8(*v10, *v10, 8uLL);
        *v10 = result;
      }
    }
  }

  return result;
}

uint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::IntervalSet<int>::Interval *,0>(uint64_t *result, int *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  if (*a2 < *result || v4 == *result && a2[1] > *(result + 1))
  {
    if (*a3 < v4 || *a3 == v4 && *(a3 + 1) > a2[1])
    {
      v5 = *result;
      *result = *a3;
    }

    else
    {
      v5 = *result;
      *result = *a2;
      *a2 = v5;
      if (*a3 >= v5 && (*a3 != v5 || *(a3 + 1) <= SHIDWORD(v5)))
      {
        goto LABEL_14;
      }

      *a2 = *a3;
    }

    *a3 = v5;
  }

  else if (*a3 < v4 || *a3 == v4 && *(a3 + 1) > a2[1])
  {
    v6 = *a2;
    *a2 = *a3;
    *a3 = v6;
    if (*a2 < *result || *a2 == *result && a2[1] > *(result + 1))
    {
      v7 = *result;
      *result = *a2;
      *a2 = v7;
    }
  }

LABEL_14:
  if (*a4 < *a3 || *a4 == *a3 && *(a4 + 1) > *(a3 + 1))
  {
    v8 = *a3;
    *a3 = *a4;
    *a4 = v8;
    if (*a3 < *a2 || *a3 == *a2 && *(a3 + 1) > a2[1])
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      if (*a2 < *result || *a2 == *result && a2[1] > *(result + 1))
      {
        v10 = *result;
        *result = *a2;
        *a2 = v10;
      }
    }
  }

  return result;
}

void *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::IntervalSet<int>::Interval *>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4;
        v4 = v2;
        v6 = *(v5 + 2);
        if (v6 < *v5 || v6 == *v5 && *(v5 + 3) > *(v5 + 1))
        {
          v7 = v5[1];
          v5[1] = *v5;
          v8 = result;
          if (v5 != result)
          {
            v9 = v3;
            do
            {
              v10 = *(result + v9 - 8);
              if (v10 <= v7)
              {
                if (v10 != v7)
                {
                  v8 = v5;
                  goto LABEL_16;
                }

                v8 = (result + v9);
                if (*(result + v9 - 4) >= SHIDWORD(v7))
                {
                  goto LABEL_16;
                }
              }

              --v5;
              *(result + v9) = *(result + v9 - 8);
              v9 -= 8;
            }

            while (v9);
            v8 = result;
          }

LABEL_16:
          *v8 = v7;
        }

        v2 = v4 + 1;
        v3 += 8;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::IntervalSet<int>::Interval *>(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    while (result + 1 != a2)
    {
      v2 = result++;
      v3 = *(v2 + 2);
      if (v3 < *v2 || v3 == *v2 && *(v2 + 3) > *(v2 + 1))
      {
        v4 = *result;
        v5 = HIDWORD(*result);
        do
        {
          do
          {
            v6 = v2;
            v2[1] = *v2;
            v7 = *(v2-- - 2);
            v8 = v7 == v4;
          }

          while (v7 > v4);
        }

        while (v8 && *(v6 - 1) < v5);
        *v6 = v4;
      }
    }
  }

  return result;
}

_DWORD *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::IntervalSet<int>::Interval *,std::__less<void,void> &>(void *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = HIDWORD(*a1);
  v4 = *(a2 - 8);
  if (v4 > *a1 || v4 == *a1 && *(a2 - 4) < v3)
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v7 <= v2 && (v6 != v2 || i[1] >= v3));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 8; v4 > v2 || v4 == v2 && *(a2 + 4) < v3; a2 -= 8)
    {
      v8 = *(a2 - 8);
      v4 = v8;
    }
  }

  while (i < a2)
  {
    v9 = *i;
    *i = *a2;
    *a2 = v9;
    do
    {
      v11 = i[2];
      i += 2;
      v10 = v11;
    }

    while (v11 <= v2 && (v10 != v2 || i[1] >= v3));
    do
    {
      do
      {
        v12 = *(a2 - 8);
        a2 -= 8;
        v13 = v12 == v2;
      }

      while (v12 > v2);
    }

    while (v13 && *(a2 + 4) < v3);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 1);
  }

  *(i - 1) = v2;
  return i;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::IntervalSet<int>::Interval *,std::__less<void,void> &>(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = HIDWORD(*a1);
  while (1)
  {
    v5 = a1[v2 + 1];
    if (v5 >= v3 && (v5 != v3 || SHIDWORD(a1[v2 + 1]) <= v4))
    {
      break;
    }

    ++v2;
  }

  v6 = &a1[v2];
  v7 = &a1[v2 + 1];
  if (v2 * 8)
  {
    do
    {
      v9 = *(a2 - 8);
      a2 -= 8;
      v8 = v9;
    }

    while (v9 >= v3 && (v8 != v3 || *(a2 + 4) <= v4));
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
        if (v11 < v3)
        {
          break;
        }

        if (v10 != v3)
        {
          goto LABEL_19;
        }
      }

      while (*(a2 + 4) <= v4 && v7 < a2);
    }
  }

  if (v7 < a2)
  {
    v13 = v7;
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      v13 += 8;
      *v14 = v15;
      while (*v13 < v3 || *v13 == v3 && *(v13 + 4) > v4)
      {
        v13 += 8;
      }

      do
      {
        v17 = *(v14 - 8);
        v14 -= 8;
        v16 = v17;
      }

      while (v17 >= v3 && (v16 != v3 || *(v14 + 4) <= v4));
    }

    while (v13 < v14);
    v6 = (v13 - 8);
  }

  if (v6 != a1)
  {
    *a1 = *v6;
  }

  *v6 = v3;
  return v6;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::IntervalSet<int>::Interval *>(int8x16_t *a1, int8x16_t *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v16 = a1->i32[2];
        if (v16 >= a1->i32[0] && (v16 != a1->i32[0] || a1->i32[3] <= a1->i32[1]))
        {
          v24 = a2[-1].i32[2];
          if (v24 < v16 || v24 == v16 && a2[-1].i32[3] > a1->i32[3])
          {
            v25 = a1->i64[1];
            a1->i64[1] = a2[-1].i64[1];
            a2[-1].i64[1] = v25;
            v26 = a1->i32[2];
            if (v26 < a1->i32[0] || v26 == a1->i32[0] && a1->i32[3] > a1->i32[1])
            {
              *a1 = vextq_s8(*a1, *a1, 8uLL);
            }
          }

          return 1;
        }

        v17 = a2[-1].i32[2];
        if (v17 >= v16 && (v17 != v16 || a2[-1].i32[3] <= a1->i32[3]))
        {
          v30 = *a1;
          *a1 = vextq_s8(*a1, *a1, 8uLL);
          v31 = a2[-1].i32[2];
          v18 = v30.i64[0];
          if (v31 >= v30.i32[0] && (v31 != v30.i32[0] || a2[-1].i32[3] <= v30.i32[1]))
          {
            return 1;
          }

          a1->i64[1] = a2[-1].i64[1];
          goto LABEL_19;
        }

LABEL_18:
        v18 = a1->i64[0];
        a1->i64[0] = a2[-1].i64[1];
LABEL_19:
        a2[-1].i64[1] = v18;
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::IntervalSet<int>::Interval *,0>(a1->i64, &a1->i32[2], a1[1].i64, &a2[-1].i64[1]);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::IntervalSet<int>::Interval *,0>(a1->i64, &a1->i32[2], a1[1].i64, &a1[1].i64[1]);
        v6 = a2[-1].i32[2];
        v7 = a1[1].i32[2];
        if (v6 < v7 || v6 == v7 && a2[-1].i32[3] > a1[1].i32[3])
        {
          v8 = a1[1].i64[1];
          a1[1].i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v8;
          v9 = a1[1].i32[2];
          v10 = a1[1].i32[0];
          if (v9 < v10 || v9 == v10 && a1[1].i32[3] > a1[1].i32[1])
          {
            v12 = a1[1].i64[0];
            v11 = a1[1].i64[1];
            a1[1].i64[0] = v11;
            a1[1].i64[1] = v12;
            v13 = a1->i32[2];
            if (v13 > v11 || v13 == v11 && a1->i32[3] < SHIDWORD(v11))
            {
              v14 = a1->i64[1];
              a1->i64[1] = v11;
              a1[1].i64[0] = v14;
              if (a1->i32[0] > v11 || a1->i32[0] == v11 && a1->i32[1] < SHIDWORD(v11))
              {
                v15 = a1->i64[0];
                a1->i64[0] = v11;
                a1->i64[1] = v15;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2[-1].i32[2];
      if (v5 >= a1->i32[0] && (v5 != a1->i32[0] || a2[-1].i32[3] <= a1->i32[1]))
      {
        return 1;
      }

      goto LABEL_18;
    }
  }

  v19 = a1 + 1;
  v20 = a1->i32[2];
  v21 = a1->i32[0];
  if (v20 < a1->i32[0] || v20 == v21 && a1->i32[3] > a1->i32[1])
  {
    v22 = v19->i32[0];
    if (v19->i32[0] < v20 || v22 == v20 && a1[1].i32[1] > a1->i32[3])
    {
      v23 = a1->i64[0];
      a1->i64[0] = a1[1].i64[0];
      a1[1].i64[0] = v23;
    }

    else
    {
      v32 = *a1;
      *a1 = vextq_s8(*a1, *a1, 8uLL);
      if (v22 < v32.i32[0] || v22 == v32.i32[0] && a1[1].i32[1] > v32.i32[1])
      {
        a1->i64[1] = a1[1].i64[0];
        a1[1].i64[0] = v32.i64[0];
      }
    }
  }

  else if (v19->i32[0] < v20 || v19->i32[0] == v20 && a1[1].i32[1] > a1->i32[3])
  {
    v28 = a1->i64[1];
    v27 = a1[1].i64[0];
    a1->i64[1] = v27;
    a1[1].i64[0] = v28;
    if (v21 > v27 || v21 == v27 && a1->i32[1] < SHIDWORD(v27))
    {
      v29 = a1->i64[0];
      a1->i64[0] = v27;
      a1->i64[1] = v29;
    }
  }

  v33 = (a1 + 24);
  if (&a1[1].u64[1] == a2)
  {
    return 1;
  }

  v34 = 0;
  v35 = 0;
  while (1)
  {
    if (v33->i32[0] < v19->i32[0] || v33->i32[0] == v19->i32[0] && v33->i32[1] > v19->i32[1])
    {
      v36 = v33->i64[0];
      v37 = HIDWORD(v33->i64[0]);
      v33->i64[0] = v19->i64[0];
      v38 = v34;
      do
      {
        v39 = *(&a1->i32[2] + v38);
        if (v39 <= v36)
        {
          if (v39 != v36)
          {
            v19 = (a1 + v38 + 16);
            goto LABEL_84;
          }

          if (*(&a1->i32[3] + v38) >= v37)
          {
            goto LABEL_84;
          }
        }

        v19 = (v19 - 8);
        *(a1[1].i64 + v38) = *(&a1->i64[1] + v38);
        v38 -= 8;
      }

      while (v38 != -16);
      v19 = a1;
LABEL_84:
      v19->i64[0] = v36;
      if (++v35 == 8)
      {
        return &v33->u64[1] == a2;
      }
    }

    v19 = v33;
    v34 += 8;
    v33 = (v33 + 8);
    if (v33 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::IntervalSet<int>::Interval *,fst::IntervalSet<int>::Interval *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 8 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::IntervalSet<int>::Interval *>(a1, a4, v8, v11--);
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
        if (*v12 < *a1 || *v12 == *a1 && *(v12 + 1) > *(a1 + 4))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::IntervalSet<int>::Interval *>(a1, a4, v8, a1);
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
        v16 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::IntervalSet<int>::Interval *>(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::IntervalSet<int>::Interval *>(a1, (v16 + 1), a4, (v16 - a1 + 8) >> 3);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::IntervalSet<int>::Interval *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
        if (*v8 < v10 || *v8 == v10 && v8[1] > v8[3])
        {
          v8 += 2;
          v7 = v9;
        }
      }

      if (*v8 >= *a4 && (*v8 != *a4 || v8[1] <= *(a4 + 1)))
      {
        v11 = *a4;
        *a4 = *v8;
        if (v5 >= v7)
        {
          while (1)
          {
            v13 = 2 * v7;
            v7 = (2 * v7) | 1;
            v12 = (result + 8 * v7);
            v14 = v13 + 2;
            if (v14 < a3)
            {
              v15 = v12[2];
              if (*v12 < v15 || *v12 == v15 && v12[1] > v12[3])
              {
                v12 += 2;
                v7 = v14;
              }
            }

            if (*v12 < v11 || *v12 == v11 && v12[1] > SHIDWORD(v11))
            {
              break;
            }

            *v8 = *v12;
            v8 = v12;
            if (v5 < v7)
            {
              goto LABEL_13;
            }
          }
        }

        v12 = v8;
LABEL_13:
        *v12 = v11;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::IntervalSet<int>::Interval *>(void *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[v3];
    result = v5 + 2;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[4];
      v9 = v5[2];
      if (v9 < v8 || v9 == v8 && v5[3] > v5[5])
      {
        result = v5 + 4;
        v3 = v7;
      }
    }

    *v4 = *result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::IntervalSet<int>::Interval *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 8 * (v4 >> 1));
    v7 = *(a2 - 8);
    if (*v6 < v7 || *v6 == v7 && v6[1] > *(a2 - 4))
    {
      v8 = *(a2 - 8);
      *(a2 - 8) = *v6;
      if (v4 >= 2)
      {
        while (1)
        {
          v10 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v9 = (result + 8 * v5);
          if (*v9 >= v8 && (*v9 != v8 || v9[1] <= SHIDWORD(v8)))
          {
            break;
          }

          *v6 = *v9;
          v6 = (result + 8 * v5);
          if (v10 <= 1)
          {
            goto LABEL_12;
          }
        }
      }

      v9 = v6;
LABEL_12:
      *v9 = v8;
    }
  }

  return result;
}

void fst::Condense<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a2 + 224))(a2);
  v6 = 0;
  v5[0] = a3;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = &v6;
  fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, v5);
}

void sub_1B574159C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  else if (a15)
  {
    --*a15;
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::IntervalSet<int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<fst::IntervalSet<int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<fst::IntervalSet<int>>::__assign_with_size[abi:ne200100]<fst::IntervalSet<int>*,fst::IntervalSet<int>*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
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

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 5)
  {
    std::__copy_impl::operator()[abi:ne200100]<fst::IntervalSet<int> *,fst::IntervalSet<int> *,fst::IntervalSet<int> *>(&v20, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      v16 = a1[1];
      do
      {
        v18 = *(v16 - 32);
        v16 -= 32;
        v17 = v18;
        if (v18)
        {
          *(v15 - 24) = v17;
          operator delete(v17);
        }

        v15 = v16;
      }

      while (v16 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<fst::IntervalSet<int> *,fst::IntervalSet<int> *,fst::IntervalSet<int> *>(&v19, a2, a2 + v12, v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<fst::IntervalSet<int>>,fst::IntervalSet<int>*,fst::IntervalSet<int>*,fst::IntervalSet<int>*>(a1, a2 + v12, a3, a1[1]);
  }
}

void std::vector<fst::IntervalSet<int>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<fst::IntervalSet<int>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<fst::IntervalSet<int>>,fst::IntervalSet<int>*,fst::IntervalSet<int>*,fst::IntervalSet<int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      std::vector<fst::IntervalSet<int>::Interval,std::allocator<fst::IntervalSet<int>::Interval>>::__init_with_size[abi:ne200100]<fst::IntervalSet<int>::Interval*,fst::IntervalSet<int>::Interval*>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
      *(v4 + 24) = *(v6 + 24);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::IntervalSet<int>>,fst::IntervalSet<int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<fst::IntervalSet<int>::Interval,std::allocator<fst::IntervalSet<int>::Interval>>::__init_with_size[abi:ne200100]<fst::IntervalSet<int>::Interval*,fst::IntervalSet<int>::Interval*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B57418F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<fst::IntervalSet<int> *,fst::IntervalSet<int> *,fst::IntervalSet<int> *>(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a4, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 3);
      }

      *(a4 + 24) = *(v5 + 24);
      v5 += 32;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t *std::vector<fst::IntervalSet<int>>::__append(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (a2 <= (v5 - v4) >> 5)
  {
    if (a2)
    {
      v11 = v4 + 32 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        *(v4 + 24) = -1;
        v4 += 32;
      }

      while (v4 != v11);
      v4 = v11;
    }

    result[1] = v4;
  }

  else
  {
    v6 = v4 - *result;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 5;
    v9 = v5 - *result;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v21 = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TextTokenizer::TokenString>>(result, v10);
    }

    v12 = 32 * v8;
    v18 = 0;
    v19 = 32 * v8;
    *(&v20 + 1) = 0;
    v13 = 32 * v8;
    do
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      *(v13 + 24) = -1;
      v13 += 32;
    }

    while (v13 != 32 * v8 + 32 * a2);
    *&v20 = v12 + 32 * a2;
    v14 = result[1];
    v15 = v12 + *result - v14;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::IntervalSet<int>>,fst::IntervalSet<int>*>(result, *result, v14, v15);
    v16 = *v3;
    *v3 = v15;
    v17 = v3[2];
    *(v3 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return std::__split_buffer<fst::IntervalSet<int>>::~__split_buffer(&v18);
  }

  return result;
}

void sub_1B5741AC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::IntervalSet<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>::~SortedMatcher(void *a1)
{
  *a1 = &unk_1F2D2DD48;
  v2 = a1[3];
  if (v2)
  {
    *(v2 + 24) = a1[17];
    a1[17] = v2;
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  a1[10] = &unk_1F2D2DDE0;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>>::Link>::~MemoryArena(a1 + 11);
  quasar::Bitmap::~Bitmap((a1 + 10));
  return a1;
}

void fst::LabelLookAheadMatcher<fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,1760u,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>>::LabelLookAheadMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 12) = xmmword_1B5B20780;
  *a1 = &unk_1F2D2DC80;
  fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>::SortedMatcher(a1 + 32, a2 + 32, a3);
}

void sub_1B5741C3C(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C40F647C574);
  fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>::~SortedMatcher((v1 + 32));
  _Unwind_Resume(a1);
}

void fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::LabelReachable(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0u;
  *(a1 + 8) = -1;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1065353216;
  *(a1 + 80) = *(a2 + 80);
  operator new();
}

BOOL fst::LabelLookAheadMatcher<fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,1760u,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>>::Find(uint64_t a1, int a2)
{
  if ((*(a1 + 196) & 1) == 0)
  {
    fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>::SetState(a1 + 32, *(a1 + 192));
    *(a1 + 196) = 1;
  }

  return fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>::Find(a1 + 32, a2);
}

void fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::ReachInit<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2, int a3, char a4)
{
  *(a1 + 112) = a3;
  if (a3)
  {
    v7 = 0x10000000;
  }

  else
  {
    v7 = 0x40000000;
  }

  if (!(*(*a2 + 64))(a2, v7, 1))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v8 = fst::LogMessage::LogMessage(&v12, __p);
    v9 = fst::cerr(v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "LabelReachable::ReachInit: fst is not sorted", 44);
    fst::LogMessage::~LogMessage(&v12);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 113) = 1;
  }

  fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Init<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(*(a1 + 88), a2, a4);
  if (*(*(a1 + 88) + 48) == 1)
  {
    *(a1 + 113) = 1;
  }
}

void sub_1B5741EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Init<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return;
  }

  v4 = *(a1 + 32);
  if (*v4 != *(v4 + 8) || *(a1 + 8) < *(a1 + 16))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v5 = fst::LogMessage::LogMessage(&v32, __p);
    v6 = fst::cerr(v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "FastLogAccumulator: initialization error.", 41);
    fst::LogMessage::~LogMessage(&v32);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 48) = 1;
    return;
  }

  v8 = fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a2);
  std::vector<std::pair<int,int>>::reserve((v4 + 24), v8);
  v34 = 0;
  (*(*a2 + 128))(a2, &v32);
  v9 = 0;
LABEL_12:
  if (!v32)
  {
    if (v34 >= v33)
    {
      return;
    }

    goto LABEL_17;
  }

  if (!(*(*v32 + 16))(v32))
  {
    if (v32)
    {
      v10 = (*(*v32 + 24))();
LABEL_18:
      if ((*(*a2 + 40))(a2, v10) < *(a1 + 8))
      {
        __p[0] = -1;
        std::vector<long long>::push_back[abi:ne200100]((v4 + 24), __p);
        goto LABEL_48;
      }

      v31 = INFINITY;
      v12 = *(v4 + 32);
      v11 = *(v4 + 40);
      if (v12 >= v11)
      {
        v14 = *(v4 + 24);
        v15 = v12 - v14;
        v16 = (v12 - v14) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v18 = v11 - v14;
        if (v18 >> 2 > v17)
        {
          v17 = v18 >> 2;
        }

        v19 = v18 >= 0x7FFFFFFFFFFFFFF8;
        v20 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v19)
        {
          v20 = v17;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v4 + 24, v20);
        }

        v21 = (v12 - v14) >> 3;
        v22 = (8 * v16);
        v23 = (8 * v16 - 8 * v21);
        *v22 = v9;
        v13 = v22 + 1;
        memcpy(v23, v14, v15);
        v24 = *(v4 + 24);
        *(v4 + 24) = v23;
        *(v4 + 32) = v13;
        *(v4 + 40) = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v12 = v9;
        v13 = v12 + 8;
      }

      *(v4 + 32) = v13;
      std::vector<double>::push_back[abi:ne200100](v4, &v31);
      v30 = 0;
      (*(*a2 + 136))(a2, v10, __p);
      ++v9;
      for (i = 1; ; ++i)
      {
        if (__p[0])
        {
          if ((*(*__p[0] + 24))(__p[0]))
          {
            if (__p[0])
            {
              (*(*__p[0] + 8))();
              goto LABEL_48;
            }

LABEL_46:
            if (v29)
            {
              --*v29;
            }

LABEL_48:
            if (v32)
            {
              (*(*v32 + 32))(v32);
            }

            else
            {
              ++v34;
            }

            goto LABEL_12;
          }

          if (__p[0])
          {
            v26 = (*(*__p[0] + 32))();
            goto LABEL_38;
          }
        }

        else if (v30 >= v28)
        {
          goto LABEL_46;
        }

        v26 = (__p[1] + 16 * v30);
LABEL_38:
        v31 = fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::LogPlus(v31, v26[2]);
        if (!(i % *(a1 + 16)))
        {
          std::vector<double>::push_back[abi:ne200100](v4, &v31);
          ++v9;
        }

        if (__p[0])
        {
          (*(*__p[0] + 40))(__p[0]);
        }

        else
        {
          ++v30;
        }
      }
    }

LABEL_17:
    v10 = v34;
    goto LABEL_18;
  }

  if (v32)
  {
    (*(*v32 + 8))();
  }
}

void sub_1B57423A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::LogPlus(double a1, float a2)
{
  v3 = a2;
  if (a1 != INFINITY)
  {
    if (v3 >= a1)
    {
      v6 = 0.0;
      if (v3 - a1 != INFINITY)
      {
        v7 = exp(-(v3 - a1));
        v6 = log(v7 + 1.0);
      }

      return a1 - v6;
    }

    else
    {
      v4 = 0.0;
      if (a1 - v3 != INFINITY)
      {
        v5 = exp(-(a1 - v3));
        v4 = log(v5 + 1.0);
      }

      return v3 - v4;
    }
  }

  return v3;
}

BOOL fst::LabelLookAheadMatcher<fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,1760u,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>>::LookAheadLabel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = *(a1 + 184);
  if (!v2)
  {
    return 1;
  }

  if ((*(a1 + 197) & 1) == 0)
  {
    *(v2 + 8) = *(a1 + 192);
    *(a1 + 197) = 1;
  }

  return (*(v2 + 113) & 1) == 0 && fst::IntervalSet<int>::Member((*(*(v2 + 80) + 56) + 32 * *(v2 + 8)), a2);
}

void fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::SetState(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = v3[3];
  if (a2 >= ((v3[4] - v4) >> 3))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v6 = fst::LogMessage::LogMessage(&v10, __p);
    v7 = fst::cerr(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "FastLogAccumulator::SetState: invalid state id.", 47);
    fst::LogMessage::~LogMessage(&v10);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 48) = 1;
  }

  else
  {
    v5 = *(v4 + 8 * a2);
    if (v5 < 0)
    {
      *(a1 + 40) = 0;
    }

    else
    {
      *(a1 + 40) = *v3 + 8 * v5;
    }
  }
}

void sub_1B5742648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL fst::IntervalSet<int>::Member(void *a1, int a2)
{
  v2 = a1[1];
  if (v2 != *a1)
  {
    v3 = (v2 - *a1) >> 3;
    v2 = *a1;
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      if (*v5 < a2 || *v5 == a2 && v5[1] > a2)
      {
        v2 = v5 + 2;
        v4 = v3 + ~v4;
      }

      v3 = v4;
    }

    while (v4);
  }

  return v2 != *a1 && *(v2 - 1) > a2;
}

uint64_t fst::LabelLookAheadMatcher<fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,1760u,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>>::LookAheadFst<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 176) != a2)
  {
    (*(*a1 + 112))(a1, a2, 0);
  }

  *(a1 + 8) = 0;
  *(a1 + 24) = -1;
  v6 = *(a1 + 184);
  if (!v6)
  {
    v14 = 1;
    return v14 & 1;
  }

  *(v6 + 8) = *(a1 + 192);
  if (a3 != -1)
  {
    fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::SetState(*(v6 + 88), a3);
    if (*(*(v6 + 88) + 48) == 1)
    {
      *(v6 + 113) = 1;
    }
  }

  *(a1 + 197) = 1;
  v25 = 0;
  (*(*a2 + 136))(a2, a3, v23);
  if (v23[0])
  {
    (*(*v23[0] + 80))(v23[0], 16, 16);
  }

  v7 = *(a1 + 184);
  v8 = (*(**(a1 + 176) + 40))(*(a1 + 176), a3);
  v9 = fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::Reach<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(v7, v23, 0, v8, 1);
  v10 = (*(**(a1 + 176) + 32))(*(a1 + 176), a3);
  v27 = v10;
  v26 = 2139095040;
  if (v10 == INFINITY)
  {
    v12 = 0;
    if (!v9)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v11 = fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::ReachFinal(*(a1 + 184));
    v12 = v11;
    if (!v9)
    {
      if (v11)
      {
        v13 = LODWORD(v10);
LABEL_32:
        *(a1 + 8) = v13;
        v12 = 1;
        goto LABEL_38;
      }

LABEL_33:
      v12 = 0;
      goto LABEL_38;
    }
  }

  v15 = *(a1 + 184);
  v16 = *(v15 + 56);
  if (*(v15 + 64) - v16 != 1 || (v12 & 1) != 0)
  {
    v18 = *(v15 + 72);
    *(a1 + 8) = v18;
    if (v12)
    {
      if (v10 <= v18)
      {
        *&v19 = v10;
      }

      else
      {
        *&v19 = v18;
      }

      v21 = v10 == -INFINITY || v18 == -INFINITY;
      v13 = v19;
      if (v21)
      {
        v13 = 2143289344;
      }

      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (!v23[0])
  {
    v25 = *(v15 + 56);
LABEL_36:
    v17 = (v23[1] + 16 * v16);
    goto LABEL_37;
  }

  (*(*v23[0] + 64))(v23[0]);
  if (!v23[0])
  {
    v16 = v25;
    goto LABEL_36;
  }

  v17 = (*(*v23[0] + 32))(v23[0]);
LABEL_37:
  *(a1 + 12) = *v17;
LABEL_38:
  v14 = v9 | v12;
  if (v23[0])
  {
    (*(*v23[0] + 8))(v23[0]);
  }

  else if (v24)
  {
    --*v24;
  }

  return v14 & 1;
}

void sub_1B5742A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
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

BOOL fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::Reach<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a1 + 113))
  {
    return 0;
  }

  v11 = (*(*(a1 + 80) + 56) + 32 * *(a1 + 8));
  v12 = ((v11[1] - *v11) >> 3);
  *(a1 + 56) = -1;
  v13 = (a1 + 56);
  __asm { FMOV            V2.2D, #1.0 }

  _Q2.f64[1] = v12;
  *(a1 + 96) = vaddq_f64(*(a1 + 96), _Q2);
  *(a1 + 64) = -1;
  *(a1 + 72) = 2139095040;
  if (*a2)
  {
    v30 = (*(**a2 + 72))(*a2);
    if (*a2)
    {
      (*(**a2 + 80))(*a2, 16, 16);
      if (*a2)
      {
        (*(**a2 + 64))(*a2, a3);
        goto LABEL_9;
      }
    }
  }

  else
  {
    v30 = 15;
  }

  a2[4] = a3;
LABEL_9:
  v20 = *v11;
  v19 = v11[1];
  if (2 * (a4 - a3) >= ((v19 - *v11) >> 3))
  {
    while (v20 != v19)
    {
      v28 = fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::LowerBound<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, a3, a4, *v20);
      v29 = fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::LowerBound<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, v28, a4, v20[1]);
      a3 = v29;
      if (v29 > v28)
      {
        if (*v13 < 0)
        {
          *v13 = v28;
        }

        *(a1 + 64) = v29;
        if (a5)
        {
          if (*a2)
          {
            (*(**a2 + 80))(*a2, 4, 15);
          }

          *(a1 + 72) = fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Sum<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(*(a1 + 88), a2, v28, a3, *(a1 + 72));
        }
      }

      v20 += 2;
      v19 = v11[1];
    }
  }

  else
  {
    if (*a2)
    {
      if (*(a1 + 112))
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      (*(**a2 + 80))(*a2, v21, 15);
    }

    if (a4 > a3)
    {
      v22 = -1;
      do
      {
        if (*a2)
        {
          v23 = (*(**a2 + 32))(*a2);
        }

        else
        {
          v23 = a2[1] + 16 * a2[4];
        }

        if (*(a1 + 112))
        {
          v24 = 0;
        }

        else
        {
          v24 = 4;
        }

        v25 = *(v23 + v24);
        if (v25 == v22 || v25 && (*(a1 + 113) & 1) == 0 && fst::IntervalSet<int>::Member((*(*(a1 + 80) + 56) + 32 * *(a1 + 8)), v25))
        {
          if (*v13 < 0)
          {
            *v13 = a3;
          }

          *(a1 + 64) = a3 + 1;
          if (a5)
          {
            if (!*a2 || ((*(**a2 + 72))(*a2) & 4) != 0)
            {
              *(a1 + 72) = fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::LogPlus(*(a1 + 72), *(v23 + 8));
            }

            else
            {
              if (*a2 && ((*(**a2 + 80))(*a2, 4, 15), *a2))
              {
                v26 = (*(**a2 + 32))(*a2);
              }

              else
              {
                v26 = a2[1] + 16 * a2[4];
              }

              *(a1 + 72) = fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::LogPlus(*(a1 + 72), *(v26 + 8));
              if (!*a2)
              {
                v22 = v25;
LABEL_47:
                ++a2[4];
                goto LABEL_48;
              }

              if (*(a1 + 112))
              {
                v27 = 1;
              }

              else
              {
                v27 = 2;
              }

              (*(**a2 + 80))(*a2, v27, 15);
            }
          }

          v22 = v25;
        }

        if (!*a2)
        {
          goto LABEL_47;
        }

        (*(**a2 + 40))(*a2);
LABEL_48:
        ++a3;
      }

      while (a4 != a3);
    }
  }

  if (*a2)
  {
    (*(**a2 + 80))(*a2, v30, 31);
  }

  return *v13 >= 0;
}

BOOL fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::ReachFinal(uint64_t a1)
{
  if (*(a1 + 113))
  {
    return 0;
  }

  v3 = (*(*(a1 + 80) + 56) + 32 * *(a1 + 8));
  v4 = fst::LabelReachableData<int>::FinalLabel(*(a1 + 80));

  return fst::IntervalSet<int>::Member(v3, v4);
}

uint64_t fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::LowerBound<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = *a2;
  if (*a2)
  {
    if (*(a1 + 112))
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    (*(*v10 + 80))(v10, v11, 15);
  }

  while (a3 < a4)
  {
    v12 = (a4 + a3) / 2;
    if (*a2)
    {
      (*(**a2 + 64))(*a2, (a4 + a3) / 2);
    }

    else
    {
      a2[4] = v12;
    }

    v13 = *a2;
    if (*(a1 + 112) == 1)
    {
      if (v13)
      {
        v14 = (*(*v13 + 32))(v13);
      }

      else
      {
        v14 = (a2[1] + 16 * a2[4]);
      }
    }

    else
    {
      if (v13)
      {
        v15 = (*(*v13 + 32))(v13);
      }

      else
      {
        v15 = a2[1] + 16 * a2[4];
      }

      v14 = (v15 + 4);
    }

    if (*v14 <= a5)
    {
      if (*v14 >= a5)
      {
        while (v12 > a3)
        {
          --v12;
          if (*a2)
          {
            (*(**a2 + 64))(*a2, v12);
          }

          else
          {
            a2[4] = v12;
          }

          v16 = *a2;
          if (*(a1 + 112) == 1)
          {
            if (v16)
            {
              v17 = (*(*v16 + 32))(v16);
            }

            else
            {
              v17 = (a2[1] + 16 * a2[4]);
            }
          }

          else
          {
            if (v16)
            {
              v18 = (*(*v16 + 32))(v16);
            }

            else
            {
              v18 = a2[1] + 16 * a2[4];
            }

            v17 = (v18 + 4);
          }

          if (*v17 != a5)
          {
            v19 = *a2;
            a3 = v12 + 1;
            if (*a2)
            {
              goto LABEL_37;
            }

            goto LABEL_41;
          }
        }

        goto LABEL_38;
      }

      a3 = v12 + 1;
    }

    else
    {
      a4 = (a4 + a3) / 2;
    }
  }

  v19 = *a2;
  if (!*a2)
  {
LABEL_41:
    a2[4] = a3;
    return a3;
  }

LABEL_37:
  (*(*v19 + 64))(v19, a3);
LABEL_38:
  if (*a2)
  {
    (*(**a2 + 80))(*a2, 15, 15);
  }

  return a3;
}

float fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Sum<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, float a5)
{
  if (*(a1 + 48))
  {
    return NAN;
  }

  v5 = a5;
  if (*(a1 + 40))
  {
    if (a3 <= 0)
    {
      v11 = 0;
      v10 = *(a1 + 16);
    }

    else
    {
      v10 = *(a1 + 16);
      v11 = (a3 - 1) / v10 + 1;
    }

    v12 = a4 / v10;
    v13 = v10 * v11;
    v14 = a4 / v10 * v10;
  }

  else
  {
    v12 = -1;
    v13 = a4;
    v14 = a4;
    v11 = -1;
  }

  if (v13 > a3)
  {
    v15 = v13 >= a4 ? a4 : v13;
    if (*a2)
    {
      (*(**a2 + 64))(*a2, a3);
    }

    else
    {
      a2[4] = a3;
    }

    v16 = __OFSUB__(v15, a3);
    v17 = v15 - a3;
    if (!((v17 < 0) ^ v16 | (v17 == 0)))
    {
      do
      {
        if (*a2)
        {
          v18 = (*(**a2 + 32))(*a2);
        }

        else
        {
          v18 = a2[1] + 16 * a2[4];
        }

        v5 = fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::LogPlus(v5, *(v18 + 8));
        if (*a2)
        {
          (*(**a2 + 40))(*a2);
        }

        else
        {
          ++a2[4];
        }

        --v17;
      }

      while (v17);
    }
  }

  if (v13 < v14)
  {
    v19 = *(a1 + 40);
    v20 = *(v19 + 8 * v12);
    v21 = *(v19 + 8 * v11);
    if (v20 < v21)
    {
      if (v21 != INFINITY)
      {
        v22 = v21 - v20;
        v23 = 0.0;
        if (v22 != INFINITY)
        {
          v24 = exp(-v22);
          v23 = log(1.0 - v24);
        }

        v20 = v20 - v23;
      }

      v25 = v20;
      v5 = fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::LogPlus(v5, v25);
    }
  }

  if (v14 < a4)
  {
    v26 = v13 <= v14 ? v14 : v13;
    if (*a2)
    {
      (*(**a2 + 64))(*a2, v26);
    }

    else
    {
      a2[4] = v26;
    }

    v27 = a4 <= v26;
    v28 = a4 - v26;
    if (!v27)
    {
      do
      {
        if (*a2)
        {
          v29 = (*(**a2 + 32))(*a2);
        }

        else
        {
          v29 = a2[1] + 16 * a2[4];
        }

        v5 = fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::LogPlus(v5, *(v29 + 8));
        if (*a2)
        {
          (*(**a2 + 40))(*a2);
        }

        else
        {
          ++a2[4];
        }

        --v28;
      }

      while (v28);
    }
  }

  return v5;
}

float fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::LogPlus(float a1, float a2)
{
  v2 = a1;
  v3 = a2;
  if (a1 <= a2)
  {
    v7 = 0.0;
    if (v3 - v2 != INFINITY)
    {
      v8 = exp(-(v3 - v2));
      v7 = log(v8 + 1.0);
    }

    return v2 - v7;
  }

  else
  {
    v4 = 0.0;
    if (v2 - v3 != INFINITY)
    {
      v5 = exp(-(v2 - v3));
      v4 = log(v5 + 1.0);
    }

    return v3 - v4;
  }
}

uint64_t fst::LabelReachableData<int>::FinalLabel(uint64_t a1)
{
  result = *(a1 + 4);
  if (result == -1)
  {
    result = *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>((a1 + 16), &fst::kNoLabel) + 5);
    *(a1 + 4) = result;
  }

  return result;
}

uint64_t fst::AddOnImpl<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>>::AddOnImpl(uint64_t a1, uint64_t a2, const std::string *a3, uint64_t a4)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D2DE60;
  v8 = *(a2 + 8);
  *(a1 + 72) = v8;
  ++*(v8 + 56);
  *(a1 + 64) = &unk_1F2D21228;
  *(a1 + 80) = a4;
  std::string::operator=((a1 + 16), a3);
  *(a1 + 8) = *(a1 + 8) & 4 | (*(**(a1 + 72) + 32))(*(a1 + 72), 0x3FFFFFFF0007);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, *(*(a1 + 72) + 40));
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, *(*(a1 + 72) + 48));
  v9 = *(a1 + 80);
  if (v9)
  {
    ++*(v9 + 16);
  }

  return a1;
}

void sub_1B5743778(_Unwind_Exception *a1)
{
  fst::ImplToFst<fst::ConstFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(v2);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

void fst::AddOnImpl<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>>::~AddOnImpl(void *a1)
{
  fst::AddOnImpl<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>>::~AddOnImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::AddOnImpl<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>>::~AddOnImpl(void *a1)
{
  *a1 = &unk_1F2D2DE60;
  v2 = a1[10];
  if (v2)
  {
    v3 = *(v2 + 16) - 1;
    *(v2 + 16) = v3;
    if (!v3)
    {
      v4 = fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>::~AddOnPair(v2);
      MEMORY[0x1B8C85350](v4, 0x1020C40EDCEB4C7);
    }
  }

  fst::ImplToFst<fst::ConstFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1 + 8);

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(a1);
}

uint64_t *fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>::~AddOnPair(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 + 8) - 1;
    *(v2 + 8) = v3;
    if (!v3)
    {
      v7 = (v2 + 56);
      std::vector<fst::IntervalSet<int>>::__destroy_vector::operator()[abi:ne200100](&v7);
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v2 + 16);
      MEMORY[0x1B8C85350](v2, 0x10A0C40A16849A9);
    }
  }

  v4 = a1[1];
  if (v4)
  {
    v5 = *(v4 + 8) - 1;
    *(v4 + 8) = v5;
    if (!v5)
    {
      v7 = (v4 + 56);
      std::vector<fst::IntervalSet<int>>::__destroy_vector::operator()[abi:ne200100](&v7);
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v4 + 16);
      MEMORY[0x1B8C85350](v4, 0x10A0C40A16849A9);
    }
  }

  return a1;
}

uint64_t fst::LabelLookAheadRelabeler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LabelReachableData<int>>::LabelLookAheadRelabeler<fst::AddOnImpl<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>>>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a2 + 64;
  v5 = *(*a2 + 80);
  if (*(*a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *(v3 + 16), *(v3 + 24));
  }

  else
  {
    v14 = *(v3 + 16);
  }

  if (!(*(*v4 + 64))(v4, 2, 0))
  {
    operator new();
  }

  if (*v5)
  {
    fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::LabelReachable(v13, *v5, 0);
    fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::Relabel(v13, v4, 1);
    if (!*FLAGS_save_relabel_ipairs)
    {
      goto LABEL_15;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::RelabelPairs(v13, &v10, 1);
    std::string::basic_string[abi:ne200100]<0>(__p, FLAGS_save_relabel_ipairs);
    fst::WriteIntPairs<int>(__p, &v10);
  }

  else
  {
    fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::LabelReachable(v13, v5[1], 0);
    fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::Relabel(v13, v4, 0);
    if (!*FLAGS_save_relabel_opairs)
    {
      goto LABEL_15;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::RelabelPairs(v13, &v10, 1);
    std::string::basic_string[abi:ne200100]<0>(__p, FLAGS_save_relabel_opairs);
    fst::WriteIntPairs<int>(__p, &v10);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

LABEL_15:
  fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::~LabelReachable(v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1B5743BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::~LabelReachable(&a19);
  if (*(v19 - 73) < 0)
  {
    operator delete(*(v19 - 96));
  }

  _Unwind_Resume(a1);
}

uint64_t fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::Relabel(uint64_t a1, uint64_t a2, int a3)
{
  v12 = 0;
  (*(*a2 + 128))(a2, &v10);
  while (1)
  {
    if (!v10)
    {
      if (v12 >= v11)
      {
        goto LABEL_21;
      }

LABEL_7:
      v6 = v12;
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

    v6 = (*(*v10 + 24))();
LABEL_8:
    (*(*a2 + 296))(a2, v6, &v9);
    while (!(*(*v9 + 24))(v9))
    {
      v8 = *(*(*v9 + 32))(v9);
      if (a3)
      {
        LODWORD(v8) = fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::Relabel(a1, v8);
      }

      else
      {
        DWORD1(v8) = fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::Relabel(a1, DWORD1(v8));
      }

      (*(*v9 + 88))(v9, &v8);
      (*(*v9 + 40))(v9);
    }

    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

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

LABEL_21:
  if (a3)
  {
    fst::ArcSort<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a2);
    return (*(*a2 + 280))(a2, 0);
  }

  else
  {
    fst::ArcSort<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a2);
    return (*(*a2 + 288))(a2, 0);
  }
}

void sub_1B5743F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

void fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::RelabelPairs(uint64_t a1, void *a2, char a3)
{
  a2[1] = *a2;
  v6 = fst::LabelReachableData<int>::Label2Index(*(a1 + 80));
  for (i = *(v6 + 16); i; i = *i)
  {
    v8 = *(i + 5);
    if (v8 != fst::LabelReachableData<int>::FinalLabel(*(a1 + 80)))
    {
      v13 = i[2];
      std::vector<std::pair<int,int>>::push_back[abi:ne200100](a2, &v13);
    }
  }

  if (a3)
  {
    v12 = 1;
    if (*(v6 + 24))
    {
      do
      {
        v9 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v6, &v12);
        if (!v9 || (v10 = *(v9 + 5), v10 == fst::LabelReachableData<int>::FinalLabel(*(a1 + 80))))
        {
          v13 = __PAIR64__(*(v6 + 24) + 1, v12);
          std::vector<std::pair<int,int>>::push_back[abi:ne200100](a2, &v13);
        }

        v11 = v12++ + 1;
      }

      while (*(v6 + 24) >= v11);
    }
  }
}

uint64_t fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::LabelReachable(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  *(result + 8) = -1;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 1065353216;
  *(result + 80) = a2;
  if (!a3)
  {
    operator new();
  }

  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 88) = a3;
  *(result + 112) = 0;
  ++*(a2 + 8);
  return result;
}

uint64_t fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::Relabel(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if (a2)
  {
    if ((*(a1 + 113) & 1) == 0)
    {
      v2 = fst::LabelReachableData<int>::Label2Index(*(a1 + 80));
      v6 = &v5;
      v3 = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v2, &v5);
      a2 = *(v3 + 5);
      if (!a2)
      {
        a2 = (*(v2 + 24) + 1);
        *(v3 + 5) = a2;
      }
    }
  }

  return a2;
}

uint64_t fst::WriteIntPairs<int>(uint64_t a1, uint64_t *a2)
{
  v4 = fst::cout(a1);
  v5 = *(a1 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 8);
  }

  if (v5)
  {
    operator new();
  }

  v6 = v4;
  v7 = *a2;
  if (a2[1] != *a2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = MEMORY[0x1B8C84C00](v6, *(v7 + v8));
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\t", 1);
      v12 = MEMORY[0x1B8C84C00](v11, *(*a2 + v8 + 4));
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
      ++v9;
      v7 = *a2;
      v8 += 8;
    }

    while (v9 < (a2[1] - *a2) >> 3);
  }

  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v22, "ERROR");
    v13 = fst::LogMessage::LogMessage(&v21, v22);
    v14 = fst::cerr(v13);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "WriteIntPairs: Write failed: ", 29);
    if (*(a1 + 23) < 0)
    {
      v17 = *(a1 + 8);
      if (v17)
      {
        std::string::__init_copy_ctor_external(&__p, *a1, v17);
        goto LABEL_18;
      }
    }

    else if (*(a1 + 23))
    {
      __p = *a1;
LABEL_18:
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      fst::LogMessage::~LogMessage(&v21);
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      return 0;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "standard output");
    goto LABEL_18;
  }

  if (v6 != fst::cout(v4))
  {
    (*(*v6 + 8))(v6);
  }

  return 1;
}

void sub_1B574449C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::~LabelReachable(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(v2 + 8) - 1;
  *(v2 + 8) = v3;
  if (!v3)
  {
    __p[0] = (v2 + 56);
    std::vector<fst::IntervalSet<int>>::__destroy_vector::operator()[abi:ne200100](__p);
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v2 + 16);
    MEMORY[0x1B8C85350](v2, 0x10A0C40A16849A9);
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    MEMORY[0x1B8C85350](v4, 0xC400A2AC0F1);
  }

  if (*(a1 + 96) > 0.0 && FLAGS_v >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
    v6 = fst::LogMessage::LogMessage(&v15, __p);
    v7 = fst::cerr(v6);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "# of calls: ", 12);
    MEMORY[0x1B8C84BE0](v8, *(a1 + 96));
    fst::LogMessage::~LogMessage(&v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (FLAGS_v >= 2)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
      v9 = fst::LogMessage::LogMessage(&v15, __p);
      v10 = fst::cerr(v9);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "# of intervals/call: ", 21);
      MEMORY[0x1B8C84BE0](v11, *(a1 + 104) / *(a1 + 96));
      fst::LogMessage::~LogMessage(&v15);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 16);
  return a1;
}

void fst::AddOnImpl<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>>::AddOnImpl(uint64_t a1)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D2DE60;
  fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>::ConstFst();
}

void *fst::LabelLookAheadMatcher<fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,1760u,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>>::~LabelLookAheadMatcher(void *a1)
{
  *a1 = &unk_1F2D2DC80;
  v2 = a1[23];
  if (v2)
  {
    v3 = fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::~LabelReachable(v2);
    MEMORY[0x1B8C85350](v3, 0x10A0C40F647C574);
  }

  fst::SortedMatcher<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>::~SortedMatcher(a1 + 4);
  return a1;
}

uint64_t fst::LabelReachable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::LabelReachableData<int>>::~LabelReachable(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(v2 + 8) - 1;
  *(v2 + 8) = v3;
  if (!v3)
  {
    __p[0] = (v2 + 56);
    std::vector<fst::IntervalSet<int>>::__destroy_vector::operator()[abi:ne200100](__p);
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v2 + 16);
    MEMORY[0x1B8C85350](v2, 0x10A0C40A16849A9);
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    v5 = fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FastLogAccumulator(v4);
    MEMORY[0x1B8C85350](v5, 0x10A0C4057A1BE17);
  }

  if (*(a1 + 96) > 0.0 && FLAGS_v >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
    v7 = fst::LogMessage::LogMessage(&v16, __p);
    v8 = fst::cerr(v7);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "# of calls: ", 12);
    MEMORY[0x1B8C84BE0](v9, *(a1 + 96));
    fst::LogMessage::~LogMessage(&v16);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    if (FLAGS_v >= 2)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
      v10 = fst::LogMessage::LogMessage(&v16, __p);
      v11 = fst::cerr(v10);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "# of intervals/call: ", 21);
      MEMORY[0x1B8C84BE0](v12, *(a1 + 104) / *(a1 + 96));
      fst::LogMessage::~LogMessage(&v16);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 16);
  return a1;
}

uint64_t fst::FastLogAccumulator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FastLogAccumulator(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48) - 1;
  *(v2 + 48) = v3;
  if (!v3)
  {
    v4 = *(v2 + 24);
    if (v4)
    {
      *(v2 + 32) = v4;
      operator delete(v4);
    }

    v5 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v5;
      operator delete(v5);
    }

    MEMORY[0x1B8C85350](v2, 0x1090C40FB833234);
  }

  return a1;
}

void *fst::ImplToFst<fst::AddOnImpl<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ImplToFst(void *result, uint64_t a2, int a3)
{
  *result = &unk_1F2D2DAC8;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

uint64_t fst::AddOnImpl<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>>::AddOnImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D2DE60;
  *(a1 + 64) = &unk_1F2D21228;
  v4 = *(a2 + 72);
  *(a1 + 72) = v4;
  ++*(v4 + 56);
  std::string::operator=((a1 + 16), (a2 + 16));
  *(a1 + 8) = *(a1 + 8) & 4 | (*(**(a1 + 72) + 32))(*(a1 + 72), 0x3FFFFFFF0004);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, *(*(a1 + 72) + 40));
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, *(*(a1 + 72) + 48));
  v5 = *(a1 + 80);
  if (v5)
  {
    ++*(v5 + 16);
  }

  return a1;
}

void sub_1B5744BC8(_Unwind_Exception *a1)
{
  fst::ImplToFst<fst::ConstFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(v2);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::AddOnImpl<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>>::Write(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = 0u;
  v17 = 0u;
  *v14 = 0u;
  *v15 = 0u;
  v19 = 0;
  v20 = 0;
  v18 = -1;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a3, *(a3 + 8));
  }

  else
  {
    v11 = *a3;
  }

  v12 = *(a3 + 24);
  *(&v12 + 1) = 0;
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::WriteHeader(a1, a2, &v11, 1, v13);
  LODWORD(__p.__r_.__value_.__l.__data_) = 446681434;
  std::ostream::write();
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v10 = *(a3 + 24);
  LOBYTE(v10) = 1;
  v6 = fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>::WriteFst<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>((a1 + 64), a2, &__p);
  if (v6)
  {
    v7 = *(a1 + 80);
    v21 = v7 != 0;
    std::ostream::write();
    if (v7)
    {
      fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>::Write(*(a1 + 80), a2);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[1]);
  }

  if (SHIBYTE(v15[0]) < 0)
  {
    operator delete(v14[0]);
  }

  return v6;
}

void sub_1B5744D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a24);
  _Unwind_Resume(a1);
}

uint64_t fst::AddOnPair<fst::LabelReachableData<int>,fst::LabelReachableData<int>>::Write(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  std::ostream::write();
  if (v4)
  {
    fst::LabelReachableData<int>::Write(*a1, a2);
  }

  v5 = a1[1];
  std::ostream::write();
  if (v5)
  {
    fst::LabelReachableData<int>::Write(a1[1], a2);
  }

  return 1;
}

uint64_t fst::LabelReachableData<int>::Write(uint64_t a1, uint64_t a2)
{
  std::ostream::write();
  std::ostream::write();
  if (*(a1 + 1) == 1)
  {
    std::ostream::write();
    for (i = *(a1 + 32); i; i = *i)
    {
      std::ostream::write();
      std::ostream::write();
    }
  }

  fst::LabelReachableData<int>::FinalLabel(a1);
  std::ostream::write();
  fst::WriteType<fst::IntervalSet<int>,std::allocator<fst::IntervalSet<int>>>(a2, (a1 + 56));
  return 1;
}

uint64_t fst::WriteType<fst::IntervalSet<int>,std::allocator<fst::IntervalSet<int>>>(uint64_t a1, uint64_t *a2)
{
  v12 = (a2[1] - *a2) >> 5;
  std::ostream::write();
  for (i = *a2; i != a2[1]; i += 32)
  {
    __p = 0;
    v9 = 0;
    v10 = 0;
    std::vector<fst::IntervalSet<int>::Interval,std::allocator<fst::IntervalSet<int>::Interval>>::__init_with_size[abi:ne200100]<fst::IntervalSet<int>::Interval*,fst::IntervalSet<int>::Interval*>(&__p, *i, *(i + 8), (*(i + 8) - *i) >> 3);
    v11 = *(i + 24);
    v13 = (v9 - __p) >> 3;
    std::ostream::write();
    for (j = __p; j != v9; ++j)
    {
      v6 = *j;
      v14 = *j;
      std::ostream::write();
      v14 = HIDWORD(v6);
      std::ostream::write();
    }

    LODWORD(v13) = v11;
    std::ostream::write();
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }
  }

  return a1;
}

void sub_1B5745060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::Replace<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 1;
  *(a3 + 8) = 0;
  fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ReplaceFst();
}

void XCount::freeThread(XCount *this)
{
  v1 = xcountTableTLS();
  if (*v1)
  {
    free(*v1);
    *v1 = 0;
  }

  v2 = refCountsTLS();
  if (*v2)
  {
    free(*v2);
    *v2 = 0;
  }

  v3 = freeListTLS();
  if (*v3)
  {
    free(*v3);
    *v3 = 0;
  }

  v4 = initializedTLS();
  if (*v4)
  {
    free(*v4);
    *v4 = 0;
  }
}

uint64_t kaldi::quasar::Range(kaldi::quasar *this, kaldi::quasar::ComputeEngineBufferItf *a2)
{
  result = (*(*this + 176))(this, a2);
  if (result >= 1)
  {
    if ((*(*this + 176))(this) < 1)
    {
      v5 = 1;
    }

    else
    {
      v4 = 0;
      v5 = 1;
      do
      {
        v5 *= (*(*this + 184))(this, v4);
        v4 = (v4 + 1);
      }

      while (v4 < (*(*this + 176))(this));
    }

    result = (*(*this + 144))(this);
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = vdupq_n_s64(v5 - 1);
      v8 = xmmword_1B5AE0050;
      v9 = xmmword_1B5AE0060;
      v10 = (result + 8);
      v11 = vdupq_n_s64(4uLL);
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v7, v9));
        if (vuzp1_s16(v12, *v7.i8).u8[0])
        {
          *(v10 - 2) = v6;
        }

        if (vuzp1_s16(v12, *&v7).i8[2])
        {
          *(v10 - 1) = (v6 + 1);
        }

        if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v8))).i32[1])
        {
          *v10 = (v6 + 2);
          v10[1] = (v6 + 3);
        }

        v6 += 4;
        v8 = vaddq_s64(v8, v11);
        v9 = vaddq_s64(v9, v11);
        v10 += 4;
      }

      while (((v5 + 3) & 0xFFFFFFFC) != v6);
    }
  }

  return result;
}

void kaldi::quasar::CEFusedAcousticEncoder::~CEFusedAcousticEncoder(kaldi::quasar::CEFusedAcousticEncoder *this)
{
  v2 = *(this + 66);
  *(this + 66) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 65);
  *(this + 65) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 64);
  *(this + 64) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  kaldi::quasar::CEFusedAcousticEncoderConfig::~CEFusedAcousticEncoderConfig(this);
}

uint64_t kaldi::quasar::CEFusedAcousticEncoder::PreflightCheck(kaldi::quasar::CEFusedAcousticEncoder *this)
{
  v2 = *(this + 64);
  if (v2 && ((*(*v2 + 16))(v2) & 1) != 0)
  {
    return 1;
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "PreflightCheck: Engine check failed. Creating new engine", 56);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&v8);
  }

  v3 = *(this + 64);
  *(this + 64) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  (*(**(this + 60) + 32))(&v8);
  locale = v8.__locale_;
  v5 = v9;
  v6 = *(this + 64);
  *(this + 64) = v9;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    v5 = *(this + 64);
  }

  *(this + 536) = locale;
  if (v5 && ((*(*v5 + 16))(v5) & 1) != 0)
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "PreflightCheck: New engine check succeeded", 42);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&v8);
    }

    return 1;
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "PreflightCheck: New engine check failed", 39);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v8);
  }

  return 0;
}

void *kaldi::quasar::CEFusedAcousticEncoder::InitialStates@<X0>(void *this@<X0>, kaldi::quasar::ComputeEngineBufferItf *a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (this[36] != this[37])
  {
    v4 = this;
    v5 = this[61];
    for (i = this[62]; v5 != i; v5 += 24)
    {
      (*(*v4[64] + 64))(&v25);
      v8 = a3[1];
      v7 = a3[2];
      if (v8 >= v7)
      {
        v11 = *a3;
        v12 = v8 - *a3;
        v13 = v12 >> 3;
        v14 = (v12 >> 3) + 1;
        if (v14 >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v15 = v7 - v11;
        if (v15 >> 2 > v14)
        {
          v14 = v15 >> 2;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        v24[4] = a3;
        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a3, v16);
        }

        v17 = v25;
        v25 = 0;
        *(8 * v13) = v17;
        v10 = 8 * v13 + 8;
        memcpy(0, v11, v12);
        v18 = *a3;
        *a3 = 0;
        a3[1] = v10;
        v19 = a3[2];
        a3[2] = 0;
        v24[2] = v18;
        v24[3] = v19;
        v24[0] = v18;
        v24[1] = v18;
        std::__split_buffer<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::~__split_buffer(v24);
      }

      else
      {
        v9 = v25;
        v25 = 0;
        *v8 = v9;
        v10 = (v8 + 8);
      }

      a3[1] = v10;
      this = v25;
      v25 = 0;
      if (this)
      {
        this = (*(*this + 8))(this);
      }
    }

    v20 = *(v4 + 101);
    if ((v20 & 0x80000000) == 0)
    {
      this = kaldi::quasar::CEFusedAcousticEncoder::FillMask(this, *a3 + v20, (*(v4 + 98) - *(v4 + 99)) / *(v4 + 100), 1, 0);
    }

    v21 = *(v4 + 117);
    if ((v21 & 0x80000000) == 0)
    {
      this = kaldi::quasar::CEFusedAcousticEncoder::FillMask(this, *a3 + v21, (*(v4 + 98) - *(v4 + 99)) / *(v4 + 116), 1, 0);
    }

    v22 = *(v4 + 102);
    if ((v22 & 0x80000000) == 0)
    {
      this = kaldi::quasar::Range(*(*a3 + v22), a2);
    }

    v23 = *(v4 + 118);
    if ((v23 & 0x80000000) == 0)
    {
      return kaldi::quasar::Range(*(*a3 + v23), a2);
    }
  }

  return this;
}

void sub_1B5745944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEFusedAcousticEncoder::SetContextEmbeddings(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 47) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 32))
    {
      goto LABEL_36;
    }
  }

  else if (!*(a1 + 47))
  {
    goto LABEL_36;
  }

  v4 = *(a2 + 20);
  if (v4 >= 1)
  {
    v5 = *(a1 + 376);
    __p = &unk_1F2CFA908;
    if (v4 >= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    if (v5 <= 0)
    {
      v7 = v4;
    }

    else
    {
      v7 = v5;
    }

    if (v5 > 0)
    {
      v4 = v6;
    }

    v8 = *(a2 + 16);
    v9 = *(a2 + 32);
    *&v27 = *(a2 + 8);
    *(&v27 + 1) = __PAIR64__(v4, v8);
    *&v28 = *(a2 + 24);
    *(&v28 + 1) = v9;
    v31 = &unk_1F2CFA908;
    v32 = 0u;
    v33 = 0u;
    quasar::Bitmap::~Bitmap(&v31);
    kaldi::quasar::InputShapeTemplate::Get((a1 + 348), v7, *(a2 + 16), &v31);
    v29 = 0;
    kaldi::quasar::CreateBufferFromMatrix(a1 + 512, a2, &v31, &v29, &v30);
    v10 = v30;
    v30 = 0;
    v11 = *(a1 + 528);
    *(a1 + 528) = v10;
    if (v11)
    {
      (*(*v11 + 8))(v11);
      v12 = v30;
      v30 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }

    v13 = v29;
    v29 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    if (v31)
    {
      *&v32 = v31;
      operator delete(v31);
    }

    __p = &unk_1F2CFA908;
    v27 = 0u;
    v28 = 0u;
    quasar::Bitmap::~Bitmap(&__p);
    goto LABEL_36;
  }

  if ((*(a1 + 71) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 56))
    {
LABEL_24:
      v14 = *(a1 + 376);
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      goto LABEL_29;
    }
  }

  else if (*(a1 + 71))
  {
    goto LABEL_24;
  }

  v15 = 1;
LABEL_29:
  kaldi::quasar::InputShapeTemplate::Get((a1 + 348), v15, *(a1 + 380), &v31);
  (*(**(a1 + 512) + 64))(&__p);
  v16 = __p;
  __p = 0;
  v17 = *(a1 + 528);
  *(a1 + 528) = v16;
  if (v17)
  {
    (*(*v17 + 8))(v17);
    v18 = __p;
    __p = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "The model expects context embeddings. But it's not provided. Use all zeros", 74);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
  }

  if (v31)
  {
    *&v32 = v31;
    operator delete(v31);
  }

LABEL_36:
  if ((*(a1 + 71) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 56))
    {
      return;
    }
  }

  else if (!*(a1 + 71))
  {
    return;
  }

  v19 = *(a2 + 20);
  v20 = *(a1 + 376);
  if (v20 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = *(a1 + 376);
  }

  if (v20 < 1)
  {
    v20 = *(a2 + 20);
  }

  if (v19 >= 1)
  {
    v22 = *(a2 + 20);
  }

  else
  {
    v22 = v21;
  }

  if (v19 >= 1)
  {
    v23 = v20;
  }

  else
  {
    v23 = v21;
  }

  kaldi::quasar::InputShapeTemplate::Get((a1 + 360), 1, v23, &__p);
  (*(**(a1 + 512) + 64))(&v31);
  v24 = v31;
  v31 = 0;
  v25 = *(a1 + 520);
  *(a1 + 520) = v24;
  if (v25)
  {
    (*(*v25 + 8))(v25);
    v25 = v31;
    v31 = 0;
    if (v25)
    {
      v25 = (*(*v25 + 8))(v25);
    }
  }

  kaldi::quasar::CEFusedAcousticEncoder::FillMask(v25, (a1 + 520), v22, 1, 1);
  if (__p)
  {
    *&v27 = __p;
    operator delete(__p);
  }
}

void sub_1B5745DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&a9);
  v12 = *(v10 - 88);
  if (v12)
  {
    *(v10 - 80) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

BOOL kaldi::quasar::CEFusedAcousticEncoder::HasContextualBiasing(kaldi::quasar::CEFusedAcousticEncoder *this)
{
  v1 = *(this + 47);
  if (v1 < 0)
  {
    v1 = *(this + 4);
  }

  return v1 != 0;
}

uint64_t kaldi::quasar::CEFusedAcousticEncoder::AttemptComputeEngineUpgrade(kaldi::quasar::CEFusedAcousticEncoder *this)
{
  if (*(this + 64) && *(this + 536) != 1)
  {
    return 0;
  }

  if (((*(**(this + 60) + 40))(*(this + 60)) & 1) == 0)
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Engine upgrade unlikely", 23);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v14);
    }

    return 0;
  }

  v2 = *(this + 64);
  *(this + 64) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  (*(**(this + 60) + 32))(&v12);
  v3 = v13;
  v13 = 0;
  v4 = *(this + 64);
  *(this + 64) = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = v12;
  *(this + 536) = v12;
  if (v5 == 1)
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Engine upgrade failed, still ", 29);
      if (!v3)
      {
        __cxa_bad_typeid();
      }

LABEL_17:
      v8 = v6;
      v9 = *(*(*v3 - 8) + 8);
      v10 = strlen((v9 & 0x7FFFFFFFFFFFFFFFLL));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9 & 0x7FFFFFFFFFFFFFFFLL, v10);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v14);
    }
  }

  else if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Engine upgrade succeeded, now ", 30);
    if (!v3)
    {
      __cxa_bad_typeid();
    }

    goto LABEL_17;
  }

  v11 = v13;
  v13 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  return 1;
}

void sub_1B57460BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5746CEC(_Unwind_Exception *a1)
{
  if (*(v2 - 105) < 0)
  {
    operator delete(*(v2 - 128));
  }

  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::CEAttnEncoderDecoder::CEAttnEncoderDecoder(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  kaldi::quasar::InputShapeTemplate::InputShapeTemplate((a1 + 8));
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 168) = -1;
  *(a1 + 176) = -1;
  *(a1 + 184) = -1;
  *(a1 + 188) = 0xFFFFFFFF00000000;
  *(a1 + 196) = -1;
  *(a1 + 200) = 0;
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = *(a2 + 8);
  }

  v5 = __p;
  std::string::basic_string[abi:ne200100](__p, v4 + 7);
  if (v8 < 0)
  {
    v5 = __p[0];
  }

  if (v4)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    memmove(v5, v6, v4);
  }

  strcpy(v5 + v4, ".config");
  kaldi::quasar::CEAttnEncoderDecoderConfig::Read(a1, a2, __p);
}

void sub_1B5746EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 + 200);
  *(v14 + 200) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  kaldi::quasar::CEAttnEncoderDecoderConfig::~CEAttnEncoderDecoderConfig(v14);
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEAttnEncoderDecoder::~CEAttnEncoderDecoder(kaldi::quasar::CEAttnEncoderDecoder *this)
{
  v2 = *(this + 25);
  *(this + 25) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  kaldi::quasar::CEAttnEncoderDecoderConfig::~CEAttnEncoderDecoderConfig(this);
}

uint64_t kaldi::quasar::CEAttnEncoderDecoder::Decode(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v97 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&__p, "scores != nullptr");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  if (!a5)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&__p, "reversed_scores != nullptr");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  kaldi::CuVector<float>::Resize(a4, -1431655765 * ((a3[1] - *a3) >> 3), 0);
  kaldi::CuVector<float>::Resize(a5, -1431655765 * ((a3[1] - *a3) >> 3), 0);
  v75 = *(a1 + 71);
  if (v75 < 0)
  {
    v75 = *(a1 + 56);
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "AED rescoring with dynamic shaped inputs/outputs: ", 50);
    MEMORY[0x1B8C84BD0](v9, v75 == 0);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&__p);
  }

  v10 = *(a2 + 20);
  v11 = *(a1 + 192);
  if (v75)
  {
    v12 = *(a1 + 200);
    v13 = vdupq_n_s64(1uLL);
    if (v11 <= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = v11;
    }

    v94 = v13;
    v95 = v14;
    memset(&__p, 0, sizeof(__p));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, &v94, &v96, 3uLL);
    (*(*v12 + 64))(v86, v12, &__p);
    v15 = v86[0];
    v86[0] = 0;
    v76 = v15;
    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
      v15 = v76;
    }

    if (v14 >= 1)
    {
      v16 = 0;
      do
      {
        (*(*v15 + 96))(v15, v16 < *(a2 + 20), v16);
        v16 = (v16 + 1);
        v15 = v76;
      }

      while (v14 != v16);
    }
  }

  else
  {
    v76 = 0;
    if (v10 >= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v10;
    }
  }

  kaldi::CuMatrix<float>::CuMatrix(&v94, v14, *(a2 + 16), 0, 0, 0);
  __p.__r_.__value_.__r.__words[2] = __PAIR64__(*(a2 + 20), v95);
  *&v89.__r_.__value_.__l.__data_ = v96;
  __p.__r_.__value_.__r.__words[0] = &unk_1F2CFA908;
  __p.__r_.__value_.__l.__size_ = v94.u64[1];
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&__p, a2, 111);
  __p.__r_.__value_.__r.__words[0] = &unk_1F2CFA908;
  *&__p.__r_.__value_.__r.__words[1] = 0u;
  *&v89.__r_.__value_.__l.__data_ = 0u;
  quasar::Bitmap::~Bitmap(&__p);
  v17 = *(a2 + 16);
  if (v17 != *(a1 + 168))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "encoder_states.NumCols() == InputDim()", 38);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  kaldi::quasar::InputShapeTemplate::Get((a1 + 8), SHIDWORD(v95), v17, v86);
  v84 = 0;
  kaldi::quasar::CreateBufferFromMatrix(a1 + 200, &v94, v86, &v84, &v85);
  v18 = v84;
  v84 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *a3;
  if (a3[1] != *a3)
  {
    v20 = 0;
    v73 = a5;
    do
    {
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v21 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v81, (a1 + 24), v85);
      v22 = v21;
      v23 = (v19 + 24 * v20);
      v82 = v21;
      if (v75)
      {
        if (v21 >= v83)
        {
          v27 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v81, (a1 + 48), v76);
        }

        else
        {
          if (*(a1 + 71) < 0)
          {
            std::string::__init_copy_ctor_external(v21, *(a1 + 48), *(a1 + 56));
          }

          else
          {
            v24 = *(a1 + 48);
            v21->__r_.__value_.__r.__words[2] = *(a1 + 64);
            *&v21->__r_.__value_.__l.__data_ = v24;
          }

          v22[1].__r_.__value_.__r.__words[0] = v76;
          v27 = (v22 + 32);
        }

        v82 = v27;
        v28 = (v23[1] - *v23) >> 2;
        if (*(a1 + 196) <= v28 + 1)
        {
          v26 = v28 + 1;
        }

        else
        {
          v26 = *(a1 + 196);
        }
      }

      else
      {
        v25 = (v23[1] - *v23) >> 2;
        if (v25 + 1 < *(a1 + 196))
        {
          v26 = v25 + 1;
        }

        else
        {
          v26 = *(a1 + 196);
        }
      }

      v29 = *(a1 + 200);
      v91 = 1;
      v92 = v26 + 1;
      memset(&__p, 0, sizeof(__p));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, &v91, &v93, 2uLL);
      (*(*v29 + 64))(&v80, v29, &__p);
      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v30 = *(a1 + 200);
      v91 = 1;
      v92 = v26 + 1;
      memset(&__p, 0, sizeof(__p));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, &v91, &v93, 2uLL);
      (*(*v30 + 64))(&v79, v30, &__p);
      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      (*(*v80 + 96))(v80, *(a1 + 184), 0);
      (*(*v79 + 96))(v79, *(a1 + 184), 0);
      v32 = *v23;
      v31 = v23[1];
      v33 = 1;
      if (*v23 != v31)
      {
        do
        {
          (*(*v80 + 96))(v80, *v32, v33);
          v33 = (v33 + 1);
          ++v32;
          v31 = v23[1];
        }

        while (v32 != v31);
        v32 = *v23;
      }

      if (v31 == v32)
      {
        v34 = 1;
      }

      else
      {
        v34 = 1;
        do
        {
          v35 = *--v31;
          (*(*v79 + 96))(v79, v35, v34);
          v34 = (v34 + 1);
        }

        while (v31 != *v23);
      }

      (*(*v80 + 96))(v80, *(a1 + 180), v33);
      (*(*v79 + 96))(v79, *(a1 + 180), v34);
      if (v26 <= v33)
      {
        v36 = v33;
      }

      else
      {
        v36 = v26;
      }

      v37 = v36 - v33;
      for (i = (v33 + 1); ; i = (i + 1))
      {
        v39 = v80;
        if (!v37)
        {
          break;
        }

        (*(*v80 + 96))(v80, *(a1 + 176), i);
        --v37;
        (*(*v79 + 96))(v79, *(a1 + 176), i);
      }

      v40 = v82;
      if (v82 >= v83)
      {
        v42 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v81, (a1 + 72), v80);
      }

      else
      {
        if (*(a1 + 95) < 0)
        {
          std::string::__init_copy_ctor_external(v82, *(a1 + 72), *(a1 + 80));
        }

        else
        {
          v41 = *(a1 + 72);
          v82->__r_.__value_.__r.__words[2] = *(a1 + 88);
          *&v40->__r_.__value_.__l.__data_ = v41;
        }

        v40[1].__r_.__value_.__r.__words[0] = v39;
        v42 = (v40 + 32);
      }

      v82 = v42;
      v43 = v79;
      if (v42 >= v83)
      {
        v45 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v81, (a1 + 96), v79);
        v46 = v73;
      }

      else
      {
        if (*(a1 + 119) < 0)
        {
          std::string::__init_copy_ctor_external(v42, *(a1 + 96), *(a1 + 104));
        }

        else
        {
          v44 = *(a1 + 96);
          v42->__r_.__value_.__r.__words[2] = *(a1 + 112);
          *&v42->__r_.__value_.__l.__data_ = v44;
        }

        v46 = v73;
        v42[1].__r_.__value_.__r.__words[0] = v43;
        v45 = (v42 + 32);
      }

      v82 = v45;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v47 = *(a1 + 200);
      if (*(a1 + 143) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(a1 + 120), *(a1 + 128));
      }

      else
      {
        __p = *(a1 + 120);
      }

      if (*(a1 + 167) < 0)
      {
        std::string::__init_copy_ctor_external(&v89, *(a1 + 144), *(a1 + 152));
      }

      else
      {
        v89 = *(a1 + 144);
      }

      memset(v78, 0, sizeof(v78));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v78, &__p, &v90, 2uLL);
      memset(v77, 0, sizeof(v77));
      (*(*v47 + 136))(v47, &v81, v78, v77, &v91);
      v87 = v77;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v87);
      v77[0] = v78;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v77);
      for (j = 0; j != -6; j -= 3)
      {
        if (SHIBYTE(v89.__r_.__value_.__r.__words[j + 2]) < 0)
        {
          operator delete(*(&__p + j * 8 + 24));
        }
      }

      v49 = v92;
      v51 = *v23;
      v50 = v23[1];
      if (v50 - *v23 != -4)
      {
        v52 = 0;
        do
        {
          v53 = (*(**(v49 - 8) + 112))(*(v49 - 8), v52);
          if (kaldi::g_kaldi_verbose_level >= 5)
          {
            kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 5);
            v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "r_attn_score[", 13);
            v55 = MEMORY[0x1B8C84C00](v54, v20);
            v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "][", 2);
            v57 = MEMORY[0x1B8C84C00](v56, v52);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "] = ", 4);
            std::ostream::operator<<();
            kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
          }

          *(*(v46 + 8) + 4 * v20) = v53 + *(*(v46 + 8) + 4 * v20);
          ++v52;
          v51 = *v23;
          v50 = v23[1];
        }

        while (v50 - *v23 + 1 > v52);
        v49 = v92;
      }

      v59 = v49 - 8;
      v58 = *(v49 - 8);
      *(v49 - 8) = 0;
      if (v58)
      {
        (*(*v58 + 8))(v58);
        v51 = *v23;
        v50 = v23[1];
      }

      v92 = v49 - 8;
      if (v50 - v51 != -4)
      {
        v60 = 0;
        do
        {
          v61 = (*(**(v49 - 16) + 112))(*(v49 - 16), v60);
          if (kaldi::g_kaldi_verbose_level >= 5)
          {
            kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 5);
            v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "attn_score[", 11);
            v63 = MEMORY[0x1B8C84C00](v62, v20);
            v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "][", 2);
            v65 = MEMORY[0x1B8C84C00](v64, v60);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "] = ", 4);
            std::ostream::operator<<();
            kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
          }

          *(*(a4 + 8) + 4 * v20) = v61 + *(*(a4 + 8) + 4 * v20);
          ++v60;
        }

        while (v23[1] - *v23 + 1 > v60);
        v59 = v92;
      }

      v68 = *(v59 - 8);
      v67 = (v59 - 8);
      v66 = v68;
      *v67 = 0;
      if (v68)
      {
        (*(*v66 + 8))(v66);
      }

      v92 = v67;
      __p.__r_.__value_.__r.__words[0] = &v91;
      std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&__p);
      v69 = v79;
      v79 = 0;
      if (v69)
      {
        (*(*v69 + 8))(v69);
      }

      v70 = v80;
      v80 = 0;
      if (v70)
      {
        (*(*v70 + 8))(v70);
      }

      __p.__r_.__value_.__r.__words[0] = &v81;
      std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
      ++v20;
      v19 = *a3;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) > v20);
  }

  v71 = v85;
  v85 = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  if (v86[0])
  {
    v86[1] = v86[0];
    operator delete(v86[0]);
  }

  kaldi::CuMatrix<float>::~CuMatrix(&v94);
  result = v76;
  if (v76)
  {
    return (*(*v76 + 8))(v76);
  }

  return result;
}

void sub_1B5747DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, char *a31)
{
  a31 = (v31 - 200);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a31);
  if (a20)
  {
    (*(*a20 + 8))(a20);
  }

  if (a21)
  {
    (*(*a21 + 8))(a21);
  }

  a31 = &a22;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a31);
  v33 = a26;
  a26 = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  kaldi::CuMatrix<float>::~CuMatrix(v31 - 176);
  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  _Unwind_Resume(a1);
}

void sub_1B5747DD4(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5747F00);
}

void kaldi::quasar::CEFusedAcousticEncoderConfig::~CEFusedAcousticEncoderConfig(kaldi::quasar::CEFusedAcousticEncoderConfig *this)
{
  v3 = (this + 488);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 60);
  *(this + 60) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 463) < 0)
  {
    operator delete(*(this + 55));
  }

  if (*(this + 439) < 0)
  {
    operator delete(*(this + 52));
  }

  v3 = (this + 312);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 288);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 287) < 0)
  {
    operator delete(*(this + 33));
  }

  if (*(this + 263) < 0)
  {
    operator delete(*(this + 30));
  }

  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
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

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void kaldi::quasar::CEAttnEncoderDecoderConfig::~CEAttnEncoderDecoderConfig(void **this)
{
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

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

  v2 = *this;
  *this = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void *std::deque<char>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1000;
  v3 = v1 - 4096;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<int *>::emplace_back<int *>(a1, &v10);
}

void sub_1B57482C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **std::deque<char>::__add_front_capacity(const void **result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  v5 = v4 - v3;
  if (v4 == v3)
  {
    v6 = a2 + 1;
  }

  else
  {
    v6 = a2;
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v4 - v3) << 9) - 1;
  }

  if ((v6 & 0xFFF) != 0)
  {
    v8 = (v6 >> 12) + 1;
  }

  else
  {
    v8 = v6 >> 12;
  }

  v9 = result[4];
  v10 = v7 - &v9[result[5]];
  if (v8 >= v10 >> 12)
  {
    v11 = v10 >> 12;
  }

  else
  {
    v11 = v8;
  }

  if (v8 <= v10 >> 12)
  {
    for (result[4] = &v9[4096 * v11]; v11; --v11)
    {
      v15 = v2[2];
      *&v17[0] = *(v15 - 1);
      v2[2] = v15 - 1;
      result = std::__split_buffer<int *>::emplace_front<int *&>(v2, v17);
    }
  }

  else
  {
    v12 = v8 - v11;
    v13 = result[3] - *result;
    if (v8 - v11 > (v13 >> 3) - (v5 >> 3))
    {
      if (v13 >> 2 <= v12 + (v5 >> 3))
      {
        v14 = v12 + (v5 >> 3);
      }

      else
      {
        v14 = v13 >> 2;
      }

      v18 = result;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(result, v14);
      }

      memset(v17, 0, sizeof(v17));
      operator new();
    }

    if (v12)
    {
      if (v3 != *result)
      {
        operator new();
      }

      operator new();
    }

    for (result[4] = &v9[4096 * v11]; v11; --v11)
    {
      v16 = v2[2];
      *&v17[0] = *(v16 - 1);
      v2[2] = v16 - 1;
      result = std::__split_buffer<int *>::emplace_front<int *&>(v2, v17);
    }
  }

  return result;
}

void sub_1B57485CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__deque_iterator<char,char *,char &,char **,long,4096l>::operator-[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = *(a1 + 8) - a2 - *result;
    if (v4 < 1)
    {
      result -= (4095 - v4) >> 12;
    }

    else
    {
      result += v4 >> 12;
    }
  }

  return result;
}

void ****std::__for_each_segment[abi:ne200100]<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>>>(void *a1, _BYTE *a2, void *a3, _BYTE *a4, void ***a5)
{
  v11 = a5;
  if (a1 != a3)
  {
    v7 = a1 + 1;
    for (i = (*a1 + 4096); ; i = v9 + 4096)
    {
      std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>>::operator()[abi:ne200100](&v11, a2, i);
      if (v7 == a3)
      {
        break;
      }

      v9 = *v7++;
      a2 = v9;
    }

    a2 = *v7;
  }

  return std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>>::operator()[abi:ne200100](&v11, a2, a4);
}

void ****std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>>::operator()[abi:ne200100](void ****result, _BYTE *__src, _BYTE *a3)
{
  v3 = *result;
  v5 = **result;
  v4 = (*result)[1];
  if (__src != a3)
  {
    v7 = __src;
    v8 = result;
    v10 = *v5++;
    v9 = v10;
    while (1)
    {
      v11 = v9 - v4 + 4096;
      if (a3 - v7 >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = a3 - v7;
      }

      if (v12)
      {
        result = memmove(v4, v7, v12);
      }

      v7 += v12;
      if (v7 == a3)
      {
        break;
      }

      v13 = *v5++;
      v9 = v13;
      v4 = v13;
    }

    v4 = (v4 + v12);
    if (*(v5 - 1) + 4096 == v4)
    {
      v4 = *v5;
    }

    else
    {
      --v5;
    }

    v3 = *v8;
  }

  *v3 = v5;
  v3[1] = v4;
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>,0>@<X0>(const void **a1@<X1>, char *a2@<X2>, const void **a3@<X3>, char *a4@<X4>, const void **a5@<X5>, char *a6@<X6>, const void ***a7@<X8>)
{
  v8 = a5;
  if (a1 == a3)
  {
    if (a2 == a4)
    {
      goto LABEL_46;
    }

    v13 = *a5;
    v14 = a4;
    while (1)
    {
      v15 = &a6[-v13];
      if (v14 - a2 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14 - a2;
      }

      v14 -= v16;
      a6 -= v16;
      if (v16)
      {
        result = memmove(a6, v14, v16);
      }

      if (v14 == a2)
      {
        break;
      }

      v18 = *--v8;
      v13 = v18;
      a6 = (v18 + 4096);
    }

    goto LABEL_44;
  }

  v20 = *a3;
  if (*a3 != a4)
  {
    v21 = *a5;
    v22 = a4;
    while (1)
    {
      v23 = &a6[-v21];
      if (v22 - v20 >= v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = v22 - v20;
      }

      v22 -= v24;
      a6 -= v24;
      if (v24)
      {
        result = memmove(a6, v22, v24);
      }

      if (v22 == v20)
      {
        break;
      }

      v25 = *--v8;
      v21 = v25;
      a6 = (v25 + 4096);
    }

    if (*v8 + 4096 == a6)
    {
      v26 = v8[1];
      ++v8;
      a6 = v26;
    }
  }

  v27 = a3 - 1;
  if (a3 - 1 != a1)
  {
    v28 = *v8;
    do
    {
      v29 = *v27;
      v30 = *v27 + 4096;
      while (1)
      {
        v31 = (a6 - v28);
        if (v30 - v29 >= v31)
        {
          v32 = v31;
        }

        else
        {
          v32 = v30 - v29;
        }

        v30 -= v32;
        a6 -= v32;
        if (v32)
        {
          result = memmove(a6, v30, v32);
        }

        if (v30 == v29)
        {
          break;
        }

        v33 = *--v8;
        v28 = v33;
        a6 = v33 + 4096;
      }

      v28 = *v8;
      if (*v8 + 4096 == a6)
      {
        v34 = v8[1];
        ++v8;
        v28 = v34;
        a6 = v34;
      }

      --v27;
    }

    while (v27 != a1);
  }

  v35 = *v27 + 4096;
  if (v35 != a2)
  {
    v36 = *v8;
    while (1)
    {
      v37 = &a6[-v36];
      if (v35 - a2 >= v37)
      {
        v38 = v37;
      }

      else
      {
        v38 = v35 - a2;
      }

      v35 -= v38;
      a6 -= v38;
      if (v38)
      {
        result = memmove(a6, v35, v38);
      }

      if (v35 == a2)
      {
        break;
      }

      v39 = *--v8;
      v36 = v39;
      a6 = (v39 + 4096);
    }

LABEL_44:
    if (*v8 + 4096 == a6)
    {
      v40 = v8[1];
      ++v8;
      a6 = v40;
    }
  }

LABEL_46:
  *a7 = a3;
  a7[1] = a4;
  a7[2] = v8;
  a7[3] = a6;
  return result;
}

void *std::vector<std::unique_ptr<quasar::tennessee::lm::flatbuf::PersonalizationPreItnTokenInfoT>>::reserve(void *result, unint64_t a2)
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

uint64_t *std::unique_ptr<quasar::tennessee::lm::flatbuf::PersonalizationPreItnTokenInfoT>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x1012C403467C318);
  }

  return a1;
}

uint64_t *std::unique_ptr<quasar::tennessee::lm::flatbuf::PersonalizationSlotInfoT>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = (v2 + 24);
    std::vector<std::unique_ptr<quasar::tennessee::lm::flatbuf::PersonalizationPreItnTokenInfoT>>::__destroy_vector::operator()[abi:ne200100](&v4);
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x1032C402D514303);
  }

  return a1;
}

void quasar::tennessee::lm::LoadDefaultPersonalizationSlotInfos(void *a1@<X8>)
{
  v14[48] = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::unique_ptr<quasar::tennessee::lm::flatbuf::PersonalizationSlotInfoT>>::reserve(a1, 0x23uLL);
  std::string::basic_string[abi:ne200100]<0>(&__p, "\\NT-contact");
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[15],char const(&)[17],0>(v4, "\\company-first", "COMPANYFIRSTNAME");
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[15],char const(&)[17],0>(v5, "\\contact-first", "CONTACTFIRSTNAME");
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[23],char const(&)[17],0>(v6, "\\contact-first-derived", "CONTACTFIRSTNAME");
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[15],char const(&)[17],0>(v7, "\\contact-group", "CONTACTGROUPNAME");
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[14],char const(&)[16],0>(v8, "\\contact-last", "CONTACTLASTNAME");
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[22],char const(&)[16],0>(v9, "\\contact-last-derived", "CONTACTLASTNAME");
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[16],char const(&)[18],0>(v10, "\\contact-middle", "CONTACTMIDDLENAME");
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[18],char const(&)[17],0>(v11, "\\contact-nickname", "CONTACTFIRSTNAME");
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[19],char const(&)[19],0>(v12, "\\interaction-first", "INTERACTIONNAMELME");
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[18],char const(&)[19],0>(v13, "\\interaction-last", "INTERACTIONNAMELME");
  memset(v2, 0, sizeof(v2));
  std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string> const*,std::pair<std::string,std::string> const*>(v2, v4, v14, 0xAuLL);
  quasar::tennessee::lm::CreatePersonalizationSlotInfoT();
}

void sub_1B574CAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::unique_ptr<quasar::tennessee::lm::flatbuf::PersonalizationSlotInfoT>::~unique_ptr[abi:ne200100](&STACK[0x360]);
  STACK[0x390] = &a9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x390]);
  std::pair<std::string,std::string>::~pair(&STACK[0x398]);
  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(STACK[0x348]);
  }

  STACK[0x398] = v9;
  std::vector<std::unique_ptr<quasar::tennessee::lm::flatbuf::PersonalizationSlotInfoT>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x398]);
  _Unwind_Resume(a1);
}

void *std::vector<std::unique_ptr<quasar::tennessee::lm::flatbuf::PersonalizationSlotInfoT>>::reserve(void *result, unint64_t a2)
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

uint64_t *quasar::tennessee::lm::ExtractPreItnPersonalizationTags@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v3 = *result;
  v4 = result[1];
  while (v3 != v4)
  {
    v5 = *(*v3 + 24);
    v6 = *(*v3 + 32);
    while (v5 != v6)
    {
      result = quasar::tennessee::InsertOrDie<std::set<std::string>>(a2, *v5++);
    }

    v3 += 8;
  }

  return result;
}

uint64_t quasar::tennessee::InsertOrDie<std::set<std::string>>(uint64_t a1, const void **a2)
{
  result = std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1, a2);
  if ((v4 & 1) == 0)
  {
    memset(v6, 0, sizeof(v6));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "duplicate element ", 18);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, a2);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v6);
  }

  return result;
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[15],char const(&)[17],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B574D754(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[23],char const(&)[17],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B574D7A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[14],char const(&)[16],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B574D7FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[22],char const(&)[16],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B574D850(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[16],char const(&)[18],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B574D8A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[18],char const(&)[17],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B574D8F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[19],char const(&)[19],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B574D94C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[18],char const(&)[19],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B574D9A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[11],char const(&)[17],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B574D9F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[10],char const(&)[16],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B574DA48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[18],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B574DA9C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[22],char const(&)[17],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B574DAF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[21],char const(&)[17],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B574DB44(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[13],char const(&)[15],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B574DB98(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[14],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B574DBEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[11],char const(&)[13],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B574DC40(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[17],char const(&)[17],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B574DC94(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[15],char const(&)[11],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B574DCE8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[22],char const(&)[18],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B574DD3C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[21],char const(&)[18],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B574DD90(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[23],char const(&)[18],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}