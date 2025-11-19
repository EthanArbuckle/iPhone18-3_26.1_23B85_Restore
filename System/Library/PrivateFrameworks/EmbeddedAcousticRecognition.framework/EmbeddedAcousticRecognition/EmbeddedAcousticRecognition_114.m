uint64_t *std::unique_ptr<kaldi::quasar::LogisticRegressionModel>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 80);
    if (v3)
    {
      *(v2 + 88) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 56);
    if (v4)
    {
      *(v2 + 64) = v4;
      operator delete(v4);
    }

    v6 = (v2 + 32);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
    v5 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v5;
      operator delete(v5);
    }

    return MEMORY[0x1B8C85350](v2, 0x10A0C40763862BBLL);
  }

  return result;
}

uint64_t *std::unique_ptr<kaldi::quasar::ConfidenceFeatureExtractor<std::string>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 56);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v2 + 8);
    return MEMORY[0x1B8C85350](v2, 0x10A0C40C6F6957FLL);
  }

  return result;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B58969B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<std::vector<std::string>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D36518;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<std::vector<kaldi::Matrix<float>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D36568;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::vector<kaldi::Matrix<float>>::__assign_with_size[abi:ne200100]<kaldi::Matrix<float>*,kaldi::Matrix<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(result + 16) - *result) >> 3) < a4)
  {
    std::vector<kaldi::Matrix<float>>::__vdeallocate(result);
    if (a4 <= 0x666666666666666)
    {
      v9 = 0x999999999999999ALL * ((v7[2] - *v7) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((v7[2] - *v7) >> 3) >= 0x333333333333333)
      {
        v10 = 0x666666666666666;
      }

      else
      {
        v10 = v9;
      }

      std::vector<kaldi::Matrix<float>>::__vallocate[abi:ne200100](v7, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(result + 8);
  v12 = v11 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = kaldi::Matrix<float>::operator=(v8, v6);
        v6 += 40;
        v8 += 10;
      }

      while (v6 != a3);
      v11 = v7[1];
    }

    while (v11 != v8)
    {
      v11 -= 40;
      result = kaldi::Matrix<float>::~Matrix(v11);
    }

    v7[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        kaldi::Matrix<float>::operator=(v8, v14);
        v14 += 40;
        v8 += 10;
        v13 -= 40;
      }

      while (v13);
      v11 = v7[1];
    }

    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::Matrix<float>>,kaldi::Matrix<float>*,kaldi::Matrix<float>*,kaldi::Matrix<float>*>(v7, v6 + v12, a3, v11);
    v7[1] = result;
  }

  return result;
}

void std::vector<kaldi::Matrix<float>>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = kaldi::Matrix<float>::~Matrix(v3 - 40);
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

void std::vector<kaldi::Matrix<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::Matrix<float>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::Matrix<float>>,kaldi::Matrix<float>*,kaldi::Matrix<float>*,kaldi::Matrix<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      kaldi::Matrix<float>::Matrix(a4, v6);
      v6 += 40;
      a4 += 40;
      v7 -= 40;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1B5896DC0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 40;
    do
    {
      v4 = kaldi::Matrix<float>::~Matrix(v4) - 40;
      v2 += 40;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<std::vector<std::vector<float>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D365B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::vector<std::vector<unsigned long>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<int>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void quasar::corrective_reranking::Parser::RunArgs::RunArgs(quasar::corrective_reranking::Parser::RunArgs *this, const quasar::PTree *a2)
{
  *(this + 3) = 0u;
  *(this + 15) = 0x101010101010101;
  *(this + 14) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 64) = 257;
  *(this + 33) = 0;
  *(this + 68) = 1;
  *(this + 35) = 10;
  *(this + 72) = 0;
  *(this + 146) = 1;
  std::string::basic_string[abi:ne200100]<0>(__p, "displayed_text");
  quasar::PTree::getChild(a2, __p);
}

void sub_1B589760C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  v25 = *(v22 + 96);
  if (v25)
  {
    *(v22 + 104) = v25;
    operator delete(v25);
  }

  v26 = *(v22 + 72);
  if (v26)
  {
    *(v22 + 80) = v26;
    operator delete(v26);
  }

  v27 = *v23;
  if (*v23)
  {
    *(v22 + 56) = v27;
    operator delete(v27);
  }

  __p = a9;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::Parser::Output::toPtree(quasar::corrective_reranking::Parser::Output *this@<X0>, quasar::PTree *a2@<X8>)
{
  quasar::PTree::PTree(a2);
  if (*(this + 4) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "disambiguation_ui_result");
    if ((*(this + 4) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v4 = *this;
    Type = quasar::getType(*this);
    std::to_string(&v17, v4);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 1;
    quasar::PTree::putChild(a2, &__p, &Type, 1);
    quasar::PTree::~PTree(&Type);
    if (v11.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(__p);
    }
  }

  quasar::PTree::PTree(&Type);
  if (*(this + 1) != *(this + 2))
  {
    quasar::corrective_reranking::Parse::toPtree(&__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "parses");
  quasar::PTree::putChild(a2, &__p, &Type, 1);
  if (v11.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(__p);
  }

  if (*(this + 33) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "intent_gating_passed");
    if ((*(this + 33) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v5 = *(this + 32);
    LODWORD(__p) = quasar::getType(*(this + 32));
    std::to_string(&v11, v5);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 1;
    quasar::PTree::putChild(a2, v8, &__p, 1);
    quasar::PTree::~PTree(&__p);
    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }

  if (*(this + 40) == 1)
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(v8, "edit_intent_score");
    if ((*(this + 40) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v7 = *(this + 9);
    LODWORD(__p) = quasar::getType(v6, v7);
    std::to_string(&v11, v7);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 1;
    quasar::PTree::putChild(a2, v8, &__p, 1);
    quasar::PTree::~PTree(&__p);
    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }

  quasar::PTree::~PTree(&Type);
}

void sub_1B58979B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  quasar::PTree::~PTree(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  quasar::PTree::~PTree(&a27);
  quasar::PTree::~PTree(v27);
  _Unwind_Resume(a1);
}

void sub_1B5897B20(_Unwind_Exception *a1)
{
  quasar::corrective_reranking::Models::~Models((v1 + 88));
  quasar::corrective_reranking::Config::~Config(v1);
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::Parser::run(quasar::corrective_reranking::Parser *this@<X0>, const quasar::corrective_reranking::Parser::RunArgs *a2@<X1>, uint64_t a3@<X8>)
{
  v83 = *MEMORY[0x1E69E9840];
  v81[0] = &unk_1F2D36608;
  v81[1] = this;
  v81[2] = a2;
  v81[3] = v81;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v82, v81);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v81);
  memset(&v63, 0, sizeof(v63));
  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  v6 = (a3 + 8);
  *(a3 + 36) = 0;
  *(a3 + 40) = 0;
  *(a3 + 44) = 0;
  v48 = (a3 + 44);
  *(a3 + 48) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  if (*(a2 + 145) == 1)
  {
    if (quasar::gLogLevel >= 5)
    {
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
      memset(v66, 0, sizeof(v66));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v66);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "== DISPLAYED TEXT: ", 19);
      quasar::utf::toString();
    }

    memset(&__p, 0, sizeof(__p));
    if (*(a2 + 3) != *(a2 + 4))
    {
      quasar::utf::toString();
    }

    v6 = (a3 + 8);
    if (quasar::gLogLevel > 4)
    {
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
      memset(v66, 0, sizeof(v66));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v66);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "== UTTERANCES: ", 15);
      quasar::joinToList<std::vector<std::string>>(&__p, 0);
      if (v59 >= 0)
      {
        v8 = v58;
      }

      else
      {
        v8 = v58[0];
      }

      if (v59 >= 0)
      {
        v9 = HIBYTE(v59);
      }

      else
      {
        v9 = v58[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
      if (SHIBYTE(v59) < 0)
      {
        operator delete(v58[0]);
      }

      quasar::QuasarDebugMessage::~QuasarDebugMessage(v66);
    }

    v66[0].__r_.__value_.__r.__words[0] = &__p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v66);
  }

  if (*(a2 + 137) != 1 || (v10 = quasar::corrective_reranking::TargetIndexFilter::filterAsrCandidatesForTargetIndex(*(this + 94), a2 + 3), (v11 & 1) == 0))
  {
    quasar::corrective_reranking::Models::generateWFSTParses(this + 704, 1, a2 + 3, v62);
    *v48 = quasar::corrective_reranking::containsParseWithCompleteCommand(v62);
    v14 = *(a2 + 145);
    if (v14 == 1 && quasar::gLogLevel >= 5)
    {
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
      memset(v66, 0, sizeof(v66));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v66);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "hasVoiceCommandInExhaustiveParses: ", 35);
      MEMORY[0x1B8C84BD0](v15, *v48);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v66);
      LOBYTE(v14) = *(a2 + 145);
    }

    quasar::corrective_reranking::Models::generateParses(this + 704, 0, a2 + 3, a2, a2 + 6, *(a2 + 123), v14 & 1, &v66[0].__r_.__value_.__l.__data_);
    std::vector<quasar::corrective_reranking::Parse>::__vdeallocate(&v63.__r_.__value_.__l.__data_);
    v63 = v66[0];
    memset(v66, 0, 24);
    __p.__r_.__value_.__r.__words[0] = v66;
    std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (*(a2 + 145) == 1 && quasar::gLogLevel >= 5)
    {
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
      memset(v66, 0, sizeof(v66));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v66);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "== WFST PARSES ==", 17);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " ", 1);
      MEMORY[0x1B8C84C30](v17, 0xAAAAAAAAAAAAAAABLL * ((v63.__r_.__value_.__l.__size_ - v63.__r_.__value_.__r.__words[0]) >> 7));
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v66);
      if (quasar::gLogLevel >= 5)
      {
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
        memset(v66, 0, sizeof(v66));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v66);
        __p.__r_.__value_.__r.__words[0] = &v63;
        LOBYTE(__p.__r_.__value_.__r.__words[1]) = 0;
        __p.__r_.__value_.__r.__words[2] = a2;
        quasar::corrective_reranking::operator<<(v66, &__p);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v66);
      }
    }

    if (*(a2 + 122) == 1)
    {
      quasar::corrective_reranking::CorrectiveReranker::applyOverridePhrases(&v63, v66);
      std::vector<quasar::corrective_reranking::Parse>::__vdeallocate(&v63.__r_.__value_.__l.__data_);
      v63 = v66[0];
      memset(v66, 0, 24);
      __p.__r_.__value_.__r.__words[0] = v66;
      std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&__p);
      if (*(a2 + 145) == 1 && quasar::gLogLevel >= 5)
      {
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
        memset(v66, 0, sizeof(v66));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v66);
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "[Apply Override Phrases]\n", 25);
        __p.__r_.__value_.__r.__words[0] = &v63;
        LOBYTE(__p.__r_.__value_.__r.__words[1]) = 0;
        __p.__r_.__value_.__r.__words[2] = a2;
        quasar::corrective_reranking::operator<<(v18, &__p);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v66);
      }
    }

    size = v63.__r_.__value_.__l.__size_;
    v20 = v63.__r_.__value_.__r.__words[0];
    if (v63.__r_.__value_.__r.__words[0] == v63.__r_.__value_.__l.__size_)
    {
      v24 = *(a2 + 3);
      if (v24 != *(a2 + 4))
      {
        memset(v61, 0, sizeof(v61));
        LOBYTE(v58[0]) = 0;
        v60 = 0;
        memset(v57, 0, sizeof(v57));
        v56 = 0;
        LODWORD(v55) = 0;
        memset(v54, 0, sizeof(v54));
        memset(v53, 0, sizeof(v53));
        memset(v52, 0, sizeof(v52));
        LOBYTE(v50) = 0;
        v51 = 0;
        LOBYTE(__p.__r_.__value_.__l.__data_) = 0;
        v65 = 0;
        quasar::corrective_reranking::Parse::Parse(v66, v24, v61, v58, v57, &v55, v54, 1, v53, v52, 0, &v50, &__p, 0, 0, 0, 0, 0, 0);
      }
    }

    else
    {
      if (*(a2 + 120) == 1)
      {
        do
        {
          quasar::corrective_reranking::Parse::getIntent(v20, v66);
          if (SHIBYTE(v66[0].__r_.__value_.__r.__words[2]) < 0)
          {
            if (v66[0].__r_.__value_.__l.__size_ != 7)
            {
              operator delete(v66[0].__r_.__value_.__l.__data_);
              goto LABEL_62;
            }

            v23 = *v66[0].__r_.__value_.__l.__data_ != 1952672100 || *(v66[0].__r_.__value_.__r.__words[0] + 3) != 1702125940;
            operator delete(v66[0].__r_.__value_.__l.__data_);
            if (v23)
            {
              goto LABEL_62;
            }
          }

          else
          {
            if (SHIBYTE(v66[0].__r_.__value_.__r.__words[2]) != 7)
            {
              goto LABEL_62;
            }

            v21 = v66[0].__r_.__value_.__s.__data_[0] == 1952672100 && *(v66[0].__r_.__value_.__s.__data_ + 3) == 1702125940;
            if (!v21)
            {
              goto LABEL_62;
            }
          }

          v20 = (v20 + 384);
        }

        while (v20 != size);
        if (*(a2 + 145) == 1 && quasar::gLogLevel >= 5)
        {
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
          memset(v66, 0, sizeof(v66));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v66);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "Early Exit due to no edit parses", 32);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(v66);
        }

        if (v63.__r_.__value_.__r.__words[0] != v63.__r_.__value_.__l.__size_)
        {
          quasar::corrective_reranking::Parse::Parse(v66, v63.__r_.__value_.__l.__data_);
          std::vector<quasar::corrective_reranking::Parse>::__assign_with_size[abi:ne200100]<quasar::corrective_reranking::Parse const*,quasar::corrective_reranking::Parse const*>(v6, v66, v81, 1uLL);
          goto LABEL_59;
        }

        goto LABEL_60;
      }

LABEL_62:
      *(a3 + 45) = quasar::corrective_reranking::containsParseWithCompleteCommand(&v63);
      if (*(a2 + 145) == 1 && quasar::gLogLevel >= 5)
      {
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
        memset(v66, 0, sizeof(v66));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v66);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "hasVoiceCommandParses: ", 23);
        MEMORY[0x1B8C84BD0](v26, *(a3 + 45));
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v66);
      }

      if (*(a2 + 121) != 1)
      {
LABEL_90:
        *(a3 + 46) = 1;
        if (*(a2 + 145) == 1 && quasar::gLogLevel >= 5)
        {
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
          memset(v66, 0, sizeof(v66));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v66);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "== PASS 2: Corrective Re-Ranking ==", 35);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(v66);
        }

        quasar::corrective_reranking::CorrectiveReranker::performCorrectiveReranking(*(this + 92), &v63, a2, v66);
        std::vector<quasar::corrective_reranking::Parse>::__vdeallocate(&v63.__r_.__value_.__l.__data_);
        v63 = v66[0];
        memset(v66, 0, 24);
        __p.__r_.__value_.__r.__words[0] = v66;
        std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&__p);
        if (*(a2 + 145) == 1 && v63.__r_.__value_.__r.__words[0] != v63.__r_.__value_.__l.__size_ && quasar::gLogLevel >= 5)
        {
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
          memset(v66, 0, sizeof(v66));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v66);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "== TOP PARSE ==", 15);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(v66);
          if (quasar::gLogLevel >= 5)
          {
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
            memset(v66, 0, sizeof(v66));
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v66);
            quasar::corrective_reranking::operator<<(v66, v63.__r_.__value_.__l.__data_);
          }
        }

        if (v63.__r_.__value_.__r.__words[0] == v63.__r_.__value_.__l.__size_)
        {
          *(a3 + 47) = 0;
        }

        else
        {
          quasar::corrective_reranking::Parse::getIntent(v63.__r_.__value_.__l.__data_, v66);
          v37 = SHIBYTE(v66[0].__r_.__value_.__r.__words[2]);
          if (SHIBYTE(v66[0].__r_.__value_.__r.__words[2]) < 0)
          {
            if (v66[0].__r_.__value_.__l.__size_ != 7)
            {
              *(a3 + 47) = 1;
LABEL_143:
              operator delete(v66[0].__r_.__value_.__l.__data_);
              goto LABEL_144;
            }

            v38 = v66[0].__r_.__value_.__r.__words[0];
LABEL_107:
            v39 = v38->__r_.__value_.__s.__data_[0];
            v40 = *(v38->__r_.__value_.__s.__data_ + 3);
            v42 = v39 != 1952672100 || v40 != 1702125940;
            *(a3 + 47) = v42;
            if ((v37 & 0x80000000) == 0)
            {
              goto LABEL_144;
            }

            goto LABEL_143;
          }

          if (SHIBYTE(v66[0].__r_.__value_.__r.__words[2]) == 7)
          {
            v38 = v66;
            goto LABEL_107;
          }

          *(a3 + 47) = 1;
        }

LABEL_144:
        if (v6 != &v63)
        {
          std::vector<quasar::corrective_reranking::Parse>::__assign_with_size[abi:ne200100]<quasar::corrective_reranking::Parse*,quasar::corrective_reranking::Parse*>(v6, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v63.__r_.__value_.__l.__size_ - v63.__r_.__value_.__r.__words[0]) >> 7));
        }

        v25 = 257;
        goto LABEL_147;
      }

      if (v63.__r_.__value_.__r.__words[0] != v63.__r_.__value_.__l.__size_)
      {
        v27 = v63.__r_.__value_.__r.__words[0] + 384;
        while ((*(v27 - 8) & 1) == 0)
        {
          v28 = *(v27 - 7);
          if ((v28 & 1) == 0)
          {
            v21 = v27 == v63.__r_.__value_.__l.__size_;
            v27 += 384;
            if (!v21)
            {
              continue;
            }
          }

          if (!v28)
          {
            goto LABEL_78;
          }

          break;
        }

        if (*(a2 + 145) == 1 && quasar::gLogLevel >= 5)
        {
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
          memset(v66, 0, sizeof(v66));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v66);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "Skip Pass 1 due to intended target or payload", 45);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(v66);
        }

        goto LABEL_90;
      }

LABEL_78:
      v30 = *(this + 93);
      memset(v49, 0, sizeof(v49));
      std::vector<quasar::corrective_reranking::Parse>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::Parse*,quasar::corrective_reranking::Parse*>(v49, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v63.__r_.__value_.__l.__size_ - v63.__r_.__value_.__r.__words[0]) >> 7));
      v31 = quasar::corrective_reranking::FusedIntentClassifier::classifyIntent(v30, v49, a2, a2 + 72, a2 + 96);
      v66[0].__r_.__value_.__r.__words[0] = v49;
      std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](v66);
      *(a3 + 36) = v31;
      *(a3 + 40) = 1;
      v32 = *(this + 66);
      if (*(a2 + 145) == 1 && quasar::gLogLevel >= 5)
      {
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
        memset(v66, 0, sizeof(v66));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v66);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "== PASS 1: Edit Intent Score ==", 31);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v66);
        if (quasar::gLogLevel >= 5)
        {
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
          memset(v66, 0, sizeof(v66));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v66);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "Edit score = ", 13);
          std::ostream::operator<<();
          quasar::QuasarDebugMessage::~QuasarDebugMessage(v66);
          if (quasar::gLogLevel >= 5)
          {
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
            memset(v66, 0, sizeof(v66));
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v66);
            v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "Intent = ", 9);
            if (v31 < v32)
            {
              v34 = "Dictate";
            }

            else
            {
              v34 = "Edit";
            }

            if (v31 < v32)
            {
              v35 = 7;
            }

            else
            {
              v35 = 4;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v34, v35);
            quasar::QuasarDebugMessage::~QuasarDebugMessage(v66);
          }
        }
      }

      if (v31 >= v32)
      {
        goto LABEL_90;
      }

      if (*(a2 + 145) == 1 && quasar::gLogLevel >= 5)
      {
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
        memset(v66, 0, sizeof(v66));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v66);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "Early Exit in Pass 1", 20);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v66);
      }

      if (v63.__r_.__value_.__r.__words[0] != v63.__r_.__value_.__l.__size_)
      {
        quasar::corrective_reranking::Parse::Parse(v66, v63.__r_.__value_.__l.__data_);
        v43 = v63.__r_.__value_.__l.__size_;
        v44 = v63.__r_.__value_.__r.__words[0];
        if (0xAAAAAAAAAAAAAAABLL * ((v63.__r_.__value_.__l.__size_ - v63.__r_.__value_.__r.__words[0]) >> 7) >= 2 && v63.__r_.__value_.__r.__words[0] != v63.__r_.__value_.__l.__size_)
        {
          do
          {
            quasar::corrective_reranking::Parse::getIntent(v44, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              if (__p.__r_.__value_.__l.__size_ == 7)
              {
                v47 = *__p.__r_.__value_.__l.__data_ != 1952672100 || *(__p.__r_.__value_.__r.__words[0] + 3) != 1702125940;
                operator delete(__p.__r_.__value_.__l.__data_);
                if (!v47)
                {
LABEL_149:
                  quasar::corrective_reranking::Parse::operator=(v66, v44);
                  break;
                }
              }

              else
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 7 && __p.__r_.__value_.__s.__data_[0] == 1952672100 && *(__p.__r_.__value_.__s.__data_ + 3) == 1702125940)
            {
              goto LABEL_149;
            }

            v44 = (v44 + 384);
          }

          while (v44 != v43);
        }

        quasar::corrective_reranking::Parse::Parse(&__p, v66);
        std::vector<quasar::corrective_reranking::Parse>::__assign_with_size[abi:ne200100]<quasar::corrective_reranking::Parse const*,quasar::corrective_reranking::Parse const*>(v6, &__p, v66, 1uLL);
        quasar::corrective_reranking::Parse::~Parse(&__p.__r_.__value_.__l.__data_);
LABEL_59:
        quasar::corrective_reranking::Parse::~Parse(&v66[0].__r_.__value_.__l.__data_);
      }
    }

LABEL_60:
    v25 = 256;
LABEL_147:
    *(a3 + 32) = v25;
    v66[0].__r_.__value_.__r.__words[0] = v62;
    std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](v66);
    goto LABEL_148;
  }

  v12 = v10;
  if (*(a2 + 145) == 1 && quasar::gLogLevel > 4)
  {
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
    memset(v66, 0, sizeof(v66));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v66);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "Early exit due to Disambiguation UI with option: ", 49);
    MEMORY[0x1B8C84C00](v13, v12);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v66);
  }

  *a3 = v12;
  *(a3 + 4) = 1;
LABEL_148:
  v66[0].__r_.__value_.__r.__words[0] = &v63;
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](v66);
  quasar::ScopeGuard::~ScopeGuard(v82);
}

void sub_1B5898C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57)
{
  quasar::corrective_reranking::Parse::~Parse(&STACK[0x300]);
  STACK[0x300] = &a50;
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&STACK[0x300]);
  a57 = v57;
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&a57);
  a57 = &a53;
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&a57);
  quasar::ScopeGuard::~ScopeGuard((v58 - 144));
  _Unwind_Resume(a1);
}

uint64_t quasar::corrective_reranking::containsParseWithCompleteCommand(quasar::corrective_reranking::Parse **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  while (1)
  {
    quasar::corrective_reranking::Parse::getIntent(v1, __p);
    if ((v8 & 0x80000000) == 0)
    {
      break;
    }

    if (__p[1] != 7)
    {
      goto LABEL_15;
    }

    if (*__p[0] != 1952672100 || *(__p[0] + 3) != 1702125940)
    {
      goto LABEL_15;
    }

    operator delete(__p[0]);
LABEL_18:
    v1 = (v1 + 384);
    if (v1 == v2)
    {
      return 0;
    }
  }

  if (v8 == 7 && LODWORD(__p[0]) == 1952672100 && *(__p + 3) == 1702125940)
  {
    goto LABEL_18;
  }

LABEL_15:
  isIncomplete = quasar::corrective_reranking::Parse::isIncomplete(v1);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (isIncomplete)
  {
    goto LABEL_18;
  }

  return 1;
}

void sub_1B5899004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::corrective_reranking::Parser::runJson(uint64_t a1, const std::string *a2)
{
  std::istringstream::basic_istringstream[abi:ne200100](v3, a2, 8);
  quasar::PTree::PTree(v2);
  quasar::PTree::readJson();
}

uint64_t sub_1B58990A0()
{
  quasar::PTree::~PTree(&v1);
  std::stringbuf::str();
  v2 = *MEMORY[0x1E69E54E8];
  *(&v2 + *(v2 - 3)) = *(MEMORY[0x1E69E54E8] + 24);
  v3 = MEMORY[0x1E69E5548] + 16;
  if (v5 < 0)
  {
    operator delete(v4[7].__locale_);
  }

  v3 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v4);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&v6);
  v2 = v7;
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  v2 = &v9;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (v8 < 0)
  {
    operator delete(v7[6]);
  }

  quasar::PTree::~PTree(&v16);
  v17[0] = *MEMORY[0x1E69E54E0];
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x1E69E54E0] + 24);
  v18 = MEMORY[0x1E69E5548] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v19);
  std::istream::~istream();
  return MEMORY[0x1B8C85200](&v21);
}

void sub_1B5899328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  std::ostringstream::~ostringstream(&a18, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](&a32);
  a18 = &a52;
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&a18);
  quasar::corrective_reranking::Parser::RunArgs::~RunArgs(&a58);
  quasar::PTree::~PTree(&STACK[0x220]);
  std::istringstream::~istringstream(&STACK[0x260], MEMORY[0x1E69E54E0]);
  MEMORY[0x1B8C85200](&STACK[0x2D8]);
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::intentToCommandIdentifier(void *a1@<X0>, std::string *a2@<X8>)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v2 = *(a1 + 23);
    if (v2 > 0xA)
    {
      if (v2 != 11)
      {
        if (v2 != 12)
        {
          if (v2 != 13 || (*a1 == 0x6562747265736E69 ? (v3 = *(a1 + 5) == 0x6E65657774656274) : (v3 = 0), !v3))
          {
LABEL_63:
            *&a2->__r_.__value_.__l.__data_ = *a1;
            a2->__r_.__value_.__r.__words[2] = a1[2];
            return;
          }

          goto LABEL_46;
        }

        if (*a1 != 0x6562747265736E69 || *(a1 + 2) != 1701998438)
        {
          goto LABEL_63;
        }

LABEL_58:
        v12 = "insertBefore";
        goto LABEL_65;
      }

      if (*a1 != 0x6661747265736E69 || *(a1 + 3) != 0x7265746661747265)
      {
        goto LABEL_63;
      }

LABEL_52:
      v12 = "insertAfter";
      goto LABEL_65;
    }

    if (v2 != 9)
    {
      if (v2 != 10)
      {
        goto LABEL_63;
      }

      if (*a1 != 0x696C617469706163 || *(a1 + 4) != 25978)
      {
        goto LABEL_63;
      }

      goto LABEL_45;
    }

    if (*a1 != 0x7361637265707075 || *(a1 + 8) != 101)
    {
      goto LABEL_63;
    }

LABEL_64:
    v12 = "allCaps";
    goto LABEL_65;
  }

  if (a1[1] == 13 && **a1 == 0x6562747265736E69 && *(*a1 + 5) == 0x6E65657774656274)
  {
LABEL_46:
    v12 = "insertBetween";
    goto LABEL_65;
  }

  if (a1[1] == 11 && **a1 == 0x6661747265736E69 && *(*a1 + 3) == 0x7265746661747265)
  {
    goto LABEL_52;
  }

  if (a1[1] == 12 && **a1 == 0x6562747265736E69 && *(*a1 + 8) == 1701998438)
  {
    goto LABEL_58;
  }

  if (a1[1] != 10 || (**a1 == 0x696C617469706163 ? (v7 = *(*a1 + 8) == 25978) : (v7 = 0), !v7))
  {
    v8 = *a1;
    v9 = a1[1];
    if (v9 != 9 || (*v8 == 0x7361637265707075 ? (v10 = *(v8 + 8) == 101) : (v10 = 0), !v10))
    {
      std::string::__init_copy_ctor_external(a2, v8, v9);
      return;
    }

    goto LABEL_64;
  }

LABEL_45:
  v12 = "uppercase";
LABEL_65:
  std::string::basic_string[abi:ne200100]<0>(a2, v12);
}

void sub_1B58996F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5899810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B589988C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::corrective_reranking::ASRCandidate>::__emplace_back_slow_path<quasar::PTree const&>(uint64_t a1, const quasar::PTree *a2)
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

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TextTokenizer::Token>>(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  quasar::corrective_reranking::ASRCandidate::ASRCandidate((32 * v2), a2);
  v16 = (32 * v2 + 32);
  v8 = *(a1 + 8);
  v9 = 32 * v2 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::corrective_reranking::ASRCandidate>,quasar::corrective_reranking::ASRCandidate*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(&v14);
  return v13;
}

void sub_1B58999A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::corrective_reranking::ASRCandidate>,quasar::corrective_reranking::ASRCandidate*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
      *(a4 + 24) = *(v6 + 6);
      v6 += 2;
      a4 += 32;
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

      v5 += 2;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::corrective_reranking::ASRCandidate>,quasar::corrective_reranking::ASRCandidate*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

__n128 std::__function::__func<quasar::corrective_reranking::Parser::run(quasar::corrective_reranking::Parser::RunArgs const&)::$_0,std::allocator<quasar::corrective_reranking::Parser::run(quasar::corrective_reranking::Parser::RunArgs const&)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D36608;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<quasar::corrective_reranking::Parser::run(quasar::corrective_reranking::Parser::RunArgs const&)::$_0,std::allocator<quasar::corrective_reranking::Parser::run(quasar::corrective_reranking::Parser::RunArgs const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  quasar::corrective_reranking::Models::clearShortTermCache((v2 + 704));
  if (*(*(a1 + 16) + 146) == 1)
  {

    quasar::corrective_reranking::Models::clearLongTermCache((v2 + 704));
  }
}

uint64_t std::__function::__func<quasar::corrective_reranking::Parser::run(quasar::corrective_reranking::Parser::RunArgs const&)::$_0,std::allocator<quasar::corrective_reranking::Parser::run(quasar::corrective_reranking::Parser::RunArgs const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<quasar::corrective_reranking::Parse>::__assign_with_size[abi:ne200100]<quasar::corrective_reranking::Parse const*,quasar::corrective_reranking::Parse const*>(uint64_t a1, quasar::corrective_reranking::Parse *a2, quasar::corrective_reranking::Parse *a3, unint64_t a4)
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

    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::corrective_reranking::Parse>,quasar::corrective_reranking::Parse const*,quasar::corrective_reranking::Parse const*,quasar::corrective_reranking::Parse*>(a1, (v6 + v12), a3, v11);
  }
}

uint64_t kaldi::VadGatedBuffer::VadGatedBuffer(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, char a8, float a9, int a10, int a11)
{
  v19 = std::__function::__value_func<BOOL ()(kaldi::Matrix<float> &,kaldi::Matrix<float> &)>::__value_func[abi:ne200100](a1, a2);
  *(v19 + 32) = 0;
  *(v19 + 36) = a3;
  *(v19 + 40) = a9;
  *(v19 + 44) = a4;
  *(v19 + 48) = a5;
  *(v19 + 52) = a6;
  *(v19 + 56) = a7;
  *(v19 + 64) = 0;
  *(v19 + 60) = 0;
  *(v19 + 72) = 1;
  kaldi::Matrix<float>::Matrix(v19 + 80);
  *(a1 + 120) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0u;
  kaldi::Matrix<float>::Matrix(a1 + 160);
  kaldi::Matrix<float>::Matrix(a1 + 200);
  *(a1 + 240) = a8;
  *(a1 + 244) = a10;
  *(a1 + 248) = a11;
  v20 = *(a1 + 56);
  if (v20 < a10)
  {
    *(a1 + 56) = a10;
    v20 = a10;
  }

  if (*(a1 + 44) <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = *(a1 + 44);
  }

  kaldi::Matrix<float>::Resize(a1 + 80, (v21 + a5), *(a1 + 36), 1, 0);
  kaldi::Vector<float>::Resize((a1 + 120), (v21 + a5), 1);
  *(a1 + 44) += a5;
  *(a1 + 56) += *(a1 + 52);
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v33);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "VAD buffer config: buffer size ", 31);
    v23 = MEMORY[0x1B8C84C00](v22, (v21 + a5));
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ", warmup sil frames ", 20);
    v25 = MEMORY[0x1B8C84C00](v24, *(a1 + 44));
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ", activating speech frames ", 27);
    v27 = MEMORY[0x1B8C84C00](v26, *(a1 + 48));
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ", cooldown sil frames ", 22);
    v29 = MEMORY[0x1B8C84C00](v28, *(a1 + 52));
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ", deactivating sil frames ", 26);
    v31 = MEMORY[0x1B8C84C00](v30, *(a1 + 56));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ", threshold ", 12);
    std::ostream::operator<<();
    kaldi::KaldiLogMessage::~KaldiLogMessage(v33);
  }

  if (*(a1 + 240) == 1)
  {
    *(a1 + 32) = 2;
  }

  return a1;
}

{
  return kaldi::VadGatedBuffer::VadGatedBuffer(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void sub_1B5899F44(_Unwind_Exception *a1)
{
  kaldi::Matrix<float>::~Matrix(v1 + 200);
  kaldi::Matrix<float>::~Matrix(v2 + 40);
  kaldi::Vector<float>::Destroy(v2);
  kaldi::Matrix<float>::~Matrix(v1 + 80);
  std::__function::__value_func<BOOL ()(kaldi::Matrix<float> &,kaldi::Matrix<float> &)>::~__value_func[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::VadGatedBuffer::NextState(uint64_t this, float a2, char a3)
{
  if (*(this + 240))
  {
    return this;
  }

  v3 = *(this + 40);
  v4 = *(this + 32);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      if (v3 > a2)
      {
        ++*(this + 64);
        if ((a3 & 1) != 0 || *(this + 48) < 2)
        {
LABEL_28:
          *(this + 60) = 0;
          *(this + 64) = 0;
          v8 = 2;
          goto LABEL_29;
        }

        v8 = 1;
LABEL_29:
        *(this + 32) = v8;
        return this;
      }

      if (a3)
      {
        return this;
      }

      v13 = *(this + 56);
      v14 = *(this + 60) + 1;
      *(this + 60) = v14;
      if (v14 < v13)
      {
        return this;
      }

      *(this + 64) = 0;
    }

    else
    {
      if (v4 != 2)
      {
LABEL_42:
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v20, "Unknown VAD buffer state");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v20);
      }

      if (v3 > a2)
      {
LABEL_23:
        *(this + 60) = 0;
        return this;
      }

      v6 = *(this + 56);
      v7 = *(this + 60) + 1;
      *(this + 60) = v7;
      if (v7 < v6)
      {
        if (v7 < *(this + 52))
        {
          return this;
        }

        v8 = 3;
        goto LABEL_29;
      }
    }

    *(this + 60) = 0;
    *(this + 32) = 0;
    return this;
  }

  if (!v4)
  {
    if (v3 <= a2)
    {
      return this;
    }

    v9 = *(this + 48);
    v10 = v9 <= 1;
    if (v9 > 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    *(this + 32) = v11;
    v12 = !v10;
    *(this + 64) = v12;
    goto LABEL_23;
  }

  if (v4 != 1)
  {
    goto LABEL_42;
  }

  if (v3 > a2)
  {
    v5 = *(this + 64) + 1;
    *(this + 64) = v5;
    if (v5 < *(this + 48))
    {
      return this;
    }

    goto LABEL_28;
  }

  v15 = *(this + 60);
  if (v15)
  {
    v16 = v15 + *(this + 64);
    v17 = v16 + 1;
    v18 = *(this + 56);
    if (v16 + 1 < v18)
    {
      v19 = v16 + 1;
    }

    else
    {
      v19 = 0;
    }

    *(this + 60) = v19;
    if (v17 >= v18)
    {
      v15 = 0;
    }

    else
    {
      v15 = 3;
    }
  }

  *(this + 32) = v15;
  *(this + 64) = 0;
  return this;
}

uint64_t kaldi::VadGatedBuffer::Compute(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    kaldi::Matrix<float>::Resize(a2, 0, 0, 0, 0);
    kaldi::Matrix<float>::Resize(a3, 0, 0, 0, 0);
  }

  v6 = *(a1 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v7 = *(*v6 + 48);

  return v7();
}

uint64_t kaldi::VadGatedBuffer::Activate(kaldi::VadGatedBuffer *this, int a2)
{
  if (*(this + 8) != 2)
  {
    while (1)
    {
      v27 = *(this + 38);
      if (v27 >= kaldi::MatrixBase<float>::NumRows(this + 160) && *(this + 72) != 1)
      {
        break;
      }

      v28 = *(this + 38);
      if (v28 == kaldi::MatrixBase<float>::NumRows(this + 160) && *(this + 72) == 1)
      {
        *(this + 38) = 0;
        *(this + 72) = kaldi::VadGatedBuffer::Compute(this, this + 160, this + 200, 0);
      }

      if (*(this + 8) != 2)
      {
        v29 = *(this + 38);
        while (v29 < kaldi::MatrixBase<float>::NumRows(this + 160))
        {
          kaldi::VadGatedBuffer::NextState(this, *(*(this + 25) + 4 * *(this + 54) * *(this + 38)), 0);
          v30 = *(this + 37);
          v31 = v30 % kaldi::MatrixBase<float>::NumRows(this + 80);
          v32 = *(this + 10) + 4 * *(this + 24) * v31;
          v33 = kaldi::MatrixBase<float>::NumCols(this + 80);
          v40 = 0;
          v41 = 0;
          v38 = v32;
          v39 = v33;
          v34 = (*(this + 20) + 4 * *(this + 44) * *(this + 38));
          v35 = kaldi::MatrixBase<float>::NumCols(this + 160);
          v44 = 0;
          v45 = 0;
          v42 = v34;
          v43 = v35;
          kaldi::VectorBase<float>::CopyFromVec(&v38, &v42);
          *(*(this + 15) + 4 * v31) = *(*(this + 25) + 4 * *(this + 54) * *(this + 38));
          v36 = *(this + 36);
          v37 = *(this + 37) + 1;
          *(this + 37) = v37;
          if (v37 - v36 > kaldi::MatrixBase<float>::NumRows(this + 80))
          {
            ++*(this + 36);
            ++*(this + 17);
          }

          v29 = *(this + 38) + 1;
          *(this + 38) = v29;
          if (*(this + 8) == 2)
          {
            goto LABEL_2;
          }
        }

        if (*(this + 8) != 2)
        {
          continue;
        }
      }

      goto LABEL_2;
    }

    if (*(this + 8) != 2)
    {
      result = 0;
      *(this + 17) += *(this + 37) - *(this + 36);
      *(this + 18) = 0;
      return result;
    }
  }

LABEL_2:
  v4 = *(this + 72) != 1 || a2 == 0;
  if (!v4 && *(this + 61) >= 1 && *(this + 62) >= 1)
  {
    v5 = *(this + 36);
    v6 = *(this + 37);
    v7 = v6 - v5;
    v8 = kaldi::MatrixBase<float>::NumRows(this + 160);
    v9 = *(this + 38);
    v10 = *(this + 61);
    v11 = v8 - v9 + v6 - v5;
    v12 = v11 - v10;
    if (v11 && v12 < 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v38);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(&v38, "frames_available == 0 || chunk_start >= 0");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v38);
    }

    if (v12 < 1)
    {
      return 1;
    }

    v13 = *(this + 62);
    v14 = -v8;
    v15 = v9 + v5 - v8 - v6;
    v16 = v9 + v10 - v13;
    v17 = v8 + v6 - v9 - v5 - v13;
    do
    {
      v18 = v14;
      v19 = v15;
      if (v17 - v10 < 0)
      {
        break;
      }

      v14 += v13;
      v15 += v13;
      v17 -= v13;
    }

    while (v16 + v14 < *(this + 11));
    if (-(v10 + v19) >= v7)
    {
      *(this + 38) = -(v10 + v18);
      *(this + 17) += v7;
      *(this + 18) = 0;
      return 1;
    }

    *(this + 36) = *(this + 36) - v10 - v19;
    v20 = *(this + 17) - v10 - v19;
    goto LABEL_18;
  }

  v21 = *(this + 36);
  v22 = *(this + 37) - v21;
  v23 = *(this + 11);
  v24 = __OFSUB__(v22, v23);
  v25 = v22 - v23;
  if (!((v25 < 0) ^ v24 | (v25 == 0)))
  {
    *(this + 36) = v25 + v21;
    v20 = *(this + 17) + v25;
LABEL_18:
    *(this + 17) = v20;
  }

  return 1;
}

uint64_t kaldi::VadGatedBuffer::ReadActiveFrame(kaldi::VadGatedBuffer *this, float *a2, float *a3, int a4)
{
  if (!*(this + 8))
  {
    if ((*(this + 72) & 1) != 0 || (v8 = *(this + 38), v8 != kaldi::MatrixBase<float>::NumRows(this + 160)) || *(this + 37) != *(this + 36))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v27, "!IsInactive() || IsEndOfBuffer()");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
    }
  }

  if ((a4 & 1) == 0 && *(this + 8) == 3 && kaldi::VadGatedBuffer::Deactivate(this))
  {
    return 0;
  }

  v9 = *(this + 36);
  if (*(this + 37) > v9)
  {
    v10 = v9 % kaldi::MatrixBase<float>::NumRows(this + 80);
    v11 = (*(this + 10) + 4 * *(this + 24) * v10);
    kaldi::MatrixBase<float>::NumCols(this + 80);
    memcpy(a2, v11, 4 * *(this + 9));
    *a3 = *(*(this + 15) + 4 * v10);
    v12 = *(this + 37);
    v13 = *(this + 36) + 1;
    *(this + 36) = v13;
    if (v13 == v12)
    {
      *(this + 18) = 0;
    }

    return 1;
  }

  while (1)
  {
    v14 = *(this + 38);
    if (v14 != kaldi::MatrixBase<float>::NumRows(this + 160) || *(this + 72) != 1)
    {
      break;
    }

    *(this + 38) = 0;
    *(this + 72) = kaldi::VadGatedBuffer::Compute(this, this + 160, this + 200, 0);
  }

  v15 = *(this + 38);
  if (v15 >= kaldi::MatrixBase<float>::NumRows(this + 160))
  {
    result = 0;
    *(this + 8) = 0;
    return result;
  }

  kaldi::VadGatedBuffer::NextState(this, *(*(this + 25) + 4 * *(this + 54) * *(this + 38)), a4);
  v16 = *(this + 8);
  if (v16)
  {
    v17 = a4;
  }

  else
  {
    v17 = 0;
  }

  if (v16 != 2 && !v17)
  {
    v18 = *(this + 37);
    v19 = v18 % kaldi::MatrixBase<float>::NumRows(this + 80);
    v20 = *(this + 10) + 4 * *(this + 24) * v19;
    v27[2] = 0;
    v27[0] = v20;
    v27[1] = kaldi::MatrixBase<float>::NumCols(this + 80);
    v21 = (*(this + 20) + 4 * *(this + 44) * *(this + 38));
    v26[2] = 0;
    v26[0] = v21;
    v26[1] = kaldi::MatrixBase<float>::NumCols(this + 160);
    kaldi::VectorBase<float>::CopyFromVec(v27, v26);
    v22 = *(this + 38);
    *(*(this + 15) + 4 * v19) = *(*(this + 25) + 4 * *(this + 54) * v22);
    ++*(this + 37);
    *(this + 38) = v22 + 1;
    if (!kaldi::VadGatedBuffer::Deactivate(this))
    {
      return kaldi::VadGatedBuffer::ReadActiveFrame(this, a2, a3, a4);
    }

    return 0;
  }

  v24 = (*(this + 20) + 4 * *(this + 44) * *(this + 38));
  kaldi::MatrixBase<float>::NumCols(this + 160);
  memcpy(a2, v24, 4 * *(this + 9));
  v25 = *(this + 38);
  *a3 = *(*(this + 25) + 4 * *(this + 54) * v25);
  *(this + 38) = v25 + 1;
  return 1;
}

BOOL kaldi::VadGatedBuffer::IsEndOfBuffer(kaldi::VadGatedBuffer *this)
{
  if (*(this + 72))
  {
    return 0;
  }

  v3 = *(this + 38);
  return v3 == kaldi::MatrixBase<float>::NumRows(this + 160) && *(this + 37) == *(this + 36);
}

BOOL kaldi::VadGatedBuffer::Deactivate(kaldi::VadGatedBuffer *this)
{
  while (1)
  {
    v2 = *(this + 8);
    if ((v2 | 2) == 2)
    {
      break;
    }

    v3 = *(this + 38);
    if (v3 >= kaldi::MatrixBase<float>::NumRows(this + 160) && *(this + 72) != 1)
    {
      v2 = *(this + 8);
      break;
    }

    v4 = *(this + 38);
    if (v4 == kaldi::MatrixBase<float>::NumRows(this + 160) && *(this + 72) == 1)
    {
      *(this + 38) = 0;
      *(this + 72) = kaldi::VadGatedBuffer::Compute(this, this + 160, this + 200, 0);
    }

    while ((*(this + 8) | 2) != 2)
    {
      v5 = *(this + 38);
      if (v5 >= kaldi::MatrixBase<float>::NumRows(this + 160))
      {
        break;
      }

      kaldi::VadGatedBuffer::NextState(this, *(*(this + 25) + 4 * *(this + 54) * *(this + 38)), 0);
      v6 = *(this + 37);
      v7 = v6 % kaldi::MatrixBase<float>::NumRows(this + 80);
      v8 = *(this + 10) + 4 * *(this + 24) * v7;
      v9 = kaldi::MatrixBase<float>::NumCols(this + 80);
      v17 = 0;
      v18 = 0;
      v15 = v8;
      v16 = v9;
      v10 = (*(this + 20) + 4 * *(this + 44) * *(this + 38));
      v11 = kaldi::MatrixBase<float>::NumCols(this + 160);
      v21 = 0;
      v22 = 0;
      v19 = v10;
      v20 = v11;
      kaldi::VectorBase<float>::CopyFromVec(&v15, &v19);
      *(*(this + 15) + 4 * v7) = *(*(this + 25) + 4 * *(this + 54) * *(this + 38));
      v12 = *(this + 36);
      v13 = *(this + 37) + 1;
      *(this + 37) = v13;
      if (v13 - v12 > kaldi::MatrixBase<float>::NumRows(this + 80))
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v15);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(&v15, "warmup_buffer_end_ - warmup_buffer_start_ <= warmup_feat_buffer_.NumRows()");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v15);
      }

      ++*(this + 38);
    }
  }

  if ((v2 | 2) != 2)
  {
    v2 = 0;
    *(this + 8) = 0;
  }

  return v2 == 0;
}

uint64_t kaldi::VadGatedBuffer::ReadActiveFrame(unsigned int *a1, void **a2, float *a3, int a4)
{
  kaldi::Vector<float>::Resize(a2, a1[9], 1);
  ActiveFrame = kaldi::VadGatedBuffer::ReadActiveFrame(a1, *a2, a3, a4);
  if ((ActiveFrame & 1) == 0)
  {
    kaldi::Vector<float>::Resize(a2, 0, 0);
  }

  return ActiveFrame;
}

uint64_t kaldi::VadGatedBuffer::BatchReadActiveFrames(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  if (!*(a1 + 32) && ((*(a1 + 72) & 1) != 0 || (v9 = *(a1 + 152), v9 != kaldi::MatrixBase<float>::NumRows(a1 + 160)) || *(a1 + 148) != *(a1 + 144)) || (v10 = kaldi::MatrixBase<float>::NumRows(a2), v10 != kaldi::MatrixBase<float>::NumRows(a3)))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v61);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v61, "(!IsInactive() || IsEndOfBuffer()) && (feature.NumRows() == silpost.NumRows())");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v61);
  }

  if (*(a1 + 32) == 3 && kaldi::VadGatedBuffer::Deactivate(a1))
  {
    kaldi::Matrix<float>::Resize(a2, 0, 0, 0, 0);
    kaldi::Matrix<float>::Resize(a3, 0, 0, 0, 0);
    return 0;
  }

  else
  {
    v12 = kaldi::MatrixBase<float>::NumRows(a2);
    v13 = v12 - a4;
    if (v12 == a4)
    {
      return 1;
    }

    v53 = a4;
    v14 = *(a1 + 144);
    v15 = *(a1 + 148) - v14;
    v16 = v15 >= v13 ? v12 - a4 : *(a1 + 148) - v14;
    v55 = v12 - a4;
    if (v16 < 1)
    {
      goto LABEL_19;
    }

    v52 = *(a1 + 148) - v14;
    v54 = a3;
    v17 = v16;
    do
    {
      v18 = kaldi::MatrixBase<float>::NumRows(a1 + 80);
      v19 = *a2 + 4 * *(a2 + 16) * a4;
      v20 = kaldi::MatrixBase<float>::NumCols(a2);
      v63 = 0;
      v64 = 0;
      v61 = v19;
      v62 = v20;
      v21 = *(a1 + 80);
      v22 = *(a1 + 96);
      v23 = kaldi::MatrixBase<float>::NumCols(a1 + 80);
      v24 = v14 % v18;
      v59 = 0;
      v60 = 0;
      v57 = (v21 + 4 * v22 * v24);
      v58 = v23;
      kaldi::VectorBase<float>::CopyFromVec(&v61, &v57);
      *(*v54 + 4 * *(v54 + 16) * a4) = *(*(a1 + 120) + 4 * v24);
      v14 = *(a1 + 144) + 1;
      *(a1 + 144) = v14;
      ++a4;
      --v17;
    }

    while (v17);
    if (v14 == *(a1 + 148))
    {
      *(a1 + 144) = 0;
    }

    v15 = v52;
    a3 = v54;
    if (v13 <= v52)
    {
      return 1;
    }

    else
    {
LABEL_19:
      if (v15 < v13)
      {
        v25 = v13 - *(a1 + 56) + *(a1 + 52);
        v26 = v25 & ~(v25 >> 31);
        while (1)
        {
          if ((*(a1 + 72) & 1) == 0)
          {
            v27 = *(a1 + 152);
            if (v27 == kaldi::MatrixBase<float>::NumRows(a1 + 160) && *(a1 + 148) == *(a1 + 144))
            {
              break;
            }
          }

          if (!*(a1 + 32))
          {
            break;
          }

          v28 = *(a1 + 152);
          if (v28 == kaldi::MatrixBase<float>::NumRows(a1 + 160))
          {
            do
            {
              if (*(a1 + 72) != 1)
              {
                break;
              }

              *(a1 + 152) = 0;
              v29 = kaldi::MatrixBase<float>::NumCols(a2);
              kaldi::Matrix<float>::Resize(a1 + 160, v13 - v16, v29, 1, 0);
              v30 = *(a1 + 24);
              if (!v30)
              {
                std::__throw_bad_function_call[abi:ne200100]();
              }

              *(a1 + 72) = (*(*v30 + 48))(v30, a1 + 160, a1 + 200);
              v31 = *(a1 + 152);
            }

            while (v31 == kaldi::MatrixBase<float>::NumRows(a1 + 160));
          }

          if (v13 > v16)
          {
            v32 = *(a1 + 152);
            while (v32 < kaldi::MatrixBase<float>::NumRows(a1 + 160))
            {
              if (v16 > v26)
              {
                v33 = a5;
              }

              else
              {
                v33 = 0;
              }

              kaldi::VadGatedBuffer::NextState(a1, *(*(a1 + 200) + 4 * *(a1 + 216) * *(a1 + 152)), v33);
              v34 = *(a1 + 32);
              if (v34)
              {
                v35 = v33;
              }

              else
              {
                v35 = 0;
              }

              if (v34 != 2 && v35 == 0)
              {
                v40 = *(a1 + 148);
                v41 = v40 % kaldi::MatrixBase<float>::NumRows(a1 + 80);
                v42 = *(a1 + 80) + 4 * *(a1 + 96) * v41;
                v43 = kaldi::MatrixBase<float>::NumCols(a1 + 80);
                v63 = 0;
                v64 = 0;
                v61 = v42;
                v62 = v43;
                v44 = *(a1 + 152);
                v45 = *(a1 + 160);
                v46 = *(a1 + 176);
                v47 = kaldi::MatrixBase<float>::NumCols(a1 + 160);
                v59 = 0;
                v60 = 0;
                v57 = (v45 + 4 * v46 * v44);
                v58 = v47;
                kaldi::VectorBase<float>::CopyFromVec(&v61, &v57);
                v48 = *(a1 + 152);
                *(*(a1 + 120) + 4 * v41) = *(*(a1 + 200) + 4 * *(a1 + 216) * v48);
                ++*(a1 + 148);
                *(a1 + 152) = v48 + 1;
                v13 = v55;
                if (kaldi::VadGatedBuffer::Deactivate(a1))
                {
                  break;
                }

                return kaldi::VadGatedBuffer::BatchReadActiveFrames(a1, a2, a3, (v53 + v16), a5);
              }

              v37 = (*a2 + 4 * *(a2 + 16) * (v53 + v16));
              kaldi::MatrixBase<float>::NumCols(a2);
              v38 = (*(a1 + 160) + 4 * *(a1 + 176) * *(a1 + 152));
              kaldi::MatrixBase<float>::NumCols(a1 + 160);
              memcpy(v37, v38, 4 * *(a1 + 36));
              v39 = *(a1 + 152);
              *(*a3 + 4 * *(a3 + 16) * (v53 + v16)) = *(*(a1 + 200) + 4 * *(a1 + 216) * v39);
              v32 = v39 + 1;
              *(a1 + 152) = v39 + 1;
              ++v16;
              v13 = v55;
              if (v16 >= v55)
              {
                break;
              }
            }
          }

          if (v16 >= v13)
          {
            goto LABEL_49;
          }
        }

        v49 = kaldi::MatrixBase<float>::NumCols(a2);
        kaldi::Matrix<float>::Resize(a2, (v16 + v53), v49, 2, 0);
        v50 = kaldi::MatrixBase<float>::NumCols(a3);
        kaldi::Matrix<float>::Resize(a3, (v16 + v53), v50, 2, 0);
      }

LABEL_49:
      if ((*(a1 + 72) & 1) == 0)
      {
        v51 = *(a1 + 152);
        if (v51 == kaldi::MatrixBase<float>::NumRows(a1 + 160) && *(a1 + 148) == *(a1 + 144))
        {
          *(a1 + 32) = 0;
        }
      }

      return *(a1 + 32) != 0;
    }
  }
}

void ConvertCXXExceptionToNSException(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    (*(v1 + 2))(v1);
  }
}

uint64_t ConvertCXXExceptionToNSError(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    (*(v1 + 2))(v1);
  }

  return 1;
}

uint64_t EARErrorCodeForExceptionMessage(NSString *a1)
{
  v1 = a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 200;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___Z31EARErrorCodeForExceptionMessageP8NSString_block_invoke;
  v5[3] = &unk_1E7C1C020;
  v6 = v1;
  v7 = &v8;
  v2 = v1;
  [&unk_1F2D54438 enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v9[3];

  _Block_object_dispose(&v8, 8);
  return v3;
}

void sub_1B589B600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *EARSetError(void *result, id a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      result = a2;
      *v3 = a2;
    }
  }

  return result;
}

id EARErrorWithCode(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObject:v3 forKey:*MEMORY[0x1E696A578]];
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EARErrorDomain" code:a1 userInfo:v4];

  return v5;
}

void ___Z31EARErrorCodeForExceptionMessageP8NSString_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  if ([*(a1 + 32) containsString:v8])
  {
    *(*(*(a1 + 40) + 8) + 24) = [v7 integerValue];
    *a4 = 1;
  }
}

void kaldi::NnVadEvaluator::NnVadEvaluator(kaldi::NnVadEvaluator *this, int a2)
{
  *(this + 1) = 0;
  *this = a2 / 50;
  *(this + 1) = a2;
  kaldi::NnVadEvaluator::VCVoiceDetector_Create(this);
}

void sub_1B589B824(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
    MEMORY[0x1B8C85350](v3, 0x10A0C40B56208EELL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::NnVadEvaluator::VCVoiceDetector_Start(kaldi::NnVadEvaluator *this)
{
  result = *(this + 1);
  if (result)
  {
    *result = 0;
    v3 = (*(result + 24))();
    if (v3 || (v4 = *(this + 1), (v5 = *v4) == 0))
    {
      v10 = v3;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Vad_CreateInstance error=", 25);
      v7 = MEMORY[0x1B8C84C00](v6, v10);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "audioVADRef=", 12);
      MEMORY[0x1B8C84BB0](v8, **(this + 1));
      goto LABEL_11;
    }

    if (*(v4 + 16) == 1)
    {
      LODWORD(result) = (v4[10])();
      if (result)
      {
LABEL_10:
        v11 = result;
        (*(*(this + 1) + 72))(**(this + 1));
        **(this + 1) = 0;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Vad_CreateInstance error=", 25);
        MEMORY[0x1B8C84C00](v9, v11);
LABEL_11:
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
      }

      v4 = *(this + 1);
      v5 = *v4;
    }

    result = (v4[4])(v5, *this, *(this + 1));
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  return result;
}

void kaldi::NnVadEvaluator::~NnVadEvaluator(kaldi::NnVadEvaluator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*v2)
    {
      (*(v2 + 40))(*v2);
      (*(*(this + 1) + 72))(**(this + 1));
      **(this + 1) = 0;
    }

    *(this + 1) = 0;
    MEMORY[0x1B8C85350]();
  }
}

void *___ZN5kaldi14NnVadEvaluator22VCVoiceDetector_CreateEb_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 5);
  kaldi::NnVadEvaluator::lib_handle_ = result;
  return result;
}

void kaldi::NnVadEvaluator::GetVoiceActivityHardValue(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v4 = *(a1 + 8);
  if (v4 && *v4)
  {
    v7 = *(a2 + 2);
    memset(v13, 0, sizeof(v13));
    kaldi::Vector<float>::Resize(v13, v7, 0);
    v8 = *(a2 + 2);
    v9 = v13[0];
    if (v8 >= 1)
    {
      v10 = 0;
      v11 = *a2;
      do
      {
        v9[v10] = *(v11 + 4 * v10) * 0.000030518;
        ++v10;
      }

      while (v8 != v10);
    }

    if ((*(*(a1 + 8) + 48))(**(a1 + 8), v9))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "NNVAD fails to process audio", 28);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
    }

    if ((*(*(a1 + 8) + 64))(**(a1 + 8), a3))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "NNVAD fails to get speech probability hard value", 48);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
    }

    kaldi::Vector<float>::Destroy(v13);
  }

  else
  {
    *a3 = 1065353216;
  }
}

float kaldi::NnVadEvaluator::GetSilenceHardValue(uint64_t a1, uint64_t *a2, float *a3)
{
  kaldi::NnVadEvaluator::GetVoiceActivityHardValue(a1, a2, a3);
  result = 1.0 - *a3;
  *a3 = result;
  return result;
}

uint64_t Opt_Parse(int a1, size_t *a2, unint64_t a3, int a4, unsigned int a5)
{
  v6 = a2;
  v7 = a1 - 1;
  if (a1 == 1)
  {
    v32 = 0;
    v11 = 1;
  }

  else
  {
    v36 = a4;
    v9 = (a2 + 1);
    v10 = a3 + 32 * a4 - 32;
    v38 = (a5 >> 1) & 1;
    v11 = 1;
    v12 = -1;
    v40 = v10;
    while (1)
    {
      v13 = *v9;
      if (**v9 == 45)
      {
        break;
      }

      v6[v11++] = v13;
      ++v9;
      --v7;
      v30 = v38;
LABEL_77:
      v32 = 0;
      if (!v7 || v30)
      {
        goto LABEL_84;
      }
    }

    v41 = v11;
    v15 = v13 + 1;
    v14 = *(v13 + 1);
    if (v14 == 63 && !v13[2] || !strcmp(v15, "help"))
    {
      goto LABEL_90;
    }

    v42 = 0;
    --v7;
    v43 = ++v9;
    v37 = v12;
    v16 = v15;
    v17 = v7;
LABEL_8:
    if (v10 >= a3)
    {
      v44 = v17;
      v18 = v10;
      while (1)
      {
        v19 = *(v18 + 8);
        if (v19 && *v19 == v14)
        {
          v20 = *(v18 + 8);
          if (a5)
          {
            v12 = strlen(v20);
            if (!strncmp(v19, v16, v12))
            {
LABEL_18:
              v21 = *v18;
              if ((*v18 & 0x80000000) == 0)
              {
                **(v18 + 16) = v21;
                goto LABEL_20;
              }

              if (v21 > -5)
              {
                if (v21 < 0xFFFFFFFE)
                {
                  if (v21 != -3)
                  {
                    if (v21 == -4)
                    {
                      **(v18 + 16) = v41;
                      v42 = 1;
                    }

LABEL_20:
                    v10 = v40;
                    v17 = v44;
                    goto LABEL_69;
                  }

                  if (v44)
                  {
                    v24 = *v43++;
                    **(v18 + 16) = v24;
                    v17 = v44 - 1;
LABEL_48:
                    v10 = v40;
                    goto LABEL_69;
                  }

LABEL_46:
                  fprintf(*MEMORY[0x1E69E9848], "Warning: %s option -%s needs an argument\n", *a2, v19);
                  v17 = 0;
                  goto LABEL_48;
                }

                if (!v44)
                {
                  goto LABEL_46;
                }

                *&__endptr.tm_sec = 0;
                v23 = strtol(*v43, &__endptr, 0);
                if (*&__endptr.tm_sec != *v43)
                {
                  v10 = v40;
                  if (*v18 == -2 && v23 < 0)
                  {
                    fprintf(*MEMORY[0x1E69E9848], "Warning: option -%s got a negative argument %s.  Using default: %u.\n", *(v18 + 8), *v43, **(v18 + 16));
                  }

                  else
                  {
                    **(v18 + 16) = v23;
                  }

                  goto LABEL_68;
                }

                fprintf(*MEMORY[0x1E69E9848], "Warning: option -%s got a non-numeric argument %s.  Using default: %d\n");
                goto LABEL_67;
              }

              if (v21 > -7)
              {
                if (v21 == -6)
                {
                  v28 = (*(v18 + 16))(v19, *v43) != 0;
                  v43 += v28;
                  v17 = v44 - v28;
                  goto LABEL_48;
                }

                if (!v44)
                {
                  goto LABEL_46;
                }

                *&__endptr.tm_sec = 0;
                v22 = strtod(*v43, &__endptr);
                if (*&__endptr.tm_sec == *v43)
                {
                  fprintf(*MEMORY[0x1E69E9848], "Warning: option -%s got non-floating-point argument %s.  Using default: %lg.\n");
                }

                else
                {
                  **(v18 + 16) = v22;
                }

                goto LABEL_67;
              }

              if (v21 == -9)
              {
                if (!v44)
                {
                  goto LABEL_46;
                }

                v25 = *v43;
                v26 = *(v18 + 16);
                v46 = 0;
                memset(&__endptr.tm_wday, 0, 32);
                v27 = strtol(v25, &v46, 0);
                if (v46 == v25)
                {
                  goto LABEL_66;
                }

                if (*v46 == 46)
                {
                  v29 = v27 - 1900;
                  if (v27 <= 1900)
                  {
                    v29 = v27;
                  }

                  __endptr.tm_year = v29;
                  __endptr.tm_mon = strtol(v46 + 1, &v46, 0) - 1;
                  if (v46 == v25)
                  {
                    goto LABEL_66;
                  }

                  if (*v46 != 46)
                  {
                    goto LABEL_66;
                  }

                  __endptr.tm_mday = strtol(v46 + 1, &v46, 0);
                  if (v46 == v25)
                  {
                    goto LABEL_66;
                  }

                  if (*v46 != 46)
                  {
                    goto LABEL_66;
                  }

                  __endptr.tm_hour = strtol(v46 + 1, &v46, 0);
                  if (v46 == v25)
                  {
                    goto LABEL_66;
                  }

                  if (*v46 != 46)
                  {
                    goto LABEL_66;
                  }

                  __endptr.tm_min = strtol(v46 + 1, &v46, 0);
                  if (v46 == v25)
                  {
                    goto LABEL_66;
                  }

                  if (*v46 != 46)
                  {
                    goto LABEL_66;
                  }

                  __endptr.tm_sec = strtol(v46 + 1, &v46, 0);
                  if (v46 == v25 || *v46)
                  {
                    goto LABEL_66;
                  }

                  v27 = mktime(&__endptr);
                  if (v27 == -1)
                  {
                    fprintf(*MEMORY[0x1E69E9848], "%s: can't represent the time %s.\n");
                  }

                  else
                  {
LABEL_45:
                    *v26 = v27;
                  }
                }

                else
                {
                  if (!*v46)
                  {
                    goto LABEL_45;
                  }

LABEL_66:
                  fprintf(*MEMORY[0x1E69E9848], "%s: can't parse %s as a time.\n");
                }

LABEL_67:
                v10 = v40;
LABEL_68:
                ++v43;
                v17 = v44 - 1;
                goto LABEL_69;
              }

              if (v21 == -7)
              {
                v17 = (*(v18 + 16))(v19, v44, v43);
                goto LABEL_48;
              }

              v10 = v40;
              v17 = v44;
              if (v21 == -8)
              {
LABEL_90:
                Opt_PrintUsage(*a2, a3, v36);
                exit(0);
              }

LABEL_69:
              if ((a5 & 1) == 0 || (v16 += v12, v14 = *v16, !*v16))
              {
                v9 = v43;
                v7 = v17;
                v6 = a2;
                v11 = v41;
                v30 = v42;
                goto LABEL_77;
              }

              goto LABEL_8;
            }
          }

          else if (!strcmp(v20, v16))
          {
            goto LABEL_18;
          }
        }

        v18 -= 32;
        if (v18 < a3)
        {
          v9 = v43;
          v15 = v16;
          v7 = v44;
          v6 = a2;
          v10 = v40;
          goto LABEL_75;
        }
      }
    }

    v42 = 0;
    v6 = a2;
    v12 = v37;
LABEL_75:
    v11 = v41;
    if ((a5 & 4) == 0)
    {
      v31 = MEMORY[0x1E69E9848];
      fprintf(*MEMORY[0x1E69E9848], "Unknown option -%s;", v15);
      fprintf(*v31, "  type %s -help for information\n", *v6);
      v30 = v42;
      goto LABEL_77;
    }

    v32 = 1;
LABEL_84:
    if (v7)
    {
      v33 = &v6[v11];
      v11 += v7;
      do
      {
        v34 = *v9++;
        *v33++ = v34;
        --v7;
      }

      while (v7);
    }
  }

  v6[v11] = 0;
  if ((v32 & (a5 >> 2)) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v11;
  }
}

size_t Opt_PrintUsage(size_t result, uint64_t a2, int a3)
{
  v5 = result;
  v6 = a3;
  if (a3 < 1)
  {
    v8 = 4;
  }

  else
  {
    v7 = (a2 + 8);
    v8 = 4;
    v9 = a3;
    do
    {
      result = *v7;
      if (*v7)
      {
        result = strlen(result);
        if (v8 <= result)
        {
          v8 = result;
        }
      }

      v7 += 4;
      --v9;
    }

    while (v9);
  }

  v10 = MEMORY[0x1E69E9848];
  if (v5)
  {
    result = fprintf(*MEMORY[0x1E69E9848], "Usage of command %s\n", v5);
  }

  if (a3 >= 1)
  {
    v11 = a2 + 16;
    do
    {
      v12 = *v10;
      if (*(v11 - 16) == -8)
      {
        result = fprintf(v12, " %s\n");
      }

      else
      {
        v13 = strlen(*(v11 - 8));
        result = fprintf(v12, " -%s%-*s %s\n", *(v11 - 8), v8 + 1 - v13, ":", *(v11 + 8));
        v14 = *(v11 - 16);
        if (v14 > -3)
        {
          if (v14 == -2)
          {
            result = fprintf(*v10, "\t\tDefault value: %u\n");
          }

          else if (v14 == -1)
          {
            result = fprintf(*v10, "\t\tDefault value: %d\n");
          }
        }

        else if (v14 == -5)
        {
          result = fprintf(*v10, "\t\tDefault value: %lg\n");
        }

        else if (v14 == -3 && **v11)
        {
          result = fprintf(*v10, "\t\tDefault value: %s\n");
        }
      }

      v11 += 32;
      --v6;
    }

    while (v6);
  }

  if (v5)
  {
    return fprintf(*v10, " -help%-*s Print this message\n", v8 - 3, ":");
  }

  return result;
}

void *MemStats::print(uint64_t a1, void *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "total memory ", 13);
  v5 = MEMORY[0x1B8C84C30](v4, *a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " (", 2);
  v6 = std::ostream::operator<<();
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "M)", 2);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", used ", 7);
  v9 = MEMORY[0x1B8C84C30](v8, *a1 - *(a1 + 8));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " (", 2);
  v10 = std::ostream::operator<<();
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "M)", 2);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", wasted ", 9);
  v13 = MEMORY[0x1B8C84C30](v12, *(a1 + 8));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " (", 2);
  v14 = std::ostream::operator<<();
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "M)", 2);
  std::ios_base::getloc((v15 + *(*v15 - 24)));
  v16 = std::locale::use_facet(&v31, MEMORY[0x1E69E5318]);
  (v16->__vftable[2].~facet_0)(v16, 10);
  std::locale::~locale(&v31);
  std::ostream::put();
  std::ostream::flush();
  v17 = 0;
  v18 = a1 + 16;
  v19 = MEMORY[0x1E69E5318];
  do
  {
    if (*(v18 + 4 * v17))
    {
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "allocations of size ", 20);
      v21 = MEMORY[0x1B8C84C10](v20, v17);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ": ", 2);
      v23 = MEMORY[0x1B8C84C10](v22, *(v18 + 4 * v17));
      std::ios_base::getloc((v23 + *(*v23 - 24)));
      v24 = std::locale::use_facet(&v31, v19);
      (v24->__vftable[2].~facet_0)(v24, 10);
      std::locale::~locale(&v31);
      std::ostream::put();
      std::ostream::flush();
    }

    ++v17;
  }

  while (v17 != 256);
  if (*(a1 + 1040))
  {
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "allocations of size >= ", 23);
    v26 = MEMORY[0x1B8C84C00](v25, 256);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ": ", 2);
    v28 = MEMORY[0x1B8C84C10](v27, *(a1 + 1040));
    std::ios_base::getloc((v28 + *(*v28 - 24)));
    v29 = std::locale::use_facet(&v31, MEMORY[0x1E69E5318]);
    (v29->__vftable[2].~facet_0)(v29, 10);
    std::locale::~locale(&v31);
    std::ostream::put();
    std::ostream::flush();
  }

  return a2;
}

double kaldi::quasar::NnlmDecoderWord::NnlmDecoderWord(kaldi::quasar::NnlmDecoderWord *this)
{
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  *(this + 8) = 0;
  *(this + 7) = 0;
  *(this + 6) = this + 56;
  *(this + 25) = 0;
  result = 0.0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  return result;
}

void kaldi::ReadMapped<kaldi::quasar::NnlmDecoderWord>(uint64_t a1)
{
  v18[34] = *MEMORY[0x1E69E9840];
  v8 = 0;
  kaldi::Input::Input(v7, a1, &v8);
  if (v8)
  {
    v2 = kaldi::Input::Stream(v7);
    std::istream::seekg();
    std::istream::tellg();
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    std::istream::seekg();
    fst::MappedFile::Map(v2, a1, v18[16]);
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Memory mapping failed. Not a valid Kaldi binary file: ", 54);
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
}

void sub_1B589CCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::Input::~Input(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::NnlmDecoderWord::ReadData(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  kaldi::ExpectToken(a2, a3, "<UnknownWord>");
  kaldi::ReadToken(a2, a3, a1 + 80);
  kaldi::ReadBasicType<int>(a2, a3, a1 + 176);
  kaldi::ExpectToken(a2, a3, "<BeginOfSentenceWord>");
  kaldi::ReadToken(a2, a3, a1 + 128);
  kaldi::ReadBasicType<int>(a2, a3, a1 + 184);
  kaldi::ExpectToken(a2, a3, "<EndOfSentenceWord>");
  kaldi::ReadToken(a2, a3, a1 + 152);
  kaldi::ReadBasicType<int>(a2, a3, a1 + 188);
  kaldi::ExpectToken(a2, a3, "<NullWord>");
  kaldi::ReadToken(a2, a3, a1 + 104);
  kaldi::ReadBasicType<int>(a2, a3, a1 + 180);
  kaldi::ExpectToken(a2, a3, "<ContextSize>");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 192);
  kaldi::ExpectToken(a2, a3, "<SymbolToWord>");
  memset(&__p, 0, sizeof(__p));
  v18 = 0;
  v19 = 0;
  kaldi::ReadIntegerVector<int>(a2, a3, &__p, a4, 0, &v19, &v18);
  if (__p.__begin_ != __p.__end_)
  {
    operator new[]();
  }

  v15 = v18;
  v14 = v19;
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (*(a1 + 40) == 1)
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      MEMORY[0x1B8C85310](v8, 0x1000C8077774924);
    }
  }

  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  *(a1 + 40) = 0;
  kaldi::ExpectToken(a2, a3, "<WordToSymbol>");
  memset(&__p, 0, sizeof(__p));
  v18 = 0;
  v19 = 0;
  kaldi::ReadIntegerVector<int>(a2, a3, &__p, a4, 0, &v19, &v18);
  if (__p.__begin_ != __p.__end_)
  {
    operator new[]();
  }

  v17 = v18;
  v16 = v19;
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (*(a1 + 16) == 1 && *a1)
  {
    MEMORY[0x1B8C85310](*a1, 0x1000C8077774924);
  }

  *a1 = v16;
  *(a1 + 8) = v17;
  *(a1 + 16) = 0;
  kaldi::ExpectToken(a2, a3, "<PhoneWordSymbol>");
  memset(&__p, 0, sizeof(__p));
  kaldi::ReadIntegerVector<int>(a2, a3, &__p, 0, 0, 0, 0);
  kaldi::CopyVectorToSet<int>(&__p.__begin_, a1 + 48);
  if (*(a1 + 64))
  {
    v9 = a1 + 56;
    v10 = *(a1 + 56);
    *(a1 + 72) = *(*(a1 + 48) + 28);
    if (v10)
    {
      do
      {
        v11 = v10;
        v10 = *(v10 + 8);
      }

      while (v10);
    }

    else
    {
      do
      {
        v11 = *(v9 + 16);
        v12 = *v11 == v9;
        v9 = v11;
      }

      while (v12);
    }

    v13 = *(v11 + 28);
  }

  else
  {
    v13 = -1;
    *(a1 + 72) = -1;
  }

  *(a1 + 76) = v13;
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

void sub_1B589D09C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::CopyVectorToSet<int>(int **a1, uint64_t a2)
{
  v4 = (a2 + 8);
  std::__tree<int>::destroy(a2, *(a2 + 8));
  *a2 = v4;
  *(a2 + 16) = 0;
  *v4 = 0;
  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(a2, v4, v5++);
  }
}

void quasar::PDecModelVersionChecker::checkVersion(quasar::PDecModelVersionChecker *this, uint64_t a2)
{
  v3 = *this;
  v4 = (*this + 3552);
  v5 = quasar::PDecModelVersionChecker::modelTypeMinimumVersion(this);
  v6 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(v5, v4);
  v7 = quasar::PDecModelVersionChecker::modelTypeMinimumVersion(v6);
  if ((v7 + 8) == v6)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
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
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v40);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "Unknown PDec model type: ", 25);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v36, v4);
    goto LABEL_31;
  }

  if (v6[14] > a2)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
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
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v40);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "Incompatible system config version. Needs to be >= ", 51);
    v38 = MEMORY[0x1B8C84C00](v37, v6[14]);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, ".0 to use PDec model type: ", 27);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v39, v4);
    goto LABEL_31;
  }

  if (quasar::gLogLevel >= 5)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
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
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v40);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "Compatible system config version (", 34);
    v9 = MEMORY[0x1B8C84C00](v8, a2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ".0) for PDec model type ", 24);
    v11 = *(v3 + 3575);
    if (v11 >= 0)
    {
      v12 = v4;
    }

    else
    {
      v12 = *(v3 + 3552);
    }

    if (v11 >= 0)
    {
      v13 = *(v3 + 3575);
    }

    else
    {
      v13 = *(v3 + 3560);
    }

    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " (", 2);
    v16 = MEMORY[0x1B8C84C00](v15, v6[14]);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ".0 required)", 12);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v40);
  }

  v17 = *(v3 + 3600);
  if (v17 != (v3 + 3608))
  {
    while (1)
    {
      v18 = quasar::PDecModelVersionChecker::featureFlagMinimumVersion(v7);
      v19 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(v18, v17 + 4);
      v7 = quasar::PDecModelVersionChecker::featureFlagMinimumVersion(v19);
      if ((v7 + 8) == v19)
      {
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
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
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v40);
        v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "Unknown PDec feature flag: ", 27);
        std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v32, (v17 + 4));
        goto LABEL_31;
      }

      if (*(v19 + 14) > a2)
      {
        break;
      }

      if (quasar::gLogLevel >= 5)
      {
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
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
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v40);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "Compatible system config version (", 34);
        v21 = MEMORY[0x1B8C84C00](v20, a2);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ".0) for PDec feature flag ", 26);
        v23 = *(v17 + 55);
        if (v23 >= 0)
        {
          v24 = (v17 + 4);
        }

        else
        {
          v24 = v17[4];
        }

        if (v23 >= 0)
        {
          v25 = *(v17 + 55);
        }

        else
        {
          v25 = v17[5];
        }

        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v24, v25);
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " (", 2);
        v28 = MEMORY[0x1B8C84C00](v27, *(v19 + 14));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ".0 required)", 12);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v40);
      }

      v29 = v17[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v17[2];
          v31 = *v30 == v17;
          v17 = v30;
        }

        while (!v31);
      }

      v17 = v30;
      if (v30 == (v3 + 3608))
      {
        return;
      }
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
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
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v40);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "Incompatible system config version. Needs to be >= ", 51);
    v34 = MEMORY[0x1B8C84C00](v33, *(v19 + 14));
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ".0 to use PDec feature flag: ", 29);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v35, (v17 + 4));
LABEL_31:
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v40);
  }
}

uint64_t quasar::PDecModelVersionChecker::modelTypeMinimumVersion(quasar::PDecModelVersionChecker *this)
{
  v2 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  return quasar::PDecModelVersionChecker::modelTypeMinimumVersion(void)::versionMap;
}

void sub_1B589D6B8(_Unwind_Exception *a1)
{
  v4 = (v2 + 119);
  v5 = -128;
  v6 = v4;
  while (1)
  {
    v7 = *v6;
    v6 -= 32;
    if (v7 < 0)
    {
      operator delete(*(v4 - 23));
    }

    v4 = v6;
    v5 += 32;
    if (!v5)
    {
      MEMORY[0x1B8C85350](v1, 0x1020C4062D53EE8);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t quasar::PDecModelVersionChecker::featureFlagMinimumVersion(quasar::PDecModelVersionChecker *this)
{
  v2 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  return quasar::PDecModelVersionChecker::featureFlagMinimumVersion(void)::versionMap;
}

void sub_1B589DA10(_Unwind_Exception *a1)
{
  v4 = (v2 + 535);
  v5 = -544;
  v6 = v4;
  while (1)
  {
    v7 = *v6;
    v6 -= 32;
    if (v7 < 0)
    {
      operator delete(*(v4 - 23));
    }

    v4 = v6;
    v5 += 32;
    if (!v5)
    {
      MEMORY[0x1B8C85350](v1, 0x1020C4062D53EE8);
      _Unwind_Resume(a1);
    }
  }
}

void *std::map<std::string,int>::map[abi:ne200100](void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,int> const&>(a1, v4, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t quasar::AmbiguityAnnotatorOptions::options@<X0>(quasar::AmbiguityAnnotatorOptions *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 1216;
  v3[1] = this + 1376;
  v3[2] = this + 1536;
  v3[3] = this + 1680;
  v3[4] = this + 1824;
  v3[5] = this + 1968;
  v3[6] = this + 2112;
  v3[7] = this + *(*(this + 282) - 24) + 2256;
  v3[8] = this + *(*(this + 301) - 24) + 2408;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::OptionValueBase *>::__init_with_size[abi:ne200100]<quasar::OptionValueBase * const*,quasar::OptionValueBase * const*>(a2, v3, &v4, 9uLL);
}

void quasar::AmbiguityAnnotatorBlock::init(quasar::AmbiguityAnnotatorBlock *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v12, "AmbiguityAnnotatorBlock");
  v2 = std::string::append(&v12, " config:");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v14 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  quasar::OptionsBase::debugLog(this + 1, __p);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  v4 = quasar::OptionValue<std::string>::value(this + 173);
  if (*(v4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *v4, *(v4 + 8));
  }

  else
  {
    v5 = *v4;
    v11.__r_.__value_.__r.__words[2] = *(v4 + 16);
    *&v11.__r_.__value_.__l.__data_ = v5;
  }

  v6 = *quasar::OptionValue<BOOL>::value(this + 3);
  v7 = quasar::OptionValue<std::string>::value(this + 115);
  v8 = quasar::OptionValue<BOOL>::value(this + 135);
  quasar::PhraseBookFactory::createPhraseBook(&v11, v6, v7, *v8, &v12);
  v9 = *&v12.__r_.__value_.__l.__data_;
  *&v12.__r_.__value_.__l.__data_ = 0uLL;
  v10 = *(this + 337);
  *(this + 168) = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    if (v12.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12.__r_.__value_.__l.__size_);
    }
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_1B589DD90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void quasar::AmbiguityAnnotatorBlock::addAnnotation(quasar::AmbiguityAnnotatorBlock *this, quasar::MetaInfo::Impl **a2, const quasar::AmbiguityAnnotatorBlock::SenseMatches *a3)
{
  v30 = 0;
  v31 = 0;
  v32 = 0;
  std::vector<quasar::MetaInfo::Sense>::reserve(&v30, 0xAF8AF8AF8AF8AF8BLL * ((*(a3 + 1) - *a3) >> 3));
  v6 = *(a3 + 1);
  if (*a3 != v6)
  {
    v7 = (*a3 + 256);
    do
    {
      if (SHIBYTE(v7[-7].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v19, v7[-7].__r_.__value_.__l.__data_, v7[-7].__r_.__value_.__l.__size_);
      }

      else
      {
        v8 = *&v7[-7].__r_.__value_.__l.__data_;
        v19.__r_.__value_.__r.__words[2] = v7[-7].__r_.__value_.__r.__words[2];
        *&v19.__r_.__value_.__l.__data_ = v8;
      }

      if (SHIBYTE(v7[-6].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v18, v7[-6].__r_.__value_.__l.__data_, v7[-6].__r_.__value_.__l.__size_);
      }

      else
      {
        v9 = *&v7[-6].__r_.__value_.__l.__data_;
        v18.__r_.__value_.__r.__words[2] = v7[-6].__r_.__value_.__r.__words[2];
        *&v18.__r_.__value_.__l.__data_ = v9;
      }

      if (SHIBYTE(v7[-5].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, v7[-5].__r_.__value_.__l.__data_, v7[-5].__r_.__value_.__l.__size_);
      }

      else
      {
        v10 = *&v7[-5].__r_.__value_.__l.__data_;
        v17.__r_.__value_.__r.__words[2] = v7[-5].__r_.__value_.__r.__words[2];
        *&v17.__r_.__value_.__l.__data_ = v10;
      }

      quasar::MetaInfo::Sense::Sense(v20, &v19, &v18, &v17);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      quasar::AmbiguityAnnotatorBlock::Match::toString(&v7[-11].__r_.__value_.__r.__words[1], &__str);
      std::string::operator=(&v21, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      size = v7[-10].__r_.__value_.__l.__size_;
      quasar::AmbiguityAnnotatorBlock::Match::toString(&v7[-10].__r_.__value_.__r.__words[2], &__str);
      std::string::operator=(&v23, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v24 = v7[-9].__r_.__value_.__r.__words[2];
      std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>(&v25, v7 - 4);
      std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>(&v26, v7 - 3);
      if ((*quasar::OptionValue<BOOL>::value(this + 265) & 1) == 0)
      {
        std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>(&v27, v7 - 2);
      }

      std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>(&v28, v7 - 1);
      std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>(&v29, v7);
      v11 = v31;
      if (v31 >= v32)
      {
        v12 = std::vector<quasar::MetaInfo::Sense>::__emplace_back_slow_path<quasar::MetaInfo::Sense&>(&v30, v20);
      }

      else
      {
        quasar::MetaInfo::Sense::Sense(v31, v20);
        v12 = (v11 + 296);
      }

      v31 = v12;
      quasar::MetaInfo::Sense::~Sense(v20);
      v13 = v7 + 1;
      v7 = (v7 + 280);
    }

    while (v13 != v6);
  }

  v14 = 0uLL;
  v15 = 0;
  std::vector<quasar::MetaInfo::Sense>::__init_with_size[abi:ne200100]<quasar::MetaInfo::Sense*,quasar::MetaInfo::Sense*>(&v14, v30, v31, 0x14C1BACF914C1BADLL * ((v31 - v30) >> 3));
  quasar::MetaInfo::setAmbiguityAnnotatorSenses(a2, &v14);
  *&v20[0] = &v14;
  std::vector<quasar::MetaInfo::Sense>::__destroy_vector::operator()[abi:ne200100](v20);
  *&v20[0] = &v30;
  std::vector<quasar::MetaInfo::Sense>::__destroy_vector::operator()[abi:ne200100](v20);
}

void sub_1B589E098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39)
{
  std::vector<quasar::MetaInfo::Sense>::__destroy_vector::operator()[abi:ne200100](&a39);
  a39 = v39 - 88;
  std::vector<quasar::MetaInfo::Sense>::__destroy_vector::operator()[abi:ne200100](&a39);
  _Unwind_Resume(a1);
}

void *std::vector<quasar::MetaInfo::Sense>::reserve(void *result, unint64_t a2)
{
  if (0x14C1BACF914C1BADLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xDD67C8A60DD67DLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::MetaInfo::Sense>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B589E228(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::MetaInfo::Sense>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void quasar::AmbiguityAnnotatorBlock::Match::toString(quasar::AmbiguityAnnotatorBlock::Match *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  kaldi::JoinVectorToString(this, " ", 1, a2);
}

void sub_1B589E278(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::AmbiguityAnnotatorBlock::extractTokenSequence(uint64_t a1, uint64_t a2)
{
  v2 = quasar::MetaInfo::get((a2 + 256));
  std::string::basic_string[abi:ne200100]<0>(__p, "tokenizer output");
  quasar::PTree::getChildOptional(v2, __p);
}

void quasar::AmbiguityAnnotatorBlock::convertTokenToCharacterSpan(uint64_t a1, uint64_t a2)
{
  v2 = quasar::MetaInfo::get((a2 + 256));
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  std::string::basic_string[abi:ne200100]<0>(v3, "tokenizer output");
  quasar::PTree::getChildOptional(v2, v3);
}

void sub_1B589E920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  quasar::QuasarWarnMessage::~QuasarWarnMessage(&__p);
  std::__tree<int>::destroy(v54 - 128, *(v54 - 120));
  _Unwind_Resume(a1);
}

void quasar::AmbiguityAnnotatorBlock::processBody(quasar::AmbiguityAnnotatorBlock *this)
{
  Value = quasar::ProcessingInput::getValue((this + 2576));
  if (*Value == Value[1] && quasar::gLogLevel >= 1)
  {
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
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "empty source input received", 27);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(&v7);
  }

  v4 = quasar::ProcessingInput::getValue((this + 2632));
  if (*v4 == v4[1] && quasar::gLogLevel >= 1)
  {
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
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "empty nbest input received", 26);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(&v7);
  }

  v6 = quasar::ProcessingInput::getValue((this + 2576));
  quasar::AmbiguityAnnotatorBlock::extractTokenSequence(v6, *v6);
}

void sub_1B589EE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, char *a33)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  a33 = &a30;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a33);
  _Unwind_Resume(a1);
}

uint64_t quasar::AmbiguityAnnotatorBlock::annotateAmbiguity(void *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v50[4] = *MEMORY[0x1E69E9840];
  v7 = a1[337];
  v46 = a1[336];
  v47 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = quasar::OptionValue<int>::value(a1 + 193);
  v9 = *quasar::OptionValue<BOOL>::value(a1 + 211);
  v10 = quasar::OptionValue<BOOL>::value(a1 + 229);
  quasar::AmbiguityAnnotatorBlock::Senses::Senses(v49, a3, &v46, v8, v9, *v10);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  quasar::AmbiguityAnnotatorBlock::Senses::keys(v49, &v41);
  v12 = v41;
  v11 = v42;
  if (v41 != v42)
  {
    while (1)
    {
      if (quasar::gLogLevel >= 5)
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
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "source span: ", 13);
        quasar::operator<<(v13, v12);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v24);
      }

      v22 = 0;
      v23 = 0;
      v21 = &v22;
      if (quasar::AmbiguityAnnotatorBlock::findAlternatives(a1, v12, v49, &v21, a4))
      {
        break;
      }

      std::__tree<std::__value_type<int,std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>>,std::__map_value_compare<int,std::__value_type<int,std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>>>>::destroy(&v21, v22);
      v12 += 2;
      if (v12 == v11)
      {
        goto LABEL_20;
      }
    }

    if (quasar::gLogLevel >= 5)
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
      v14 = MEMORY[0x1B8C84C30](&v24, v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " alternatives", 13);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v24);
    }

    v20 = 0;
    if (a4[1] != *a4)
    {
      do
      {
        v48 = &v20;
        v15 = std::__tree<std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v21, &v20);
        if (v15[6] != v15[5])
        {
          v48 = &v20;
          v16 = std::__tree<std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v21, &v20);
          *&v24 = 0;
          quasar::AmbiguityAnnotatorBlock::convertTokenToCharacterSpan(v16, a2);
        }

        if ((*quasar::OptionValue<BOOL>::value((a1 + *(a1[283] - 24) + 2264)) & 1) == 0)
        {
          std::vector<quasar::TranslationPhraseInternal>::push_back[abi:ne200100](&v43, (*a4 + 264 * v20));
        }

        v17 = ++v20;
      }

      while (0xF83E0F83E0F83E1 * ((a4[1] - *a4) >> 3) > v17);
    }

    std::__tree<std::__value_type<int,std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>>,std::__map_value_compare<int,std::__value_type<int,std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>>>>::destroy(&v21, v22);
LABEL_20:
    v12 = v41;
  }

  if (v12)
  {
    v42 = v12;
    operator delete(v12);
  }

  if (v43 == v44)
  {
    if (quasar::gLogLevel >= 5)
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
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "no alternatives", 15);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v24);
    }
  }

  else
  {
    a4 = &v43;
  }

  quasar::AmbiguityAnnotatorBlock::sender(a1, a4);
  *&v24 = &v43;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v24);
  std::__tree<std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>,std::__map_value_compare<quasar::AmbiguityAnnotatorBlock::MatchSpan,std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>,std::function<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>,false>,std::allocator<std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>>>::destroy(v49, v49[1]);
  return std::__function::__value_func<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>::~__value_func[abi:ne200100](v50);
}

void sub_1B589F340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char *a13, uint64_t a14, void **a15)
{
  std::__tree<std::__value_type<int,std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>>,std::__map_value_compare<int,std::__value_type<int,std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>>>>::destroy(&a12, a13);
  v18 = *(v15 + 272);
  if (v18)
  {
    *(v15 + 280) = v18;
    operator delete(v18);
  }

  a15 = (v16 - 216);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&a15);
  quasar::AmbiguityAnnotatorBlock::Senses::~Senses((v16 - 160));
  _Unwind_Resume(a1);
}

BOOL quasar::AmbiguityAnnotatorBlock::findAlternatives(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>::vector[abi:ne200100](&v124, 0xF83E0F83E0F83E1 * ((a5[1] - *a5) >> 3));
  v121 = 0;
  v122 = 0;
  v123 = 0;
  v9 = *a5;
  if (*a5 != a5[1])
  {
    memset(v100, 0, 24);
    quasar::AmbiguityAnnotatorBlock::extractTokenSequence(v8, v9);
  }

  v95 = a4;
  v120[0] = 0;
  v120[1] = 0;
  v119 = v120;
  v10 = std::map<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches,std::function<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>,std::allocator<std::pair<quasar::AmbiguityAnnotatorBlock::MatchSpan const,quasar::AmbiguityAnnotatorBlock::SenseMatches>>>::at(a3, a2);
  v11 = *v10;
  v94 = v10[1];
  if (*v10 != v94)
  {
    while (1)
    {
      v13 = v121;
      v12 = v122;
      if (v121 != v122)
      {
        break;
      }

LABEL_48:
      v11 += 280;
      if (v11 == v94)
      {
        goto LABEL_49;
      }
    }

    v14 = 0;
    while (1)
    {
      v15 = *v13;
      v16 = *(v13 + 8);
      v17 = *(v11 + 64);
      v18 = *(v11 + 72);
      LOBYTE(v97) = 0;
      v19 = std::__search_impl[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>,std::__equal_to,std::__identity,std::__identity,0>(v15, v16, v17, v18, &v116, &v97, &v97);
      if (*(v13 + 8) == v19)
      {
        goto LABEL_46;
      }

      if (*quasar::OptionValue<BOOL>::value((a1 + 2416 + *(*(a1 + 2416) - 24))))
      {
        goto LABEL_14;
      }

      std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(v100, (v11 + 88), (v11 + 208));
      std::__tree<std::pair<std::string,std::string>>::__emplace_unique_key_args<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(&v119, v100);
      v21 = v20;
      if (SHIBYTE(v101) < 0)
      {
        operator delete(*&v100[24]);
      }

      if ((v100[23] & 0x80000000) == 0)
      {
        break;
      }

      operator delete(*v100);
      if (v21)
      {
        goto LABEL_14;
      }

LABEL_47:
      v13 += 24;
      if (v13 == v12)
      {
        goto LABEL_48;
      }
    }

    if ((v21 & 1) == 0)
    {
      goto LABEL_47;
    }

LABEL_14:
    v118 = -1431655765 * ((v19 - *v13) >> 3);
    *v100 = -1431655765 * ((*(v11 + 72) - *(v11 + 64)) >> 3);
    quasar::AmbiguityAnnotatorBlock::SenseMatch::addTargetMatch(v11, (v11 + 64), &v118, v100);
    if (quasar::gLogLevel >= 5)
    {
      v116 = 0uLL;
      v117 = 0;
      kaldi::JoinVectorToString((v11 + 64), " ", 1, &v116);
      if (quasar::gLogLevel >= 5)
      {
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v101 = 0u;
        memset(v100, 0, sizeof(v100));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v100);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v100, "in hypothesis ", 14);
        v23 = MEMORY[0x1B8C84C00](v22, v14);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " ", 1);
        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "", 1);
        quasar::AmbiguityAnnotatorBlock::Match::toString(v11, &v97);
        if ((v99 & 0x80u) == 0)
        {
          v26 = &v97;
        }

        else
        {
          v26 = v97;
        }

        if ((v99 & 0x80u) == 0)
        {
          v27 = v99;
        }

        else
        {
          v27 = v98;
        }

        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " ", 2);
        v30 = quasar::operator<<(v29, a2);
        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " is translated as ", 19);
        if (v117 >= 0)
        {
          v32 = &v116;
        }

        else
        {
          v32 = v116;
        }

        if (v117 >= 0)
        {
          v33 = HIBYTE(v117);
        }

        else
        {
          v33 = *(&v116 + 1);
        }

        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v32, v33);
        v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " ", 2);
        v126 = __PAIR64__(-1431655765 * ((*(v11 + 72) - *(v11 + 64)) >> 3), v118);
        v36 = quasar::operator<<(v35, &v126);
        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " in sense ", 10);
        v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "", 1);
        v39 = *(v11 + 111);
        if (v39 >= 0)
        {
          v40 = v11 + 88;
        }

        else
        {
          v40 = *(v11 + 88);
        }

        if (v39 >= 0)
        {
          v41 = *(v11 + 111);
        }

        else
        {
          v41 = *(v11 + 96);
        }

        v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v40, v41);
        v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "", 1);
        v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, " (", 2);
        v45 = *(v11 + 135);
        if (v45 >= 0)
        {
          v46 = v11 + 112;
        }

        else
        {
          v46 = *(v11 + 112);
        }

        if (v45 >= 0)
        {
          v47 = *(v11 + 135);
        }

        else
        {
          v47 = *(v11 + 120);
        }

        v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v46, v47);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ")", 1);
        if (v99 < 0)
        {
          operator delete(v97);
        }

        quasar::QuasarDebugMessage::~QuasarDebugMessage(v100);
      }

      if (SHIBYTE(v117) < 0)
      {
        operator delete(v116);
      }
    }

    quasar::AmbiguityAnnotatorBlock::SenseMatches::add(&v124[3 * v14], v11);
LABEL_46:
    v14 = (v14 + 1);
    goto LABEL_47;
  }

LABEL_49:
  v49 = v124;
  v50 = v125;
  if (v124 != v125)
  {
    do
    {
      v51 = 0xAF8AF8AF8AF8AF8BLL * ((v49[1] - *v49) >> 3);
      if (v51 >= 2 && v51 > *quasar::OptionValue<int>::value((a1 + 1976)))
      {
        if (quasar::gLogLevel >= 5)
        {
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v101 = 0u;
          memset(v100, 0, sizeof(v100));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v100);
          v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v100, "limiting senses to ", 19);
          v53 = quasar::OptionValue<int>::value((a1 + 1976));
          v54 = MEMORY[0x1B8C84C00](v52, *v53);
          v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, ": ", 2);
          v56 = MEMORY[0x1B8C84C30](v55, 0xAF8AF8AF8AF8AF8BLL * ((v49[1] - *v49) >> 3));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, " before limit", 13);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(v100);
        }

        v57 = *v49;
        v58 = quasar::OptionValue<int>::value((a1 + 1976));
        std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatch>::erase(v49, v57 + 280 * *v58, v49[1]);
        if (quasar::gLogLevel >= 5)
        {
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v101 = 0u;
          memset(v100, 0, sizeof(v100));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v100);
          v59 = MEMORY[0x1B8C84C30](v100, 0xAF8AF8AF8AF8AF8BLL * ((v49[1] - *v49) >> 3));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, " after limit", 12);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(v100);
        }
      }

      v49 += 3;
    }

    while (v49 != v50);
    if (v125 != v124 && *v124 != v124[1])
    {
      quasar::AmbiguityAnnotatorBlock::SenseMatches::senseIDs(v124, &v116);
      v60 = v116;
      if (v116 != (&v116 + 8))
      {
        v61 = quasar::gLogLevel;
        do
        {
          if (v61 >= 5)
          {
            v114 = 0u;
            v115 = 0u;
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v108 = 0u;
            v109 = 0u;
            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v101 = 0u;
            memset(v100, 0, sizeof(v100));
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v100);
            v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v100, "found the sense ", 17);
            v63 = *(v60 + 55);
            if (v63 >= 0)
            {
              v64 = (v60 + 2);
            }

            else
            {
              v64 = *(v60 + 4);
            }

            if (v63 >= 0)
            {
              v65 = *(v60 + 55);
            }

            else
            {
              v65 = *(v60 + 5);
            }

            v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, v64, v65);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, " in 1-best", 11);
            quasar::QuasarDebugMessage::~QuasarDebugMessage(v100);
            v61 = quasar::gLogLevel;
          }

          v67 = *(v60 + 1);
          if (v67)
          {
            do
            {
              v68 = v67;
              v67 = *v67;
            }

            while (v67);
          }

          else
          {
            do
            {
              v68 = *(v60 + 2);
              v69 = *v68 == v60;
              v60 = v68;
            }

            while (!v69);
          }

          v60 = v68;
        }

        while (v68 != (&v116 + 8));
      }

      if (*quasar::OptionValue<BOOL>::value((a1 + 2416 + *(*(a1 + 2416) - 24))))
      {
        *v100 = 0;
        v70 = v95;
        if (v125 != v124)
        {
          do
          {
            v97 = v100;
            v71 = std::__tree<std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v95, v100);
            std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>::push_back[abi:ne200100]((v71 + 5), &v124[3 * *v100]);
            v72 = *v100 + 1;
            ++*v100;
          }

          while (0xAAAAAAAAAAAAAAABLL * (v125 - v124) > v72);
        }

        goto LABEL_111;
      }

      *v100 = 0;
      v97 = v100;
      v73 = std::__tree<std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v95, v100);
      std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>::push_back[abi:ne200100]((v73 + 5), v124);
      v118 = 1;
      v74 = v124;
      if (0xAAAAAAAAAAAAAAABLL * (v125 - v124) < 2)
      {
LABEL_110:
        v70 = v95;
LABEL_111:
        std::__tree<std::string>::destroy(&v116, *(&v116 + 1));
        goto LABEL_112;
      }

      v75 = 1;
      while (1)
      {
        quasar::AmbiguityAnnotatorBlock::SenseMatches::senseIDs(&v74[3 * v75], &v97);
        v76 = v97;
        if (v97 != &v98)
        {
          break;
        }

LABEL_109:
        std::__tree<std::string>::destroy(&v97, v98);
        v75 = v118++ + 1;
        v74 = v124;
        if (0xAAAAAAAAAAAAAAABLL * (v125 - v124) <= v75)
        {
          goto LABEL_110;
        }
      }

      while (1)
      {
        if ((&v116 + 8) == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v116, v76 + 4))
        {
          goto LABEL_94;
        }

        v77 = v76[55];
        if (v77 < 0)
        {
          v78 = *(v76 + 4);
          v77 = *(v76 + 5);
          if (v77)
          {
LABEL_89:
            v79 = 0;
            do
            {
              v80 = *v78++;
              if (v80 == 46)
              {
                ++v79;
              }

              --v77;
            }

            while (v77);
            if (v79 != 3)
            {
              goto LABEL_103;
            }

LABEL_94:
            if (quasar::gLogLevel >= 5)
            {
              v114 = 0u;
              v115 = 0u;
              v112 = 0u;
              v113 = 0u;
              v110 = 0u;
              v111 = 0u;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v104 = 0u;
              v105 = 0u;
              v102 = 0u;
              v103 = 0u;
              v101 = 0u;
              memset(v100, 0, sizeof(v100));
              kaldi::KaldiWarnMessage::KaldiWarnMessage(v100);
              v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v100, "found the sense ", 17);
              v82 = v76[55];
              if (v82 >= 0)
              {
                v83 = (v76 + 32);
              }

              else
              {
                v83 = *(v76 + 4);
              }

              if (v82 >= 0)
              {
                v84 = v76[55];
              }

              else
              {
                v84 = *(v76 + 5);
              }

              v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, v83, v84);
              v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, " in hypothesis ", 16);
              MEMORY[0x1B8C84C00](v86, v118);
              quasar::QuasarDebugMessage::~QuasarDebugMessage(v100);
            }

            v126 = &v118;
            v87 = std::__tree<std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v95, &v118);
            std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>::push_back[abi:ne200100]((v87 + 5), &v124[3 * v118]);
            std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v116, v76 + 4);
          }
        }

        else
        {
          v78 = (v76 + 32);
          if (v76[55])
          {
            goto LABEL_89;
          }
        }

LABEL_103:
        v88 = *(v76 + 1);
        if (v88)
        {
          do
          {
            v89 = v88;
            v88 = *v88;
          }

          while (v88);
        }

        else
        {
          do
          {
            v89 = *(v76 + 2);
            v69 = *v89 == v76;
            v76 = v89;
          }

          while (!v69);
        }

        v76 = v89;
        if (v89 == &v98)
        {
          goto LABEL_109;
        }
      }
    }
  }

  v70 = v95;
  if (quasar::gLogLevel >= 5)
  {
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    memset(v100, 0, sizeof(v100));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v100);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v100, "best hypothesis has no sense match", 34);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v100);
  }

LABEL_112:
  v90 = *(v70 + 16);
  if (v90 == 1)
  {
    std::__tree<std::__value_type<int,std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>>,std::__map_value_compare<int,std::__value_type<int,std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>>>>::destroy(v70, *(v70 + 8));
    v90 = 0;
    *v70 = v70 + 8;
    *(v70 + 16) = 0;
    *(v70 + 8) = 0;
  }

  v91 = v90 != 0;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v119, v120[0]);
  *v100 = &v121;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](v100);
  *v100 = &v124;
  std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>::__destroy_vector::operator()[abi:ne200100](v100);
  return v91;
}

void sub_1B589FEC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20)
{
  std::__tree<std::string>::destroy(v20 - 216, *(v20 - 208));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v20 - 184, *(v20 - 176));
  a20 = v20 - 160;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a20);
  a20 = v20 - 136;
  std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>::__destroy_vector::operator()[abi:ne200100](&a20);
  _Unwind_Resume(a1);
}

void quasar::AmbiguityAnnotatorBlock::SenseMatch::addTargetMatch(uint64_t a1, uint64_t *a2, _DWORD *a3, int *a4)
{
  v6 = *a4;
  v10 = 0;
  v9 = 0uLL;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v9, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  LODWORD(v11) = *a3;
  HIDWORD(v11) = v6;
  std::vector<std::string>::__vdeallocate((a1 + 32));
  *(a1 + 32) = v9;
  v7 = v10;
  v8 = v11;
  v10 = 0;
  v9 = 0uLL;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  v12 = &v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
}

uint64_t quasar::AmbiguityAnnotatorBlock::SenseMatches::add(quasar::AmbiguityAnnotatorBlock::SenseMatches *this, const quasar::AmbiguityAnnotatorBlock::SenseMatch *a2)
{
  v3 = *(this + 1);
  if (v3 >= *(this + 2))
  {
    result = std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatch>::__emplace_back_slow_path<quasar::AmbiguityAnnotatorBlock::SenseMatch const&>(this, a2);
  }

  else
  {
    quasar::AmbiguityAnnotatorBlock::SenseMatch::SenseMatch(*(this + 1), a2);
    result = v3 + 280;
    *(this + 1) = v3 + 280;
  }

  *(this + 1) = result;
  return result;
}

uint64_t std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatch>::erase(uint64_t a1, uint64_t a2, void **a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        quasar::AmbiguityAnnotatorBlock::SenseMatch::operator=(v7, v4);
        v4 += 280;
        v7 += 280;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v6 -= 35;
      quasar::AmbiguityAnnotatorBlock::SenseMatch::~SenseMatch(v6);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t *quasar::AmbiguityAnnotatorBlock::SenseMatches::senseIDs@<X0>(uint64_t *this@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v3 = *this;
  v4 = this[1];
  while (v3 != v4)
  {
    this = std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a2, (v3 + 88));
    v3 += 280;
  }

  return this;
}

uint64_t std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>::__emplace_back_slow_path<quasar::AmbiguityAnnotatorBlock::SenseMatches const&>(a1, a2);
  }

  else
  {
    std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>::__construct_one_at_end[abi:ne200100]<quasar::AmbiguityAnnotatorBlock::SenseMatches const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void quasar::AmbiguityAnnotatorBlock::sender(void *a1, uint64_t *a2)
{
  if (quasar::gLogLevel >= 6)
  {
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
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "metainfo for the alternatives:", 30);
    quasar::QuasarTraceMessage::~QuasarTraceMessage(__p);
  }

  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v6 = quasar::MetaInfo::get((v4 + 256));
      std::string::basic_string[abi:ne200100]<0>(__p, "tokenizer input");
      quasar::PTree::erase(v6, __p);
      if (SBYTE7(v8) < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "tokenizer output");
      quasar::PTree::erase(v6, __p);
      if (SBYTE7(v8) < 0)
      {
        operator delete(__p[0]);
      }

      if (quasar::gLogLevel >= 6)
      {
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
        v12 = 0u;
        v13 = 0u;
        v10 = 0u;
        v11 = 0u;
        v8 = 0u;
        v9 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        quasar::operator<<(__p, v6);
        quasar::QuasarTraceMessage::~QuasarTraceMessage(__p);
      }

      v4 += 264;
    }

    while (v4 != v5);
  }

  quasar::ProcessingBlock::send(a1 + *(*a1 - 24), a2, 0);
}

void quasar::AmbiguityAnnotatorBlock::Senses::keys(quasar::AmbiguityAnnotatorBlock::Senses **this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = this + 1;
  v3 = *this;
  if (*this != (this + 1))
  {
    v5 = 0;
    do
    {
      v6 = *(a2 + 16);
      if (v5 >= v6)
      {
        v7 = (v5 - *a2) >> 3;
        if ((v7 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v8 = v6 - *a2;
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
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a2, v10);
        }

        *(8 * v7) = *(v3 + 4);
        v5 = (8 * v7 + 8);
        v11 = *(a2 + 8) - *a2;
        v12 = (8 * v7 - v11);
        memcpy(v12, *a2, v11);
        v13 = *a2;
        *a2 = v12;
        *(a2 + 8) = v5;
        *(a2 + 16) = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v5++ = *(v3 + 4);
      }

      *(a2 + 8) = v5;
      v14 = *(v3 + 1);
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
          v15 = *(v3 + 2);
          v16 = *v15 == v3;
          v3 = v15;
        }

        while (!v16);
      }

      v3 = v15;
    }

    while (v15 != v2);
  }
}

void sub_1B58A0554(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ConfiguredProcessingBlock<quasar::AmbiguityAnnotatorOptions>::setContextProvider(uint64_t a1, uint64_t *a2)
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

void sub_1B58A0690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13)
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

void quasar::AmbiguityAnnotatorBlock::~AmbiguityAnnotatorBlock(quasar::AmbiguityAnnotatorBlock *this)
{
  quasar::ProcessingBlock::~ProcessingBlock((v1 + 2704));
}

{
  quasar::ProcessingBlock::~ProcessingBlock((v1 + 2704));

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::AmbiguityAnnotatorBlock::inputs@<X0>(quasar::AmbiguityAnnotatorBlock *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 2576;
  v3[1] = this + 2632;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::ProcessingInput *>::__init_with_size[abi:ne200100]<quasar::ProcessingInput * const*,quasar::ProcessingInput * const*>(a2, v3, &v4, 2uLL);
}

uint64_t non-virtual thunk toquasar::AmbiguityAnnotatorBlock::inputs@<X0>(quasar::AmbiguityAnnotatorBlock *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 8;
  v3[1] = this + 64;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::ProcessingInput *>::__init_with_size[abi:ne200100]<quasar::ProcessingInput * const*,quasar::ProcessingInput * const*>(a2, v3, &v4, 2uLL);
}

void non-virtual thunk toquasar::AmbiguityAnnotatorBlock::~AmbiguityAnnotatorBlock(char **this)
{

  quasar::ProcessingBlock::~ProcessingBlock(this + 17);
}

{
  quasar::ProcessingBlock::~ProcessingBlock(this + 17);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toquasar::AmbiguityAnnotatorBlock::~AmbiguityAnnotatorBlock(quasar::AmbiguityAnnotatorBlock *this)
{
  v2 = (v1 + 2704);

  quasar::ProcessingBlock::~ProcessingBlock(v2);
}

{
  v1 = (this + *(*this - 24));
  quasar::ProcessingBlock::~ProcessingBlock(v1 + 338);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::map<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches,std::function<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>,std::allocator<std::pair<quasar::AmbiguityAnnotatorBlock::MatchSpan const,quasar::AmbiguityAnnotatorBlock::SenseMatches>>>::at(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>,std::__map_value_compare<quasar::AmbiguityAnnotatorBlock::MatchSpan,std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>,std::function<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>,false>,std::allocator<std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>>>::__find_equal<quasar::AmbiguityAnnotatorBlock::MatchSpan>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 40;
}

void *std::__tree<std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>,std::__map_value_compare<quasar::AmbiguityAnnotatorBlock::MatchSpan,std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>,std::function<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>,false>,std::allocator<std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>>>::__find_equal<quasar::AmbiguityAnnotatorBlock::MatchSpan>(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = *(a1 + 48);
    if (!v7)
    {
LABEL_10:
      std::__throw_bad_function_call[abi:ne200100]();
    }

    while (1)
    {
      if ((*(*v7 + 48))(v7, a3, v5 + 4))
      {
        v9 = *v5;
        v4 = v5;
        if (!*v5)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v10 = *(a1 + 48);
        if (!v10)
        {
          goto LABEL_10;
        }

        if (!(*(*v10 + 48))(v10, v5 + 4, a3))
        {
          goto LABEL_12;
        }

        v4 = v5 + 1;
        v9 = v5[1];
        if (!v9)
        {
          goto LABEL_12;
        }
      }

      v7 = *(a1 + 48);
      v5 = v9;
      if (!v7)
      {
        goto LABEL_10;
      }
    }
  }

  v5 = (a1 + 8);
LABEL_12:
  *a2 = v5;
  return v4;
}

uint64_t std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatch>::__emplace_back_slow_path<quasar::AmbiguityAnnotatorBlock::SenseMatch const&>(uint64_t a1, const quasar::AmbiguityAnnotatorBlock::SenseMatch *a2)
{
  v2 = 0xAF8AF8AF8AF8AF8BLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xEA0EA0EA0EA0EALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5F15F15F15F15F16 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5F15F15F15F15F16 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAF8AF8AF8AF8AF8BLL * ((*(a1 + 16) - *a1) >> 3) >= 0x75075075075075)
  {
    v6 = 0xEA0EA0EA0EA0EALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AmbiguityAnnotatorBlock::SenseMatch>>(a1, v6);
  }

  v13 = 0;
  v14 = 280 * v2;
  quasar::AmbiguityAnnotatorBlock::SenseMatch::SenseMatch((280 * v2), a2);
  v15 = 280 * v2 + 280;
  v7 = *(a1 + 8);
  v8 = 280 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::AmbiguityAnnotatorBlock::SenseMatch>,quasar::AmbiguityAnnotatorBlock::SenseMatch*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::AmbiguityAnnotatorBlock::SenseMatch>::~__split_buffer(&v13);
  return v12;
}

void sub_1B58A0C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::AmbiguityAnnotatorBlock::SenseMatch>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

quasar::AmbiguityAnnotatorBlock::SenseMatch *quasar::AmbiguityAnnotatorBlock::SenseMatch::SenseMatch(quasar::AmbiguityAnnotatorBlock::SenseMatch *this, const quasar::AmbiguityAnnotatorBlock::SenseMatch *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this, *a2, *(a2 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3));
  v4 = *(a2 + 3);
  *(this + 4) = 0;
  *(this + 3) = v4;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 32, *(a2 + 4), *(a2 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 5) - *(a2 + 4)) >> 3));
  v5 = *(a2 + 7);
  *(this + 8) = 0;
  *(this + 7) = v5;
  *(this + 9) = 0;
  *(this + 10) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 64, *(a2 + 8), *(a2 + 9), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 9) - *(a2 + 8)) >> 3));
  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v6 = *(a2 + 88);
    *(this + 13) = *(a2 + 13);
    *(this + 88) = v6;
  }

  if (*(a2 + 135) < 0)
  {
    std::string::__init_copy_ctor_external((this + 112), *(a2 + 14), *(a2 + 15));
  }

  else
  {
    v7 = *(a2 + 7);
    *(this + 16) = *(a2 + 16);
    *(this + 7) = v7;
  }

  if (*(a2 + 159) < 0)
  {
    std::string::__init_copy_ctor_external((this + 136), *(a2 + 17), *(a2 + 18));
  }

  else
  {
    v8 = *(a2 + 136);
    *(this + 19) = *(a2 + 19);
    *(this + 136) = v8;
  }

  if (*(a2 + 183) < 0)
  {
    std::string::__init_copy_ctor_external((this + 160), *(a2 + 20), *(a2 + 21));
  }

  else
  {
    v9 = *(a2 + 10);
    *(this + 22) = *(a2 + 22);
    *(this + 10) = v9;
  }

  if (*(a2 + 207) < 0)
  {
    std::string::__init_copy_ctor_external((this + 184), *(a2 + 23), *(a2 + 24));
  }

  else
  {
    v10 = *(a2 + 184);
    *(this + 25) = *(a2 + 25);
    *(this + 184) = v10;
  }

  if (*(a2 + 231) < 0)
  {
    std::string::__init_copy_ctor_external((this + 208), *(a2 + 26), *(a2 + 27));
  }

  else
  {
    v11 = *(a2 + 13);
    *(this + 28) = *(a2 + 28);
    *(this + 13) = v11;
  }

  if (*(a2 + 255) < 0)
  {
    std::string::__init_copy_ctor_external((this + 232), *(a2 + 29), *(a2 + 30));
  }

  else
  {
    v12 = *(a2 + 232);
    *(this + 31) = *(a2 + 31);
    *(this + 232) = v12;
  }

  if (*(a2 + 279) < 0)
  {
    std::string::__init_copy_ctor_external((this + 256), *(a2 + 32), *(a2 + 33));
  }

  else
  {
    v13 = *(a2 + 16);
    *(this + 34) = *(a2 + 34);
    *(this + 16) = v13;
  }

  return this;
}

void sub_1B58A0E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 + 255) < 0)
  {
    operator delete(*(v10 + 232));
  }

  if (*(v10 + 231) < 0)
  {
    operator delete(*(v10 + 208));
  }

  if (*(v10 + 207) < 0)
  {
    operator delete(*(v10 + 184));
  }

  if (*(v10 + 183) < 0)
  {
    operator delete(*(v10 + 160));
  }

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

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AmbiguityAnnotatorBlock::SenseMatch>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xEA0EA0EA0EA0EBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::AmbiguityAnnotatorBlock::SenseMatch>,quasar::AmbiguityAnnotatorBlock::SenseMatch*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = v6[2];
      v6[1] = 0;
      v6[2] = 0;
      *v6 = 0;
      v7 = v6[3];
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 24) = v7;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v6 + 2);
      *(a4 + 48) = v6[6];
      v6[5] = 0;
      v6[6] = 0;
      v6[4] = 0;
      v8 = v6[7];
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 56) = v8;
      *(a4 + 64) = 0;
      *(a4 + 64) = *(v6 + 4);
      *(a4 + 80) = v6[10];
      v6[8] = 0;
      v6[9] = 0;
      v6[10] = 0;
      v9 = *(v6 + 11);
      *(a4 + 104) = v6[13];
      *(a4 + 88) = v9;
      v6[12] = 0;
      v6[13] = 0;
      v6[11] = 0;
      v10 = *(v6 + 7);
      *(a4 + 128) = v6[16];
      *(a4 + 112) = v10;
      v6[15] = 0;
      v6[16] = 0;
      v6[14] = 0;
      v11 = *(v6 + 17);
      *(a4 + 152) = v6[19];
      *(a4 + 136) = v11;
      v6[17] = 0;
      v6[18] = 0;
      v6[19] = 0;
      v12 = *(v6 + 10);
      *(a4 + 176) = v6[22];
      *(a4 + 160) = v12;
      v6[20] = 0;
      v6[21] = 0;
      v6[22] = 0;
      v13 = *(v6 + 23);
      *(a4 + 200) = v6[25];
      *(a4 + 184) = v13;
      v6[23] = 0;
      v6[24] = 0;
      v6[25] = 0;
      v14 = *(v6 + 13);
      *(a4 + 224) = v6[28];
      *(a4 + 208) = v14;
      v6[26] = 0;
      v6[27] = 0;
      v6[28] = 0;
      v15 = *(v6 + 29);
      *(a4 + 248) = v6[31];
      *(a4 + 232) = v15;
      v6[29] = 0;
      v6[30] = 0;
      v6[31] = 0;
      v16 = *(v6 + 16);
      *(a4 + 272) = v6[34];
      *(a4 + 256) = v16;
      v6[32] = 0;
      v6[33] = 0;
      v6[34] = 0;
      v6 += 35;
      a4 += 280;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      quasar::AmbiguityAnnotatorBlock::SenseMatch::~SenseMatch(v5);
      v5 = (v17 + 280);
    }
  }
}

void quasar::AmbiguityAnnotatorBlock::SenseMatch::~SenseMatch(void **this)
{
  if (*(this + 279) < 0)
  {
    operator delete(this[32]);
  }

  if (*(this + 255) < 0)
  {
    operator delete(this[29]);
  }

  if (*(this + 231) < 0)
  {
    operator delete(this[26]);
  }

  if (*(this + 207) < 0)
  {
    operator delete(this[23]);
  }

  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
  }

  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  v2 = this + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 4;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t std::__split_buffer<quasar::AmbiguityAnnotatorBlock::SenseMatch>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 280;
    quasar::AmbiguityAnnotatorBlock::SenseMatch::~SenseMatch((i - 280));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

quasar::AmbiguityAnnotatorBlock::Senses **quasar::AmbiguityAnnotatorBlock::Senses::Senses(quasar::AmbiguityAnnotatorBlock::Senses **a1, void *a2, void (****a3)(uint64_t *__return_ptr), int *a4, int a5, int a6)
{
  v66 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    if (a6)
    {
      v7 = &unk_1F2D36B48;
    }

    else
    {
      v7 = &unk_1F2D36BD8;
    }
  }

  else if (a6)
  {
    v7 = &unk_1F2D36C58;
  }

  else
  {
    v7 = &unk_1F2D36CD8;
  }

  __p[0] = v7;
  *(&v50 + 1) = __p;
  std::map<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches,std::function<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>,std::allocator<std::pair<quasar::AmbiguityAnnotatorBlock::MatchSpan const,quasar::AmbiguityAnnotatorBlock::SenseMatches>>>::map[abi:ne200100](a1, __p);
  std::__function::__value_func<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>::~__value_func[abi:ne200100](__p);
  if (a2[1] != *a2)
  {
    v8 = 0;
    v30 = *MEMORY[0x1E69E54E8];
    v31 = *(MEMORY[0x1E69E54E8] + 24);
    do
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v45);
      v9 = *a4;
      if (*a4 >= 1)
      {
        v10 = 1;
        do
        {
          v43 = v8;
          v44 = v10;
          if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) >= v10 + v8)
          {
            std::operator+<char>();
            if ((SBYTE7(v50) & 0x80u) == 0)
            {
              v11 = __p;
            }

            else
            {
              v11 = __p[0];
            }

            if ((SBYTE7(v50) & 0x80u) == 0)
            {
              v12 = BYTE7(v50);
            }

            else
            {
              v12 = __p[1];
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, v11, v12);
            if (SBYTE7(v50) < 0)
            {
              operator delete(__p[0]);
            }

            v13 = *a3;
            std::stringbuf::str();
            quasar::GenericPhraseBook::lookup(v13, 0, v42);
            if (SBYTE7(v50) < 0)
            {
              operator delete(__p[0]);
            }

            v14 = v42[0];
            if (v42[0] != v42[1])
            {
              quasar::PTree::PTree(&v40);
              memset(v39, 0, sizeof(v39));
              if (*(v14 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(__p, *v14, *(v14 + 1));
              }

              else
              {
                v15 = *v14;
                *&v50 = *(v14 + 2);
                *__p = v15;
              }

              kaldi::SplitStringToVector(__p, " ", 1, v39);
              if (SBYTE7(v50) < 0)
              {
                operator delete(__p[0]);
              }

              if (*(v14 + 47) < 0)
              {
                std::string::__init_copy_ctor_external(&v38, *(v14 + 3), *(v14 + 4));
              }

              else
              {
                v38 = *(v14 + 1);
              }

              quasar::json2Ptree(&v38);
              std::string::basic_string[abi:ne200100]<0>(v37, "syn");
              quasar::PTree::getStringOptional(&v40, v37);
            }

            __p[0] = v42;
            std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](__p);
            v9 = *a4;
          }
        }

        while (v10++ < v9);
      }

      v45.__r_.__value_.__r.__words[0] = v30;
      *(v45.__r_.__value_.__r.__words + *(v30 - 24)) = v31;
      v45.__r_.__value_.__l.__size_ = MEMORY[0x1E69E5548] + 16;
      if (v47 < 0)
      {
        operator delete(v46);
      }

      v45.__r_.__value_.__l.__size_ = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(&v45.__r_.__value_.__r.__words[2]);
      std::ostream::~ostream();
      MEMORY[0x1B8C85200](&v48);
      ++v8;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v8);
  }

  if (quasar::gLogLevel > 4)
  {
    quasar::AmbiguityAnnotatorBlock::Senses::keys(a1, __p);
    v17 = __p[1];
    v18 = __p[0];
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v17 == v18)
    {
      if (quasar::gLogLevel >= 5)
      {
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
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "no source spans are ambiguous", 29);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
      }
    }

    else
    {
      memset(&v45, 0, sizeof(v45));
      quasar::AmbiguityAnnotatorBlock::Senses::keys(a1, &v40);
      v19 = v40;
      v20 = v41;
      if (v40 != v41)
      {
        v21 = *MEMORY[0x1E69E54E8];
        v22 = *(MEMORY[0x1E69E54E8] + 24);
        do
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](__p);
          quasar::operator<<(__p, v19);
          std::stringbuf::str();
          if (v36 >= 0)
          {
            v23 = v35;
          }

          else
          {
            v23 = v35[0];
          }

          if (v36 >= 0)
          {
            v24 = HIBYTE(v36);
          }

          else
          {
            v24 = v35[1];
          }

          std::string::append(&v45, v23, v24);
          if (SHIBYTE(v36) < 0)
          {
            operator delete(v35[0]);
          }

          __p[0] = v21;
          *(__p + *(v21 - 3)) = v22;
          __p[1] = (MEMORY[0x1E69E5548] + 16);
          if (SHIBYTE(v54) < 0)
          {
            operator delete(*(&v53 + 1));
          }

          __p[1] = (MEMORY[0x1E69E5538] + 16);
          std::locale::~locale(&v50);
          std::ostream::~ostream();
          MEMORY[0x1B8C85200](&v56);
          v19 += 2;
        }

        while (v19 != v20);
        v19 = v40;
      }

      if (v19)
      {
        v41 = v19;
        operator delete(v19);
      }

      if (quasar::gLogLevel > 4)
      {
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
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "these source spans: ", 20);
        if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &v45;
        }

        else
        {
          v26 = v45.__r_.__value_.__r.__words[0];
        }

        if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v45.__r_.__value_.__l.__size_;
        }

        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, size);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " are ambiguous", 14);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
      }

      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }
    }
  }

  return a1;
}

void sub_1B58A1BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&STACK[0x270]);
  std::__tree<std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>,std::__map_value_compare<quasar::AmbiguityAnnotatorBlock::MatchSpan,std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>,std::function<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>,false>,std::allocator<std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>>>::destroy(a16, *(a16 + 8));
  std::__function::__value_func<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>::~__value_func[abi:ne200100](a16 + 24);
  _Unwind_Resume(a1);
}

void *std::map<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches,std::function<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>,std::allocator<std::pair<quasar::AmbiguityAnnotatorBlock::MatchSpan const,quasar::AmbiguityAnnotatorBlock::SenseMatches>>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>::__value_func[abi:ne200100](v5, v4);
  a1[1] = 0;
  a1[2] = 0;
  std::__function::__value_func<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>::__value_func[abi:ne200100]((a1 + 3), v5);
  *a1 = a1 + 1;
  std::__function::__value_func<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>::~__value_func[abi:ne200100](v5);
  std::__function::__value_func<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void sub_1B58A1F90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void quasar::AmbiguityAnnotatorBlock::SenseMatch::SenseMatch(quasar::AmbiguityAnnotatorBlock::SenseMatch *this, const quasar::AmbiguityAnnotatorBlock::Match *a2, const quasar::PTree *a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this, *a2, *(a2 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3));
  v6 = *(a2 + 3);
  *(this + 4) = 0;
  *(this + 3) = v6;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = -1;
  *(this + 60) = 0;
  *(this + 76) = 0;
  *(this + 68) = 0;
  *(this + 21) = 0;
  std::string::basic_string[abi:ne200100]<0>(v7, "syn");
  quasar::PTree::getStringOptional(a3, v7);
}

void sub_1B58A2734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (*(v36 - 41) < 0)
  {
    operator delete(*(v36 - 64));
  }

  if (a34 == 1 && a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (v34[111] < 0)
  {
    operator delete(v35[7]);
  }

  a28 = v34 + 64;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = v35;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = v34;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>,std::__map_value_compare<quasar::AmbiguityAnnotatorBlock::MatchSpan,std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>,std::function<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>,false>,std::allocator<std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>>>::__emplace_unique_key_args<quasar::AmbiguityAnnotatorBlock::MatchSpan,std::piecewise_construct_t const&,std::tuple<quasar::AmbiguityAnnotatorBlock::MatchSpan const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>,std::__map_value_compare<quasar::AmbiguityAnnotatorBlock::MatchSpan,std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>,std::function<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>,false>,std::allocator<std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>>>::__find_equal<quasar::AmbiguityAnnotatorBlock::MatchSpan>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatch>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        quasar::AmbiguityAnnotatorBlock::SenseMatch::~SenseMatch(v4 - 35);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>,std::__map_value_compare<quasar::AmbiguityAnnotatorBlock::MatchSpan,std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>,std::function<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>,false>,std::allocator<std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>,std::__map_value_compare<quasar::AmbiguityAnnotatorBlock::MatchSpan,std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>,std::function<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>,false>,std::allocator<std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>,std::__map_value_compare<quasar::AmbiguityAnnotatorBlock::MatchSpan,std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>,std::function<BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>,false>,std::allocator<std::__value_type<quasar::AmbiguityAnnotatorBlock::MatchSpan,quasar::AmbiguityAnnotatorBlock::SenseMatches>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 40);
    std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatch>::__destroy_vector::operator()[abi:ne200100](&v4);
    operator delete(a2);
  }
}

void quasar::AmbiguityAnnotatorBlock::~AmbiguityAnnotatorBlock(quasar::AmbiguityAnnotatorBlock *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[5];
  *(this + 321) = a2[6];
  v5 = *(this + 337);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v7 = (this + 2664);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (*(this + 2655) < 0)
  {
    operator delete(*(this + 329));
  }

  v7 = (this + 2608);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (*(this + 2599) < 0)
  {
    operator delete(*(this + 322));
  }

  v6 = a2[1];
  *this = v6;
  *(this + *(v6 - 24)) = a2[2];
  quasar::AmbiguityAnnotatorOptions::~AmbiguityAnnotatorOptions((this + 8));
}

BOOL std::__function::__func<quasar::AmbiguityAnnotatorBlock::MatchSpanCompare(BOOL,BOOL)::$_0,std::allocator<quasar::AmbiguityAnnotatorBlock::MatchSpanCompare(BOOL,BOOL)::$_0>,BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 < *a3)
  {
    return 1;
  }

  if (*a2 <= *a3)
  {
    return a2[1] > a3[1];
  }

  return 0;
}

uint64_t std::__function::__func<quasar::AmbiguityAnnotatorBlock::MatchSpanCompare(BOOL,BOOL)::$_0,std::allocator<quasar::AmbiguityAnnotatorBlock::MatchSpanCompare(BOOL,BOOL)::$_0>,BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<quasar::AmbiguityAnnotatorBlock::MatchSpanCompare(BOOL,BOOL)::$_1,std::allocator<quasar::AmbiguityAnnotatorBlock::MatchSpanCompare(BOOL,BOOL)::$_1>,BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 < *a3)
  {
    return 1;
  }

  if (*a2 <= *a3)
  {
    return a2[1] < a3[1];
  }

  return 0;
}

uint64_t std::__function::__func<quasar::AmbiguityAnnotatorBlock::MatchSpanCompare(BOOL,BOOL)::$_1,std::allocator<quasar::AmbiguityAnnotatorBlock::MatchSpanCompare(BOOL,BOOL)::$_1>,BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<quasar::AmbiguityAnnotatorBlock::MatchSpanCompare(BOOL,BOOL)::$_2,std::allocator<quasar::AmbiguityAnnotatorBlock::MatchSpanCompare(BOOL,BOOL)::$_2>,BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = a2[1];
  v4 = a3[1];
  if (v3 > v4)
  {
    return 1;
  }

  if (v3 < v4)
  {
    return 0;
  }

  return *a2 < *a3;
}

uint64_t std::__function::__func<quasar::AmbiguityAnnotatorBlock::MatchSpanCompare(BOOL,BOOL)::$_2,std::allocator<quasar::AmbiguityAnnotatorBlock::MatchSpanCompare(BOOL,BOOL)::$_2>,BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<quasar::AmbiguityAnnotatorBlock::MatchSpanCompare(BOOL,BOOL)::$_3,std::allocator<quasar::AmbiguityAnnotatorBlock::MatchSpanCompare(BOOL,BOOL)::$_3>,BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = a2[1];
  v4 = a3[1];
  if (v3 < v4)
  {
    return 1;
  }

  if (v3 <= v4)
  {
    return *a2 < *a3;
  }

  return 0;
}

uint64_t std::__function::__func<quasar::AmbiguityAnnotatorBlock::MatchSpanCompare(BOOL,BOOL)::$_3,std::allocator<quasar::AmbiguityAnnotatorBlock::MatchSpanCompare(BOOL,BOOL)::$_3>,BOOL ()(quasar::AmbiguityAnnotatorBlock::MatchSpan const&,quasar::AmbiguityAnnotatorBlock::MatchSpan const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>::vector[abi:ne200100](void *result, unint64_t a2)
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

void std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatch>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t quasar::AmbiguityAnnotatorBlock::SenseMatch::operator=(uint64_t a1, uint64_t a2)
{
  std::vector<std::string>::__vdeallocate(a1);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  std::vector<std::string>::__vdeallocate((a1 + 32));
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  std::vector<std::string>::__vdeallocate((a1 + 64));
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v4 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v4;
  *(a2 + 111) = 0;
  *(a2 + 88) = 0;
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v5 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v5;
  *(a2 + 135) = 0;
  *(a2 + 112) = 0;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v6 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v6;
  *(a2 + 159) = 0;
  *(a2 + 136) = 0;
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  v7 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 160) = v7;
  *(a2 + 183) = 0;
  *(a2 + 160) = 0;
  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  v8 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v8;
  *(a2 + 207) = 0;
  *(a2 + 184) = 0;
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  v9 = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 208) = v9;
  *(a2 + 231) = 0;
  *(a2 + 208) = 0;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  v10 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v10;
  *(a2 + 255) = 0;
  *(a2 + 232) = 0;
  if (*(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  v11 = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 256) = v11;
  *(a2 + 279) = 0;
  *(a2 + 256) = 0;
  return a1;
}

uint64_t std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>::__construct_one_at_end[abi:ne200100]<quasar::AmbiguityAnnotatorBlock::SenseMatches const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatch>::__init_with_size[abi:ne200100]<quasar::AmbiguityAnnotatorBlock::SenseMatch*,quasar::AmbiguityAnnotatorBlock::SenseMatch*>(v3, *a2, a2[1], 0xAF8AF8AF8AF8AF8BLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>::__emplace_back_slow_path<quasar::AmbiguityAnnotatorBlock::SenseMatches const&>(uint64_t a1, uint64_t *a2)
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

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatch>::__init_with_size[abi:ne200100]<quasar::AmbiguityAnnotatorBlock::SenseMatch*,quasar::AmbiguityAnnotatorBlock::SenseMatch*>(24 * v2, *a2, a2[1], 0xAF8AF8AF8AF8AF8BLL * ((a2[1] - *a2) >> 3));
  *&v16 = v16 + 24;
  v8 = *(a1 + 8);
  v9 = (v15 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::AmbiguityAnnotatorBlock::SenseMatches>,quasar::AmbiguityAnnotatorBlock::SenseMatches*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<quasar::AmbiguityAnnotatorBlock::SenseMatches>::~__split_buffer(&v14);
  return v13;
}

void sub_1B58A3698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::AmbiguityAnnotatorBlock::SenseMatches>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatch>::__init_with_size[abi:ne200100]<quasar::AmbiguityAnnotatorBlock::SenseMatch*,quasar::AmbiguityAnnotatorBlock::SenseMatch*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatch>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B58A3714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatch>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatch>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xEA0EA0EA0EA0EBLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AmbiguityAnnotatorBlock::SenseMatch>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

quasar::AmbiguityAnnotatorBlock::SenseMatch *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::AmbiguityAnnotatorBlock::SenseMatch>,quasar::AmbiguityAnnotatorBlock::SenseMatch*,quasar::AmbiguityAnnotatorBlock::SenseMatch*,quasar::AmbiguityAnnotatorBlock::SenseMatch*>(int a1, quasar::AmbiguityAnnotatorBlock::SenseMatch *a2, quasar::AmbiguityAnnotatorBlock::SenseMatch *a3, quasar::AmbiguityAnnotatorBlock::SenseMatch *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      quasar::AmbiguityAnnotatorBlock::SenseMatch::SenseMatch(this, v6);
      v6 = (v6 + 280);
      this = (this + 280);
      v7 -= 280;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_1B58A37E4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 280);
    do
    {
      quasar::AmbiguityAnnotatorBlock::SenseMatch::~SenseMatch(v4);
      v4 = (v5 - 280);
      v2 += 280;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::AmbiguityAnnotatorBlock::SenseMatches>,quasar::AmbiguityAnnotatorBlock::SenseMatches*>(uint64_t a1, void **a2, void **a3, void *a4)
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
      v6 += 3;
      a4 += 3;
    }

    while (v6 != a3);
    v11 = a4;
    v9 = 1;
    while (v5 != a3)
    {
      v12 = v5;
      std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatch>::__destroy_vector::operator()[abi:ne200100](&v12);
      v5 += 3;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::AmbiguityAnnotatorBlock::SenseMatches>,quasar::AmbiguityAnnotatorBlock::SenseMatches*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::AmbiguityAnnotatorBlock::SenseMatches>,quasar::AmbiguityAnnotatorBlock::SenseMatches*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::AmbiguityAnnotatorBlock::SenseMatches>,quasar::AmbiguityAnnotatorBlock::SenseMatches*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::AmbiguityAnnotatorBlock::SenseMatches>,quasar::AmbiguityAnnotatorBlock::SenseMatches*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatch>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void **std::__split_buffer<quasar::AmbiguityAnnotatorBlock::SenseMatches>::~__split_buffer(void **a1)
{
  std::__split_buffer<quasar::AmbiguityAnnotatorBlock::SenseMatches>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::AmbiguityAnnotatorBlock::SenseMatches>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatch>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void std::__tree<std::__value_type<int,std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>>,std::__map_value_compare<int,std::__value_type<int,std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>>,std::__map_value_compare<int,std::__value_type<int,std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>>,std::__map_value_compare<int,std::__value_type<int,std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 40);
    std::vector<quasar::AmbiguityAnnotatorBlock::SenseMatches>::__destroy_vector::operator()[abi:ne200100](&v4);
    operator delete(a2);
  }
}

__n128 kaldi::quasar::ShortlistDataInOneFile::ShortlistDataInOneFile(void *a1, uint64_t *a2, __n128 *a3)
{
  v3 = 0;
  v4 = *a2;
  *a2 = 0;
  *a1 = &unk_1F2D36D58;
  a1[1] = v4;
  do
  {
    v5 = &a1[v3];
    v6 = &a2[v3];
    v7 = a2[v3 + 2];
    v5[2] = a2[v3 + 1];
    v5[3] = v7;
    *(v5 + 32) = a2[v3 + 3];
    v6[1] = 0;
    v6[2] = 0;
    *(v6 + 24) = 0;
    v3 += 3;
  }

  while (v3 != 9);
  v8 = 0;
  v9 = 0;
  do
  {
    v10 = 3 * v9;
    v11 = &a1[v10 + 11];
    v12 = &a2[v10 + 10];
    v13 = *(v12 + 8);
    *v11 = *v12;
    *(v11 + 8) = v13;
    *(v11 + 16) = *(v12 + 16);
    LOBYTE(v11) = v8;
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    v8 = 1;
    v9 = 1;
  }

  while ((v11 & 1) == 0);
  a1[17] = 0;
  a1[18] = 0;
  a1[19] = 0;
  result = *a3;
  *(a1 + 17) = *a3;
  a1[19] = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  return result;
}

uint64_t kaldi::quasar::ShortlistDataInOneFile::GetConstrainedWordIds@<X0>(uint64_t result@<X0>, const void **a2@<X1>, int **a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v7 = *(result + 136);
  v8 = *(result + 144) - v7;
  if (v8)
  {
    v12 = result;
    v13 = 0;
    v14 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
    v15 = *(a2 + 23);
    if (v15 >= 0)
    {
      v16 = *(a2 + 23);
    }

    else
    {
      v16 = a2[1];
    }

    if (v15 >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    if (v14 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v14;
    }

    while (1)
    {
      v19 = *(v7 + 23);
      v20 = v19;
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(v7 + 8);
      }

      if (v16 == v19)
      {
        v21 = v20 >= 0 ? v7 : *v7;
        result = memcmp(v17, v21, v16);
        if (!result)
        {
          break;
        }
      }

      ++v13;
      v7 += 24;
      if (v18 == v13)
      {
        goto LABEL_19;
      }
    }

    return kaldi::quasar::ShortlistDataOnDisk::GetConstrainedWordIds(v12 + 8, v13, a3, a4, a5, a6);
  }

  else
  {
LABEL_19:
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 1065353216;
  }

  return result;
}

void kaldi::quasar::ShortlistDataInOneFile::Write(uint64_t a1, void *a2, uint64_t a3)
{
  kaldi::WriteToken(a2, a3, "<ShortlistTable>");
  kaldi::quasar::ShortlistDataOnDisk::Write(a1 + 8, a2, a3);
  kaldi::WriteToken(a2, a3, "<ShortlistLangPairs>");
  kaldi::JoinVectorToString<std::string>((a1 + 136), ",");
  kaldi::WriteToken(a2, a3, &__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }
}

void sub_1B58A3CBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL kaldi::quasar::ShortlistDataInOneFile::IsLanguagePairSupported(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 136);
  v3 = *(a1 + 144);
  if (v2 != v3)
  {
    v4 = *(a2 + 23);
    if (v4 >= 0)
    {
      v5 = *(a2 + 23);
    }

    else
    {
      v5 = a2[1];
    }

    if (v4 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    while (1)
    {
      v7 = *(v2 + 23);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v2 + 8);
      }

      if (v7 == v5)
      {
        v9 = v8 >= 0 ? v2 : *v2;
        if (!memcmp(v9, v6, v5))
        {
          break;
        }
      }

      v2 += 24;
      if (v2 == v3)
      {
        v2 = v3;
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

void kaldi::quasar::ShortlistDataInOneFile::Combine(uint64_t a1, void *lpsrc)
{
  if (!v3)
  {
    __cxa_bad_cast();
  }

  v4 = *(v3 + 17);
  v5 = *(v3 + 18);
  if (v4 == v5)
  {
    v6 = *(a1 + 144);
  }

  else
  {
    v7 = *(a1 + 136);
    v6 = *(a1 + 144);
    v8 = *(v3 + 17);
    do
    {
      v9 = v7;
      if (v7 != v6)
      {
        v10 = *(v8 + 23);
        if (v10 >= 0)
        {
          v11 = *(v8 + 23);
        }

        else
        {
          v11 = v8[1];
        }

        if (v10 >= 0)
        {
          v12 = v8;
        }

        else
        {
          v12 = *v8;
        }

        v9 = v7;
        while (1)
        {
          size = HIBYTE(v9->__r_.__value_.__r.__words[2]);
          v14 = size;
          if ((size & 0x80u) != 0)
          {
            size = v9->__r_.__value_.__l.__size_;
          }

          if (size == v11)
          {
            v15 = v14 >= 0 ? v9 : v9->__r_.__value_.__r.__words[0];
            if (!memcmp(v15, v12, v11))
            {
              break;
            }
          }

          if (++v9 == v6)
          {
            goto LABEL_22;
          }
        }
      }

      if (v9 != v6)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v16, "Find duplicated keys when combine 2 shortlists");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
      }

LABEL_22:
      v8 += 3;
    }

    while (v8 != v5);
  }

  std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>((a1 + 136), v6, v4, v5, 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3));
  kaldi::MappableVector<int>::append();
}

BOOL kaldi::quasar::ShortlistDataInOneFile::operator==(uint64_t a1, void *lpsrc)
{
  if (!v3)
  {
    __cxa_bad_cast();
  }

  v4 = v3;
  v5 = *(a1 + 136);
  v6 = *(a1 + 144);
  v7 = v3[17];
  if (v6 - v5 == v3[18] - v7)
  {
    while (v5 != v6)
    {
      result = std::equal_to<std::string>::operator()[abi:ne200100](&v15, v5, v7);
      if (!result)
      {
        return result;
      }

      v5 += 3;
      v7 += 3;
    }

    v9 = v4 + 3;
    v10 = (a1 + 24);
    v11 = 72;
    while (*v10 == *v9 && !memcmp(*(v10 - 1), *(v9 - 1), 4 * *v10))
    {
      v9 += 3;
      v10 += 3;
      v11 -= 24;
      if (!v11)
      {
        v12 = v4 + 12;
        v13 = (a1 + 96);
        v14 = 48;
        while (*v13 == *v12 && !memcmp(*(v13 - 1), *(v12 - 1), 4 * *v13))
        {
          v12 += 3;
          v13 += 3;
          v14 -= 24;
          if (!v14)
          {
            return 1;
          }
        }

        return 0;
      }
    }
  }

  return 0;
}

uint64_t kaldi::quasar::ShortlistDataInOneFile::GetVocabSize(kaldi::quasar::ShortlistDataInOneFile *this)
{
  if (*(this + 3) < 2uLL)
  {
    return (*(this + 12) - **(this + 2));
  }

  else
  {
    return (*(*(this + 2) + 4) - **(this + 2));
  }
}

void kaldi::quasar::ShortlistDataInOneFile::~ShortlistDataInOneFile(kaldi::quasar::ShortlistDataInOneFile *this)
{
  *this = &unk_1F2D36D58;
  v7 = (this + 136);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  for (i = 0; i != -48; i -= 24)
  {
    if (*(this + i + 128) == 1)
    {
      v3 = *(this + i + 112);
      if (v3)
      {
        MEMORY[0x1B8C85310](v3, 0x1000C8077774924);
      }
    }
  }

  for (j = 0; j != -72; j -= 24)
  {
    if (*(this + j + 80) == 1)
    {
      v5 = *(this + j + 64);
      if (v5)
      {
        MEMORY[0x1B8C85310](v5, 0x1000C8077774924);
      }
    }
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }
}

{
  *this = &unk_1F2D36D58;
  v7 = (this + 136);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  for (i = 0; i != -48; i -= 24)
  {
    if (*(this + i + 128) == 1)
    {
      v3 = *(this + i + 112);
      if (v3)
      {
        MEMORY[0x1B8C85310](v3, 0x1000C8077774924);
      }
    }
  }

  for (j = 0; j != -72; j -= 24)
  {
    if (*(this + j + 80) == 1)
    {
      v5 = *(this + j + 64);
      if (v5)
      {
        MEMORY[0x1B8C85310](v5, 0x1000C8077774924);
      }
    }
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  MEMORY[0x1B8C85350](this, 0x10F1C408308A222);
}

uint64_t quasar::SymbolTableList::strsToSymbolIds@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = std::vector<long long>::vector[abi:ne200100](a3, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v7 = *a2;
  if (a2[1] != *a2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      result = quasar::SymbolTableList::strToSymbolId(a1, v7 + v8);
      *(*a3 + 8 * v9++) = result;
      v7 = *a2;
      v8 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v9);
  }

  return result;
}

void sub_1B58A43C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::SymbolTableList::strToSymbolId(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 == *(a1 + 8))
  {
    return -1;
  }

  while (1)
  {
    result = quasar::QsrTextSymbolTable::Find(*v2, a2);
    if (result << 32 != 0xFFFFFFFF00000000)
    {
      break;
    }

    v2 += 4;
    if (v2 == *(a1 + 8))
    {
      return -1;
    }
  }

  return result;
}

void quasar::SymbolTableList::lookup(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, _DWORD *a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (v5 == *a1)
  {
    return;
  }

  v9 = a1[1];
  while (1)
  {
    v11 = *(v9 - 32);
    v9 -= 32;
    v10 = v11;
    if (v11)
    {
      if (*(v5 - 16) <= a2)
      {
        break;
      }
    }

    v5 = v9;
    if (v9 == v4)
    {
      return;
    }
  }

  *a4 = *(v5 - 8);
  quasar::QsrTextSymbolTable::Find(v10, &v31);
  if (a3[23] < 0)
  {
    operator delete(*a3);
  }

  *a3 = v31;
  v12 = v32;
  *(a3 + 2) = v32;
  v13 = HIBYTE(v12);
  if ((v12 & 0x8000000000000000) != 0)
  {
    v13 = *(a3 + 1);
  }

  if (!v13)
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
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "Word ID ", 8);
    v27 = MEMORY[0x1B8C84C00](v26, a2);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " not in symbol table ", 21);
    v29 = MEMORY[0x1B8C84C00](v28, *a4);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " with start key ", 16);
    MEMORY[0x1B8C84C60](v30, *(v5 - 16));
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v31);
  }

  if (SHIBYTE(v12) < 0)
  {
    if (*(a3 + 1) != 5)
    {
      goto LABEL_23;
    }

    v14 = *a3;
LABEL_17:
    v15 = *v14;
    v16 = v14[4];
    if (v15 == 1936745788 && v16 == 62)
    {
      MEMORY[0x1B8C84820](a3, "");
    }

    goto LABEL_23;
  }

  v14 = a3;
  if (SHIBYTE(v12) == 5)
  {
    goto LABEL_17;
  }

LABEL_23:
  if (quasar::gLogLevel >= 6)
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
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "Got word: ", 10);
    v19 = a3[23];
    if (v19 >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    if (v19 >= 0)
    {
      v21 = a3[23];
    }

    else
    {
      v21 = *(a3 + 1);
    }

    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " (", 2);
    v24 = MEMORY[0x1B8C84C00](v23, a2);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ") from symbol table ", 20);
    MEMORY[0x1B8C84C00](v25, *a4);
    quasar::QuasarTraceMessage::~QuasarTraceMessage(&v31);
  }
}

void quasar::SymbolTableList::lookup(quasar::SymbolTableList *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = 0;
  quasar::SymbolTableList::lookup(this, a2, a3, &v3);
}

void sub_1B58A46F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SymbolTableList::lookup(uint64_t *a1, unsigned int **a2, void ***a3, uint64_t a4, int a5)
{
  std::vector<std::string>::clear[abi:ne200100](a3);
  *(a4 + 8) = *a4;
  for (i = *a2; i != a2[1]; ++i)
  {
    __p = 0uLL;
    v19 = 0;
    v17 = 0;
    quasar::SymbolTableList::lookup(a1, *i, &__p, &v17);
    if (a5)
    {
      v11 = HIBYTE(v19);
      v12 = HIBYTE(v19);
      if (v19 < 0)
      {
        v11 = *(&__p + 1);
      }

      if (!v11)
      {
        goto LABEL_16;
      }

      if (SHIBYTE(v19) < 0)
      {
        if (*(&__p + 1) == 3)
        {
          p_p = __p;
LABEL_11:
          v14 = *p_p;
          v15 = *(p_p + 2);
          if (v14 == 16188 && v15 == 62)
          {
            goto LABEL_16;
          }
        }
      }

      else if (SHIBYTE(v19) == 3)
      {
        p_p = &__p;
        goto LABEL_11;
      }
    }

    std::vector<std::string>::push_back[abi:ne200100](a3, &__p);
    std::vector<int>::push_back[abi:ne200100](a4, &v17);
    v12 = HIBYTE(v19);
LABEL_16:
    if (v12 < 0)
    {
      operator delete(__p);
    }
  }
}

{
  std::vector<std::string>::clear[abi:ne200100](a3);
  *(a4 + 8) = *a4;
  for (i = *a2; i != a2[1]; i += 12)
  {
    __p = 0uLL;
    v19 = 0;
    v17 = 0;
    quasar::SymbolTableList::lookup(a1, *i, &__p, &v17);
    if (a5)
    {
      v11 = HIBYTE(v19);
      v12 = HIBYTE(v19);
      if (v19 < 0)
      {
        v11 = *(&__p + 1);
      }

      if (!v11)
      {
        goto LABEL_16;
      }

      if (SHIBYTE(v19) < 0)
      {
        if (*(&__p + 1) == 3)
        {
          p_p = __p;
LABEL_11:
          v14 = *p_p;
          v15 = *(p_p + 2);
          if (v14 == 16188 && v15 == 62)
          {
            goto LABEL_16;
          }
        }
      }

      else if (SHIBYTE(v19) == 3)
      {
        p_p = &__p;
        goto LABEL_11;
      }
    }

    std::vector<std::string>::push_back[abi:ne200100](a3, &__p);
    std::vector<int>::push_back[abi:ne200100](a4, &v17);
    v12 = HIBYTE(v19);
LABEL_16:
    if (v12 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1B58A482C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B58A4964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SymbolTableList::flatten(void *a1, void *a2)
{
  for (i = a1[1]; i != *a1; i -= 32)
  {
    v5 = *(i - 32);
    v4 = v5;
    if (v5)
    {
      v6 = quasar::QsrTextSymbolTable::NumSymbols(v4);
      NthKey = quasar::QsrTextSymbolTable::GetNthKey(v4);
      if (v6)
      {
        v8 = NthKey;
        v9 = 1;
        v10 = v6;
        do
        {
          *&v16 = v8;
          if (std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(a2, &v16))
          {
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
            v17 = 0u;
            v18 = 0u;
            v16 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v16);
            v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Word ID ", 8);
            v14 = MEMORY[0x1B8C84C60](v13, v8);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " is already in the symbol list - indices in different symbol tables are not distinct", 84);
            quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v16);
          }

          quasar::QsrTextSymbolTable::Find(v4, &v16);
          v33[0] = v8;
          v33[2] = v33;
          v11 = std::__hash_table<std::__hash_value_type<long long,std::string>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::string>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::string>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::string>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long &&>,std::tuple<>>(a2, v33);
          v12 = v11;
          if (*(v11 + 47) < 0)
          {
            operator delete(v11[3]);
          }

          *(v12 + 3) = v16;
          v12[5] = v17;
          if (v9 < v6)
          {
            v8 = quasar::QsrTextSymbolTable::GetNthKey(v4);
          }

          ++v9;
          --v10;
        }

        while (v10);
      }
    }
  }
}

void sub_1B58A4B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::SymbolTableList::getLmeSymbolIdToNumWords(void *a1, void *a2)
{
  v2 = (*a1 + 32);
  if (a1[1] != v2)
  {
    do
    {
      for (i = v2[4]; ; ++i)
      {
        v5 = *v2;
        v6 = (*(**(*v2 + 96) + 112))(*(*v2 + 96));
        if ((v6 & 0x8000000000000000) == 0)
        {
          v6 += *(v5 + 120);
        }

        if (v6 <= i)
        {
          break;
        }

        quasar::QsrTextSymbolTable::Find(*v2, v19);
        if ((v20 & 0x80u) == 0)
        {
          v7 = v20;
        }

        else
        {
          v7 = v19[1];
        }

        if (v7)
        {
          v8 = 0;
          if ((v20 & 0x80u) == 0)
          {
            v9 = v19;
          }

          else
          {
            v9 = v19[0];
          }

          v10 = v9 + v7;
          v11 = 1;
LABEL_14:
          v12 = (v7 - v8);
          if ((v7 - v8) >= 4)
          {
            v13 = v9 + v8;
            do
            {
              v14 = memchr(v13, 126, (v12 - 3));
              if (!v14)
              {
                break;
              }

              if (*v14 == 808482686)
              {
                if (v14 == v10 || v14 - v9 == -1)
                {
                  break;
                }

                ++v11;
                v8 = v14 - v9 + 4;
                if (v7 >= v8)
                {
                  goto LABEL_14;
                }

                goto LABEL_25;
              }

              v13 = v14 + 1;
              v12 = (v10 - v13);
            }

            while (v10 - v13 >= 4);
          }

          if (v11 >= 2)
          {
LABEL_25:
            v17 = i;
            *&v18[0] = &v17;
            *(std::__hash_table<std::__hash_value_type<long long,int>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,int>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,int>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long &&>,std::tuple<>>(a2, &v17) + 6) = v11;
          }
        }

        else if (quasar::gLogLevel >= 1)
        {
          memset(v18, 0, sizeof(v18));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Found an empty LME word, which should not happen", 48);
          quasar::QuasarErrorMessage::~QuasarErrorMessage(v18);
        }

        if (v20 < 0)
        {
          operator delete(v19[0]);
        }

        if (!v7)
        {
          return 0;
        }
      }

      v2 += 8;
    }

    while (v2 != a1[1]);
  }

  return 1;
}

void sub_1B58A4D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::QuasarErrorMessage::~QuasarErrorMessage(va);
  if (*(v3 - 105) < 0)
  {
    operator delete(*(v3 - 128));
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<long long,int>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,int>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,int>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long &&>,std::tuple<>>(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

double quasar::SeevaGreedyDecoder::SeevaGreedyDecoder(uint64_t a1, __int128 *a2)
{
  v2 = quasar::Decoder::Decoder(a1, a2);
  *v2 = &unk_1F2D36DC8;
  *(v2 + 57) = 0;
  result = 0.0;
  *(v2 + 456) = 0u;
  *(v2 + 472) = 0u;
  *(v2 + 488) = 0u;
  *(v2 + 504) = 0u;
  *(v2 + 520) = 0;
  *(v2 + 536) = 0;
  *(v2 + 552) = 0;
  *(v2 + 544) = 0;
  return result;
}

void quasar::SeevaGreedyDecoder::~SeevaGreedyDecoder(quasar::SeevaGreedyDecoder *this)
{
  *this = &unk_1F2D36DC8;
  v2 = *(this + 69);
  *(this + 69) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<kaldi::quasar::Vocab>::reset[abi:ne200100](this + 68, 0);
  std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100](this + 67, 0);
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

{
  quasar::SeevaGreedyDecoder::~SeevaGreedyDecoder(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::SeevaGreedyDecoder::registerParams(quasar::SeevaGreedyDecoder *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "seeva-greedy");
  quasar::SystemConfig::enforceMinVersion(a2, 145, 0, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "model-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "model file");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 456, v4, 1, 145, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "vocab-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "list of vocab");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 480, v4, 1, 145, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "transform-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "transform file");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 504, v4, 0, 145, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B58A52D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::SeevaGreedyDecoder::finishInit(quasar::SeevaGreedyDecoder *this)
{
  v2 = 0;
  v1 = 0;
  kaldi::Input::OpenInternal(&v1, this + 480, 1, &v2);
  kaldi::Input::Stream(&v1);
  operator new();
}

void sub_1B58A551C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  MEMORY[0x1B8C85350](v16, 0x10B0C4082B712C9);
  kaldi::Input::~Input(&a16);
  _Unwind_Resume(a1);
}

uint64_t quasar::SeevaGreedyDecoder::runImpl(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v118 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v90 = v5;
  v87 = (*(**(v6 + 16) + 24))(*(v6 + 16));
  v7 = 0;
  v112 = *(v6 + 24);
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  while (kaldi::OnlineFeatureMatrix::IsValidFrame(v6, v7, 1))
  {
    kaldi::OnlineFeatureMatrix::GetFrame(v6, v7, &v113);
    LODWORD(__dst.__loc_.__locale_) = 0;
    std::deque<std::vector<float>>::emplace_back<int const&,int>(&v109, &v112);
    v8 = v112;
    if (v112)
    {
      v9 = 0;
      v10 = 0;
      first = v113.__first_;
      v12 = *(*(*(&v109 + 1) + 8 * ((*(&v111 + 1) + v111 - 1) / 0xAAuLL)) + 24 * ((*(&v111 + 1) + v111 - 1) % 0xAAuLL));
      do
      {
        *(v12 + 4 * v10++) = *(first->__r_.__value_.__s.__data_ + (v9 >> 30));
        v9 += 0x100000000;
      }

      while (v8 != v10);
    }

    ++v7;
  }

  kaldi::Matrix<float>::Matrix(v107, v7, v112, 0, 0);
  v13 = *(&v109 + 1);
  if (v7)
  {
    v14 = 0;
    v15 = v112;
    v16 = v111;
    v17 = *v107;
    v18 = v108;
    do
    {
      if (v15)
      {
        v19 = 0;
        v20 = 0;
        v21 = *(v13[(v16 + v14) / 0xAAuLL] + 3 * ((v16 + v14) % 0xAAuLL));
        do
        {
          *(v17 + 4 * v18 * v14 + (v19 >> 30)) = *(v21 + 4 * v20++);
          v19 += 0x100000000;
        }

        while (v15 != v20);
      }

      ++v14;
    }

    while (v14 != v7);
  }

  v22 = v110;
  if (v110 == v13)
  {
    v22 = v13;
  }

  else
  {
    v23 = &v13[v111 / 0xAA];
    v24 = *v23;
    v25 = *v23 + 24 * (v111 % 0xAA);
    v26 = v13[(*(&v111 + 1) + v111) / 0xAAuLL] + 24 * ((*(&v111 + 1) + v111) % 0xAAuLL);
    if (v25 != v26)
    {
      do
      {
        v27 = *v25;
        if (*v25)
        {
          *(v25 + 8) = v27;
          operator delete(v27);
          v24 = *v23;
        }

        v25 += 24;
        if (v25 - v24 == 4080)
        {
          v28 = v23[1];
          ++v23;
          v24 = v28;
          v25 = v28;
        }
      }

      while (v25 != v26);
      v13 = *(&v109 + 1);
      v22 = v110;
    }
  }

  *(&v111 + 1) = 0;
  v29 = v22 - v13;
  if (v29 >= 3)
  {
    do
    {
      operator delete(*v13);
      v13 = (*(&v109 + 1) + 8);
      *(&v109 + 1) = v13;
      v29 = (v110 - v13) >> 3;
    }

    while (v29 > 2);
  }

  if (v29 == 1)
  {
    v30 = 85;
  }

  else
  {
    if (v29 != 2)
    {
      goto LABEL_31;
    }

    v30 = 170;
  }

  *&v111 = v30;
LABEL_31:
  if (*(a1 + 536))
  {
    memset(&v113.__begin_, 0, 32);
    v113.__first_ = &unk_1F2D0EE38;
    v114 = 0;
    kaldi::CuMatrix<float>::operator=(&v113, v107);
    v116 = 0u;
    *&__dst.__ct_ = 0u;
    __dst.__loc_.__locale_ = &unk_1F2D0EE38;
    v117 = 0;
    kaldi::nnet1::Nnet::Feedforward(*(a1 + 536), &v113, &__dst, 0xFFFFFFFF, 0);
    (*(**(a1 + 552) + 40))(&v104);
    v31 = v104;
    kaldi::CuMatrix<float>::~CuMatrix(&__dst);
    kaldi::CuMatrix<float>::~CuMatrix(&v113);
  }

  else
  {
    (*(**(a1 + 552) + 48))(&v113);
    v31 = v113.__first_;
  }

  v104 = 0;
  v105 = 0;
  v106 = 0;
  v32 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<char const(&)[32],kaldi::quasar::ComputeEngineBufferItf&>(&v104, "SeevaModel/__QNNI__source_input", v31);
  v33 = *(a1 + 552);
  v105 = v32;
  memset(v103, 0, sizeof(v103));
  std::string::basic_string[abi:ne200100]<0>(&__dst, "SeevaModel/__QNNO__prediction");
  memset(&v113, 0, 24);
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v113, &__dst, &v116, 1uLL);
  __p = 0;
  v101 = 0;
  v102 = 0;
  (*(*v33 + 136))(v33, &v104, &v113, &__p, v103);
  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  __p = &v113;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (SHIBYTE(__dst.__col_) < 0)
  {
    operator delete(__dst.__loc_.__locale_);
  }

  __p = 0;
  v101 = 0;
  v102 = 0;
  (*(**v103[0] + 48))(*v103[0], &__p);
  std::vector<std::string>::vector[abi:ne200100](&p_p, 1uLL);
  v34 = __p;
  v91 = v101;
  if (__p != v101)
  {
    do
    {
      if (*v34 == *(a1 + 528))
      {
        break;
      }

      Word = kaldi::quasar::Vocab::GetWord(*(a1 + 544), *v34);
      if (*(Word + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v96, *Word, *(Word + 8));
      }

      else
      {
        v36 = *Word;
        v96.__r_.__value_.__r.__words[2] = *(Word + 16);
        *&v96.__r_.__value_.__l.__data_ = v36;
      }

      v37 = a1;
      v38 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = &v96;
      }

      else
      {
        v39 = v96.__r_.__value_.__r.__words[0];
      }

      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v96.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v96.__r_.__value_.__l.__size_;
      }

      if (size >= 4)
      {
        v41 = v39 + size;
        v42 = v39;
        do
        {
          v43 = memchr(v42, 126, size - 3);
          if (!v43)
          {
            break;
          }

          if (*v43 == 808482686)
          {
            if (v43 != v41)
            {
              v44 = v43 - v39;
              if (v43 - v39 != -1)
              {
                do
                {
                  if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v45 = &v96;
                  }

                  else
                  {
                    v45 = v96.__r_.__value_.__r.__words[0];
                  }

                  std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, v45, v45 + v44, v44);
                  if (SHIBYTE(__dst.__col_) >= 0)
                  {
                    p_dst = &__dst;
                  }

                  else
                  {
                    p_dst = __dst.__loc_.__locale_;
                  }

                  if (SHIBYTE(__dst.__col_) >= 0)
                  {
                    col_high = HIBYTE(__dst.__col_);
                  }

                  else
                  {
                    col_high = __dst.__ct_;
                  }

                  std::string::append(v98 - 1, p_dst, col_high);
                  v48 = v98;
                  if (v98 >= v99)
                  {
                    v50 = 0xAAAAAAAAAAAAAAABLL * ((v98 - p_p) >> 3);
                    v51 = v50 + 1;
                    if (v50 + 1 > 0xAAAAAAAAAAAAAAALL)
                    {
                      std::vector<int>::__throw_length_error[abi:ne200100]();
                    }

                    if (0x5555555555555556 * ((v99 - p_p) >> 3) > v51)
                    {
                      v51 = 0x5555555555555556 * ((v99 - p_p) >> 3);
                    }

                    if (0xAAAAAAAAAAAAAAABLL * ((v99 - p_p) >> 3) >= 0x555555555555555)
                    {
                      v52 = 0xAAAAAAAAAAAAAAALL;
                    }

                    else
                    {
                      v52 = v51;
                    }

                    v113.__end_cap_.__value_ = &p_p;
                    if (v52)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&p_p, v52);
                    }

                    v53 = (8 * ((v98 - p_p) >> 3));
                    *v53 = 0;
                    v53[1] = 0;
                    v53[2] = 0;
                    v49 = 24 * v50 + 24;
                    v54 = (v53 - (v98 - p_p));
                    memcpy(v54, p_p, v98 - p_p);
                    v55 = p_p;
                    v56 = v99;
                    p_p = v54;
                    v98 = v49;
                    v99 = 0;
                    v113.__end_ = v55;
                    v113.__end_cap_.__value_ = v56;
                    v113.__first_ = v55;
                    v113.__begin_ = v55;
                    std::__split_buffer<std::string>::~__split_buffer(&v113);
                  }

                  else
                  {
                    v98->__r_.__value_.__r.__words[0] = 0;
                    v48->__r_.__value_.__l.__size_ = 0;
                    v49 = &v48[1];
                    v48->__r_.__value_.__r.__words[2] = 0;
                  }

                  v98 = v49;
                  std::string::erase(&v96, 0, v44 + 4);
                  v57 = SHIBYTE(v96.__r_.__value_.__r.__words[2]);
                  if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v58 = &v96;
                  }

                  else
                  {
                    v58 = v96.__r_.__value_.__r.__words[0];
                  }

                  if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v57 = v96.__r_.__value_.__l.__size_;
                  }

                  v59 = v58 + v57;
                  if (v57 >= 4)
                  {
                    v60 = v58;
                    do
                    {
                      v61 = memchr(v60, 126, v57 - 3);
                      if (!v61)
                      {
                        break;
                      }

                      v62 = v61;
                      if (*v61 == 808482686)
                      {
                        goto LABEL_86;
                      }

                      v60 = (v61 + 1);
                      v57 = v59 - (v62 + 1);
                    }

                    while (v57 > 3);
                  }

                  v62 = v59;
LABEL_86:
                  if (SHIBYTE(__dst.__col_) < 0)
                  {
                    operator delete(__dst.__loc_.__locale_);
                  }

                  if (v62 == v59)
                  {
                    break;
                  }

                  v44 = v62 - v58;
                }

                while (v44 != -1);
                v38 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
              }
            }

            break;
          }

          v42 = (v43 + 1);
          size = v41 - v42;
        }

        while (v41 - v42 >= 4);
      }

      if ((v38 & 0x80) != 0)
      {
        a1 = v37;
        if (v96.__r_.__value_.__l.__size_ == 3)
        {
          if (*v96.__r_.__value_.__l.__data_ == 29500 && *(v96.__r_.__value_.__r.__words[0] + 2) == 62)
          {
            goto LABEL_129;
          }
        }

        else if (v96.__r_.__value_.__l.__size_ == 5 && *v96.__r_.__value_.__l.__data_ == 1668313916 && *(v96.__r_.__value_.__r.__words[0] + 4) == 62)
        {
          goto LABEL_129;
        }

        if (v96.__r_.__value_.__l.__size_ == 5)
        {
          v65 = v96.__r_.__value_.__r.__words[0];
LABEL_116:
          data = v65->__r_.__value_.__l.__data_;
          v69 = v65->__r_.__value_.__s.__data_[4];
          if (data != 1802401084 || v69 != 62)
          {
LABEL_128:
            std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&__dst, "@[^#]*#|#[^@]*@", 0);
          }

          goto LABEL_129;
        }

        if (v96.__r_.__value_.__l.__size_ != 4 || *v96.__r_.__value_.__l.__data_ != 1047736124)
        {
          goto LABEL_128;
        }
      }

      else
      {
        v63 = v38;
        if (v38 == 3)
        {
          v71 = LOWORD(v96.__r_.__value_.__l.__data_) == 29500 && v96.__r_.__value_.__s.__data_[2] == 62;
          a1 = v37;
LABEL_127:
          if (!v71)
          {
            goto LABEL_128;
          }

          goto LABEL_129;
        }

        a1 = v37;
        if (v63 == 4)
        {
          v71 = LODWORD(v96.__r_.__value_.__l.__data_) == 1047736124;
          goto LABEL_127;
        }

        if (v63 != 5)
        {
          goto LABEL_128;
        }

        if (LODWORD(v96.__r_.__value_.__l.__data_) != 1668313916 || v96.__r_.__value_.__s.__data_[4] != 62)
        {
          v65 = &v96;
          goto LABEL_116;
        }
      }

LABEL_129:
      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      ++v34;
    }

    while (v34 != v91);
  }

  std::vector<std::vector<quasar::Token>>::vector[abi:ne200100](&__dst, 1uLL);
  p_data = &p_p->__r_.__value_.__l.__data_;
  v72 = &v98->__r_.__value_.__l.__data_;
  if (p_p != v98)
  {
    do
    {
      locale = __dst.__loc_.__locale_;
      LODWORD(v96.__r_.__value_.__l.__data_) = 0;
      v95 = 0;
      v113.__first_ = 0x3FF0000000000000;
      v94 = 0;
      v75 = *(__dst.__loc_.__locale_ + 1);
      if (v75 >= *(__dst.__loc_.__locale_ + 2))
      {
        v76 = std::vector<quasar::Token>::__emplace_back_slow_path<std::string,int,int,int,double,BOOL>(__dst.__loc_.__locale_, p_data, &v96, &v95 + 1, &v95, &v113, &v94);
      }

      else
      {
        std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,std::string,int,int,int,double,BOOL>(__dst.__loc_.__locale_, *(__dst.__loc_.__locale_ + 1), p_data, &v96, &v95 + 1, &v95, &v113, &v94);
        v76 = v75 + 224;
        *(locale + 1) = v75 + 224;
      }

      *(locale + 1) = v76;
      p_data += 3;
    }

    while (p_data != v72);
  }

  v113.__first_ = 0x40C3878000000000;
  memset(&v96, 0, sizeof(v96));
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v96, &v113, &v113.__begin_, 1uLL);
  v77 = *(*a4 + 12);
  quasar::RecogResult::RecogResult(&v113);
  v78 = *(*a4 + 32);
  v92 = *(*a4 + 24);
  v93 = v78;
  if (v78)
  {
    atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v79 = quasar::RecogResult::setParams(&v113, &v92);
  v80 = quasar::Token::resetSpacing(&__dst);
  v81 = quasar::RecogResult::setResultChoices(v79, v80);
  v82 = quasar::RecogResult::setResultCosts(v81, &v96.__r_.__value_.__l.__data_);
  v83 = quasar::RecogResult::setLmeStatus(v82, (*a3 + 600));
  started = quasar::RecogResult::setUtteranceStartMillis(v83, v77);
  quasar::RecogResult::setUtteranceDurationMillis(started, v7 * v87);
  if (v93)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v93);
  }

  (*(**(*a3 + 576) + 40))(*(*a3 + 576), &v113, 1);
  v85 = *a3;
  *(v85 + 592) = v7;
  *(v85 + 596) = *(*a4 + 20);
  *(v85 + 597) = 257;
  quasar::RecogResult::~RecogResult(&v113);
  if (v96.__r_.__value_.__r.__words[0])
  {
    v96.__r_.__value_.__l.__size_ = v96.__r_.__value_.__r.__words[0];
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  v113.__first_ = &__dst;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v113);
  v113.__first_ = &p_p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v113);
  if (__p)
  {
    v101 = __p;
    operator delete(__p);
  }

  v113.__first_ = v103;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v113);
  v113.__first_ = &v104;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v113);
  (*(v31->__r_.__value_.__r.__words[0] + 8))(v31);
  kaldi::Matrix<float>::~Matrix(v107);
  std::deque<std::vector<int>>::~deque[abi:ne200100](&v109);
  if (v90)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v90);
  }

  return 0;
}

void sub_1B58A631C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53)
{
  kaldi::Matrix<float>::~Matrix(&a39);
  std::deque<std::vector<int>>::~deque[abi:ne200100](&a44);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<std::vector<float>>::emplace_back<int const&,int>(void *a1, int *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 170 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::vector<float>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = (*(v4 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  }

  std::vector<float>::vector[abi:ne200100](v8, *a2);
  v9 = a1[4];
  v10 = a1[5] + 1;
  a1[5] = v10;
  v11 = v9 + v10;
  v12 = a1[1];
  v13 = (v12 + 8 * (v11 / 0xAA));
  v14 = *v13 + 24 * (v11 % 0xAA);
  if (a1[2] == v12)
  {
    v14 = 0;
  }

  if (v14 == *v13)
  {
    v14 = *(v13 - 1) + 4080;
  }

  return v14 - 24;
}

uint64_t *std::unique_ptr<kaldi::quasar::Vocab>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 144);
    if (v3)
    {
      *(v2 + 152) = v3;
      operator delete(v3);
    }

    v4 = (v2 + 120);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v2 + 80);
    if (*(v2 + 79) < 0)
    {
      operator delete(*(v2 + 56));
    }

    if (*(v2 + 55) < 0)
    {
      operator delete(*(v2 + 32));
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    return MEMORY[0x1B8C85350](v2, 0x10B2C40DBFC2194);
  }

  return result;
}

uint64_t std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<char const(&)[32],kaldi::quasar::ComputeEngineBufferItf&>(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v7 = *(a1 + 16) - *a1;
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

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>>(a1, v8);
  }

  v15 = 0;
  v16 = 32 * v3;
  v17 = (32 * v3);
  *(std::string::basic_string[abi:ne200100]<0>((32 * v3), a2) + 3) = a3;
  *&v17 = v17 + 32;
  v9 = *(a1 + 8);
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>,std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(&v15);
  return v14;
}

void sub_1B58A680C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::Token>::__emplace_back_slow_path<std::string,int,int,int,double,BOOL>(uint64_t a1, uint64_t a2, int *a3, int *a4, int *a5, double *a6, std::string::value_type *a7)
{
  v7 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 5);
  v8 = v7 + 1;
  if ((v7 + 1) > 0x124924924924924)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5) > v8)
  {
    v8 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 5)) >= 0x92492492492492)
  {
    v11 = 0x124924924924924;
  }

  else
  {
    v11 = v8;
  }

  v21 = a1;
  if (v11)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Token>>(a1, v11);
  }

  v18 = 0;
  v19 = 224 * v7;
  std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,std::string,int,int,int,double,BOOL>(a1, (224 * v7), a2, a3, a4, a5, a6, a7);
  v20 = (224 * v7 + 224);
  v12 = *(a1 + 8);
  v13 = 224 * v7 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Token>,quasar::Token*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<quasar::Token>::~__split_buffer(&v18);
  return v17;
}

void sub_1B58A6990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,std::string,int,int,int,double,BOOL>(uint64_t a1, std::string *a2, uint64_t a3, int *a4, int *a5, int *a6, double *a7, std::string::value_type *a8)
{
  v22 = *a3;
  v23 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  v12 = *a7;
  v13 = *a8;
  std::string::basic_string[abi:ne200100]<0>(v20, "");
  std::string::basic_string[abi:ne200100]<0>(v18, "");
  memset(v17, 0, sizeof(v17));
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  v14 = v12;
  quasar::Token::Token(a2, &v22, v9, v10, v11, v13, 0, v20, v14, v18, v17, 0, __p, 0, 0, 0);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v17;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }
}

void sub_1B58A6AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
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

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
  }

  _Unwind_Resume(a1);
}

void *quasar::operator<<(void *a1, uint64_t *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "{alternativeDescription: ", 27);
  v5 = *a2;
  v13 = v4;
  v6 = *(v5 + 24);
  if (v6 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v7 = v4;
  v14 = &v13;
  (off_1F2D36E90[v6])(&v14);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", translationPhraseIndex: ", 28);
  v9 = MEMORY[0x1B8C84C00](v8, *(a2 + 4));
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", selectionSpanIndex: ", 24);
  v11 = MEMORY[0x1B8C84C00](v10, *(a2 + 5));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "}", 1);
  return a1;
}

void sub_1B58A6DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::join<std::vector<quasar::AlternativeSelectionSpan::Alternative>>(uint64_t **a1, uint64_t *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  quasar::joinToStream<std::vector<quasar::AlternativeSelectionSpan::Alternative>>(&v7, a1, a2);
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

void sub_1B58A6F6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void *quasar::operator<<(void *a1, _DWORD *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "{gender: ", 11);
  if (*a2)
  {
    v5 = "Female";
  }

  else
  {
    v5 = "Male";
  }

  if (*a2)
  {
    v6 = 8;
  }

  else
  {
    v6 = 6;
  }

  v21 = v6;
  memcpy(__dst, v5, v6);
  *(__dst + v6) = 0;
  if ((v21 & 0x80u) == 0)
  {
    v7 = __dst;
  }

  else
  {
    v7 = __dst[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v8 = v21;
  }

  else
  {
    v8 = __dst[1];
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", default: ", 13);
  v11 = a2[1];
  if (v11)
  {
    v12 = "Female";
  }

  else
  {
    v12 = "Male";
  }

  if (v11)
  {
    v13 = 8;
  }

  else
  {
    v13 = 6;
  }

  v19 = v13;
  memcpy(__p, v12, v13);
  *(__p + v13) = 0;
  if ((v19 & 0x80u) == 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v15 = v19;
  }

  else
  {
    v15 = __p[1];
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v14, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "}", 1);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(__dst[0]);
  }

  return a1;
}

void sub_1B58A70D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t quasar::AlternativeSelectionSpan::to_string(quasar::AlternativeSelectionSpan *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  quasar::operator<<(&v5, this);
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

void sub_1B58A72F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void *quasar::joinToStream<std::vector<quasar::AlternativeSelectionSpan::Alternative>>(void *result, uint64_t **a2, uint64_t *a3)
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
      v3 += 3;
    }

    while (v3 != v4);
  }

  return result;
}

id EARHelpers::VectorToArray<quasar::AppLmData::Oov,_EAROovToken * (*)(quasar::AppLmData::Oov const&)>(__int128 **a1, void (*a2)(std::string *))
{
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    do
    {
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v5, *(v5 + 1));
      }

      else
      {
        v7 = *v5;
        __p.__r_.__value_.__r.__words[2] = *(v5 + 2);
        *&__p.__r_.__value_.__l.__data_ = v7;
      }

      std::set<std::string>::set[abi:ne200100](v12, v5 + 3);
      v13 = *(v5 + 12);
      v8 = a2(&__p);
      [v4 addObject:v8];

      std::__tree<std::string>::destroy(v12, v12[1]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v5 = (v5 + 56);
    }

    while (v5 != v6);
  }

  v9 = [v4 copy];

  return v9;
}

_EAROovToken *_earOovTokenFromAppLmDataOov(const quasar::AppLmData::Oov *a1)
{
  v2 = [_EAROovToken alloc];
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 1);
  }

  v6 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{v4, v5}];
  v7 = EARHelpers::ContainerToNSSet<std::set<std::string>>(a1 + 3);
  v8 = [(_EAROovToken *)v2 initWithOrthography:v6 prons:v7 frequency:*(a1 + 12)];

  return v8;
}

void sub_1B58A7CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::exception_ptr a22)
{
  std::exception_ptr::~exception_ptr(&a9);
  _Block_object_dispose(&a16, 8);
  std::exception_ptr::~exception_ptr(&a22);
  _Unwind_Resume(a1);
}

void sub_1B58A7D40(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  __cxa_begin_catch(a1);
  std::current_exception();
  std::exception_ptr::operator=((*(*(v10 + 40) + 8) + 48), &a10);
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  JUMPOUT(0x1B58A7D30);
}

void sub_1B58A7E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B58A8048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, char a18)
{
  std::exception_ptr::~exception_ptr(&a10);

  _Block_object_dispose(&a18, 8);
  std::exception_ptr::~exception_ptr(v19 + 6);

  _Unwind_Resume(a1);
}

void sub_1B58A80B0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  __cxa_begin_catch(a1);
  std::current_exception();
  std::exception_ptr::operator=((*(*(v10 + 48) + 8) + 48), &a10);
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  JUMPOUT(0x1B58A80A0);
}

void sub_1B58A8320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, char a10)
{
  objc_destroyWeak(&a9);

  kaldi::Matrix<float>::~Matrix(&a10);
  _Unwind_Resume(a1);
}

void sub_1B58A85D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11_0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B58A87A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<quasar::SyncPSRAudioProcessor>::__shared_ptr_emplace[abi:ne200100]<quasar::SystemConfig &,std::string,unsigned long &,BOOL &,long &,std::allocator<quasar::SyncPSRAudioProcessor>,0>(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned __int8 *a5, unsigned int *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D2F1B8;
  quasar::SyncPSRAudioProcessor::SyncPSRAudioProcessor(a1 + 3, a2, a3, *a4, *a5, *a6);
  return a1;
}

uint64_t quasar::PDecEngineBlockMixin::getPhraseBookMode(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if ((*a1 != 0x6B6361626C6C6166 || v1 != 8) && v1 != 0)
    {
      v4 = a1;
      if (v1 != 4)
      {
LABEL_18:
        if (v1 != 7)
        {
          v6 = a1;
          if (v1 != 16)
          {
            goto LABEL_42;
          }

          goto LABEL_35;
        }

        if (*a1 != 1634953572 || *(a1 + 3) != 1701601889)
        {
LABEL_42:
          memset(v15, 0, sizeof(v15));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
          v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "unknown phrase-book-mode: ", 26);
          std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v13, a1);
          quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v15);
        }

        return 1;
      }

      goto LABEL_16;
    }

    return 0;
  }

  v5 = *(a1 + 8);
  if (!v5 || v5 == 8 && **a1 == 0x6B6361626C6C6166)
  {
    return 0;
  }

  if (*(a1 + 8) != 4)
  {
    goto LABEL_17;
  }

  v4 = *a1;
LABEL_16:
  if (*v4 == 1752461154)
  {
    return 2;
  }

LABEL_17:
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_18;
  }

  if (*(a1 + 8) == 7 && **a1 == 1634953572 && *(*a1 + 3) == 1701601889)
  {
    return 1;
  }

  if (*(a1 + 8) != 16)
  {
    goto LABEL_42;
  }

  v6 = *a1;
LABEL_35:
  v10 = *v6;
  v11 = v6[1];
  if (v10 != 0x625F657361726870 || v11 != 0x796C6E6F5F6B6F6FLL)
  {
    goto LABEL_42;
  }

  return 3;
}

uint64_t quasar::PDecEngineBlockMixin::getLmModeFromStr(uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *(a1 + 8);
  if ((v1 & 0x80u) == 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (!v3)
  {
    return 0;
  }

  if ((v1 & 0x80) != 0)
  {
    if (v2 <= 10)
    {
      if (v2 == 4)
      {
        v13 = **a1;
LABEL_50:
        if (v13 != 1701736302)
        {
          goto LABEL_58;
        }

        return 0;
      }

      if (v2 == 10 && **a1 == 0x7461726765746E69 && *(*a1 + 8) == 25701)
      {
        return 1;
      }

LABEL_58:
      memset(v18, 0, sizeof(v18));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "unknown lm-mode: ", 17);
      std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v16, a1);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v18);
    }

    if (v2 != 11)
    {
      if (v2 != 12)
      {
        goto LABEL_58;
      }

      v8 = *a1;
      if (**a1 != 0x5F65726F63736572 || *(*a1 + 8) != 1685221239)
      {
LABEL_29:
        v9 = *v8;
        v10 = v8[2];
        if (v9 == 0x5F6C616974726170 && v10 == 1935763810)
        {
          return 5;
        }

        goto LABEL_58;
      }

      return 4;
    }

    if (**a1 != 0x5F65726F63736572 || *(*a1 + 3) != 0x6570625F65726F63)
    {
      goto LABEL_58;
    }
  }

  else
  {
    if (*(a1 + 23) <= 0xAu)
    {
      if (v1 != 4)
      {
        if (v1 != 10)
        {
          goto LABEL_58;
        }

        if (*a1 != 0x7461726765746E69 || *(a1 + 8) != 25701)
        {
          goto LABEL_58;
        }

        return 1;
      }

      v13 = *a1;
      goto LABEL_50;
    }

    if (v1 != 11)
    {
      if (v1 != 12)
      {
        goto LABEL_58;
      }

      v7 = *a1 == 0x5F65726F63736572 && *(a1 + 8) == 1685221239;
      v8 = a1;
      if (!v7)
      {
        goto LABEL_29;
      }

      return 4;
    }

    if (*a1 != 0x5F65726F63736572 || *(a1 + 3) != 0x6570625F65726F63)
    {
      goto LABEL_58;
    }
  }

  return 3;
}

uint64_t quasar::PDecEngineBlockMixin::getNormalizationMode(_BYTE *a1, int a2)
{
  v2 = a1[23];
  if (a1[23] < 0)
  {
    if (*(a1 + 1) != 3 || (**a1 == 26223 ? (v5 = *(*a1 + 2) == 102) : (v5 = 0), !v5))
    {
      if (*(a1 + 1) == 6 && **a1 == 1735288172 && *(*a1 + 4) == 26740)
      {
        goto LABEL_25;
      }

      if (*(a1 + 1) != 4)
      {
LABEL_45:
        v12 = a1;
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
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "unknown 'norm-mode': ", 21);
        std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v11, v12);
        goto LABEL_47;
      }

      v3 = *a1;
LABEL_22:
      if (*v3 == 1953328743)
      {
        v7 = 2;
        if (!a2)
        {
          return v7;
        }

        goto LABEL_33;
      }

      goto LABEL_45;
    }

LABEL_32:
    v7 = 0;
    if (!a2)
    {
      return v7;
    }

    goto LABEL_33;
  }

  if (v2 == 3)
  {
    if (*a1 != 26223 || a1[2] != 102)
    {
      goto LABEL_45;
    }

    goto LABEL_32;
  }

  v3 = a1;
  if (v2 == 4)
  {
    goto LABEL_22;
  }

  if (v2 != 6)
  {
    goto LABEL_45;
  }

  if (*a1 != 1735288172 || *(a1 + 2) != 26740)
  {
    goto LABEL_45;
  }

LABEL_25:
  v7 = 1;
  if (!a2)
  {
    return v7;
  }

LABEL_33:
  if ((v2 & 0x80) != 0)
  {
    if (*(a1 + 1) != 3)
    {
LABEL_46:
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
      std::operator<<[abi:ne200100]<std::char_traits<char>>(&v13, "specifying both 'norm-cost' (old parameter name) and 'norm-mode' (new name) at the same time is not allowed.");
LABEL_47:
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v13);
    }

    a1 = *a1;
  }

  else if (v2 != 3)
  {
    goto LABEL_46;
  }

  if (*a1 != 26223 || a1[2] != 102)
  {
    goto LABEL_46;
  }

  return 1;
}

uint64_t quasar::PDecEngineBlockMixin::getStopMode(uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *(a1 + 8);
  if ((v1 & 0x80u) == 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (!v3)
  {
    return 0;
  }

  if ((v1 & 0x80) == 0)
  {
    if (v1 != 4)
    {
      if (v1 != 5)
      {
        v4 = a1;
        if (v1 != 14)
        {
          goto LABEL_36;
        }

        goto LABEL_14;
      }

      if (*a1 != 1634034286 || *(a1 + 4) != 109)
      {
LABEL_36:
        memset(v14, 0, sizeof(v14));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "unknown stop-mode: ", 19);
        std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12, a1);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v14);
      }

      return 0;
    }

    v10 = *a1;
LABEL_33:
    if (v10 != 1953719650)
    {
      goto LABEL_36;
    }

    return 1;
  }

  if (v2 == 4)
  {
    v10 = **a1;
    goto LABEL_33;
  }

  if (v2 == 5)
  {
    if (**a1 != 1634034286 || *(*a1 + 4) != 109)
    {
      goto LABEL_36;
    }

    return 0;
  }

  if (v2 != 14)
  {
    goto LABEL_36;
  }

  v4 = *a1;
LABEL_14:
  v5 = *v4;
  v6 = *(v4 + 6);
  if (v5 != 0x64656873696E6966 || v6 != 0x65726F63735F6465)
  {
    goto LABEL_36;
  }

  return 2;
}