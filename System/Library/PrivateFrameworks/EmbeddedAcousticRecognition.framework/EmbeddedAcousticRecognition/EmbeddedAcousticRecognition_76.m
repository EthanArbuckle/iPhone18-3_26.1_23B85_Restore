void sub_1B55B9DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::OnlineLASBeamSearchDecoder::finishInit(quasar::OnlineLASBeamSearchDecoder *this)
{
  if ((*(this + 479) & 0x8000000000000000) != 0)
  {
    if (*(this + 58))
    {
LABEL_3:
      operator new();
    }
  }

  else if (*(this + 479))
  {
    goto LABEL_3;
  }

  v1 = *(this + 503);
  if (v1 < 0)
  {
    v1 = *(this + 61);
  }

  if (v1)
  {
    v2 = *(this + 527);
    if (v2 < 0)
    {
      v2 = *(this + 64);
    }

    if (v2)
    {
      operator new();
    }
  }

  memset(v3, 0, sizeof(v3));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v3);
}

void quasar::OnlineLASBeamSearchDecoder::runImpl(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  quasar::SymbolTableList::clear(*(*a3 + 488));
  v8 = *(*a3 + 488);
  v9 = *(a1 + 656);
  v35 = *(a1 + 648);
  v36 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::SymbolTableList::addSymbolTable(v8, &v35, 0, -1);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  kaldi::quasar::OnlineLASDecodable::OnlineLASDecodable(v34, *(a1 + 632), *a2, *(a1 + 548));
  kaldi::BeamSearchDecoder::InitDecoding(*(a1 + 640));
  while (1)
  {
    v10 = kaldi::BeamSearchDecoder::Finished(*(a1 + 640));
    v11 = *(a1 + 640);
    if (v10)
    {
      break;
    }

    if (kaldi::BeamSearchDecoder::AdvanceDecoding(v11, v34, 1) >= 1)
    {
      fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::VectorFst();
    }
  }

  kaldi::BeamSearchDecoder::FinalizeDecoding(v11);
  (*(**(a1 + 632) + 72))(*(a1 + 632));
  v12 = kaldi::quasar::OnlineLASDecodable::FrameOffset(v34);
  v13 = *a3;
  while (1)
  {
    *(v13 + 592) = v12;
    if (!kaldi::OnlineFeatureMatrix::IsValidFrame(*a2, v12, 1))
    {
      break;
    }

    v13 = *a3;
    v12 = *(*a3 + 592) + 1;
  }

  v14 = *a3;
  *(v14 + 596) = *(*a4 + 20);
  *(v14 + 597) = 257;
  v15 = kaldi::BeamSearchDecoder::ReachedFinal(*(a1 + 640), -1);
  v16 = quasar::gLogLevel < 4 || v15;
  if ((v16 & 1) == 0)
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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Decoder did not reach end-state, outputting partial traceback.", 62);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  _ZNSt3__115allocate_sharedB8ne200100IN3fst9VectorFstINS1_6ArcTplINS1_16LatticeWeightTplIfEEiEENS1_11VectorStateIS6_NS_9allocatorIS6_EEEEEENS8_ISB_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B55BAB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, char a60)
{
  v64 = v60[44];
  if (v64)
  {
    v60[45] = v64;
    operator delete(v64);
  }

  v65 = v60[47];
  if (v65)
  {
    v60[48] = v65;
    operator delete(v65);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst((v62 - 192));
  if (v61)
  {
    operator delete(v61);
  }

  kaldi::quasar::OnlineLASDecodable::~OnlineLASDecodable((v62 - 176));
  _Unwind_Resume(a1);
}

uint64_t quasar::formatResults@<X0>(const void ***a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v45);
  v10 = *a1;
  v11 = a1[1];
  if (a4)
  {
    if (*a1 != v11)
    {
      do
      {
        v13 = *a2;
        v12 = a2[1];
        if (*a2 != v12)
        {
          v14 = *(v10 + 23);
          if (v14 >= 0)
          {
            v15 = *(v10 + 23);
          }

          else
          {
            v15 = v10[1];
          }

          if (v14 >= 0)
          {
            v16 = v10;
          }

          else
          {
            v16 = *v10;
          }

          while (1)
          {
            v17 = *(v13 + 23);
            v18 = v17;
            if ((v17 & 0x80u) != 0)
            {
              v17 = *(v13 + 8);
            }

            if (v17 == v15)
            {
              v19 = v18 >= 0 ? v13 : *v13;
              if (!memcmp(v19, v16, v15))
              {
                break;
              }
            }

            v13 += 24;
            if (v13 == v12)
            {
              v13 = v12;
              break;
            }
          }
        }

        isAscii = quasar::isAscii(v10);
        if (v13 == v12 && isAscii)
        {
          v21 = *(v10 + 23);
          if (v21 >= 0)
          {
            v22 = v10;
          }

          else
          {
            v22 = *v10;
          }

          if (v21 >= 0)
          {
            v23 = *(v10 + 23);
          }

          else
          {
            v23 = v10[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, v22, v23);
        }

        else
        {
          std::stringbuf::str();
          v24 = v44;
          if ((v44 & 0x80u) != 0)
          {
            v24 = v43[1];
          }

          if (v24)
          {
            quasar::updateFormattedResults(v43, a3, a5);
          }

          if (v13 == v12)
          {
            quasar::updateFormattedResults(v10, a3, a5);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, "");
          std::string::operator=(&v49, &__p);
          std::stringbuf::__init_buf_ptrs[abi:ne200100](&v47);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v44 < 0)
          {
            operator delete(v43[0]);
          }
        }

        v10 += 3;
      }

      while (v10 != v11);
    }
  }

  else if (*a1 != v11)
  {
    do
    {
      v26 = *a2;
      v25 = a2[1];
      if (*a2 != v25)
      {
        v27 = *(v10 + 23);
        if (v27 >= 0)
        {
          v28 = *(v10 + 23);
        }

        else
        {
          v28 = v10[1];
        }

        if (v27 >= 0)
        {
          v29 = v10;
        }

        else
        {
          v29 = *v10;
        }

        while (1)
        {
          v30 = *(v26 + 23);
          v31 = v30;
          if ((v30 & 0x80u) != 0)
          {
            v30 = *(v26 + 8);
          }

          if (v30 == v28)
          {
            v32 = v31 >= 0 ? v26 : *v26;
            if (!memcmp(v32, v29, v28))
            {
              break;
            }
          }

          v26 += 24;
          if (v26 == v25)
          {
            goto LABEL_66;
          }
        }
      }

      if (v26 == v25)
      {
LABEL_66:
        v35 = *(v10 + 23);
        if (v35 >= 0)
        {
          v36 = v10;
        }

        else
        {
          v36 = *v10;
        }

        if (v35 >= 0)
        {
          v37 = *(v10 + 23);
        }

        else
        {
          v37 = v10[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, v36, v37);
      }

      else
      {
        std::stringbuf::str();
        v33 = v44;
        v34 = v44;
        if ((v44 & 0x80u) != 0)
        {
          v33 = v43[1];
        }

        if (v33)
        {
          quasar::updateFormattedResults(v43, a3, a5);
          std::string::basic_string[abi:ne200100]<0>(&__p, "");
          std::string::operator=(&v49, &__p);
          std::stringbuf::__init_buf_ptrs[abi:ne200100](&v47);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v34 = v44;
        }

        if ((v34 & 0x80) != 0)
        {
          operator delete(v43[0]);
        }
      }

      v10 += 3;
    }

    while (v10 != v11);
  }

  std::stringbuf::str();
  v38 = v44;
  v39 = v44;
  if ((v44 & 0x80u) != 0)
  {
    v38 = v43[1];
  }

  if (v38)
  {
    quasar::updateFormattedResults(v43, a3, a5);
    v39 = v44;
  }

  if ((v39 & 0x80) != 0)
  {
    operator delete(v43[0]);
  }

  v45[0] = *MEMORY[0x1E69E54D8];
  v40 = *(MEMORY[0x1E69E54D8] + 72);
  *(v45 + *(v45[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v46 = v40;
  v47 = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  v47 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v48);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v50);
}

void sub_1B55BB100(_Unwind_Exception *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, void *__p, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  if (a13 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a14, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B8C85200](va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

BOOL quasar::isAscii(uint64_t *a1)
{
  v1 = *(a1 + 23);
  if (v1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  {
    if (v3 == ++v4)
    {
      return 1;
    }
  }

  return v4 == -1;
}

void quasar::updateFormattedResults(__int128 *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 8))
    {
      goto LABEL_3;
    }

LABEL_23:

    std::vector<std::string>::push_back[abi:ne200100](a3, a1);
    return;
  }

  if (!*(a2 + 23))
  {
    goto LABEL_23;
  }

LABEL_3:
  v20 = 0;
  v21 = 0;
  v22 = 0;
  kaldi::SplitStringOnString(a1, a2, &v20);
  v4 = v20;
  for (i = v21; v4 != i; v4 += 3)
  {
    if ((*(v4 + 23) & 0x8000000000000000) != 0)
    {
      if (v4[1])
      {
LABEL_8:
        v6 = *(a3 + 8);
        v7 = *(a3 + 16);
        if (v6 >= v7)
        {
          v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a3) >> 3);
          v11 = v10 + 1;
          if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a3) >> 3);
          if (2 * v12 > v11)
          {
            v11 = 2 * v12;
          }

          if (v12 >= 0x555555555555555)
          {
            v13 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v13 = v11;
          }

          v23.__end_cap_.__value_ = a3;
          if (v13)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a3, v13);
          }

          v14 = 24 * v10;
          v15 = *v4;
          *(v14 + 16) = v4[2];
          *v14 = v15;
          v4[1] = 0;
          v4[2] = 0;
          *v4 = 0;
          v9 = 24 * v10 + 24;
          v16 = *(a3 + 8) - *a3;
          v17 = 24 * v10 - v16;
          memcpy((v14 - v16), *a3, v16);
          v18 = *a3;
          *a3 = v17;
          *(a3 + 8) = v9;
          v19 = *(a3 + 16);
          *(a3 + 16) = 0;
          v23.__end_ = v18;
          v23.__end_cap_.__value_ = v19;
          v23.__first_ = v18;
          v23.__begin_ = v18;
          std::__split_buffer<std::string>::~__split_buffer(&v23);
        }

        else
        {
          v8 = *v4;
          *(v6 + 16) = v4[2];
          *v6 = v8;
          v4[1] = 0;
          v4[2] = 0;
          *v4 = 0;
          v9 = v6 + 24;
        }

        *(a3 + 8) = v9;
      }
    }

    else if (*(v4 + 23))
    {
      goto LABEL_8;
    }
  }

  v23.__first_ = &v20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
}

void sub_1B55BB3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void EARLanguageDetectorRequestContextFromPTree(quasar::PTree *a1)
{
  v2 = objc_alloc_init(_EARLanguageDetectorRequestContext);
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  std::string::basic_string[abi:ne200100]<0>(&__p, "dictation-languages");
  quasar::PTree::getChild(a1, &__p);
}

void sub_1B55BBAC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void EARLanguageDetectorRequestContextFromJson(void *a1)
{
  v1 = a1;
  v2 = quasar::PTree::PTree(v3);
  if (v1)
  {
    [v1 ear_toString];
  }

  quasar::PTree::readJsonFromFile();
}

void sub_1B55BBCE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  quasar::PTree::~PTree(&a16);

  _Unwind_Resume(a1);
}

void EARLanguageDetectorRequestContextFromJsonStr(void *a1)
{
  v1 = a1;
  v2 = quasar::PTree::PTree(v5);
  if (v1)
  {
    [v1 ear_toString];
  }

  else
  {
    memset(&__p, 0, sizeof(__p));
  }

  std::istringstream::basic_istringstream[abi:ne200100](&v4, &__p, 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  quasar::PTree::readJson();
}

void sub_1B55BBEDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  quasar::PTree::~PTree((v17 - 112));

  _Unwind_Resume(a1);
}

void quasar::ProcessingSink::process(uint64_t a1, const void **a2, uint64_t a3)
{
  if (a1 + 72 != std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::find<std::string>(a1 + 64, a2))
  {
    memset(v8, 0, sizeof(v8));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Multiple values received for graph-output:", 42);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7, a2);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v8);
  }

  *&v8[0] = a2;
  v6 = (std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 64, a2) + 56);
  if (v6 != a3)
  {
    std::vector<quasar::TranslationPhraseInternal>::__assign_with_size[abi:ne200100]<quasar::TranslationPhraseInternal*,quasar::TranslationPhraseInternal*>(v6, *a3, *(a3 + 8), 0xF83E0F83E0F83E1 * ((*(a3 + 8) - *a3) >> 3));
  }
}

uint64_t quasar::ProcessingSink::getValue(quasar::ProcessingSink *this)
{
  BYTE7(v5) = 2;
  strcpy(__p, "in");
  v2 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::find<std::string>(this + 64, __p);
  if (SBYTE7(v5) < 0)
  {
    operator delete(__p[0]);
  }

  if ((this + 72) == v2)
  {
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
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "No value received in graph-output!");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  return v2 + 56;
}

void sub_1B55BC100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::ProcessingSink::getValueMap(quasar::ProcessingSink *this)
{
  if (!*(this + 10))
  {
    memset(v2, 0, sizeof(v2));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "No value received in graph-output!");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v2);
  }

  return this + 64;
}

void quasar::ProcessingSink::~ProcessingSink(quasar::ProcessingSink *this)
{
  *this = &unk_1F2D1EC28;
  std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::destroy(this + 64, *(this + 9));

  quasar::ProcessingBlock::~ProcessingBlock(this);
}

{
  *this = &unk_1F2D1EC28;
  std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::destroy(this + 64, *(this + 9));
  quasar::ProcessingBlock::~ProcessingBlock(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t **std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::__assign_unique<std::pair<std::string const,quasar::ProcessingBlock::ValueType> const*>(uint64_t **result, const void **a2, const void **a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v8);
      while (a2 != a3)
      {
        std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::__node_assign_unique(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            a2 += 6;
            break;
          }

          v11 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v11);
        }

        else
        {
          v8 = v12;
        }

        a2 += 6;
        if (!v8)
        {
          break;
        }
      }
    }

    result = std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v10);
  }

  while (a2 != a3)
  {
    result = std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,quasar::ProcessingBlock::ValueType> const&>(v5, a2);
    a2 += 6;
  }

  return result;
}

void sub_1B55BC4E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::__node_assign_unique(uint64_t **a1, const void **a2, uint64_t *a3)
{
  v6 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v9, a2);
  if (*v6)
  {
    return *v6;
  }

  v7 = v6;
  v10[0] = a3 + 4;
  v10[1] = a3 + 7;
  std::pair<std::string &,quasar::ProcessingBlock::ValueType &>::operator=[abi:ne200100]<std::string const,quasar::ProcessingBlock::ValueType,0>(v10, a2);
  std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__insert_node_at(a1, v9, v7, a3);
  return a3;
}

uint64_t std::pair<std::string &,quasar::ProcessingBlock::ValueType &>::operator=[abi:ne200100]<std::string const,quasar::ProcessingBlock::ValueType,0>(uint64_t a1, uint64_t a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  if (v4 != (a2 + 24))
  {
    std::vector<quasar::TranslationPhraseInternal>::__assign_with_size[abi:ne200100]<quasar::TranslationPhraseInternal*,quasar::TranslationPhraseInternal*>(v4, *(a2 + 24), *(a2 + 32), 0xF83E0F83E0F83E1 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,quasar::ProcessingBlock::ValueType> const&>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::__construct_node<std::pair<std::string const,quasar::ProcessingBlock::ValueType> const&>();
  }

  return v2;
}

BOOL quasar::SpeechRequestData::isRequestEagerResultDurationEmpty(std::mutex *this)
{
  std::mutex::lock(this + 1);
  v2 = *&this->__m_.__opaque[32] == *&this->__m_.__opaque[40];
  std::mutex::unlock(this + 1);
  return v2;
}

BOOL quasar::SpeechRequestData::processedRequestEagerResultDuration(std::mutex *this, int a2)
{
  std::mutex::lock(this + 1);
  v5 = *&this->__m_.__opaque[32];
  v4 = *&this->__m_.__opaque[40];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5 <= a2;
    if (*v5 <= a2)
    {
      v7 = *&this->__m_.__opaque[32];
      do
      {
        v8 = v4 - (v5 + 4);
        if (v4 != v5 + 4)
        {
          memmove(v5, v5 + 4, v4 - (v5 + 4));
          v7 = *&this->__m_.__opaque[32];
        }

        v4 = &v5[v8];
        *&this->__m_.__opaque[40] = &v5[v8];
        if (v7 == &v5[v8])
        {
          break;
        }

        v5 = v7;
      }

      while (*v7 <= a2);
    }
  }

  std::mutex::unlock(this + 1);
  return v6;
}

void quasar::SpeechRequestData::addRequestEagerResultDurations(std::mutex *this, int a2)
{
  std::mutex::lock(this + 1);
  v5 = *&this->__m_.__opaque[40];
  v4 = *&this->__m_.__opaque[48];
  if (v5 >= v4)
  {
    v7 = *&this->__m_.__opaque[32];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 2;
    v10 = v9 + 1;
    if ((v9 + 1) >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&this->__m_.__opaque[32], v13);
    }

    v14 = (v5 - v7) >> 2;
    v15 = (4 * v9);
    v16 = (4 * v9 - 4 * v14);
    *v15 = a2;
    v6 = v15 + 1;
    memcpy(v16, v7, v8);
    v17 = *&this->__m_.__opaque[32];
    *&this->__m_.__opaque[32] = v16;
    *&this->__m_.__opaque[40] = v6;
    *&this->__m_.__opaque[48] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 4;
  }

  *&this->__m_.__opaque[40] = v6;

  std::mutex::unlock(this + 1);
}

uint64_t quasar::SpeechRequestData::SpeechRequestData(uint64_t a1, void *a2, void *a3, void *a4, uint64_t *a5, _OWORD *a6, void *a7, char a8, char a9, unint64_t a10)
{
  *(a1 + 20) = 1;
  *(a1 + 24) = *a2;
  v14 = a2[1];
  *(a1 + 32) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 850045863;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = *a3;
  v15 = a3[1];
  *(a1 + 136) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 144) = *a4;
  v16 = a4[1];
  *(a1 + 152) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__init_with_size[abi:ne200100]<std::shared_ptr<quasar::LmeContainer>*,std::shared_ptr<quasar::LmeContainer>*>(a1 + 160, *a5, a5[1], (a5[1] - *a5) >> 4);
  *(a1 + 184) = *a6;
  *(a1 + 200) = *a7;
  v17 = a7[1];
  *(a1 + 208) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 216) = a8;
  *(a1 + 217) = a9;
  memset(v19, 0, sizeof(v19));
  quasar::LeftContext::updateInterUtteranceLeftContext(*(a1 + 24) + 368, v19, a10);
  v20 = v19;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v20);
  return a1;
}

{
  return quasar::SpeechRequestData::SpeechRequestData(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void sub_1B55BCB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, void **a12)
{
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a12);
  v16 = v12[26];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a9);
  v17 = v12[19];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = v12[17];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  std::mutex::~mutex(v13);
  v19 = *v14;
  if (*v14)
  {
    v12[6] = v19;
    operator delete(v19);
  }

  v20 = v12[4];
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::SpeechRequestData::SpeechRequestData(uint64_t a1, uint64_t *a2, uint64_t *a3, char a4)
{
  v7 = *a2;
  *(a1 + 16) = *(*a2 + 16);
  *(a1 + 20) = 1;
  v9 = *(v7 + 24);
  v8 = *(v7 + 32);
  *(a1 + 24) = v9;
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 850045863;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  v10 = *a2;
  v11 = *(*a2 + 136);
  *(a1 + 128) = *(*a2 + 128);
  *(a1 + 136) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    v10 = *a2;
  }

  v13 = *(v10 + 144);
  v12 = *(v10 + 152);
  *(a1 + 144) = v13;
  *(a1 + 152) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__init_with_size[abi:ne200100]<std::shared_ptr<quasar::LmeContainer>*,std::shared_ptr<quasar::LmeContainer>*>(a1 + 160, *a3, a3[1], (a3[1] - *a3) >> 4);
  *(a1 + 184) = *(*a2 + 184);
  v14 = *a2;
  v15 = *(*a2 + 208);
  *(a1 + 200) = *(*a2 + 200);
  *(a1 + 208) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    v14 = *a2;
  }

  *(a1 + 216) = *(v14 + 216);
  *(a1 + 217) = a4;
  return a1;
}

void sub_1B55BCCAC(_Unwind_Exception *a1)
{
  v5 = v1[19];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = v1[17];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::mutex::~mutex(v2);
  v7 = *v3;
  if (*v3)
  {
    v1[6] = v7;
    operator delete(v7);
  }

  v8 = v1[4];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  _Unwind_Resume(a1);
}

void quasar::SpeechRequestData::~SpeechRequestData(std::mutex *this)
{
  v2 = *&this[3].__m_.__opaque[8];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v7 = &this[2].__m_.__opaque[24];
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v3 = *&this[2].__m_.__opaque[16];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *this[2].__m_.__opaque;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::mutex::~mutex(this + 1);
  v5 = *&this->__m_.__opaque[32];
  if (v5)
  {
    *&this->__m_.__opaque[40] = v5;
    operator delete(v5);
  }

  v6 = *&this->__m_.__opaque[24];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void *std::__shared_ptr_emplace<quasar::ConcreteSpeechRequestData>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<std::shared_ptr<quasar::LmeContainer>> const&,BOOL const&,std::allocator<quasar::ConcreteSpeechRequestData>,0>(void *a1, uint64_t *a2, uint64_t *a3, char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D1ECB0;
  quasar::SpeechRequestData::SpeechRequestData((a1 + 3), a2, a3, *a4);
  return a1;
}

void std::__shared_ptr_emplace<quasar::ConcreteSpeechRequestData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D1ECB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void sub_1B55BD154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::RomanizerOptions::options@<X0>(quasar::RomanizerOptions *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 16;
  v3[1] = this + 176;
  v3[2] = this + 336;
  v3[3] = this + 480;
  v3[4] = this + 624;
  v3[5] = this + 768;
  v3[6] = this + 912;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::OptionValueBase *>::__init_with_size[abi:ne200100]<quasar::OptionValueBase * const*,quasar::OptionValueBase * const*>(a2, v3, &v4, 7uLL);
}

void quasar::RomanizerBlock::getPronunciator(__int128 *a1@<X0>, __int128 *a2@<X1>, std::string::value_type a3@<W2>, std::string::value_type a4@<W3>, int a5@<W4>, void *a6@<X8>)
{
  v20 = a3;
  v19 = a4;
  {
    operator new();
  }

  {
    operator new();
  }

  v10 = quasar::RomanizerBlock::getPronunciator(std::string const&,std::string const&,BOOL,BOOL,BOOL)::m;
  std::mutex::lock(quasar::RomanizerBlock::getPronunciator(std::string const&,std::string const&,BOOL,BOOL,BOOL)::m);
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_bbEEC2B8ne200100IJLm0ELm1ELm2ELm3EEJS8_S8_bbEJEJEJRKS8_SC_RbSD_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSF_IJDpT2_EEEDpOT3_(&v16, a1, a2, &v20, &v19);
  if (!a5 || (v11 = std::__tree<std::__value_type<std::tuple<std::string,std::string,BOOL,BOOL>,std::weak_ptr<kaldi::quasar::NNMTTransliterator>>,std::__map_value_compare<std::tuple<std::string,std::string,BOOL,BOOL>,std::__value_type<std::tuple<std::string,std::string,BOOL,BOOL>,std::weak_ptr<kaldi::quasar::NNMTTransliterator>>,std::less<std::tuple<std::string,std::string,BOOL,BOOL>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,BOOL,BOOL>,std::weak_ptr<kaldi::quasar::NNMTTransliterator>>>>::find<std::tuple<std::string,std::string,BOOL,BOOL>>(quasar::RomanizerBlock::getPronunciator(std::string const&,std::string const&,BOOL,BOOL,BOOL)::pronunciatorMap, &v16), v12 = v11, quasar::RomanizerBlock::getPronunciator(std::string const&,std::string const&,BOOL,BOOL,BOOL)::pronunciatorMap + 8 == v11) || (*a6 = 0, a6[1] = 0, (v13 = *(v11 + 96)) == 0))
  {
LABEL_12:
    std::allocate_shared[abi:ne200100]<kaldi::quasar::NNMTTransliterator,std::allocator<kaldi::quasar::NNMTTransliterator>,BOOL &,0>();
  }

  v14 = std::__shared_weak_count::lock(v13);
  a6[1] = v14;
  if (v14)
  {
    v15 = *(v12 + 88);
    *a6 = v15;
    if (!v15)
    {
LABEL_10:
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      goto LABEL_12;
    }
  }

  else if (!*a6)
  {
    goto LABEL_10;
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock(v10);
}

void sub_1B55BD524()
{
  v3 = *(v0 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::pair<std::string,std::string>::~pair(v2 - 128);
  std::mutex::unlock(v1);
  JUMPOUT(0x1B55BD55CLL);
}

uint64_t kaldi::quasar::NNMTTransliterator::SetICUScripts(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4192))
  {
    utrans_close();
  }

  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    v17 = U_ZERO_ERROR;
    kaldi::quasar::NNMTTransliterator::UnicodeVectorFromString(a2, v16);
    v5 = utrans_openU();
    *(a1 + 4192) = v5;
    if (!v5)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Failed to create ICU Transliterator for scripts : ", 50);
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
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
      v13 = u_errorName(v17);
      v14 = strlen(v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
    }

    if (v16[0])
    {
      v16[1] = v16[0];
      operator delete(v16[0]);
    }
  }

  return 1;
}

void sub_1B55BD72C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 136);
  if (v3)
  {
    *(v1 - 128) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void quasar::RomanizerBlock::init(quasar::RomanizerBlock *this)
{
  v2 = quasar::OptionValue<std::string>::value(this + 3);
  v3 = quasar::OptionValue<std::string>::value(this + 23);
  v4 = *quasar::OptionValue<BOOL>::value(this + 43);
  v5 = *quasar::OptionValue<BOOL>::value(this + 79);
  v6 = quasar::OptionValue<BOOL>::value(this + 97);
  quasar::RomanizerBlock::getPronunciator(v2, v3, v4, v5, *v6, &v9);
  v7 = v9;
  v9 = 0uLL;
  v8 = *(this + 136);
  *(this + 1080) = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    if (*(&v9 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
    }
  }
}

void quasar::RomanizerBlock::process(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  std::vector<quasar::TranslationPhraseInternal>::__init_with_size[abi:ne200100]<quasar::TranslationPhraseInternal*,quasar::TranslationPhraseInternal*>(&v5, *a3, a3[1], 0xF83E0F83E0F83E1 * ((a3[1] - *a3) >> 3));
  quasar::OptionValue<std::string>::value(a1 + 115);
  if (v5 != v6)
  {
    quasar::MetaInfo::hasRomanization((v5 + 256));
  }

  quasar::ProcessingBlock::send(a1 + *(*a1 - 24), &v5, 0);
  __p[0] = &v5;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1B55BDAAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  a29 = (v34 - 120);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

_BYTE *kaldi::quasar::NNMTTransliterator::Transliterate@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 4192) || (*(a1 + 4200) & 1) != 0)
  {
    std::wstring_convert<std::codecvt_utf8<wchar_t,1114111ul,(std::codecvt_mode)0>,wchar_t,std::allocator<wchar_t>,std::allocator<char>>::wstring_convert[abi:ne200100]();
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, "");
}

void sub_1B55BDE5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, char *a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t *a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  a27 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a27);
  a9 = &a28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::string>::destroy(&a18, a19);
  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void quasar::ConfiguredProcessingBlock<quasar::RomanizerOptions>::setContextProvider(uint64_t a1, uint64_t *a2)
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

void sub_1B55BE07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13)
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

void quasar::RomanizerBlock::~RomanizerBlock(quasar::RomanizerBlock *this)
{
  *this = &unk_1F2D1ED40;
  v2 = (this + 1096);
  *(this + 137) = &unk_1F2D1EDE8;
  v3 = *(this + 136);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *this = &unk_1F2D1EE80;
  *(this + 137) = off_1F2D1EF08;
  quasar::RomanizerOptions::~RomanizerOptions((this + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v2);
}

{
  *this = &unk_1F2D1ED40;
  v2 = (this + 1096);
  *(this + 137) = &unk_1F2D1EDE8;
  v3 = *(this + 136);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *this = &unk_1F2D1EE80;
  *(this + 137) = off_1F2D1EF08;
  quasar::RomanizerOptions::~RomanizerOptions((this + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v2);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toquasar::RomanizerBlock::~RomanizerBlock(quasar::RomanizerBlock *this)
{
  v1 = this + *(*this - 24);
  *v1 = &unk_1F2D1ED40;
  *(v1 + 137) = &unk_1F2D1EDE8;
  v2 = *(v1 + 136);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *v1 = &unk_1F2D1EE80;
  *(v1 + 137) = off_1F2D1EF08;
  quasar::RomanizerOptions::~RomanizerOptions((v1 + 8));

  quasar::ProcessingBlock::~ProcessingBlock(v1 + 137);
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_1F2D1ED40;
  *(v1 + 137) = &unk_1F2D1EDE8;
  v2 = *(v1 + 136);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *v1 = &unk_1F2D1EE80;
  *(v1 + 137) = off_1F2D1EF08;
  quasar::RomanizerOptions::~RomanizerOptions((v1 + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v1 + 137);

  JUMPOUT(0x1B8C85350);
}

std::string *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_bbEEC2B8ne200100IJLm0ELm1ELm2ELm3EEJS8_S8_bbEJEJEJRKS8_SC_RbSD_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSF_IJDpT2_EEEDpOT3_(std::string *this, __int128 *a2, __int128 *a3, std::string::value_type *a4, std::string::value_type *a5)
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

  this[2].__r_.__value_.__s.__data_[0] = *a4;
  this[2].__r_.__value_.__s.__data_[1] = *a5;
  return this;
}

void sub_1B55BE4DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::BPE::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(a1, *a2, (a2 + 8));
    *(a1 + 56) = *(a2 + 56);
    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,float>,void *> *>>((a1 + 24), *(a2 + 40), 0);
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 64), *(a2 + 64), *(a2 + 72), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 72) - *(a2 + 64)) >> 3));
    *(a1 + 120) = *(a2 + 120);
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *> *>>((a1 + 88), *(a2 + 104), 0);
  }

  std::string::operator=((a1 + 136), (a2 + 136));
  std::string::operator=((a1 + 160), (a2 + 160));
  *(a1 + 184) = *(a2 + 184);
  std::string::operator=((a1 + 192), (a2 + 192));
  std::string::operator=((a1 + 216), (a2 + 216));
  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,float>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        std::string::operator=((v8 + 16), (v4 + 2));
        *(v8 + 40) = *(v4 + 10);
        v10 = *v8;
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_multi<std::pair<std::string const,float> const&>();
  }
}

void sub_1B55BE694(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

void sub_1B55BE700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B55BE7D4(_Unwind_Exception *a1)
{
  *v2 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](v3, v1);
  _Unwind_Resume(a1);
}

UChar *kaldi::quasar::NNMTTransliterator::UnicodeVectorFromString@<X0>(uint64_t a1@<X0>, UChar **a2@<X8>)
{
  *pErrorCode = 0;
  if (*(a1 + 23) >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  u_strFromUTF8(0, 0, pErrorCode, v4, -1, &pErrorCode[1]);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<unsigned short>::resize(a2, pErrorCode[0] + 1);
  pErrorCode[1] = U_ZERO_ERROR;
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  result = u_strFromUTF8(*a2, (a2[1] - *a2) >> 1, pErrorCode, v5, -1, &pErrorCode[1]);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Failed to create unicode string for ", 37);
    v8 = *(a1 + 23);
    if (v8 >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 23);
    }

    else
    {
      v10 = *(a1 + 8);
    }

    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 3);
    v13 = u_errorName(pErrorCode[1]);
    v14 = strlen(v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  return result;
}

void sub_1B55BE924(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::NNMTTransliterator::ReplaceString(int a1, std::wstring *this, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v9 = this;
  }

  else
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  while (!v12)
  {
LABEL_22:
    if (v7 != -1)
    {
      v21 = *(a4 + 23);
      if (v21 >= 0)
      {
        v22 = *(a4 + 23);
      }

      else
      {
        v22 = *(a4 + 8);
      }

      if (v21 >= 0)
      {
        v23 = a4;
      }

      else
      {
        v23 = *a4;
      }

      std::wstring::replace(this, v7, v22, v23, v22);
      v24 = *(a4 + 23);
      if ((v24 & 0x80u) != 0)
      {
        v24 = *(a4 + 8);
      }

      v7 += v24;
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v9 = this;
      }

      else
      {
        v9 = this->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = this->__r_.__value_.__l.__size_;
      }

      v25 = *(a3 + 23);
      v11 = v25 >= 0 ? a3 : *a3;
      v12 = v25 >= 0 ? *(a3 + 23) : *(a3 + 8);
      if (size >= v7)
      {
        continue;
      }
    }

    return;
  }

  v13 = 4 * size - 4 * v7;
  if (v13 >= 4 * v12)
  {
    v14 = (v9 + 4 * size);
    v15 = (v9 + 4 * v7);
    v16 = *v11;
    v17 = v13 >> 2;
    do
    {
      v18 = v17 - v12;
      if (v18 == -1)
      {
        break;
      }

      v19 = wmemchr(v15, v16, v18 + 1);
      if (!v19)
      {
        break;
      }

      v20 = v19;
      if (!wmemcmp(v19, v11, v12))
      {
        if (v20 == v14)
        {
          return;
        }

        v7 = (v20 - v9) >> 2;
        goto LABEL_22;
      }

      v15 = v20 + 1;
      v17 = v14 - (v20 + 1);
    }

    while (v17 >= v12);
  }
}

void kaldi::quasar::NNMTTransliterator::Transliterate(uint64_t a1@<X0>, uint64_t a2@<X1>, std::vector<std::wstring> *a3@<X8>)
{
  a3->__begin_ = 0;
  a3->__end_ = 0;
  a3->__end_cap_.__value_ = 0;
  if (*(a1 + 4192) || *(a1 + 4200) == 1)
  {
    v6 = *a2;
    v7 = *(a2 + 8);
    if (*a2 != v7)
    {
      if (*(a1 + 4200) == 1)
      {
        if (*(a1 + 4201) == 1)
        {
          v8 = 0;
          do
          {
            v19 = 0uLL;
            *&v20 = 0;
            kaldi::quasar::NNMTTransliterator::SplitUtfString(a1, &v6[v8], &v19);
            v10 = *(&v19 + 1);
            for (i = v19; i != v10; i = (i + 24))
            {
              std::vector<std::string>::push_back[abi:ne200100](a3, i);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3) > ++v8)
            {
              std::vector<std::string>::push_back[abi:ne200100](a3, (a1 + 4168));
            }

            v22 = &v19;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v22);
            v6 = *a2;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3) > v8);
        }

        else if (kaldi::quasar::TorchEncoderDecoder::HasBpeModel(a1))
        {
          kaldi::quasar::BPE::Apply(a1 + 4208, a2, a3);
        }

        else if (a3 != a2)
        {
          std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a3, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
        }

        v22 = 0;
        v23 = 0;
        v24 = 0;
        kaldi::quasar::TMTools::GreedyDecode<kaldi::quasar::TorchEncoderDecoder>(a1, a3);
      }

      if (a3 != a2)
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a3, v6, v7, 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3));
      }

      if (*(a1 + 4192))
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        begin = a3->__begin_;
        end = a3->__end_;
        if (a3->__begin_ != end)
        {
          do
          {
            kaldi::quasar::NNMTTransliterator::UnicodeVectorFromString(begin, __p);
            v19 = xmmword_1F2D1EFA8;
            v20 = *&off_1F2D1EFB8;
            v21 = xmmword_1F2D1EFC8;
            v13 = u_strlen(__p[0]);
            v16 = 0;
            v17 = v13;
            utrans_trans();
            kaldi::quasar::NNMTTransliterator::StringFromUnicodeVector(__p, v14);
            std::vector<std::string>::push_back[abi:ne200100](&v22, v14);
            if (v15 < 0)
            {
              operator delete(v14[0]);
            }

            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            begin += 24;
          }

          while (begin != end);
        }

        if (&v22 != a3)
        {
          std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a3, v22, v23, 0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 3));
        }

        *&v19 = &v22;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
      }
    }
  }
}

void sub_1B55BF0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a25);
  a25 = v25 - 112;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a25);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

void *std::set<std::wstring>::set[abi:ne200100](void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      std::__tree<std::wstring>::__emplace_hint_unique_key_args<std::wstring,std::wstring const&>(a1, v4, a2);
      a2 += 24;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::wstring>::__emplace_hint_unique_key_args<std::wstring,std::wstring const&>(void *a1, void *a2, uint64_t a3)
{
  result = *std::__tree<std::wstring>::__find_equal<std::wstring>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::basic_string<char32_t>>::__construct_node<std::basic_string<char32_t> const&>();
  }

  return result;
}

uint64_t *std::__tree<std::wstring>::__find_equal<std::wstring>(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !std::less<std::wstring>::operator()[abi:ne200100](a1, a5, (a2 + 4)))
  {
    if (!std::less<std::wstring>::operator()[abi:ne200100](a1, (a2 + 4), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
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
      if (!std::less<std::wstring>::operator()[abi:ne200100](a1, a5, (v15 + 4)))
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

  if (std::less<std::wstring>::operator()[abi:ne200100](a1, (v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::wstring>::__find_equal<std::wstring>(a1, a3, a5);
}

uint64_t std::less<std::wstring>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 23);
  if (v3 >= 0)
  {
    v4 = *(a3 + 23);
  }

  else
  {
    v4 = *(a3 + 8);
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  if (v4 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (!v7 || (v5 >= 0 ? (v8 = a2) : (v8 = *a2), v3 >= 0 ? (v9 = a3) : (v9 = *a3), (v10 = wmemcmp(v8, v9, v7)) == 0))
  {
    if (v6 < v4)
    {
      v10 = -1;
    }

    else
    {
      v10 = v4 < v6;
    }
  }

  return v10 >> 31;
}

void *std::__tree<std::wstring>::__find_equal<std::wstring>(uint64_t a1, void *a2, uint64_t a3)
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
        if (!std::less<std::wstring>::operator()[abi:ne200100](a1, a3, (v4 + 4)))
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

      if (!std::less<std::wstring>::operator()[abi:ne200100](a1, (v8 + 4), a3))
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

unint64_t kaldi::quasar::NNMTTransliterator::SplitUtfString(int a1, std::string *__str, void *a3)
{
  v4 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v5 = (__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  size = __str->__r_.__value_.__l.__size_;
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = __str->__r_.__value_.__l.__size_;
  }

  if (v7)
  {
    v9 = 0;
    do
    {
      v10 = __str->__r_.__value_.__r.__words[0];
      if (!v5)
      {
        v10 = __str;
      }

      v11 = v10->__r_.__value_.__s.__data_[v9];
      if ((v11 & 0xF8) == 0xF0)
      {
        v12 = 4;
      }

      else if ((v11 & 0xF0) == 0xE0)
      {
        v12 = 3;
      }

      else if ((v11 & 0xE0) == 0xC0)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      if (v5)
      {
        v4 = size;
      }

      if (v12 + v9 > v4)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::string::basic_string(&__p, __str, v9, v13, &v17);
      std::vector<std::string>::push_back[abi:ne200100](a3, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v9 += v13;
      v4 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      v5 = (__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
      size = __str->__r_.__value_.__l.__size_;
      if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v14 = __str->__r_.__value_.__l.__size_;
      }
    }

    while (v9 < v14);
  }

  return 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
}

void sub_1B55BF6B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL kaldi::quasar::BPE::Apply(uint64_t a1, std::wstring **a2, uint64_t a3)
{
  std::vector<std::string>::clear[abi:ne200100](a3);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 == v7)
  {
    return 1;
  }

  do
  {
    kaldi::quasar::BPE::ApplyWord(a1, v6, &__p);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      kaldi::SplitStringToVector(&__p, " ", 1, &v13);
      v10 = v13;
      v11 = v14;
      while (v10 != v11)
      {
        std::vector<std::string>::push_back[abi:ne200100](a3, v10);
        v10 = (v10 + 24);
      }

      v17 = &v13;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    if (v9 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    ++v6;
  }

  while (v6 != v7);
  return (*(a1 + 184) - 3) < 2 || *a3 != *(a3 + 8);
}

void sub_1B55BF7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char *a19)
{
  a19 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::TMTools::GreedyDecode<kaldi::quasar::TorchEncoderDecoder>(kaldi::quasar::TorchEncoderDecoder *a1, __int128 **a2)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  kaldi::quasar::TorchEncoderDecoder::Symbolize(a1, a2, &v12, 0, 0);
  v3 = kaldi::quasar::TorchEncoderDecoder::Reverse(a1);
  v4 = v12;
  if (v3)
  {
    v5 = v13;
    v6 = v13 - 4;
    if (v12 != v13 && v6 > v12)
    {
      v8 = v12 + 4;
      do
      {
        v9 = *(v8 - 1);
        *(v8 - 1) = *v6;
        *v6 = v9;
        v6 -= 4;
        v10 = v8 >= v6;
        v8 += 4;
      }

      while (!v10);
    }
  }

  else
  {
    v5 = v13;
  }

  while (v4 != v5)
  {
    --*v4;
    v4 += 4;
  }

  memset(v11, 0, sizeof(v11));
  kaldi::JoinVectorToString<int>(&v12, " ", v11);
  fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::VectorFst();
}

void sub_1B55BFAA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = *(v15 - 184);
  if (v17)
  {
    *(v15 - 176) = v17;
    operator delete(v17);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~ImplToFst((v15 - 160));
  if (*(v15 - 121) < 0)
  {
    operator delete(*(v15 - 144));
  }

  v18 = *(v15 - 120);
  if (v18)
  {
    *(v15 - 112) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::BPE::Remove(uint64_t a1, uint64_t *a2, void ***a3)
{
  std::vector<std::string>::clear[abi:ne200100](a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v28);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = *(v6 + 23);
      v9 = *(v6 + 8);
      if ((v8 & 0x80u) == 0)
      {
        v10 = *(v6 + 23);
      }

      else
      {
        v10 = *(v6 + 8);
      }

      v11 = *(a1 + 159);
      if (v11 >= 0)
      {
        v12 = *(a1 + 159);
      }

      else
      {
        v12 = *(a1 + 144);
      }

      v13 = v10 - v12;
      if (v10 < v12)
      {
        goto LABEL_35;
      }

      if ((v8 & 0x80) != 0)
      {
        if (v12 == -1 || v9 < v13)
        {
LABEL_54:
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v18 = v9 - v13;
        v15 = v18 >= v12 ? v12 : v18;
        v16 = *v6;
      }

      else
      {
        if (v12 == -1 || v8 < v13)
        {
          goto LABEL_54;
        }

        v15 = v8 - v13 >= v12 ? v12 : v8 - v13;
        v16 = v6;
      }

      v19 = v11 >= 0 ? (a1 + 136) : *(a1 + 136);
      v20 = memcmp((v16 + v13), v19, v15);
      if (v15 == v12 && v20 == 0)
      {
        kaldi::quasar::BPE::StripSeparator(a1, v6, &__p);
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

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, p_p, size);
      }

      else
      {
LABEL_35:
        if ((v8 & 0x80u) == 0)
        {
          v22 = v6;
        }

        else
        {
          v22 = *v6;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, v22, v10);
        std::stringbuf::str();
        std::vector<std::string>::push_back[abi:ne200100](a3, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "");
        std::string::operator=(&v32, &__p);
        std::stringbuf::__init_buf_ptrs[abi:ne200100](&v30);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v6 += 24;
    }

    while (v6 != v7);
  }

  v28[0] = *MEMORY[0x1E69E54D8];
  v25 = *(MEMORY[0x1E69E54D8] + 72);
  *(v28 + *(v28[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v29 = v25;
  v30 = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v30 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v31);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v33);
}

void sub_1B55BFE30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::NNMTTransliterator::Transliterate(std::vector<std::string> const&,std::string const&,BOOL)::VectorUReplaceable::charAt(void *a1, int a2)
{
  if (a2 >= ((a1[1] - *a1) >> 1))
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  return *(*a1 + 2 * a2);
}

uint64_t kaldi::quasar::NNMTTransliterator::Transliterate(std::vector<std::string> const&,std::string const&,BOOL)::VectorUReplaceable::char32At(void *a1, int a2)
{
  if (a2 >= ((a1[1] - *a1) >> 1))
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  return *(*a1 + 2 * a2);
}

char *kaldi::quasar::NNMTTransliterator::Transliterate(std::vector<std::string> const&,std::string const&,BOOL)::VectorUReplaceable::replace(void *a1, int a2, int a3, UChar *__src, int32_t a5)
{
  v8 = 2 * a2;
  if (v8 != 2 * a3)
  {
    v9 = a1[1];
    v10 = (*a1 + 2 * a2);
    v11 = (*a1 + 2 * a3);
    v12 = v9 - v11;
    if (v9 != v11)
    {
      memmove(v10, v11, v9 - v11);
    }

    a1[1] = &v10[v12];
  }

  if (a5 == -1)
  {
    a5 = u_strlen(__src);
  }

  v13 = (v8 + *a1);

  return std::vector<unsigned short>::__insert_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(a1, v13, __src, &__src[a5], a5);
}

void kaldi::quasar::NNMTTransliterator::Transliterate(std::vector<std::string> const&,std::string const&,BOOL)::VectorUReplaceable::copy(void *a1, int a2, int a3, int a4)
{
  v6 = *a1 + 2 * a2;
  v7 = 2 * a3;
  v8 = *a1 + v7;
  v10 = 0;
  v11 = 0;
  __p = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>>(&__p, v6, v8, (v7 - 2 * a2) >> 1);
  std::vector<unsigned short>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>>(a1, (*a1 + 2 * a4), __p, v10, (v10 - __p) >> 1);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_1B55C0020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::NNMTTransliterator::StringFromUnicodeVector(const UChar **a1@<X0>, _BYTE *a2@<X8>)
{
  pErrorCode = U_ZERO_ERROR;
  memset(&v12, 0, sizeof(v12));
  pDestLength = 0;
  u_strToUTF8(0, 0, &pDestLength, *a1, -1, &pErrorCode);
  if (pDestLength == -1)
  {
    end = 0;
    begin = 0;
  }

  else
  {
    std::vector<signed char>::__append(&v12, pDestLength + 1);
    begin = v12.__begin_;
    end = v12.__end_;
  }

  pErrorCode = U_ZERO_ERROR;
  v6 = u_strToUTF8(begin, end - begin, 0, *a1, -1, &pErrorCode);
  if (!v6)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Failed to create UTF-8 string: ", 31);
    v8 = u_errorName(pErrorCode);
    v9 = strlen(v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  std::string::basic_string[abi:ne200100]<0>(a2, v6);
  if (v12.__begin_)
  {
    v12.__end_ = v12.__begin_;
    operator delete(v12.__begin_);
  }
}

void sub_1B55C015C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 64);
  if (v3)
  {
    *(v1 - 56) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::BPE::ApplyWord(uint64_t a1@<X0>, std::wstring *a2@<X1>, std::string *a3@<X8>)
{
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 88), &a2->__r_.__value_.__l.__data_))
  {
    v70.__begin_ = a2;
    v6 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 88), &a2->__r_.__value_.__l.__data_);
    if (*(v6 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(a3, v6[5], v6[6]);
    }

    else
    {
      v7 = *(v6 + 5);
      a3->__r_.__value_.__r.__words[2] = v6[7];
      *&a3->__r_.__value_.__l.__data_ = v7;
    }

    return;
  }

  memset(&v78, 0, sizeof(v78));
  v75 = 0;
  v76 = 0;
  v77 = 0;
  kaldi::quasar::BPE::SplitUtfString(a1, a2, &v78);
  begin = v78.__begin_;
  if (v78.__end_ != v78.__begin_)
  {
    v9 = 0;
    v10 = 0;
    while (!std::__tree<std::string>::__count_unique<std::string>(a1, &begin[v9].__r_.__value_.__l.__data_))
    {
      v12 = *(a1 + 184);
      if (v12 <= 0)
      {
        if (!v12)
        {
          std::vector<std::string>::push_back[abi:ne200100](&v75, &v78.__begin_[v9]);
          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1, &v78.__begin_[v9].__r_.__value_.__l.__data_);
        }

        goto LABEL_9;
      }

      switch(v12)
      {
        case 1:
          v11 = (a1 + 192);
          if (kaldi::g_kaldi_verbose_level >= -1)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v70);
            v13 = &v78.__begin_[v9];
            v14 = SHIBYTE(v78.__begin_[v9].__r_.__value_.__r.__words[2]);
            if (v14 >= 0)
            {
              v15 = &v78.__begin_[v9];
            }

            else
            {
              v15 = v13->__r_.__value_.__r.__words[0];
            }

            if (v14 >= 0)
            {
              size = HIBYTE(v13->__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v13->__r_.__value_.__l.__size_;
            }

            v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v70, v15, size);
            v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " not contained in BPE encoder ", 30);
            v19 = MEMORY[0x1B8C84C30](v18, *(a1 + 16));
            v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " mapping to ", 12);
            v21 = *(a1 + 215);
            if (v21 >= 0)
            {
              v22 = a1 + 192;
            }

            else
            {
              v22 = *(a1 + 192);
            }

            if (v21 >= 0)
            {
              v23 = *(a1 + 215);
            }

            else
            {
              v23 = *(a1 + 200);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
            kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v70);
            v11 = (a1 + 192);
          }

          goto LABEL_8;
        case 2:
          if (*(a1 + 215) < 0)
          {
            std::string::__init_copy_ctor_external(a3, *(a1 + 192), *(a1 + 200));
          }

          else
          {
            *&a3->__r_.__value_.__l.__data_ = *(a1 + 192);
            a3->__r_.__value_.__r.__words[2] = *(a1 + 208);
          }

          goto LABEL_118;
        case 4:
          goto LABEL_31;
      }

LABEL_9:
      ++v10;
      begin = v78.__begin_;
      ++v9;
      if (v10 == 0xAAAAAAAAAAAAAAABLL * ((v78.__end_ - v78.__begin_) >> 3))
      {
        goto LABEL_32;
      }
    }

    v11 = &v78.__begin_[v9];
LABEL_8:
    std::vector<std::string>::push_back[abi:ne200100](&v75, v11);
    goto LABEL_9;
  }

LABEL_32:
  if (v75 == v76)
  {
LABEL_31:
    std::string::basic_string[abi:ne200100]<0>(a3, "");
    goto LABEL_118;
  }

  std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v78, v75, v76, 0xAAAAAAAAAAAAAAABLL * ((v76 - v75) >> 3));
  v24 = (a1 + 216);
  v25 = *(a1 + 239);
  if (v25 < 0)
  {
    if (*(a1 + 224) != 3)
    {
      goto LABEL_44;
    }

    v24 = *v24;
  }

  else if (v25 != 3)
  {
    goto LABEL_44;
  }

  v26 = *v24;
  v27 = *(v24 + 2);
  if (v26 == 11824 && v27 == 50)
  {
    v42 = *(a1 + 183);
    if (v42 >= 0)
    {
      v43 = (a1 + 160);
    }

    else
    {
      v43 = *(a1 + 160);
    }

    if (v42 >= 0)
    {
      v44 = *(a1 + 183);
    }

    else
    {
      v44 = *(a1 + 168);
    }

    std::string::append(&v78.__end_[-1], v43, v44);
    memset(&v70, 0, sizeof(v70));
    while (1)
    {
      kaldi::quasar::BPE::GetPairs(a1, &v78, &v70);
      v45 = v70.__end_ - v70.__begin_;
      if ((v78.__end_ - v78.__begin_) == 24 || v78.__end_ - v78.__begin_ == v45)
      {
        break;
      }

      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v78, v70.__begin_, v70.__end_, 0xAAAAAAAAAAAAAAABLL * (v45 >> 3));
    }

    v69.__r_.__value_.__r.__words[0] = &v70;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v69);
    goto LABEL_88;
  }

LABEL_44:
  v29 = (a1 + 160);
  std::vector<std::string>::push_back[abi:ne200100](&v78, (a1 + 160));
  memset(&v70, 0, sizeof(v70));
  while (1)
  {
    kaldi::quasar::BPE::GetPairs(a1, &v78, &v70);
    if (v78.__end_ - v78.__begin_ == v70.__end_ - v70.__begin_)
    {
      break;
    }

    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v78, v70.__begin_, v70.__end_, 0xAAAAAAAAAAAAAAABLL * ((v70.__end_ - v70.__begin_) >> 3));
  }

  v69.__r_.__value_.__r.__words[0] = &v70;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v69);
  end = v78.__end_;
  if (0xAAAAAAAAAAAAAAABLL * ((v78.__end_ - v78.__begin_) >> 3) > 1)
  {
    v31 = SHIBYTE(v78.__end_[-1].__r_.__value_.__r.__words[2]);
    v32 = v31 >= 0 ? HIBYTE(v78.__end_[-1].__r_.__value_.__r.__words[2]) : v78.__end_[-1].__r_.__value_.__l.__size_;
    v33 = *(a1 + 183);
    v34 = v33;
    v35 = (v33 & 0x80u) == 0 ? *(a1 + 183) : *(a1 + 168);
    if (v32 == v35)
    {
      data = v78.__end_[-1].__r_.__value_.__l.__data_;
      v36 = v31 >= 0 ? &v78.__end_[-1] : v78.__end_[-1].__r_.__value_.__r.__words[0];
      v67 = *v29;
      v37 = (v33 & 0x80u) == 0 ? (a1 + 160) : *v29;
      v38 = *(a1 + 168);
      v39 = memcmp(v36, v37, v32);
      v40 = v38;
      if (!v39)
      {
        if (v31 < 0)
        {
          operator delete(data);
          v33 = *(a1 + 183);
          v41 = *(a1 + 160);
          v40 = *(a1 + 168);
          v34 = *(a1 + 183);
        }

        else
        {
          v41 = v67;
        }

        v78.__end_ = end - 1;
        if (v34 >= 0)
        {
          v47 = (a1 + 160);
        }

        else
        {
          v47 = v41;
        }

        if (v34 >= 0)
        {
          v48 = v33;
        }

        else
        {
          v48 = v40;
        }

        std::string::append(&end[-2], v47, v48);
      }
    }
  }

LABEL_88:
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v70);
  v49 = v78.__begin_;
  if (v78.__end_ != v78.__begin_)
  {
    v50 = 0;
    v51 = 0;
    v52 = 0xAAAAAAAAAAAAAAABLL * ((v78.__end_ - v78.__begin_) >> 3);
    do
    {
      if (v52 <= ++v51)
      {
        v61 = &v49[v50];
        v62 = SHIBYTE(v49[v50].__r_.__value_.__r.__words[2]);
        if ((v62 & 0x8000000000000000) != 0)
        {
          v62 = v61->__r_.__value_.__l.__size_;
        }

        std::string::basic_string(&v69, v61, 0, v62 - 4, v79);
        if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v63 = &v69;
        }

        else
        {
          v63 = v69.__r_.__value_.__r.__words[0];
        }

        if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v64 = v69.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v70.__end_cap_.__value_, v63, v64);
        if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v69.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v53 = &v49[v50];
        v54 = SHIBYTE(v53->__r_.__value_.__r.__words[2]);
        if (v54 >= 0)
        {
          v55 = v53;
        }

        else
        {
          v55 = v53->__r_.__value_.__r.__words[0];
        }

        if (v54 >= 0)
        {
          v56 = HIBYTE(v53->__r_.__value_.__r.__words[2]);
        }

        else
        {
          v56 = v53->__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v70.__end_cap_.__value_, v55, v56);
        v57 = *(a1 + 159);
        if (v57 >= 0)
        {
          v58 = a1 + 136;
        }

        else
        {
          v58 = *(a1 + 136);
        }

        if (v57 >= 0)
        {
          v59 = *(a1 + 159);
        }

        else
        {
          v59 = *(a1 + 144);
        }

        v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v70.__end_cap_.__value_, v58, v59);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, " ", 1);
      }

      v49 = v78.__begin_;
      v52 = 0xAAAAAAAAAAAAAAABLL * ((v78.__end_ - v78.__begin_) >> 3);
      ++v50;
    }

    while (v52 > v51);
  }

  std::stringbuf::str();
  v69.__r_.__value_.__r.__words[0] = a2;
  v65 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 88), &a2->__r_.__value_.__l.__data_);
  std::string::operator=((v65 + 5), a3);
  v70.__begin_ = *MEMORY[0x1E69E54D8];
  v66 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v70.__begin_ + v70.__begin_[-1].__r_.__value_.__r.__words[0]) = *(MEMORY[0x1E69E54D8] + 64);
  v70.__end_cap_.__value_ = v66;
  v71 = MEMORY[0x1E69E5548] + 16;
  if (v73 < 0)
  {
    operator delete(v72[7].__locale_);
  }

  v71 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v72);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C85200](&v74);
LABEL_118:
  v70.__begin_ = &v75;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v70);
  v70.__begin_ = &v78;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v70);
}

void sub_1B55C08CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = (v16 - 144);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  a16 = (v16 - 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void kaldi::quasar::BPE::GetPairs(uint64_t a1, std::vector<std::wstring> *a2, std::vector<std::wstring> *a3)
{
  begin = a2->__begin_;
  end = a2->__end_;
  v8 = end - begin;
  v9 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v9 < 2)
  {
    return;
  }

  if (SHIBYTE(begin->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v38, begin->__r_.__value_.__l.__data_, begin->__r_.__value_.__l.__size_);
    begin = a2->__begin_;
    end = a2->__end_;
    v8 = end - a2->__begin_;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
  }

  else
  {
    v11 = *&begin->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = begin->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v11;
  }

  if (v8 == 24)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v14 = 0;
    v12 = 0;
    v13 = 0;
    v15 = *(a1 + 128);
    v16 = -1;
    v17 = 1;
    do
    {
      v18 = &begin[v17];
      if (SHIBYTE(begin[v17].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v37, v18->__r_.__value_.__l.__data_, v18->__r_.__value_.__l.__size_);
      }

      else
      {
        v19 = *&v18->__r_.__value_.__l.__data_;
        v37.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
        *&v37.__r_.__value_.__l.__data_ = v19;
      }

      Cost = kaldi::quasar::BPE::GetCost(a1, &v38.__r_.__value_.__l.__data_, &v37.__r_.__value_.__l.__data_);
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (Cost < v15 && Cost != *(a1 + 128))
      {
        if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v38.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&v36, size + 1);
        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = &v36;
        }

        else
        {
          v22 = v36.__r_.__value_.__r.__words[0];
        }

        if (size)
        {
          if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = &v38;
          }

          else
          {
            v23 = v38.__r_.__value_.__r.__words[0];
          }

          memmove(v22, v23, size);
        }

        *(&v22->__r_.__value_.__l.__data_ + size) = 32;
        v24 = &a2->__begin_[v17];
        v25 = *(v24 + 23);
        if (v25 >= 0)
        {
          v26 = &a2->__begin_[v17];
        }

        else
        {
          v26 = *v24;
        }

        if (v25 >= 0)
        {
          v27 = *(v24 + 23);
        }

        else
        {
          v27 = *(v24 + 8);
        }

        v28 = std::string::append(&v36, v26, v27);
        v29 = v28->__r_.__value_.__r.__words[0];
        v30 = HIBYTE(v28->__r_.__value_.__r.__words[2]);
        v28->__r_.__value_.__r.__words[0] = 0;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        if (v12 < 0)
        {
          operator delete(v13);
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        v13 = v29;
        v12 = v30;
        v15 = Cost;
        v16 = v14;
      }

      std::string::operator=(&v38, &a2->__begin_[v17]);
      begin = a2->__begin_;
      end = a2->__end_;
      v31 = v14 + 1;
      ++v17;
      v32 = v14 + 2;
      ++v14;
    }

    while (v32 != 0xAAAAAAAAAAAAAAABLL * ((end - a2->__begin_) >> 3));
    if (v16 != -1)
    {
      std::vector<std::string>::clear[abi:ne200100](a3);
      v33 = a2->__begin_;
      if (a2->__end_ != a2->__begin_)
      {
        v34 = 0;
        v35 = 0;
        do
        {
          if (v35 == v16)
          {
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v33[v34].__r_.__value_.__l.__data_, &v33[v16 + 1].__r_.__value_.__l.__data_, &v36);
            std::vector<std::string>::push_back[abi:ne200100](a3, &v36);
            if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v36.__r_.__value_.__l.__data_);
            }

            v35 = v16 + 1;
          }

          else
          {
            std::vector<std::string>::push_back[abi:ne200100](a3, &v33[v34]);
          }

          v34 = ++v35;
          v33 = a2->__begin_;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((a2->__end_ - a2->__begin_) >> 3) > v35);
      }

      goto LABEL_51;
    }

    v9 = v31 + 1;
  }

  if (a3 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a3, begin, end, v9);
  }

LABEL_51:
  if (v12 < 0)
  {
    operator delete(v13);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_1B55C0CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (v29 < 0)
  {
    operator delete(v28);
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float kaldi::quasar::BPE::GetCost(uint64_t a1, const void **a2, const void **a3)
{
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, a3, __p);
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 24), __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = (a1 + 128);
  if (v4)
  {
    v5 = v4 + 5;
  }

  return *v5;
}

void sub_1B55C0D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float kaldi::quasar::TMTools::GreedyDecode<kaldi::quasar::TorchEncoderDecoder>(kaldi::quasar::TorchEncoderDecoder *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v25 = 0u;
  v24 = 0u;
  v23 = &unk_1F2D0EE38;
  v26 = 0;
  kaldi::CuMatrix<float>::Resize(&v23, (a2[1] - *a2) >> 2, 1, 0, 0);
  v14 = *a2;
  v15 = a2[1];
  v16 = v15 - *a2;
  if (v15 != *a2)
  {
    v17 = 0;
    v18 = v16 >> 2;
    v19 = v24;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    v20 = 4 * v25;
    do
    {
      *v19 = *(v14 + 4 * v17++);
      v19 = (v19 + v20);
    }

    while (v18 != v17);
  }

  v21 = kaldi::quasar::TMTools::GreedyDecode<kaldi::quasar::TorchEncoderDecoder>(a1, &v23, a3, a4, a5, a6, a7);
  kaldi::CuMatrix<float>::~CuMatrix(&v23);
  return v21;
}

void fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~VectorFst(void *a1)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v3 = *(*(*(a1 + 8) + 64) + 8 * a2);
  *a3 = *v3;
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = 0;
  return std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a3 + 1), v3[1], v3[2], (v3[2] - v3[1]) >> 2);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 72) - *(v2 + 64)) >> 3;
  return result;
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 8);
  *a3 = 0;
  v5 = (*(*(v3 + 64) + 8 * a2) + 48);
  v4 = *v5;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 4);
  if (v5[1] == *v5)
  {
    v4 = 0;
  }

  a3[1] = v4;
  a3[2] = v6;
  a3[3] = 0;
  return result;
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 88) = a2;
  result = (*(*v4 + 24))(v4);
  *(v4 + 8) = result & 0xCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

void fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::SetFinal(uint64_t a1, int a2, uint64_t *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  v7 = *a3;
  v9 = 0;
  v10 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, a3[1], a3[2], (a3[2] - a3[1]) >> 2);
  fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::SetFinal(v6, a2, &v7);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_1B55C13CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::AddArc(uint64_t a1, int a2, float *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::AddArc(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0x6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::DeleteStates(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::DeleteStates(v2);
  result = (*(*v2 + 24))(v2);
  v2[1] = (*(v2 + 2) | result) & 4 | 0x156A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::DeleteArcs(*(v6[8] + 8 * a2), a3);
  result = (*(*v6 + 24))(v6);
  v6[1] = v6[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  v5 = *(v4[8] + 8 * a2);
  v5[4] = 0;
  v5[5] = 0;
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::clear[abi:ne200100](v5 + 6);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0xA6A5A950007;
  return result;
}

void *fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 64);

  return std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(v4, a2);
}

void *fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 64) + 8 * a2) + 48);

  return std::vector<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::reserve(v6, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(v4, a2);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D1F278;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2D1F1C8;
  std::string::basic_string[abi:ne200100]<0>(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950003;
  return a1;
}

void sub_1B55C1A54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = &unk_1F2D1F240;
  v3 = a1 + 8;
  v2 = a1[8];
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::Destroy(v2[v4++]);
      v2 = a1[8];
    }

    while (v4 < (a1[9] - v2) >> 3);
  }

  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  return fst::FstImpl<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::~FstImpl(a1);
}

void fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~VectorFstImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~VectorFstBaseImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::FstImpl<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::~FstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D1F278;
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t fst::Fst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::Write(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write stream method for ", 39);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write filename method for ", 41);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1B55C1D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B55C1E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::operator=(uint64_t a1)
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ImplToFst: Assignment operator disallowed", 41);
  fst::LogMessage::~LogMessage(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *(*(a1 + 8) + 8) |= 4uLL;
  return a1;
}

void sub_1B55C1F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::MutateCheck(uint64_t result)
{
  if (*(*(result + 8) + 56) >= 2)
  {
    operator new();
  }

  return result;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D1F278;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2D1F1C8;
  std::string::basic_string[abi:ne200100]<0>(&__p, "vector");
  std::string::operator=((a1 + 16), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 120))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, v5);
  *(a1 + 88) = (*(*a2 + 24))(a2);
  if ((*(*a2 + 64))(a2, 1, 0))
  {
    v6 = fst::CountStates<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(a2);
    std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve((a1 + 64), v6);
  }

  v11 = 0;
  (*(*a2 + 128))(a2, &v9);
  if (v9)
  {
    if (!(*(*v9 + 16))(v9))
    {
      if (v9)
      {
        (*(*v9 + 24))();
      }

LABEL_10:
      fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::AddState();
    }

    if (v9)
    {
      (*(*v9 + 8))();
    }
  }

  else if (v11 < v10)
  {
    goto LABEL_10;
  }

  *(a1 + 8) = (*(*a2 + 64))(a2, 0x3FFFFFFF0004, 0) | *(a1 + 8) & 4 | 3;
  return a1;
}

uint64_t fst::CountStates<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(uint64_t a1)
{
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v2 = *(*a1 + 160);

    return v2(a1);
  }

  v7 = 0;
  (*(*a1 + 128))(a1, &v5);
  v4 = 0;
  while (1)
  {
    while (!v5)
    {
      if (v7 >= v6)
      {
        return v4;
      }

      v4 = (v4 + 1);
LABEL_12:
      ++v7;
    }

    if ((*(*v5 + 16))(v5))
    {
      break;
    }

    v4 = (v4 + 1);
    if (!v5)
    {
      goto LABEL_12;
    }

    (*(*v5 + 32))();
  }

  if (v5)
  {
    (*(*v5 + 8))();
  }

  return v4;
}

{
  return (*(*a1 + 8))(a1);
}

void sub_1B55C2790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::CountStates<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(a10);
  }

  _Unwind_Resume(exception_object);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::SetFinal(uint64_t a1, int a2, uint64_t *a3)
{
  v3 = *(*(a1 + 64) + 8 * a2);
  v4 = *a3;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, a3[1], a3[2], (a3[2] - a3[1]) >> 2);
  *v3 = v4;
  if (v3 != &v4)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v3 + 1, __p, v6, (v6 - __p) >> 2);
  }

  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_1B55C2944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B55C2A28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = *v7;
      v8 = *(v7 + 8);
      *(v4 + 16) = 0;
      *(v4 + 8) = v8;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4 + 16, *(v7 + 16), *(v7 + 24), (*(v7 + 24) - *(v7 + 16)) >> 2);
      *(v4 + 40) = *(v7 + 40);
      v7 += 48;
      v4 = v14 + 48;
      v14 += 48;
    }

    while (v7 != a3);
    v12 = 1;
    while (v6 != a3)
    {
      v9 = *(v6 + 16);
      if (v9)
      {
        *(v6 + 24) = v9;
        operator delete(v9);
      }

      v6 += 48;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>,fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::AddArc(void *a1, _DWORD *a2)
{
  if (!*a2)
  {
    ++a1[4];
  }

  if (!a2[1])
  {
    ++a1[5];
  }

  return std::vector<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::push_back[abi:ne200100](a1 + 6, a2);
}

uint64_t std::vector<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::__emplace_back_slow_path<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int> const&>(a1, a2);
  }

  else
  {
    std::vector<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::__construct_one_at_end[abi:ne200100]<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int> const&>(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::__construct_one_at_end[abi:ne200100]<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int> const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 8) = *(a2 + 8);
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  *(v4 + 40) = *(a2 + 40);
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t std::vector<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::__emplace_back_slow_path<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int> const&>(uint64_t *a1, uint64_t a2)
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

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v7 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  *(v7 + 40) = *(a2 + 40);
  *&v16 = v16 + 48;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~__split_buffer(&v14);
  return v13;
}

void sub_1B55C2DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

unint64_t fst::TestProperties<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(a1, a2, a3, 0);
    if (!fst::CompatProperties(v6, v7))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      v8 = fst::LogMessage::LogMessage(&v14, __p);
      v9 = fst::cerr(v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "TestProperties: stored Fst properties incorrect", 47);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " (stored: props1, computed: props2)", 35);
      fst::LogMessage::~LogMessage(&v14);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return v7;
  }

  else
  {

    return fst::ComputeProperties<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(a1, a2, a3, 1);
  }
}

void sub_1B55C2F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v7 = a1;
  v8 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v9 = v8;
  if (!a4 || (v10 = v8 & 0x3FFFFFFF0000 | (2 * v8) & 0x2AAAAAAA0000 | (v8 >> 1) & 0x155555550000 | 7, (a2 & ~v10) != 0))
  {
    v9 = v8 & 7;
    v52 = v9;
    v11 = (*(*v7 + 16))(v7);
    if ((a2 & 0xF3C00000000) != 0 && v11)
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = &v52;
      fst::DfsVisit<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(v7, &v46);
    }

    if ((a2 & 0xFFFFF0C3FFFFFFF8) != 0)
    {
      v12 = a2 & 0xC0000;
      v13 = 0x10425A810000;
      if ((a2 & 0xC0000) != 0)
      {
        v13 = 0x10425A850000;
      }

      v14 = v9 | v13;
      v15 = a2 & 0x300000;
      if ((a2 & 0x300000) != 0)
      {
        v14 |= 0x100000uLL;
      }

      v52 = v14;
      memset(&v45, 0, sizeof(v45));
      memset(&v44, 0, sizeof(v44));
      v43 = 0;
      (*(*v7 + 128))(v7, &v41);
      v16 = 0;
      v34 = v7;
LABEL_12:
      if (v41)
      {
        if (!(*(*v41 + 16))(v41))
        {
          if (v41)
          {
            v17 = (*(*v41 + 24))();
LABEL_18:
            v18 = (*(*v7 + 40))(v7, v17);
            v48 = 0;
            v49 = 0;
            v50 = 0;
            v45.__end_ = v45.__begin_;
            v44.__end_ = v44.__begin_;
            if (v12)
            {
              std::vector<int>::reserve(&v45, v18);
            }

            if (v15)
            {
              std::vector<int>::reserve(&v44, v18);
            }

            v35 = v16;
            v40 = 0;
            (*(*v7 + 136))(v7, v17, &v36);
            v19 = 1;
            while (1)
            {
              if (v36)
              {
                if ((*(*v36 + 24))(v36))
                {
                  if (v36)
                  {
                    (*(*v36 + 8))();
                    goto LABEL_64;
                  }

LABEL_62:
                  if (v39)
                  {
                    --*v39;
                  }

LABEL_64:
                  v7 = v34;
                  v16 = v35;
                  if (v12 && (std::__sort<std::__less<int,int> &,int *>(), v27 = v45.__end_ - v45.__begin_, v27 >= 2))
                  {
                    v28 = v27 - 1;
                    v29 = v45.__begin_ + 1;
                    while (*v29 != *(v29 - 1))
                    {
                      ++v29;
                      if (!--v28)
                      {
                        goto LABEL_69;
                      }
                    }

                    v52 = v52 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
                    if (!v15)
                    {
LABEL_78:
                      if (v35 >= 1)
                      {
                        v52 = v52 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                      }

                      (*(*v34 + 32))(&v36, v34, v17);
                      v55 = *(&v36 + 1);
                      v56 = *&v36;
                      v54 = 2139095040;
                      v53 = INFINITY;
                      if (*&v36 == INFINITY && v55 == v53)
                      {
                        if ((*(*v34 + 40))(v34, v17) != 1)
                        {
                          v52 = v52 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                        }
                      }

                      else
                      {
                        v55 = *(&v36 + 1);
                        v56 = *&v36;
                        v54 = 0;
                        v53 = 0.0;
                        if (*&v36 != 0.0 || v55 != v53)
                        {
                          v52 = v52 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                        }

                        v16 = v35 + 1;
                      }

                      if (__p)
                      {
                        v38 = __p;
                        operator delete(__p);
                      }

                      if (v48)
                      {
                        v49 = v48;
                        operator delete(v48);
                      }

                      if (v41)
                      {
                        (*(*v41 + 32))(v41);
                      }

                      else
                      {
                        ++v43;
                      }

                      goto LABEL_12;
                    }
                  }

                  else
                  {
LABEL_69:
                    if (!v15)
                    {
                      goto LABEL_78;
                    }
                  }

                  std::__sort<std::__less<int,int> &,int *>();
                  v30 = v44.__end_ - v44.__begin_;
                  if (v30 >= 2)
                  {
                    v31 = v30 - 1;
                    v32 = v44.__begin_ + 1;
                    while (*v32 != *(v32 - 1))
                    {
                      ++v32;
                      if (!--v31)
                      {
                        goto LABEL_78;
                      }
                    }

                    v52 = v52 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
                  }

                  goto LABEL_78;
                }

                if (v36)
                {
                  v20 = (*(*v36 + 32))();
                  goto LABEL_29;
                }
              }

              else if (v40 >= v38)
              {
                goto LABEL_62;
              }

              v20 = __p + 48 * v40;
LABEL_29:
              v21 = *v20;
              v22 = *v20;
              if (*v20 != *(v20 + 1))
              {
                v52 = v52 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
                v22 = *(v20 + 1);
              }

              if (v21 | v22)
              {
                if (v21)
                {
                  if (v22)
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_39;
                }

                v23 = v52;
              }

              else
              {
                v23 = v52 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
              }

              v52 = v23 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
              if (v22)
              {
LABEL_35:
                if (v19)
                {
                  goto LABEL_44;
                }

                goto LABEL_40;
              }

LABEL_39:
              v52 = v52 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
              if (v19)
              {
                goto LABEL_44;
              }

LABEL_40:
              if (v21 < v46)
              {
                v52 = v52 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
              }

              if (v22 < SHIDWORD(v46))
              {
                v52 = v52 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
              }

LABEL_44:
              v24 = *(v20 + 2);
              v25 = *(v20 + 3);
              v56 = v24;
              v55 = v25;
              v54 = 0;
              v53 = 0.0;
              if (v24 != 0.0 || v55 != v53)
              {
                v56 = v24;
                v55 = v25;
                v54 = 2139095040;
                v53 = INFINITY;
                if (v24 != INFINITY || v55 != v53)
                {
                  v52 = v52 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                }
              }

              v26 = *(v20 + 10);
              if (v26 <= v17)
              {
                v52 = v52 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
              }

              if (v26 != v17 + 1)
              {
                v52 = v52 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
              }

              v46 = *v20;
              fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(&v47, (v20 + 8));
              v51 = *(v20 + 10);
              if (v12)
              {
                std::vector<int>::push_back[abi:ne200100](&v45.__begin_, v20);
              }

              if (v15)
              {
                std::vector<int>::push_back[abi:ne200100](&v44.__begin_, v20 + 1);
              }

              if (v36)
              {
                (*(*v36 + 40))(v36);
                v19 = 0;
              }

              else
              {
                v19 = 0;
                ++v40;
              }
            }
          }

LABEL_17:
          v17 = v43;
          goto LABEL_18;
        }

        if (v41)
        {
          (*(*v41 + 8))();
        }
      }

      else if (v43 < v42)
      {
        goto LABEL_17;
      }

      if ((*(*v7 + 24))(v7) != -1 && (*(*v7 + 24))(v7))
      {
        v52 = v52 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
      }

      if (v44.__begin_)
      {
        v44.__end_ = v44.__begin_;
        operator delete(v44.__begin_);
      }

      if (v45.__begin_)
      {
        v45.__end_ = v45.__begin_;
        operator delete(v45.__begin_);
      }

      v9 = v52;
    }

    v10 = v9 & 0x3FFFFFFF0000 | (2 * v9) & 0x2AAAAAAA0000 | (v9 >> 1) & 0x155555550000 | 7;
  }

  *a3 = v10;
  return v9;
}

void sub_1B55C37EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B55C4148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::InitVisit(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    *(*a1 + 8) = **a1;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(v3 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(v4 + 8) = 0;
    *(a1 + 52) = 0;
    **(a1 + 24) = **(a1 + 24) & 0xFFFFF0C3FFFFFFFFLL | 0x52800000000;
    *(a1 + 32) = a2;
    v5 = (*(*a2 + 24))(a2);
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = v5;
    operator new();
  }

  operator new();
}

void fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::FinishState(uint64_t a1, int a2, int a3)
{
  (*(**(a1 + 32) + 32))(&v21);
  v26 = *(&v21 + 1);
  v27 = v21;
  v25 = 2139095040;
  v24 = INFINITY;
  v6 = *&v21 != INFINITY || v26 != v24;
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  if (v6)
  {
    *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * a2) != *(v7 + 4 * a2))
  {
    goto LABEL_21;
  }

  v8 = 0;
  v9 = *(a1 + 80);
  v10 = **(a1 + 16);
  v11 = (*(v9 + 8) - 4);
  v12 = v11;
  do
  {
    v13 = *v12--;
    v8 |= *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13;
  }

  while (v13 != a2);
  v14 = *a1;
  v15 = **(a1 + 72);
  while (1)
  {
    v16 = *v11;
    if (v14)
    {
      *(*v14 + 4 * v16) = *(a1 + 48);
    }

    v17 = v16 >> 6;
    v18 = 1 << v16;
    if ((v8 & 1) == 0)
    {
      break;
    }

    *(v10 + 8 * v17) |= v18;
    *(v15 + 8 * v17) &= ~v18;
    if (v16 == a2)
    {
      *(v9 + 8) = v11;
      goto LABEL_20;
    }

LABEL_18:
    --v11;
  }

  *(v15 + 8 * v17) &= ~v18;
  if (v16 != a2)
  {
    goto LABEL_18;
  }

  *(v9 + 8) = v11;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_20:
  ++*(a1 + 48);
LABEL_21:
  if (a3 != -1)
  {
    v19 = **(a1 + 16);
    if ((*(v19 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2))
    {
      *(v19 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v20 = *(v7 + 4 * a2);
    if (v20 < *(v7 + 4 * a3))
    {
      *(v7 + 4 * a3) = v20;
    }
  }
}

void fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D1F3F0;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D1F3F0;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D1F430;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B55C46DC(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D1F430;
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

void *std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>> *>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>> *>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>> *>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::emplace_back<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **&>(a1, &v10);
}

void sub_1B55C49E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ArcBuffer<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::SetFromFst<fst::Fst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  (*(*a2 + 136))(a2, a3, &v25);
  if (!v25 && (a4 & 1) == 0)
  {
    v10 = v26 + 48 * v27;
    *(a1 + 16) = v26;
    *(a1 + 24) = v10;
    if (*a1)
    {
      free(*a1);
      *a1 = 0;
    }

    *(a1 + 8) = 0;
    return;
  }

  v11 = (*(*a2 + 40))(a2, a3);
  v12 = a5;
  if (!a4)
  {
    v12 = 0;
  }

  v13 = v11 + v12;
  if (*(a1 + 8) < (v11 + v12))
  {
    if (*a1)
    {
      free(*a1);
    }

    v24 = 0x4000;
    if (v13 > 0x4000)
    {
      v24 = v13;
    }

    *(a1 + 8) = v24;
    v15 = malloc_type_malloc(48 * v24, 0x108004053AFDD15uLL);
    *a1 = v15;
    *(a1 + 16) = v15;
    v14 = v15;
  }

  else
  {
    v14 = *(a1 + 16);
    v15 = *a1;
  }

  *(a1 + 24) = &v14[6 * v13];
  v16 = v25;
  v17 = v26;
  v19 = v27;
  v18 = v28;
  if (v28)
  {
    ++*v28;
  }

  v20 = 0;
LABEL_13:
  v15 += 6;
  while (v16)
  {
    v21 = (*(*v16 + 24))(v16);
    v22 = *v16;
    if (v21)
    {
      (*(v22 + 8))(v16);
      return;
    }

    v23 = (*(v22 + 32))(v16);
LABEL_18:
    *(v15 - 6) = *v23;
    fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v15 - 5, v23 + 8);
    *(v15 - 2) = *(v23 + 40);
    if (!v16)
    {
      ++v20;
      goto LABEL_13;
    }

    v15 += 6;
    (*(*v16 + 40))(v16);
  }

  v23 = v17 + 48 * v20;
  if (v20 < v19)
  {
    goto LABEL_18;
  }

  if (v18)
  {
    --*v18;
  }
}

void sub_1B55C4D18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  else if (v2)
  {
    --*v2;
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::WriteFst<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>(void *a1, void *a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v33 = 0u;
  *v32 = 0u;
  *v31 = 0u;
  v36 = 0;
  v37 = 0;
  v35 = -1;
  v35 = (*(*a1 + 24))(a1);
  v36 = -1;
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v6 = 0;
LABEL_3:
    v7 = 0;
    v36 = fst::CountStates<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(a1);
    goto LABEL_6;
  }

  v8 = a2 + *(*a2 - 24);
  if ((v8[32] & 5) != 0)
  {
    v7 = 1;
    v6 = -1;
  }

  else
  {
    (*(**(v8 + 5) + 32))(__p);
    v6 = v40;
    if (v40 != -1)
    {
      goto LABEL_3;
    }

    v7 = 1;
  }

LABEL_6:
  v9 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  fst::FstImpl<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::WriteFstHeader(a1, a2, a3, 2, __p, v9 | 3, v30);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v29 = v6;
  v10 = *(a1[1] + 72) - *(a1[1] + 64);
  if ((v10 >> 3) < 1)
  {
    v13 = 0;
  }

  else
  {
    v11 = v7;
    v12 = 0;
    v13 = (v10 >> 3) & 0x7FFFFFFF;
    do
    {
      (*(*a1 + 32))(__p, a1, v12);
      data = __p[0].__r_.__value_.__l.__data_;
      std::ostream::write();
      data = HIDWORD(__p[0].__r_.__value_.__r.__words[0]);
      std::ostream::write();
      if (__p[0].__r_.__value_.__l.__size_)
      {
        __p[0].__r_.__value_.__r.__words[2] = __p[0].__r_.__value_.__l.__size_;
        operator delete(__p[0].__r_.__value_.__l.__size_);
      }

      __p[0].__r_.__value_.__r.__words[0] = (*(*a1 + 40))(a1, v12);
      std::ostream::write();
      v14 = *(*(a1[1] + 64) + 8 * v12);
      v16 = *(v14 + 48);
      v15 = *(v14 + 56);
      if (v15 == v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = *(v14 + 48);
      }

      if (v15 != v16)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 4) <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 4);
        }

        do
        {
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *v17;
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v17[1];
          std::ostream::write();
          fst::LatticeWeightTpl<float>::Write((v17 + 2), a2);
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v17[10];
          std::ostream::write();
          v17 += 12;
          --v18;
        }

        while (v18);
      }

      ++v12;
    }

    while (v12 != v13);
    v7 = v11;
  }

  std::ostream::flush();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v19 = fst::LogMessage::LogMessage(&data, __p);
    v20 = fst::cerr(v19);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "VectorFst::Write: write failed: ", 32);
    v22 = *(a3 + 23);
    if (v22 >= 0)
    {
      v23 = a3;
    }

    else
    {
      v23 = *a3;
    }

    if (v22 >= 0)
    {
      v24 = *(a3 + 23);
    }

    else
    {
      v24 = *(a3 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
LABEL_31:
    fst::LogMessage::~LogMessage(&data);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    updated = 0;
    goto LABEL_34;
  }

  if (!v7)
  {
    if (v36 == v13)
    {
      updated = 1;
      goto LABEL_34;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v27 = fst::LogMessage::LogMessage(&data, __p);
    v28 = fst::cerr(v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Inconsistent number of states observed during write", 51);
    goto LABEL_31;
  }

  v36 = v13;
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  updated = fst::FstImpl<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::UpdateFstHeader(a1, a2, a3, 2, __p, v9 | 3, v30, v29);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

LABEL_34:
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[1]);
  }

  if (SHIBYTE(v32[0]) < 0)
  {
    operator delete(v31[0]);
  }

  return updated;
}

void sub_1B55C5250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a11);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::WriteFstHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>::Type();
    std::string::operator=((a7 + 32), v13);
    *(a7 + 56) = a4;
    *(a7 + 64) = a6;
    if ((*(*a1 + 112))(a1))
    {
      v14 = a3[25];
    }

    else
    {
      v14 = 0;
    }

    v15 = (*(*a1 + 120))(a1);
    if (a3[26])
    {
      v16 = v14 | 2;
    }

    else
    {
      v16 = v14;
    }

    if (!v15)
    {
      v16 = v14;
    }

    if (a3[27])
    {
      v16 |= 4u;
    }

    *(a7 + 60) = v16;
    fst::FstHeader::Write();
  }

  if ((*(*a1 + 112))(a1) && a3[25] == 1)
  {
    v17 = (*(*a1 + 112))(a1);
    (*(*v17 + 72))(v17, a2);
  }

  result = (*(*a1 + 120))(a1);
  if (result && a3[26] == 1)
  {
    v19 = *(*(*(*a1 + 120))(a1) + 72);

    return v19();
  }

  return result;
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::UpdateFstHeader(uint64_t a1, void *a2, uint64_t a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = *MEMORY[0x1E69E9840];
  MEMORY[0x1B8C84B80](v32);
  v16 = a2 + *(*a2 - 24);
  if ((v16[32] & 5) == 0)
  {
    v17 = *(v16 + 5);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    __p = 0u;
    v35 = 0u;
    v42 = a8;
    (*(*v17 + 40))(v33);
    if (v33[16] == -1)
    {
      std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
    }
  }

  MEMORY[0x1B8C84B90](v32);
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    v18 = fst::LogMessage::LogMessage(v33, &__p);
    v19 = fst::cerr(v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Fst::UpdateFstHeader: write failed: ", 36);
    v21 = *(a3 + 23);
    if (v21 >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    if (v21 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = *(a3 + 8);
    }
  }

  else
  {
    fst::FstImpl<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::WriteFstHeader(a1, a2, a3, a4, a5, a6, a7);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      v24 = fst::LogMessage::LogMessage(v33, &__p);
      v25 = fst::cerr(v24);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Fst::UpdateFstHeader: write failed: ", 36);
      v26 = *(a3 + 23);
      if (v26 >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      if (v26 >= 0)
      {
        v23 = *(a3 + 23);
      }

      else
      {
        v23 = *(a3 + 8);
      }
    }

    else
    {
      MEMORY[0x1B8C84B80](v33, a2);
      v27 = a2 + *(*a2 - 24);
      if ((v27[32] & 5) == 0)
      {
        (*(**(v27 + 5) + 32))(&__p);
        if (v42 == -1)
        {
          std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
        }
      }

      MEMORY[0x1B8C84B90](v33);
      if ((*(a2 + *(*a2 - 24) + 32) & 5) == 0)
      {
        return 1;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      v28 = fst::LogMessage::LogMessage(v33, &__p);
      v29 = fst::cerr(v28);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Fst::UpdateFstHeader: write failed: ", 36);
      v30 = *(a3 + 23);
      if (v30 >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      if (v30 >= 0)
      {
        v23 = *(a3 + 23);
      }

      else
      {
        v23 = *(a3 + 8);
      }
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
  fst::LogMessage::~LogMessage(v33);
  if (SBYTE7(v35) < 0)
  {
    operator delete(__p);
  }

  return 0;
}

uint64_t fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>::Type()
{
  {
    operator new();
  }

  return fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>::Type(void)::type;
}

void sub_1B55C5A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  MEMORY[0x1B8C85350](v21, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>::Type()
{
  {
    operator new();
  }

  return fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>::Type(void)::type;
}

void sub_1B55C5AF4(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t fst::Fst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::WriteFile(fst *a1, uint64_t a2)
{
  v25[19] = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 8))
    {
LABEL_5:
      std::ofstream::basic_ofstream(&v20);
      if ((v24[*(v20.__r_.__value_.__r.__words[0] - 24)] & 5) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
        v4 = fst::LogMessage::LogMessage(&v19, &__p);
        v5 = fst::cerr(v4);
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Fst::Write: Can't open file: ", 29);
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

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
        fst::LogMessage::~LogMessage(&v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v10 = 0;
      }

      else
      {
        v13 = FLAGS_fst_align;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
        }

        else
        {
          __p = *a2;
        }

        v16 = 257;
        v17 = 1;
        v18 = v13;
        v10 = (*(*a1 + 96))(a1, &v20, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v20.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E54D0];
      *(v20.__r_.__value_.__r.__words + *(v20.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x1E69E54D0] + 24);
      MEMORY[0x1B8C84A00](&v20.__r_.__value_.__r.__words[1]);
      std::ostream::~ostream();
      MEMORY[0x1B8C85200](v25);
      return v10;
    }
  }

  else if (*(a2 + 23))
  {
    goto LABEL_5;
  }

  v11 = fst::cout(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "standard output");
  v12 = FLAGS_fst_align;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = __p;
  }

  v21 = 257;
  v22 = 1;
  v23 = v12;
  v10 = (*(*a1 + 96))(a1, v11, &v20);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_1B55C5E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::ofstream::~ofstream(&a21, MEMORY[0x1E69E54D0]);
  MEMORY[0x1B8C85200](&a72);
  _Unwind_Resume(a1);
}

void fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::SetFinal(void *a1, int a2, uint64_t *a3)
{
  v6 = *(a1[8] + 8 * a2);
  v20 = *v6;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v21, v6[1], v6[2], (v6[2] - v6[1]) >> 2);
  v16 = *a3;
  v18 = 0;
  v19 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, a3[1], a3[2], (a3[2] - a3[1]) >> 2);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::SetFinal(a1, a2, &v16);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  v7 = (*(*a1 + 24))(a1);
  v12 = v20;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v13, v21, v22, (v22 - v21) >> 2);
  v8 = *a3;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v9, a3[1], a3[2], (a3[2] - a3[1]) >> 2);
  a1[1] = a1[1] & 4 | fst::SetFinalProperties<fst::LatticeWeightTpl<float>>(v7, &v12, &v8);
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }
}

void sub_1B55C6050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  v21 = *(v19 - 56);
  if (v21)
  {
    *(v19 - 48) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::AddArc(void *a1, int a2, float *a3)
{
  v6 = *(*(a1[8] + 8 * a2) + 56);
  if (v6 == *(*(a1[8] + 8 * a2) + 48))
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6 - 48);
  }

  v8 = (*(*a1 + 24))(a1);
  a1[1] = a1[1] & 4 | fst::AddArcProperties<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(v8, a2, a3, v7);
  v9 = *(a1[8] + 8 * a2);

  return fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::AddArc(v9, a3);
}

uint64_t fst::AddArcProperties<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(unint64_t a1, int a2, float *a3, _DWORD *a4)
{
  v5 = *a3;
  v4 = *(a3 + 1);
  v6 = a1 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  if (*a3 == v4)
  {
    v6 = a1;
  }

  v7 = v6 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
  if (!v4)
  {
    v7 = v6 & 0xFFFFFFFFFC3FFFFFLL | 0x1400000;
  }

  if (v5 == 0.0)
  {
    v6 = v7;
  }

  if (!v4)
  {
    v6 = v6 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
  }

  if (a4)
  {
    if (*a4 > SLODWORD(v5))
    {
      v6 = v6 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
    }

    if (a4[1] > v4)
    {
      v6 = v6 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
    }
  }

  if ((a3[2] != INFINITY || a3[3] != INFINITY) && (a3[2] != 0.0 || a3[3] != 0.0))
  {
    v6 = v6 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
  }

  if (*(a3 + 10) <= a2)
  {
    v6 = v6 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
  }

  if ((v6 & 0x4000000000) != 0)
  {
    return v6 & 0x5D7FFEB0007 | 0x2800000000;
  }

  else
  {
    return v6 & 0x5D7FFEB0007;
  }
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::DeleteStates(uint64_t a1, char **a2)
{
  v4 = (a1 + 64);
  std::vector<int>::vector[abi:ne200100](__p, (*(a1 + 72) - *(a1 + 64)) >> 3);
  v5 = *a2;
  v6 = a2[1] - *a2;
  if (v6)
  {
    v7 = v6 >> 2;
    v8 = __p[0];
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      v9 = *v5;
      v5 += 4;
      v8[v9] = -1;
      --v7;
    }

    while (v7);
  }

  v10 = *(a1 + 64);
  if (*(a1 + 72) == v10)
  {
    v13 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (*(__p[0] + v11) == -1)
      {
        fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::Destroy(*(v10 + 8 * v11));
      }

      else
      {
        *(__p[0] + v11) = v12;
        if (v11 != v12)
        {
          *(v10 + 8 * v12) = *(v10 + 8 * v11);
        }

        ++v12;
      }

      ++v11;
      v10 = *(a1 + 64);
    }

    while (v11 < (*(a1 + 72) - v10) >> 3);
    v13 = v12;
  }

  std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize(v4, v13);
  v14 = *(a1 + 64);
  if (*(a1 + 72) != v14)
  {
    v15 = 0;
    do
    {
      v16 = *(v14 + 8 * v15);
      v17 = v16[2];
      v18 = v16[3].i64[1] - v16[3].i64[0];
      if (v18)
      {
        v19 = v16[3].i64[0];
      }

      else
      {
        v19 = 0;
      }

      if (v18)
      {
        v20 = 0;
        v21 = 0;
        v22 = (v19 + 40);
        do
        {
          v23 = *(__p[0] + *v22);
          if (v23 == -1)
          {
            v25 = *(v22 - 5);
            v26.i64[0] = v25;
            v26.i64[1] = HIDWORD(v25);
            v17 = vaddq_s64(v17, vceqzq_s64(v26));
          }

          else
          {
            *v22 = v23;
            if (v20 != v21)
            {
              v34 = v17;
              v24 = (v19 + 48 * v21);
              *v24 = *(v22 - 5);
              fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v24 + 1, (v22 - 8));
              *(v19 + 48 * v21 + 40) = *v22;
              v14 = *v4;
              v17 = v34;
            }

            ++v21;
          }

          ++v20;
          v16 = *(v14 + 8 * v15);
          v27 = 0xAAAAAAAAAAAAAAABLL * ((v16[3].i64[1] - v16[3].i64[0]) >> 4);
          v22 += 12;
        }

        while (v20 < v27);
        v28 = v17.i64[1];
        v29 = v17.i64[0];
      }

      else
      {
        v21 = 0;
        v27 = 0;
        v28 = v16[2].i64[1];
        v29 = v16[2].i64[0];
      }

      fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::DeleteArcs(v16, v27 - v21);
      v14 = *(a1 + 64);
      v30 = *(a1 + 72);
      v31 = *(v14 + 8 * v15);
      *(v31 + 32) = v29;
      *(v31 + 40) = v28;
      ++v15;
    }

    while (v15 < (v30 - v14) >> 3);
  }

  v32 = *(a1 + 88);
  if (v32 == -1)
  {
    v33 = __p[0];
    if (!__p[0])
    {
      return;
    }
  }

  else
  {
    v33 = __p[0];
    *(a1 + 88) = *(__p[0] + v32);
  }

  __p[1] = v33;
  operator delete(v33);
}

void sub_1B55C64C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::SetValue(uint64_t a1, float *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v6 = v4[6] + 48 * v5;
  v7 = *v6;
  v8 = *(v6 + 4);
  if (*v6 != v8)
  {
    **(a1 + 16) &= ~0x20000uLL;
  }

  if (v7)
  {
    if (v8)
    {
      goto LABEL_9;
    }

    v9 = *(a1 + 16);
    v10 = *v9;
  }

  else
  {
    v9 = *(a1 + 16);
    v11 = *v9;
    *v9 &= ~0x1000000uLL;
    if (v8)
    {
      goto LABEL_9;
    }

    v10 = v11 & 0xFFFFFFFFFEBFFFFFLL;
    *v9 = v10;
  }

  *v9 = v10 & 0xFFFFFFFFFBFFFFFFLL;
LABEL_9:
  if ((*(v6 + 8) != INFINITY || *(v6 + 12) != INFINITY) && (*(v6 + 8) != 0.0 || *(v6 + 12) != 0.0))
  {
    **(a1 + 16) &= ~0x100000000uLL;
  }

  v12 = 0x30FC30007;
  v13 = *a2 == v7 && *(a2 + 1) == v8;
  if (v13 && *(a2 + 10) == *(v6 + 40))
  {
    v12 = 0x3FFFFFFF0007;
  }

  result = fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::SetArc(v4, a2, v5);
  v15 = *a2;
  v16 = *(a2 + 1);
  if (*a2 != v16)
  {
    **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  }

  if (v15 == 0.0)
  {
    v17 = *(a1 + 16);
    v19 = *v17 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
    *v17 = v19;
    if (!v16)
    {
      v18 = v19 & 0xFFFFFFFFFD3FFFFFLL | 0x400000;
      *v17 = v18;
      goto LABEL_28;
    }
  }

  else if (!v16)
  {
    v17 = *(a1 + 16);
    v18 = *v17;
LABEL_28:
    *v17 = v18 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
  }

  if ((a2[2] != INFINITY || a2[3] != INFINITY) && (a2[2] != 0.0 || a2[3] != 0.0))
  {
    **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
  }

  **(a1 + 16) &= v12;
  return result;
}

float kaldi::quasar::TMTools::GreedyDecode<kaldi::quasar::TorchEncoderDecoder>(kaldi::quasar::TorchEncoderDecoder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  kaldi::quasar::TorchEncoderDecoder::ResetHistoryState(a1, 1);
  kaldi::quasar::TorchEncoderDecoder::Start(a1, 1u, a4);
  kaldi::quasar::TorchEncoderDecoder::StartFeedforward(a1, a2, 0, 0);
  v96 = 0u;
  v95 = 0u;
  v94 = &unk_1F2D0EE38;
  v97 = 0;
  kaldi::CuMatrix<float>::CuMatrix(&v92, 1, 1, 0, 0, 0);
  v14 = kaldi::quasar::TorchEncoderDecoder::BosTargetId(a1);
  *v93 = (v14 - 1);
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  __src = 0;
  v84 = 0;
  v85 = 0;
  v15 = 0;
  if ((a7 & 0x80000000) != 0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 0.0;
    v64 = a7;
    while (1)
    {
      kaldi::quasar::TorchEncoderDecoder::Feedforward(a1, &v92, &v94, 0);
      kaldi::Matrix<float>::Matrix(v76, HIDWORD(v95), DWORD2(v95), 0, 0);
      kaldi::CuMatrixBase<float>::CopyToMat<float>(&v94, v76, 111);
      Type = quasar::getType(a1, v17);
      if (v15 == a7)
      {
        SoftmaxEosId = kaldi::quasar::TorchEncoderDecoder::GetSoftmaxEosId(a1);
        v20 = *(v76[0].__locale_ + SoftmaxEosId);
        v21 = kaldi::quasar::TorchEncoderDecoder::EosTargetId(a1) - 1;
      }

      else
      {
        v27 = 0;
        v21 = 0;
        v20 = Type ? 0.0 : -3.4028e38;
        while (v27 != kaldi::MatrixBase<float>::NumCols(v76))
        {
          VocabWordIdx = kaldi::quasar::TorchEncoderDecoder::GetVocabWordIdx(a1, v27);
          if ((v15 >= a6 || VocabWordIdx != kaldi::quasar::TorchEncoderDecoder::EosTargetId(a1) - 1) && (!kaldi::quasar::TorchEncoderDecoder::HasBpeModel(a1) || VocabWordIdx != kaldi::quasar::TorchEncoderDecoder::UnkTargetId(a1) - 1) && *(v76[0].__locale_ + v27) > v20)
          {
            v20 = *(v76[0].__locale_ + v27);
            v21 = VocabWordIdx;
          }

          ++v27;
        }
      }

      v23 = quasar::getType(a1, v22);
      v24 = logf(v20);
      if (v23)
      {
        v20 = v24;
      }

      *v93 = v21;
      v25 = v84;
      if (v84 >= v85)
      {
        v29 = __src;
        v30 = v84 - __src;
        v31 = (v84 - __src) >> 2;
        v32 = v31 + 1;
        if ((v31 + 1) >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v33 = v85 - __src;
        if ((v85 - __src) >> 1 > v32)
        {
          v32 = v33 >> 1;
        }

        v34 = v33 >= 0x7FFFFFFFFFFFFFFCLL;
        v35 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v34)
        {
          v35 = v32;
        }

        if (v35)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v35);
        }

        *(4 * v31) = v20;
        v26 = 4 * v31 + 4;
        memcpy(0, v29, v30);
        v36 = __src;
        __src = 0;
        v84 = v26;
        v85 = 0;
        if (v36)
        {
          operator delete(v36);
        }
      }

      else
      {
        *v84 = v20;
        v26 = (v25 + 1);
      }

      v84 = v26;
      BestAlignment = kaldi::quasar::TorchEncoderDecoder::GetBestAlignment(a1, 0);
      __p = 0;
      v73 = 0;
      v74 = 0;
      kaldi::quasar::TorchEncoderDecoder::GetAlignmentProbabilities(a1, &__p, 0);
      v37 = kaldi::quasar::TorchEncoderDecoder::EosTargetId(a1) - 1;
      if (v21 == v37)
      {
        if (*(a1 + 3922) == 1 && *(a1 + 3923) == 1)
        {
          std::vector<int>::push_back[abi:ne200100](&v89, &BestAlignment);
          std::vector<std::vector<float>>::push_back[abi:ne200100](&v86, &__p);
          v81 = v21 + 1;
          std::vector<int>::push_back[abi:ne200100](a3, &v81);
          v38 = v84;
          if (v84 >= v85)
          {
            v41 = __src;
            v42 = v84 - __src;
            v43 = (v84 - __src) >> 2;
            v44 = v43 + 1;
            if ((v43 + 1) >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v45 = v85 - __src;
            if ((v85 - __src) >> 1 > v44)
            {
              v44 = v45 >> 1;
            }

            v34 = v45 >= 0x7FFFFFFFFFFFFFFCLL;
            v46 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v34)
            {
              v46 = v44;
            }

            if (v46)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v46);
            }

            *(4 * v43) = 0;
            v39 = 4 * v43 + 4;
            memcpy(0, v41, v42);
            v47 = __src;
            __src = 0;
            v84 = v39;
            v85 = 0;
            if (v47)
            {
              operator delete(v47);
            }

            a7 = v64;
          }

          else
          {
            *v84 = 0.0;
            v39 = (v38 + 1);
          }

          v84 = v39;
        }
      }

      else
      {
        std::vector<int>::push_back[abi:ne200100](&v89, &BestAlignment);
        std::vector<std::vector<float>>::push_back[abi:ne200100](&v86, &__p);
        v81 = v21 + 1;
        std::vector<int>::push_back[abi:ne200100](a3, &v81);
      }

      if (__p)
      {
        v73 = __p;
        operator delete(__p);
      }

      v16 = v16 + v20;
      kaldi::Matrix<float>::~Matrix(v76);
      if (v21 == v37)
      {
        break;
      }

      if (v15++ == a7)
      {
        goto LABEL_56;
      }
    }
  }

  if (v15 == a7 && (kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v76);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, "Decoder hit max sentence length : ", 34);
    v49 = MEMORY[0x1B8C84C00](v48, a7);
    v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " ", 1);
    MEMORY[0x1B8C84C00](v50, a7);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v76);
  }

LABEL_56:
  if (kaldi::quasar::TorchEncoderDecoder::Reverse(a1) && v89 != v90)
  {
    v51 = (v90 - 1);
    if (v90 - 1 > v89)
    {
      v52 = (v89 + 1);
      do
      {
        v53 = *(v52 - 1);
        *(v52 - 1) = *v51;
        *v51 = v53;
        v51 -= 4;
        v34 = v52 >= v51;
        v52 += 4;
      }

      while (!v34);
    }
  }

  v54 = (*(*a5 + 200))(a5);
  (*(*a5 + 176))(a5, v54);
  if (*(a3 + 8) == *a3)
  {
    v56 = 0;
  }

  else
  {
    v55 = 0;
    v56 = 0;
    v57 = v54;
    do
    {
      v58 = (*(*a5 + 200))(a5);
      if (v56 >= v90 - v89 || v56 >= (*(a3 + 8) - *a3) >> 2)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v87 - v86) >> 3) <= v56)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v54 = v58;
      v59 = v89[v56];
      v60 = *(*a3 + 4 * v56);
      v61 = *(__src + v56);
      v69 = 0;
      v70 = 0;
      v71 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v69, *(v86 + v55), *(v86 + v55 + 8), (*(v86 + v55 + 8) - *(v86 + v55)) >> 2);
      LODWORD(__p) = 0;
      *(&__p + 1) = -v61;
      v74 = 0;
      v75 = 0;
      v73 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v73, v69, v70, (v70 - v69) >> 2);
      v76[0].__locale_ = __PAIR64__(v60, v59);
      v76[1].__locale_ = __p;
      v78 = 0;
      v79 = 0;
      v77 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v77, v73, v74, (v74 - v73) >> 2);
      v80 = v54;
      (*(*a5 + 208))(a5, v57, v76);
      if (v77)
      {
        v78 = v77;
        operator delete(v77);
      }

      if (v73)
      {
        v74 = v73;
        operator delete(v73);
      }

      if (v69)
      {
        v70 = v69;
        operator delete(v69);
      }

      ++v56;
      v55 += 24;
      v57 = v54;
    }

    while (v56 != (*(a3 + 8) - *a3) >> 2);
  }

  v62 = -*(__src + v56);
  v65[0] = 0;
  *&v65[1] = v62;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  (*(*a5 + 184))(a5, v54, v65);
  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  if (__src)
  {
    v84 = __src;
    operator delete(__src);
  }

  v76[0].__locale_ = &v86;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v76);
  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  kaldi::CuMatrix<float>::~CuMatrix(&v92);
  kaldi::CuMatrix<float>::~CuMatrix(&v94);
  return -v16;
}

void sub_1B55C6FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, uint64_t a59, char a60)
{
  if (__p)
  {
    a58 = __p;
    operator delete(__p);
  }

  a22 = &a60;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a22);
  v62 = *(v60 - 240);
  if (v62)
  {
    *(v60 - 232) = v62;
    operator delete(v62);
  }

  kaldi::CuMatrix<float>::~CuMatrix(v60 - 216);
  kaldi::CuMatrix<float>::~CuMatrix(v60 - 168);
  _Unwind_Resume(a1);
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D1F2B0;
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

char *std::vector<unsigned short>::__insert_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 1)
  {
    v11 = *a1;
    if (a5 + (&v10[-*a1] >> 1) < 0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = __dst - v11;
    v13 = v9 - v11;
    if (v13 <= a5 + (&v10[-*a1] >> 1))
    {
      v14 = a5 + (&v10[-*a1] >> 1);
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(a1, v15);
    }

    v33 = 2 * v16;
    v34 = 2 * v16 + 2 * a5;
    v35 = 2 * a5;
    v36 = v33;
    do
    {
      v37 = *v7++;
      *v36++ = v37;
      v35 -= 2;
    }

    while (v35);
    memcpy((v33 + 2 * a5), v5, a1[1] - v5);
    v38 = *a1;
    v39 = v34 + a1[1] - v5;
    a1[1] = v5;
    v40 = v5 - v38;
    v41 = (v33 - (v5 - v38));
    memcpy(v41, v38, v40);
    v42 = *a1;
    *a1 = v41;
    a1[1] = v39;
    a1[2] = 0;
    if (v42)
    {
      operator delete(v42);
    }

    return v33;
  }

  v17 = (v10 - __dst) >> 1;
  if (v17 >= a5)
  {
    v22 = &__dst[2 * a5];
    v23 = &v10[-2 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 2;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[2 * a5], __dst, v10 - v22);
    }

    v30 = 2 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_35;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 2;
    *v20 = v21;
    v20 += 2;
    v19 += 2;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[2 * a5];
    v27 = &v19[-2 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 2;
      *v28 = v29;
      v28 += 2;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[2 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_35:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

char *std::vector<unsigned short>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 1)
  {
    v11 = *a1;
    if (a5 + ((v10 - *a1) >> 1) < 0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = __dst - v11;
    v13 = v9 - v11;
    if (v13 <= a5 + ((v10 - *a1) >> 1))
    {
      v14 = a5 + ((v10 - *a1) >> 1);
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(a1, v15);
    }

    v33 = 2 * v16;
    v34 = 2 * a5;
    v35 = (2 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 2;
    }

    while (v34);
    memcpy((v33 + 2 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 2 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (2 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 1;
  if (v18 >= a5)
  {
    v29 = &__dst[2 * a5];
    v30 = (v10 - 2 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[2 * a5], __dst, v10 - v29);
    }

    v28 = 2 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_30;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[2 * a5];
    v23 = v10 + v20;
    if (&v21[-2 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -2 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 2;
        v24 += 2;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[2 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_30:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void quasar::RomanizerOptions::~RomanizerOptions(quasar::RomanizerOptions *this)
{
  *this = &unk_1F2D1ED00;
  quasar::OptionValue<std::string>::~OptionValue(this + 912);
  *(this + 96) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 888, *(this + 112));
  *(this + 96) = &unk_1F2D08890;
  v2 = *(this + 108);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 847) < 0)
  {
    operator delete(*(this + 103));
  }

  if (*(this + 823) < 0)
  {
    operator delete(*(this + 100));
  }

  if (*(this + 799) < 0)
  {
    operator delete(*(this + 97));
  }

  *(this + 78) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 744, *(this + 94));
  *(this + 78) = &unk_1F2D08890;
  v3 = *(this + 90);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
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

  *(this + 60) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 600, *(this + 76));
  *(this + 60) = &unk_1F2D08890;
  v4 = *(this + 72);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
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

  *(this + 42) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 456, *(this + 58));
  *(this + 42) = &unk_1F2D08890;
  v5 = *(this + 54);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(this + 415) < 0)
  {
    operator delete(*(this + 49));
  }

  if (*(this + 391) < 0)
  {
    operator delete(*(this + 46));
  }

  if (*(this + 367) < 0)
  {
    operator delete(*(this + 43));
  }

  *(this + 22) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 312, *(this + 40));
  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
  }

  *(this + 22) = &unk_1F2D08890;
  v6 = *(this + 34);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
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
  v7 = *(this + 14);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
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

uint64_t std::__tree<std::__value_type<std::tuple<std::string,std::string,BOOL,BOOL>,std::weak_ptr<kaldi::quasar::NNMTTransliterator>>,std::__map_value_compare<std::tuple<std::string,std::string,BOOL,BOOL>,std::__value_type<std::tuple<std::string,std::string,BOOL,BOOL>,std::weak_ptr<kaldi::quasar::NNMTTransliterator>>,std::less<std::tuple<std::string,std::string,BOOL,BOOL>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,BOOL,BOOL>,std::weak_ptr<kaldi::quasar::NNMTTransliterator>>>>::find<std::tuple<std::string,std::string,BOOL,BOOL>>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,BOOL,BOOL>,std::tuple<std::string,std::string,BOOL,BOOL>>(&v9, v3 + 32, a2);
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
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,BOOL,BOOL>,std::tuple<std::string,std::string,BOOL,BOOL>>(&v10, a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

BOOL std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,BOOL,BOOL>,std::tuple<std::string,std::string,BOOL,BOOL>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 23);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v5 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 8);
  }

  if (v5 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(v8, v10, v11);
  v13 = v7 < v9;
  if (v12)
  {
    v13 = v12 < 0;
  }

  if (v13)
  {
    return 1;
  }

  v15 = memcmp(v10, v8, v11);
  v16 = v9 < v7;
  if (v15)
  {
    v16 = v15 < 0;
  }

  return !v16 && std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,BOOL,BOOL>,std::tuple<std::string,std::string,BOOL,BOOL>>(&v17, a2, a3);
}

BOOL std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,BOOL,BOOL>,std::tuple<std::string,std::string,BOOL,BOOL>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 47);
  v6 = *(a2 + 47);
  if (v6 >= 0)
  {
    v7 = *(a2 + 47);
  }

  else
  {
    v7 = *(a2 + 32);
  }

  if (v6 >= 0)
  {
    v8 = (a2 + 24);
  }

  else
  {
    v8 = *(a2 + 24);
  }

  if (v5 >= 0)
  {
    v9 = *(a3 + 47);
  }

  else
  {
    v9 = *(a3 + 32);
  }

  if (v5 >= 0)
  {
    v10 = (a3 + 24);
  }

  else
  {
    v10 = *(a3 + 24);
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(v8, v10, v11);
  v13 = v7 < v9;
  if (v12)
  {
    v13 = v12 < 0;
  }

  if (v13)
  {
    return 1;
  }

  v15 = memcmp(v10, v8, v11);
  v16 = v9 < v7;
  if (v15)
  {
    v16 = v15 < 0;
  }

  if (v16)
  {
    return 0;
  }

  v17 = *(a2 + 48);
  v18 = *(a3 + 48);
  if (v17 < v18)
  {
    return 1;
  }

  return v18 >= v17 && *(a2 + 49) < *(a3 + 49);
}

void *std::__shared_ptr_emplace<kaldi::quasar::NNMTTransliterator>::__shared_ptr_emplace[abi:ne200100]<BOOL &,std::allocator<kaldi::quasar::NNMTTransliterator>,0>(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D1F520;
  kaldi::quasar::NNMTTransliterator::NNMTTransliterator((a1 + 3), *a2);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::quasar::NNMTTransliterator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D1F520;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

kaldi::quasar::NNMTTransliterator *kaldi::quasar::NNMTTransliterator::NNMTTransliterator(kaldi::quasar::NNMTTransliterator *this, char a2)
{
  v4 = kaldi::quasar::TorchEncoderDecoder::TorchEncoderDecoder(this);
  std::string::basic_string[abi:ne200100]<0>((v4 + 4168), "<space>");
  *(this + 524) = 0;
  *(this + 4200) = 0;
  *(this + 4201) = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "UNK");
  kaldi::quasar::BPE::BPE(this + 4208, 1, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_1B55C7D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v17 + 95) < 0)
  {
    operator delete(*(v15 + v16));
  }

  kaldi::quasar::TorchEncoderDecoder::~TorchEncoderDecoder(v15);
  _Unwind_Resume(a1);
}

void kaldi::quasar::NNMTTransliterator::~NNMTTransliterator(kaldi::quasar::NNMTTransliterator *this)
{
  if (*(this + 524))
  {
    utrans_close();
  }

  kaldi::quasar::BPE::~BPE((this + 4208));
  if (*(this + 4191) < 0)
  {
    operator delete(*(this + 521));
  }

  kaldi::quasar::TorchEncoderDecoder::~TorchEncoderDecoder(this);
}

uint64_t std::__tree<std::__value_type<std::tuple<std::string,std::string,BOOL,BOOL>,std::weak_ptr<kaldi::quasar::NNMTTransliterator>>,std::__map_value_compare<std::tuple<std::string,std::string,BOOL,BOOL>,std::__value_type<std::tuple<std::string,std::string,BOOL,BOOL>,std::weak_ptr<kaldi::quasar::NNMTTransliterator>>,std::less<std::tuple<std::string,std::string,BOOL,BOOL>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,BOOL,BOOL>,std::weak_ptr<kaldi::quasar::NNMTTransliterator>>>>::__emplace_unique_key_args<std::tuple<std::string,std::string,BOOL,BOOL>,std::piecewise_construct_t const&,std::tuple<std::tuple<std::string,std::string,BOOL,BOOL> const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  result = *std::__tree<std::__value_type<std::tuple<std::string,std::string,BOOL,BOOL>,std::weak_ptr<kaldi::quasar::NNMTTransliterator>>,std::__map_value_compare<std::tuple<std::string,std::string,BOOL,BOOL>,std::__value_type<std::tuple<std::string,std::string,BOOL,BOOL>,std::weak_ptr<kaldi::quasar::NNMTTransliterator>>,std::less<std::tuple<std::string,std::string,BOOL,BOOL>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,BOOL,BOOL>,std::weak_ptr<kaldi::quasar::NNMTTransliterator>>>>::__find_equal<std::tuple<std::string,std::string,BOOL,BOOL>>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::tuple<std::string,std::string,BOOL,BOOL>,std::weak_ptr<kaldi::quasar::NNMTTransliterator>>,std::__map_value_compare<std::tuple<std::string,std::string,BOOL,BOOL>,std::__value_type<std::tuple<std::string,std::string,BOOL,BOOL>,std::weak_ptr<kaldi::quasar::NNMTTransliterator>>,std::less<std::tuple<std::string,std::string,BOOL,BOOL>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,BOOL,BOOL>,std::weak_ptr<kaldi::quasar::NNMTTransliterator>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::tuple<std::string,std::string,BOOL,BOOL> const&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::tuple<std::string,std::string,BOOL,BOOL>,std::weak_ptr<kaldi::quasar::NNMTTransliterator>>,std::__map_value_compare<std::tuple<std::string,std::string,BOOL,BOOL>,std::__value_type<std::tuple<std::string,std::string,BOOL,BOOL>,std::weak_ptr<kaldi::quasar::NNMTTransliterator>>,std::less<std::tuple<std::string,std::string,BOOL,BOOL>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,BOOL,BOOL>,std::weak_ptr<kaldi::quasar::NNMTTransliterator>>>>::__find_equal<std::tuple<std::string,std::string,BOOL,BOOL>>(uint64_t a1, void *a2, uint64_t a3)
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
        if (!std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,BOOL,BOOL>,std::tuple<std::string,std::string,BOOL,BOOL>>(&v9, a3, (v4 + 4)))
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

      if (!std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,BOOL,BOOL>,std::tuple<std::string,std::string,BOOL,BOOL>>(&v10, (v7 + 4), a3))
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

void sub_1B55C7FB8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,std::string,std::string,BOOL,BOOL>::__tuple_impl(std::string *this, __int128 *a2)
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

  this[2].__r_.__value_.__s.__data_[0] = *(a2 + 48);
  this[2].__r_.__value_.__s.__data_[1] = *(a2 + 49);
  return this;
}

void sub_1B55C805C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::TranslationPhrase::convertTokensToString<quasar::TranslationToken>(uint64_t *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v11);
  v2 = *a1;
  if (a1[1] != *a1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = v2 + v3;
      v6 = *(v5 + 23);
      if (v6 >= 0)
      {
        v7 = v5;
      }

      else
      {
        v7 = *v5;
      }

      if (v6 >= 0)
      {
        v8 = *(v5 + 23);
      }

      else
      {
        v8 = *(v5 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, v7, v8);
      v2 = *a1;
      if (*(*a1 + v3 + 24) == 1)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, " ", 1);
        v2 = *a1;
      }

      ++v4;
      v3 += 72;
    }

    while (v4 < 0x8E38E38E38E38E39 * ((a1[1] - v2) >> 3));
  }

  std::stringbuf::str();
  v11[0] = *MEMORY[0x1E69E54D8];
  v9 = *(MEMORY[0x1E69E54D8] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v12 = v9;
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v16);
}

void sub_1B55C82A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void quasar::TranslationPhrase::populateMetaInfoWithAlignmentQueries(uint64_t a1, int **a2)
{
  quasar::PTree::PTree(v25);
  quasar::PTree::PTree(v24);
  quasar::PTree::PTree(v23);
  quasar::json2Ptree(a1 + 40);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      quasar::PTree::PTree(v21);
      quasar::PTree::PTree(v20);
      std::string::basic_string[abi:ne200100]<0>(__p, "start");
      v6 = *v4;
      Type = quasar::getType(*v4);
      std::to_string(&v13, v6);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 1;
      quasar::PTree::putChild(v21, __p, &Type, 1);
      quasar::PTree::~PTree(&Type);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "end");
      v7 = v4[1];
      Type = quasar::getType(v7);
      std::to_string(&v13, v7);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 1;
      quasar::PTree::putChild(v21, __p, &Type, 1);
      quasar::PTree::~PTree(&Type);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      quasar::PTree::addChild(v24, v21);
      std::string::basic_string[abi:ne200100]<0>(__p, "start");
      v8 = *v4;
      Type = quasar::getType(*v4);
      std::to_string(&v13, v8);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 1;
      quasar::PTree::putChild(v20, __p, &Type, 1);
      quasar::PTree::~PTree(&Type);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "end");
      v9 = v4[1];
      Type = quasar::getType(v9);
      std::to_string(&v13, v9);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 1;
      quasar::PTree::putChild(v20, __p, &Type, 1);
      quasar::PTree::~PTree(&Type);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "do-not-translate");
      v10 = *(v4 + 8);
      Type = quasar::getType(*(v4 + 8));
      std::to_string(&v13, v10);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 1;
      quasar::PTree::putChild(v20, __p, &Type, 1);
      quasar::PTree::~PTree(&Type);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      quasar::PTree::addChild(v23, v20);
      quasar::PTree::~PTree(v20);
      quasar::PTree::~PTree(v21);
      v4 += 3;
    }

    while (v4 != v5);
  }

  std::string::basic_string[abi:ne200100]<0>(v21, "alignment-queries");
  quasar::PTree::putChild(v25, v21, v24, 1);
  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v21, "alignment-span-info");
  quasar::PTree::putChild(v25, v21, v23, 1);
  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  quasar::mt::utils::ptreeToString(v25, v11);
}

void sub_1B55C8624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  quasar::PTree::~PTree(&a43);
  quasar::PTree::~PTree((v43 - 208));
  quasar::PTree::~PTree((v43 - 144));
  _Unwind_Resume(a1);
}

void quasar::TranslationPhrase::extractAlignmentProjections(quasar::TranslationPhrase *this@<X0>, uint64_t *a2@<X8>)
{
  quasar::PTree::PTree(v4);
  quasar::json2Ptree(this + 40);
  quasar::TranslationPhrase::extractAlignmentProjections(v4, a2);
  quasar::PTree::~PTree(v4);
}

{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "alignment-queries");
  ChildWithoutSplit = quasar::PTree::getChildWithoutSplit(this, __p);
  v5 = ChildWithoutSplit;
  if (SBYTE7(v15) < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else if (ChildWithoutSplit)
  {
LABEL_3:
    v6 = quasar::PTree::size(v5);
    std::vector<std::vector<std::pair<int,int>>>::resize(a2, v6);
    v12 = quasar::PTree::begin(v5);
    v7 = 0;
    v8 = 0;
    while (1)
    {
      if (v12 == quasar::PTree::end(v5))
      {
        if ((v8 & 1) == 0)
        {
          if (quasar::gLogLevel >= 5)
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
            *__p = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Metainfo does not contain any alignment projections", 51);
            quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
          }

          std::vector<std::vector<int>>::clear[abi:ne200100](a2);
        }

        return;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "projections");
      v9 = quasar::PTree::getChildWithoutSplit(v12 + 24, __p);
      v10 = v9;
      if (SBYTE7(v15) < 0)
      {
        operator delete(__p[0]);
        if (!v10)
        {
          goto LABEL_12;
        }
      }

      else if (!v9)
      {
        goto LABEL_12;
      }

      v11 = quasar::PTree::begin(v10);
      if (v11 != quasar::PTree::end(v10))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "start");
        quasar::PTree::getInt<int>(v11 + 24, __p);
      }

      v8 = 1;
LABEL_12:
      ++v7;
      v12 += 88;
    }
  }

  if (quasar::gLogLevel >= 5)
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Metainfo does not contain any alignment spans", 45);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
  }
}

uint64_t quasar::join<std::vector<quasar::TranslationPhrase::SegmentInfo>>(unsigned int ***a1, uint64_t *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  quasar::joinToStream<std::vector<quasar::TranslationPhrase::SegmentInfo>>(&v7, a1, a2);
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

void sub_1B55C8DAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void sub_1B55C8F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *quasar::joinToStream<std::vector<quasar::TranslationPhrase::SegmentInfo>>(void *result, unsigned int ***a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = result;
    v7 = 1;
    do
    {
      if ((v7 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, *a3, a3[1]);
      }

      result = quasar::operator<<(v6, v3);
      v7 = 0;
      v3 += 8;
    }

    while (v3 != v4);
  }

  return result;
}

void quasar::WordPronCache::~WordPronCache(quasar::WordPronCache *this)
{
  *this = &unk_1F2D1F570;
  std::__tree<std::__value_type<std::string,std::map<std::string,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,int>>>>::destroy(this + 48, *(this + 7));
  std::__tree<quasar::LmePackedWord,quasar::LmePackedWordOrthoComparator,std::allocator<quasar::LmePackedWord>>::destroy(this + 24, *(this + 4));
  fst::SymbolTable::~SymbolTable((this + 8));
}

{
  quasar::WordPronCache::~WordPronCache(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::WordPronCache::addWord(quasar::WordPronCache *this, const quasar::LmeDataFactoryBase::Word *a2, int a3)
{
  quasar::Bitmap::~Bitmap((a2 + 56));
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 == v6)
  {
    goto LABEL_21;
  }

  v9 = 0;
  do
  {
    if (*(v7 + 8) == 1)
    {
      ++v9;
    }

    v10 = v7[1];
    if (v10)
    {
      do
      {
        v11 = v10;
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v11 = v7[2];
        v12 = *v11 == v7;
        v7 = v11;
      }

      while (!v12);
    }

    v7 = v11;
  }

  while (v11 != v6);
  if (v9 <= 0xA)
  {
LABEL_21:
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v35, *a2, *(a2 + 1));
    }

    else
    {
      v35 = *a2;
    }

    if (*(a2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v36, *(a2 + 3), *(a2 + 4));
    }

    else
    {
      v36 = *(a2 + 1);
    }

    v37 = *(a2 + 12);
    v21 = std::map<std::pair<quasar::PronType,std::string>,float>::map[abi:ne200100](v38, a2 + 56);
    if (a3 == 3)
    {
      goto LABEL_30;
    }

    if (a3 != 1)
    {
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
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "Encoding should be either QsrText or NotEncoded", 47);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v39);
    }

    v22 = quasar::QsrText::SingletonInstance(v21);
    if (quasar::QsrText::encodeTokenQsrTextWithMetadata(v22, a2, &v35))
    {
LABEL_30:
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *a2, *(a2 + 1));
      }

      else
      {
        v31 = *a2;
      }

      if (*(a2 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(a2 + 3), *(a2 + 4));
      }

      else
      {
        v32 = *(a2 + 1);
      }

      v33 = *(a2 + 12);
      v23 = std::map<std::pair<quasar::PronType,std::string>,float>::map[abi:ne200100](v34, a2 + 56);
      if (a3 == 3)
      {
        v24 = quasar::QsrText::SingletonInstance(v23);
        quasar::QsrText::decodeQsrText(v24, a2, &v31);
      }

      IsLegal = quasar::LmeDataFactory::wordIsLegal(&v31, 0xFFFFFFFFLL);
      if (IsLegal)
      {
        std::__tree<quasar::LmePackedWord,quasar::LmePackedWordOrthoComparator,std::allocator<quasar::LmePackedWord>>::__emplace_unique_impl<quasar::LmeDataFactoryBase::Word &,fst::SymbolTable &>();
      }

      if (quasar::gLogLevel >= 6)
      {
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
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v39);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "Skipping illegal word.", 22);
        quasar::QuasarTraceMessage::~QuasarTraceMessage(&v39);
      }

      std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(v34, v34[1]);
      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (quasar::gLogLevel >= 4)
      {
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
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v39);
        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "Skipping illegal word: ", 24);
        v26 = *(a2 + 23);
        if (v26 >= 0)
        {
          v27 = a2;
        }

        else
        {
          v27 = *a2;
        }

        if (v26 >= 0)
        {
          v28 = *(a2 + 23);
        }

        else
        {
          v28 = *(a2 + 1);
        }

        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v27, v28);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "", 1);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(&v39);
      }

      IsLegal = 0;
    }

    std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(v38, v38[1]);
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (quasar::gLogLevel >= 4)
    {
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
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v39);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "Not caching word with too many prons: ", 39);
      v14 = *(a2 + 23);
      if (v14 >= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = *a2;
      }

      if (v14 >= 0)
      {
        v16 = *(a2 + 23);
      }

      else
      {
        v16 = *(a2 + 1);
      }

      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " has ", 6);
      v19 = MEMORY[0x1B8C84C30](v18, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " prons", 6);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v39);
    }

    return 0;
  }

  return IsLegal;
}

void sub_1B55C9718(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B55C97CCLL);
}

void sub_1B55C9774(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(a31) < 0)
  {
    operator delete(a29);
  }

  JUMPOUT(0x1B55C97D4);
}

void sub_1B55C97B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, char *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&a16, a17);
  quasar::LmeDataFactoryBase::Word::~Word(&a19);
  quasar::LmeDataFactoryBase::Word::~Word(&a29);
  _Unwind_Resume(a1);
}

BOOL quasar::WordPronCache::lookupWord(quasar::WordPronCache *this, const quasar::LmeDataFactoryBase::Word *a2, int a3, char **a4)
{
  quasar::LmeDataFactoryBase::PronSet::clear(a4);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a2, *(a2 + 1));
  }

  else
  {
    __str = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v40, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v40 = *(a2 + 1);
  }

  v41 = *(a2 + 12);
  v8 = std::map<std::pair<quasar::PronType,std::string>,float>::map[abi:ne200100](v42, a2 + 56);
  if (a3 == 3)
  {
    goto LABEL_10;
  }

  if (a3 != 1)
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
    *v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    memset(v23, 0, sizeof(v23));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Encoding should be either QsrText or NotEncoded", 47);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v23);
  }

  v9 = quasar::QsrText::SingletonInstance(v8);
  if (quasar::QsrText::encodeTokenQsrTextWithMetadata(v9, a2, &__str))
  {
LABEL_10:
    v25[1] = 0;
    v26 = 0uLL;
    memset(v23, 0, sizeof(v23));
    v24 = 0u;
    LODWORD(v25[0]) = 0;
    std::string::operator=(v23, &__str);
    v10 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(this + 24, v23);
    v11 = (this + 32) != v10;
    if ((this + 32) != v10)
    {
      quasar::LmePackedWord::unpacked((v10 + 32), (this + 8), &v16);
      v12 = (a4 + 1);
      std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(a4, a4[1]);
      v13 = v21;
      *a4 = v20;
      a4[1] = v13;
      v14 = v22;
      a4[2] = v22;
      if (v14)
      {
        *(v13 + 16) = v12;
        v20 = &v21;
        v21 = 0;
        v22 = 0;
        v13 = 0;
      }

      else
      {
        *a4 = v12;
      }

      std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v20, v13);
      if (v19 < 0)
      {
        operator delete(__p);
      }

      if (v17 < 0)
      {
        operator delete(v16);
      }
    }

    if (v25[1])
    {
      *&v26 = v25[1];
      operator delete(v25[1]);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(*&v23[24]);
    }

    if ((v23[23] & 0x80000000) != 0)
    {
      operator delete(*v23);
    }
  }

  else
  {
    v11 = 0;
  }

  std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(v42, v42[1]);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_1B55C9A78()
{
  if (*(v0 - 81) < 0)
  {
    operator delete(*(v0 - 104));
  }

  if (*(v0 - 105) < 0)
  {
    operator delete(*(v0 - 128));
  }

  JUMPOUT(0x1B55C9A70);
}

void quasar::LmePackedWord::~LmePackedWord(quasar::LmePackedWord *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
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

void quasar::WordPronCache::fromStream(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  std::__tree<quasar::LmePackedWord,quasar::LmePackedWordOrthoComparator,std::allocator<quasar::LmePackedWord>>::destroy(a1 + 24, *(a1 + 32));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
  fst::SymbolTable::SymbolTable(&__p);
}

void sub_1B55CA73C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B55CA7BCLL);
}

void sub_1B55CA7C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B55CA7ACLL);
}

void quasar::WordPronCache::toStream(uint64_t a1, void *a2, int a3)
{
  if (a3 >= 18)
  {
    fst::SymbolTableImpl::Write(*(a1 + 16), a2);
  }

  kaldi::WriteBasicType<int>(a2, 1, *(a1 + 40));
  v6 = *(a1 + 24);
  if (v6 != (a1 + 32))
  {
    do
    {
      if (a3 < 18)
      {
        quasar::LmePackedWord::unpacked((v6 + 32), (a1 + 8), &v37);
        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v37;
        }

        kaldi::WriteToken(a2, 1, &__p);
        if (a3 < 16)
        {
          quasar::Bitmap::~Bitmap(v40);
          v18 = *v15;
          v16 = v15 + 1;
          v17 = v18;
          if (v18 == v16)
          {
            v19 = 0;
          }

          else
          {
            LODWORD(v19) = 0;
            do
            {
              if (*(v17 + 8) == 1)
              {
                v19 = (v19 + 1);
              }

              else
              {
                v19 = v19;
              }

              v20 = v17[1];
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
                  v21 = v17[2];
                  v14 = *v21 == v17;
                  v17 = v21;
                }

                while (!v14);
              }

              v17 = v21;
            }

            while (v21 != v16);
          }

          kaldi::WriteBasicType<int>(a2, 1, v19);
          quasar::Bitmap::~Bitmap(v40);
          v23 = (v22 + 1);
          v24 = *v22;
          if (*v22 != v22 + 1)
          {
            do
            {
              if (*(v24 + 8) == 1)
              {
                kaldi::WriteToken(a2, 1, v24 + 40);
              }

              v25 = *(v24 + 1);
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
                  v26 = *(v24 + 2);
                  v14 = *v26 == v24;
                  v24 = v26;
                }

                while (!v14);
              }

              v24 = v26;
            }

            while (v26 != v23);
          }
        }

        else
        {
          v7 = quasar::LmeDataFactoryBase::PronSet::size(v40);
          kaldi::WriteBasicType<int>(a2, 1, v7);
          quasar::Bitmap::~Bitmap(v40);
          v9 = v8 + 1;
          v10 = *v8;
          if (*v8 != v8 + 1)
          {
            do
            {
              v11 = quasar::PronTypeToString(*(v10 + 8));
              kaldi::WriteToken(a2, 1, v11);
              kaldi::WriteString(a2, 1, (v10 + 5));
              kaldi::WriteBasicType<float>(a2, 1);
              v12 = v10[1];
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
                  v13 = v10[2];
                  v14 = *v13 == v10;
                  v10 = v13;
                }

                while (!v14);
              }

              v10 = v13;
            }

            while (v13 != v9);
          }
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(v40, v40[1]);
        if (v39 < 0)
        {
          operator delete(v38);
        }

        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        kaldi::WriteToken(a2, 1, v6 + 32);
        quasar::LmePackedProns::write(v6 + 11, a2, a3);
      }

      v27 = *(v6 + 1);
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = *(v6 + 2);
          v14 = *v28 == v6;
          v6 = v28;
        }

        while (!v14);
      }

      v6 = v28;
    }

    while (v28 != (a1 + 32));
  }

  if (a3 > 15)
  {
    kaldi::WriteBasicType<int>(a2, 1, *(a1 + 64));
    v29 = *(a1 + 48);
    v30 = (a1 + 56);
    if (v29 != v30)
    {
      do
      {
        kaldi::WriteToken(a2, 1, v29 + 32);
        kaldi::WriteBasicType<int>(a2, 1, *(v29 + 18));
        v31 = *(v29 + 7);
        if (v31 != v29 + 64)
        {
          do
          {
            kaldi::WriteToken(a2, 1, v31 + 32);
            v32 = *(v31 + 1);
            if (v32)
            {
              do
              {
                v33 = v32;
                v32 = *v32;
              }

              while (v32);
            }

            else
            {
              do
              {
                v33 = *(v31 + 2);
                v14 = *v33 == v31;
                v31 = v33;
              }

              while (!v14);
            }

            v31 = v33;
          }

          while (v33 != v29 + 64);
        }

        v34 = *(v29 + 1);
        if (v34)
        {
          do
          {
            v35 = v34;
            v34 = *v34;
          }

          while (v34);
        }

        else
        {
          do
          {
            v35 = *(v29 + 2);
            v14 = *v35 == v29;
            v29 = v35;
          }

          while (!v14);
        }

        v29 = v35;
      }

      while (v35 != v30);
    }
  }
}

void quasar::WordPronCache::addTemplateForWord(quasar::QsrText *a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    if (*(a3 + 23) < 0)
    {
      v9 = *(a3 + 8);
      if (!v9)
      {
        return;
      }

      std::string::__init_copy_ctor_external(&v13, *a3, v9);
    }

    else
    {
      if (!*(a3 + 23))
      {
        return;
      }

      v13 = *a3;
    }

    if (a4 == 3)
    {
      goto LABEL_12;
    }

    if (a4 != 1)
    {
      memset(v12, 0, sizeof(v12));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Encoding should be either QsrText or NotEncoded", 47);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v12);
    }

    v10 = quasar::QsrText::SingletonInstance(a1);
    if (quasar::QsrText::encodeTokenQsrTextWithMetadata(v10, a3, &v13))
    {
LABEL_12:
      *&v12[0] = a2;
      v11 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 48, a2);
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(v11 + 56, &v13.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1B55CAD40(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_1B55CAE28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  quasar::WordPronCache::~WordPronCache(va);
  _Unwind_Resume(a1);
}

uint64_t quasar::WordPronCache::copyTemplateDeltaTo(quasar::WordPronCache *this, quasar::WordPronCache *a2, char a3)
{
  memset(v35, 0, sizeof(v35));
  v36 = 1065353216;
  v6 = *(a2 + 6);
  v7 = (a2 + 56);
  if (v6 != (a2 + 56))
  {
    do
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v35, v6 + 4);
      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v7);
  }

  v11 = *(this + 6);
  if (v11 != (this + 56))
  {
    while (1)
    {
      if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v35, v11 + 4))
      {
        v12 = *(v11 + 7);
        if (v12 != (v11 + 64))
        {
          break;
        }
      }

LABEL_43:
      v15 = *(v11 + 1);
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = *(v11 + 2);
          v10 = *v16 == v11;
          v11 = v16;
        }

        while (!v10);
      }

      v11 = v16;
      if (v16 == (this + 56))
      {
        return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v35);
      }
    }

    while (1)
    {
      quasar::LmeDataFactoryBase::PronSet::PronSet(v34);
      if (*(v12 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v28, v12[4], v12[5]);
      }

      else
      {
        v28 = *(v12 + 4);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "");
      quasar::LmeDataFactoryBase::Word::Word(v29, &v28, __p, 0);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (quasar::WordPronCache::lookupWord(this, v29, 3, v34))
      {
        if (*(v12 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v20, v12[4], v12[5]);
        }

        else
        {
          v20 = *(v12 + 4);
        }

        std::string::basic_string[abi:ne200100]<0>(v18, "");
        quasar::LmeDataFactoryBase::Word::Word(v21, &v20, v18, 1, v34);
        quasar::WordPronCache::addWord(a2, v21, 3);
        std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(v25, v25[1]);
        if (v24 < 0)
        {
          operator delete(v23);
        }

        if (v22 < 0)
        {
          operator delete(v21[0]);
        }

        if (v19 < 0)
        {
          operator delete(v18[0]);
        }

        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__r_.__value_.__l.__data_);
        }
      }

      else if (a3)
      {
        goto LABEL_33;
      }

      quasar::WordPronCache::addTemplateForWord(a2, v11 + 32, (v12 + 4), 3);
LABEL_33:
      std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(v33, v33[1]);
      if (v32 < 0)
      {
        operator delete(v31);
      }

      if (v30 < 0)
      {
        operator delete(v29[0]);
      }

      std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(v34, v34[1]);
      v13 = v12[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v10 = *v14 == v12;
          v12 = v14;
        }

        while (!v10);
      }

      v12 = v14;
      if (v14 == (v11 + 64))
      {
        goto LABEL_43;
      }
    }
  }

  return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v35);
}

uint64_t quasar::tokenMapToStream(void *a1, uint64_t a2)
{
  result = kaldi::WriteBasicType<int>(a1, 1, *(a2 + 16));
  v5 = *a2;
  if (*a2 != a2 + 8)
  {
    do
    {
      if (quasar::gLogLevel >= 6)
      {
        memset(v18, 0, sizeof(v18));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "tokenMapToStream dump, key=", 27);
        v7 = v5[55];
        if (v7 >= 0)
        {
          v8 = (v5 + 32);
        }

        else
        {
          v8 = *(v5 + 4);
        }

        if (v7 >= 0)
        {
          v9 = v5[55];
        }

        else
        {
          v9 = *(v5 + 5);
        }

        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " value=", 7);
        v12 = v5[79];
        if (v12 >= 0)
        {
          v13 = (v5 + 56);
        }

        else
        {
          v13 = *(v5 + 7);
        }

        if (v12 >= 0)
        {
          v14 = v5[79];
        }

        else
        {
          v14 = *(v5 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
        quasar::QuasarTraceMessage::~QuasarTraceMessage(v18);
      }

      kaldi::WriteToken(a1, 1, v5 + 32);
      result = kaldi::WriteToken(a1, 1, v5 + 56);
      v15 = *(v5 + 1);
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = *(v5 + 2);
          v17 = *v16 == v5;
          v5 = v16;
        }

        while (!v17);
      }

      v5 = v16;
    }

    while (v16 != (a2 + 8));
  }

  return result;
}

void quasar::EnumerationTypes::fromStream(uint64_t a1, uint64_t *a2)
{
  quasar::tokenMapFromStream(a2, &v6);
  v3 = a1 + 8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *(a1 + 8));
  v4 = v7;
  *a1 = v6;
  *(a1 + 8) = v4;
  v5 = v8;
  *(a1 + 16) = v8;
  if (v5)
  {
    v4[2] = v3;
    v6 = &v7;
    v7 = 0;
    v8 = 0;
    v4 = 0;
  }

  else
  {
    *a1 = v3;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v6, v4);
}

void quasar::tokenMapFromStream(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v37 = 0;
  kaldi::ReadBasicType<int>(a1, 1, &v37);
  if (quasar::gLogLevel >= 5)
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
    v22 = 0u;
    memset(v21, 0, sizeof(v21));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v21);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "LME STREAM DUMP ", 16);
    std::istream::tellg();
    v5 = MEMORY[0x1B8C84C60](v4, v38);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": nMapSize = ", 13);
    MEMORY[0x1B8C84C00](v6, v37);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v21);
  }

  if (v37 >= 1)
  {
    for (i = 0; i < v37; ++i)
    {
      v19 = 0uLL;
      v20 = 0;
      v17 = 0uLL;
      v18 = 0;
      kaldi::ReadToken(a1, 1, &v19);
      kaldi::ReadToken(a1, 1, &v17);
      if (quasar::gLogLevel >= 5)
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
        v22 = 0u;
        memset(v21, 0, sizeof(v21));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v21);
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "LME STREAM DUMP ", 16);
        std::istream::tellg();
        v9 = MEMORY[0x1B8C84C60](v8, v38);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ": key = ", 8);
        if (v20 >= 0)
        {
          v11 = &v19;
        }

        else
        {
          v11 = v19;
        }

        if (v20 >= 0)
        {
          v12 = HIBYTE(v20);
        }

        else
        {
          v12 = *(&v19 + 1);
        }

        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, v12);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " value = ", 9);
        if (v18 >= 0)
        {
          v15 = &v17;
        }

        else
        {
          v15 = v17;
        }

        if (v18 >= 0)
        {
          v16 = HIBYTE(v18);
        }

        else
        {
          v16 = *(&v17 + 1);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v21);
      }

      std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(v21, &v19, &v17);
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::string>>(a2, v21);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(*&v21[24]);
      }

      if ((v21[23] & 0x80000000) != 0)
      {
        operator delete(*v21);
      }

      if (SHIBYTE(v18) < 0)
      {
        operator delete(v17);
      }

      if (SHIBYTE(v20) < 0)
      {
        operator delete(v19);
      }
    }
  }
}

void sub_1B55CB6C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::locale a21)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a21);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v21, *(v21 + 8));
  _Unwind_Resume(a1);
}

BOOL quasar::EnumerationTypes::insert(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1, a2);
  if (a1 + 8 == v6)
  {
    std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(v12, a2, a3);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::string>>(a1, v12);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(v12[0]);
    }
  }

  else if (quasar::gLogLevel >= 4)
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
    *__p = 0u;
    v14 = 0u;
    *v12 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Duplicate key is being added to enumerationTypeMap with key=", 60);
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
    quasar::QuasarInfoMessage::~QuasarInfoMessage(v12);
  }

  return a1 + 8 == v6;
}

void quasar::LmeData::~LmeData(quasar::LmeData *this)
{
  *this = &unk_1F2D1F590;
  std::__tree<std::string>::destroy(this + 368, *(this + 47));
  std::__tree<std::string>::destroy(this + 344, *(this + 44));
  if (*(this + 343) < 0)
  {
    operator delete(*(this + 40));
  }

  if (*(this + 319) < 0)
  {
    operator delete(*(this + 37));
  }

  if (*(this + 295) < 0)
  {
    operator delete(*(this + 34));
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 240, *(this + 31));
  v2 = *(this + 29);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 200, *(this + 26));
  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  quasar::WordPronCache::~WordPronCache((this + 88));
  quasar::WordPronCache::~WordPronCache((this + 16));
}

{
  quasar::LmeData::~LmeData(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::LmeData::removeFstData(uint64_t **a1, const void **a2)
{
  std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__erase_unique<std::string>(a1 + 25, a2);
  std::__tree<std::string>::__erase_unique<std::string>(a1 + 43, a2);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__erase_unique<std::string>(a1 + 30, a2);
  std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__erase_unique<std::string>(a1 + 8, a2);

  return std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__erase_unique<std::string>(a1 + 17, a2);
}

uint64_t quasar::LmeData::toStream(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v87 = *MEMORY[0x1E69E9840];
  if ((a3 - 20) > 0xFFFFFFF8)
  {
    quasar::ioutils::WriteQuasarHeader(a2, 1, a3);
    if (v3 == 14)
    {
      *(&v55 + 1) = 0;
      *&v56 = 0;
      *&v55 = &v55 + 8;
      quasar::tokenMapToStream(a2, &v55);
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v55, *(&v55 + 1));
      LODWORD(v3) = 14;
    }
  }

  else
  {
    if (quasar::gLogLevel >= 2)
    {
      v60 = 0u;
      memset(v61, 0, 144);
      *__p = 0u;
      v59 = 0u;
      v56 = 0u;
      memset(v57, 0, sizeof(v57));
      v55 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v55);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "Invalid write version choice: ", 30);
      v7 = MEMORY[0x1B8C84C00](v6, v3);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", it is now set to: ", 20);
      MEMORY[0x1B8C84C00](v8, 19);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(&v55);
    }

    quasar::ioutils::WriteQuasarHeader(a2, 1, 19);
    LODWORD(v3) = 19;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v55);
  kaldi::WriteBasicType<int>(&v56, 1, *(a1 + 264));
  kaldi::WriteBasicType<long long>(&v56, 1, *(a1 + 160));
  kaldi::WriteBasicType<long long>(&v56, 1, *(a1 + 168));
  kaldi::WriteBasicType<unsigned int>(&v56, 1, *(a1 + 216));
  kaldi::WriteToken(&v56, 1, (a1 + 176));
  v54 = a1;
  if (v3 < 0xF)
  {
    goto LABEL_41;
  }

  kaldi::WriteString(&v56, 1, a1 + 272);
  kaldi::WriteString(&v56, 1, a1 + 296);
  kaldi::WriteString(&v56, 1, a1 + 320);
  kaldi::WriteBasicType<int>(&v56, 1, *(a1 + 360));
  v9 = *(a1 + 344);
  if (v9 != (v54 + 352))
  {
    do
    {
      if (quasar::gLogLevel >= 6)
      {
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
        v63 = 0u;
        memset(v62, 0, sizeof(v62));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "basicTypeMapToStream dump, key=", 31);
        v11 = v9[55];
        if (v11 >= 0)
        {
          v12 = (v9 + 32);
        }

        else
        {
          v12 = *(v9 + 4);
        }

        if (v11 >= 0)
        {
          v13 = v9[55];
        }

        else
        {
          v13 = *(v9 + 5);
        }

        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " value=", 7);
        MEMORY[0x1B8C84C60](v15, *(v9 + 7));
        quasar::QuasarTraceMessage::~QuasarTraceMessage(v62);
      }

      kaldi::WriteToken(&v56, 1, v9 + 32);
      kaldi::WriteBasicType<long long>(&v56, 1, *(v9 + 7));
      v16 = *(v9 + 1);
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = *(v9 + 2);
          v18 = *v17 == v9;
          v9 = v17;
        }

        while (!v18);
      }

      v9 = v17;
    }

    while (v17 != (v54 + 352));
  }

  if (v3 < 16)
  {
LABEL_41:
    if (*(v54 + 392) == 1)
    {
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
      v63 = 0u;
      memset(v62, 0, sizeof(v62));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Bug! writeVersion is too low for useWordpiece=true", 50);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v62);
    }
  }

  else
  {
    v19 = v54;
    kaldi::WriteBasicType<BOOL>(&v56, 1, *(v54 + 392));
    if (v3 == 16)
    {
      goto LABEL_44;
    }

    kaldi::WriteBasicType<int>(&v56, 1, *(v54 + 384));
    v20 = *(v54 + 368);
    if (v20 == (v54 + 376))
    {
      goto LABEL_44;
    }

    do
    {
      if (quasar::gLogLevel >= 6)
      {
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
        v63 = 0u;
        memset(v62, 0, sizeof(v62));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "stringSetToStream dump, str=", 28);
        v22 = *(v20 + 55);
        if (v22 >= 0)
        {
          v23 = (v20 + 4);
        }

        else
        {
          v23 = v20[4];
        }

        if (v22 >= 0)
        {
          v24 = *(v20 + 55);
        }

        else
        {
          v24 = v20[5];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
        quasar::QuasarTraceMessage::~QuasarTraceMessage(v62);
      }

      kaldi::WriteString(&v56, 1, (v20 + 4));
      v25 = v20[1];
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
          v26 = v20[2];
          v18 = *v26 == v20;
          v20 = v26;
        }

        while (!v18);
      }

      v20 = v26;
    }

    while (v26 != (v54 + 376));
  }

  v19 = v54;
  if (v3 <= 13)
  {
    quasar::WordPronCache::toStream(v54 + 16, &v56, 13);
  }

LABEL_44:
  quasar::tokenMapToStream(&v56, v19 + 240);
  v27 = v19;
  if (quasar::gLogLevel >= 5)
  {
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
    v63 = 0u;
    memset(v62, 0, sizeof(v62));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "LME STREAM WRITE ", 17);
    v29 = &v57[-1] + *(v56 - 24);
    if ((v29[32] & 5) != 0)
    {
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v86 = -1;
    }

    else
    {
      (*(**(v29 + 5) + 32))(&v78);
    }

    v30 = MEMORY[0x1B8C84C60](v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ": About to write FSTs", 21);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v62);
  }

  v31 = *(v27 + 200);
  if (v31 != (v27 + 208))
  {
    do
    {
      kaldi::WriteToken(&v56, 1, v31 + 32);
      if (quasar::gLogLevel >= 6)
      {
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
        v63 = 0u;
        memset(v62, 0, sizeof(v62));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
        v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "LME STREAM WRITE ", 17);
        v33 = &v57[-1] + *(v56 - 24);
        if ((v33[32] & 5) != 0)
        {
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v86 = -1;
        }

        else
        {
          (*(**(v33 + 5) + 32))(&v78);
        }

        v34 = MEMORY[0x1B8C84C60](v32);
        v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ": templateName = ", 17);
        v36 = v31[55];
        if (v36 >= 0)
        {
          v37 = (v31 + 32);
        }

        else
        {
          v37 = *(v31 + 4);
        }

        if (v36 >= 0)
        {
          v38 = v31[55];
        }

        else
        {
          v38 = *(v31 + 5);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v37, v38);
        quasar::QuasarTraceMessage::~QuasarTraceMessage(v62);
      }

      v39 = *(v31 + 7);
      std::string::basic_string[abi:ne200100]<0>(&v78, "");
      v40 = FLAGS_fst_align;
      if (SBYTE7(v79) < 0)
      {
        std::string::__init_copy_ctor_external(v62, v78, *(&v78 + 1));
      }

      else
      {
        *v62 = v78;
        *&v62[16] = v79;
      }

      *&v62[24] = 1;
      v62[26] = 0;
      v62[27] = v40;
      (*(*v39 + 96))(v39, &v56, v62);
      if ((v62[23] & 0x80000000) != 0)
      {
        operator delete(*v62);
      }

      if (SBYTE7(v79) < 0)
      {
        operator delete(v78);
      }

      if (quasar::gLogLevel >= 6)
      {
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
        v63 = 0u;
        memset(v62, 0, sizeof(v62));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
        v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "LME STREAM WRITE ", 17);
        v42 = &v57[-1] + *(v56 - 24);
        if ((v42[32] & 5) != 0)
        {
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v86 = -1;
        }

        else
        {
          (*(**(v42 + 5) + 32))(&v78);
        }

        v43 = MEMORY[0x1B8C84C60](v41);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, ": <FST>", 7);
        quasar::QuasarTraceMessage::~QuasarTraceMessage(v62);
      }

      v44 = *(v31 + 1);
      if (v44)
      {
        do
        {
          v45 = v44;
          v44 = *v44;
        }

        while (v44);
      }

      else
      {
        do
        {
          v45 = *(v31 + 2);
          v18 = *v45 == v31;
          v31 = v45;
        }

        while (!v18);
      }

      v31 = v45;
    }

    while (v45 != (v27 + 208));
  }

  quasar::QsrTextSymbolTable::Write(*(v54 + 224), &v56, 3, 1);
  if (v3 < 19)
  {
    v46 = v54;
    if (v3 < 14)
    {
      goto LABEL_83;
    }
  }

  else
  {
    v46 = v54;
    quasar::WordPronCache::toStream(v54 + 88, &v56, v3);
  }

  quasar::WordPronCache::toStream(v46 + 16, &v56, v3);
LABEL_83:
  if (quasar::gLogLevel >= 5)
  {
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
    v63 = 0u;
    memset(v62, 0, sizeof(v62));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "LME STREAM WRITE ", 17);
    v48 = &v57[-1] + *(v56 - 24);
    if ((v48[32] & 5) != 0)
    {
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v86 = -1;
    }

    else
    {
      (*(**(v48 + 5) + 32))(&v78);
    }

    v49 = MEMORY[0x1B8C84C60](v47);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, ": done.", 7);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v62);
  }

  std::stringbuf::str();
  if (v62[23] >= 0)
  {
    v50 = v62;
  }

  else
  {
    v50 = *v62;
  }

  if (v62[23] >= 0)
  {
    v51 = v62[23];
  }

  else
  {
    v51 = *&v62[8];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v50, v51);
  if ((v62[23] & 0x80000000) != 0)
  {
    operator delete(*v62);
  }

  *&v55 = *MEMORY[0x1E69E54D8];
  v52 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v55 + *(v55 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v56 = v52;
  *(&v56 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v56 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v57);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](v61);
}