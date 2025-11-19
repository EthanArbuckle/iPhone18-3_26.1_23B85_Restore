void sub_1B522E0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  quasar::QuasarWarnMessage::~QuasarWarnMessage(va);
  _Unwind_Resume(a1);
}

void sub_1B522E100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

BOOL quasar::CorpusStats::interpolateCorpusStatsWithBestWeights(uint64_t **a1, std::vector<unsigned int> *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    end = a2->__end_;
    if (a2->__begin_ != end && v4 - v3 != end - a2->__begin_)
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
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "number of CorpusStats and interpolation weights don't match");
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }

    v9 = *(*v3 + 16) + *(*v3 + 24);
    std::vector<float>::vector[abi:ne200100](__p, v9);
    std::vector<std::vector<float>>::vector[abi:ne200100](v21, v4 - v3);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if ((quasar::CorpusStats::collectLogScores(a1, v21, a3) & 1) == 0)
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
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "could not retrieve scores from CorpusStats", 42);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }

    if (a2->__begin_ == a2->__end_ && (kaldi::quasar::EstimateLinearWeights(v21, a2, 20, 0.00097656) & 1) == 0)
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
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "iterative process to obtain optimal interpolation weights failed", 64);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }

    v10 = (v21[0][1] - *v21[0]) >> 2;
    std::vector<float>::vector[abi:ne200100](&v19, v10);
    if ((kaldi::quasar::InterpolateLogScoresLinearly(v21, a2, &v19) & 1) == 0)
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
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "something went wrong with log-score interpolation", 49);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }

    v11 = v19;
    v12 = 0.0;
    while (v11 != v20)
    {
      v13 = *v11++;
      v12 = v12 + v13;
    }

    *(a3 + 8) = v12;
    v14 = quasar::gLogLevel;
    v15 = v10 >= v9;
    v16 = v10 - v9;
    if (!v15)
    {
      if (quasar::gLogLevel >= 5)
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
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "number of collected log-scores doesn't match CorpusStats", 56);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
        v14 = quasar::gLogLevel;
      }

      *(a3 + 24) += v16;
    }

    if (***a1 != *a3 && v14 >= 5)
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
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Input scores are not logProb format, logScores are not comparable", 65);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }

    quasar::CorpusStats::computePerplexity(a3);
    if (v19)
    {
      v20 = v19;
      operator delete(v19);
    }

    __p[0] = v21;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  return v3 != v4;
}

void sub_1B522E550(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B522E594);
}

void sub_1B522E570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char *a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  a15 = &a12;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

std::string *quasar::FstLmScorerOptions::FstLmScorerOptions(std::string *this, __int128 *a2, std::string::value_type a3, uint64_t *a4, std::string::value_type a5, __int128 *a6, std::string::size_type a7, std::string::value_type a8, char a9, char a10, int a11, char a12)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v19 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v19;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__s.__data_[0] = a3;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  this[3].__r_.__value_.__r.__words[0] = 0;
  std::vector<std::shared_ptr<kaldi::quasar::LmHandle>>::__init_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::LmHandle>*,std::shared_ptr<kaldi::quasar::LmHandle>*>(&this[2].__r_.__value_.__l.__size_, *a4, a4[1], (a4[1] - *a4) >> 4);
  this[3].__r_.__value_.__s.__data_[8] = a5;
  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), *a6, *(a6 + 1));
  }

  else
  {
    v20 = *a6;
    this[4].__r_.__value_.__l.__size_ = *(a6 + 2);
    *&this[3].__r_.__value_.__r.__words[2] = v20;
  }

  this[4].__r_.__value_.__r.__words[2] = a7;
  this[5].__r_.__value_.__s.__data_[0] = a8;
  this[5].__r_.__value_.__s.__data_[1] = a9;
  this[5].__r_.__value_.__s.__data_[2] = a10;
  HIDWORD(this[5].__r_.__value_.__r.__words[0]) = a11;
  this[5].__r_.__value_.__s.__data_[8] = a12;
  return this;
}

void sub_1B522E6A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void quasar::FstLmScorer::FstLmScorer(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a1 = &unk_1F2D06CE8;
  a1[1] = v3;
  a1[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1B522E778(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x1022C40755952CALL);
  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void sub_1B522E800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::FstLmScorer::FstLmScorer(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_1F2D06CE8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::vector<std::shared_ptr<quasar::Decoder>>::__init_with_size[abi:ne200100]<std::shared_ptr<quasar::Decoder>*,std::shared_ptr<quasar::Decoder>*>(a1 + 32, *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 56) = 0;
  return a1;
}

void sub_1B522E884(_Unwind_Exception *a1)
{
  std::unique_ptr<quasar::SpeechRecognizerModelLoader>::~unique_ptr[abi:ne200100]((v1 + 24));
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

quasar::SpeechRecognizerModelLoader **std::unique_ptr<quasar::SpeechRecognizerModelLoader>::~unique_ptr[abi:ne200100](quasar::SpeechRecognizerModelLoader **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    quasar::SpeechRecognizerModelLoader::~SpeechRecognizerModelLoader(v2);
    MEMORY[0x1B8C85350]();
  }

  return a1;
}

void quasar::FstLmScorer::~FstLmScorer(quasar::SpeechRecognizerModelLoader **this)
{
  *this = &unk_1F2D06CE8;
  v3 = (this + 4);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::unique_ptr<quasar::SpeechRecognizerModelLoader>::~unique_ptr[abi:ne200100](this + 3);
  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

{
  quasar::FstLmScorer::~FstLmScorer(this);

  JUMPOUT(0x1B8C85350);
}

void sub_1B522EAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(v21);
  _Unwind_Resume(a1);
}

float quasar::FstLmScorer::convertLmCost(int a1, float a2)
{
  if (a1 == 2)
  {
    v3 = a2 / 2.30258509;
    goto LABEL_7;
  }

  if (a1 == 1)
  {
    v3 = a2;
LABEL_7:
    v4 = fmin(v3, 1.0e10);
    return -v4;
  }

  if (a1)
  {
    memset(v5, 0, sizeof(v5));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "Coding error");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v5);
  }

  return fmax(a2, -1.0e10);
}

void quasar::FstLmScorer::convertLmCost(float **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v7 = quasar::FstLmScorer::convertLmCost(a2, *v3);
      std::vector<float>::push_back[abi:ne200100](a3, &v7);
      ++v3;
    }

    while (v3 != v4);
  }
}

void sub_1B522ECA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B522EDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::FstLmScorerOptions::~FstLmScorerOptions(va);
  _Unwind_Resume(a1);
}

void quasar::FstLmScorer::computeLmScore(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = 0uLL;
  v12 = 0;
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = (a2 + 24);
  if (v4 != v5)
  {
    if (&v11 == v6)
    {
      goto LABEL_8;
    }

    goto LABEL_3;
  }

  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (v7)
  {
    quasar::SpeechRecognizerModelLoader::getDecoderChain(*(a1 + 24), a2, 1, &v9);
    std::vector<std::shared_ptr<quasar::Decoder>>::__vdeallocate(&v11);
    v11 = v9;
    v12 = v10;
    v10 = 0;
    v9 = 0uLL;
    v8.__first_ = &v9;
    std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v8);
  }

  else if (&v11 != (a1 + 32))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
LABEL_3:
    std::vector<std::shared_ptr<quasar::Decoder>>::__assign_with_size[abi:ne200100]<std::shared_ptr<quasar::Decoder>*,std::shared_ptr<quasar::Decoder>*>(&v11, v4, v5, (v5 - v4) >> 4);
  }

LABEL_8:
  operator new();
}

void sub_1B5230778()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x1B52307D0);
}

void sub_1B52307A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a66);
  }

  JUMPOUT(0x1B5230A74);
}

void sub_1B52307B8(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5230AC4);
}

void sub_1B52307C8()
{
  if (v0)
  {
    operator delete(v0);
  }

  if (v1)
  {
    operator delete(v1);
  }

  JUMPOUT(0x1B52309ACLL);
}

void sub_1B5230818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (STACK[0x388])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x388]);
  }

  if (!a70)
  {
    JUMPOUT(0x1B5230A98);
  }

  JUMPOUT(0x1B5230A94);
}

void sub_1B5230844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a62);
  STACK[0x310] = v69;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x310]);
  STACK[0x310] = &STACK[0x340];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x310]);
  STACK[0x310] = &STACK[0x358];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x310]);
  if (STACK[0x378])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x378]);
  }

  if (SLOBYTE(STACK[0x397]) < 0)
  {
    operator delete(STACK[0x380]);
  }

  if (STACK[0x3A8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x3A8]);
  }

  STACK[0x380] = &a69;
  std::vector<std::weak_ptr<quasar::Decoder>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x380]);
  if (STACK[0x3B8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x3B8]);
  }

  if (STACK[0x3C8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x3C8]);
  }

  if (STACK[0x3D8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x3D8]);
  }

  if (STACK[0x3E8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x3E8]);
  }

  if (STACK[0x3F8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x3F8]);
  }

  if (STACK[0x408])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x408]);
  }

  JUMPOUT(0x1B5230AA0);
}

void sub_1B5230934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v67 < 0)
  {
    operator delete(v68);
  }

  if (a67 < 0)
  {
    JUMPOUT(0x1B5230A48);
  }

  JUMPOUT(0x1B5230A54);
}

void sub_1B5230954()
{
  std::__function::__value_func<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> const&)>::~__value_func[abi:ne200100](v0 - 208);
  if (v4 < 0)
  {
    operator delete(v3);
  }

  v3 = v5;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v5[0] = &v11;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](v5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&v8);
  v1 = *(v0 - 144);
  if (v1)
  {
    *(v0 - 136) = v1;
    operator delete(v1);
  }

  if (v9)
  {
    v10 = v9;
    JUMPOUT(0x1B5230A48);
  }

  JUMPOUT(0x1B5230A54);
}

void sub_1B52309EC()
{
  v0 = STACK[0x760];
  if (STACK[0x760])
  {
    if (!atomic_fetch_add(v0 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v0 + 16))(v0);
    }
  }

  JUMPOUT(0x1B5230AA0);
}

void sub_1B5230A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a62 = &STACK[0x310];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a62);
  v70 = STACK[0x380];
  if (STACK[0x380])
  {
    STACK[0x388] = v70;
    operator delete(v70);
  }

  if (a68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a68);
  }

  if (STACK[0x2F8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x2F8]);
  }

  if (STACK[0x308])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x308]);
  }

  quasar::DecoderPassData::~DecoderPassData(&STACK[0x410]);
  if (STACK[0x770])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x770]);
  }

  std::promise<quasar::Location>::~promise((v68 - 248));
  STACK[0x410] = v68 - 240;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x410]);
  _Unwind_Resume(a1);
}

void quasar::FstLmScorer::getDecoder<quasar::OnlineLatticeBiglmLmeFasterDecoder>(uint64_t a1@<X0>, quasar::Decoder ***a2@<X1>, int a3@<W2>, quasar::Decoder **a4@<X8>)
{
  if (a3 && *(a1 + 32) == *(a1 + 40) && (*(a1 + 56) & 1) == 0)
  {
    v7 = *a2;
    v8 = a2[1];
    while (v7 != v8)
    {
      if (quasar::Decoder::isInitialized(*v7))
      {
        memset(v14, 0, 272);
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, "Decoder chain was not lazily initialized");
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v14);
      }

      v7 += 2;
    }

    *(a1 + 56) = 1;
  }

  *a4 = 0;
  a4[1] = 0;
  v9 = *a2;
  v10 = a2[1];
  if (*a2 == v10)
  {
LABEL_22:
    *a4 = 0;
    return;
  }

  v11 = 0;
  while (1)
  {
    if (!*v9)
    {
      v12 = 0;
LABEL_16:
      v13 = 0;
      goto LABEL_17;
    }

    if (!v12)
    {
      goto LABEL_16;
    }

    v13 = v9[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

LABEL_17:
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v12)
    {
      break;
    }

    v9 += 2;
    v11 = v13;
    if (v9 == v10)
    {
      a4[1] = v13;
      goto LABEL_22;
    }
  }

  *a4 = v12;
  a4[1] = v13;
  quasar::SpeechRecognizerModelLoader::initDecoderIfNeeded(*(a1 + 24), v12);
}

uint64_t quasar::initLmInfo<quasar::FstLmScorerOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 112);
  if (v4 != -1)
  {
    *(a3 + 64) = v4;
    return 1;
  }

  v7 = *(a1 + 111);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 96);
  }

  if (!v7)
  {
    return 1;
  }

  v8 = quasar::SymbolTableList::strToSymbolId(a2, a1 + 88);
  *(a3 + 64) = v8;
  if (v8 != -1)
  {
    return 1;
  }

  if (quasar::gLogLevel >= 1)
  {
    memset(v14, 0, sizeof(v14));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Could not find OOV word ", 25);
    v10 = *(a1 + 111);
    if (v10 >= 0)
    {
      v11 = a1 + 88;
    }

    else
    {
      v11 = *(a1 + 88);
    }

    if (v10 >= 0)
    {
      v12 = *(a1 + 111);
    }

    else
    {
      v12 = *(a1 + 96);
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " in symbol table(s)", 20);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(v14);
  }

  return 0;
}

uint64_t quasar::filterTokenIds<quasar::FstLmScorerOptions>(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, const void **a5, std::vector<unsigned int> *a6)
{
  std::vector<std::pair<int,int>>::reserve(a5, (a4[1] - *a4) >> 3);
  std::vector<int>::reserve(a6, (a4[1] - *a4) >> 3);
  v12 = *a4;
  if (a4[1] == *a4)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  while (*(v12 + v13) != -1)
  {
    if (a3 && quasar::gLogLevel >= 6)
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
      v16 = *a3 + v14;
      v17 = *(v16 + 23);
      if (v17 >= 0)
      {
        v18 = *a3 + v14;
      }

      else
      {
        v18 = *v16;
      }

      if (v17 >= 0)
      {
        v19 = *(v16 + 23);
      }

      else
      {
        v19 = *(v16 + 8);
      }

      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, v18, v19);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " ", 1);
      MEMORY[0x1B8C84C60](v21, *(*a4 + v13));
      quasar::QuasarTraceMessage::~QuasarTraceMessage(&v55);
    }

    LODWORD(v55) = v15;
    std::vector<int>::push_back[abi:ne200100](&a6->__begin_, &v55);
    v22 = (*a4 + v13);
LABEL_49:
    std::vector<long long>::push_back[abi:ne200100](a5, v22);
LABEL_50:
    ++v15;
    v12 = *a4;
    v14 += 24;
    v13 += 8;
    if (v15 >= (a4[1] - *a4) >> 3)
    {
      return 1;
    }
  }

  if (*(a1 + 80) == 1)
  {
    if (quasar::gLogLevel >= 6)
    {
      if (a3)
      {
        v70 = 0uLL;
        v71 = 0uLL;
        v68 = 0uLL;
        v69 = 0uLL;
        v66 = 0uLL;
        v67 = 0uLL;
        v64 = 0uLL;
        v65 = 0uLL;
        v62 = 0uLL;
        v63 = 0uLL;
        v60 = 0uLL;
        v61 = 0uLL;
        v58 = 0uLL;
        v59 = 0uLL;
        v56 = 0uLL;
        v57 = 0uLL;
        v55 = 0uLL;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v55);
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "Could not find ", 16);
        v24 = *a3 + v14;
        v25 = *(v24 + 23);
        if (v25 >= 0)
        {
          v26 = *a3 + v14;
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

        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v26, v27);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " in symbol table(s), ignoring token", 36);
      }

      else
      {
        v70 = 0uLL;
        v71 = 0uLL;
        v68 = 0uLL;
        v69 = 0uLL;
        v66 = 0uLL;
        v67 = 0uLL;
        v64 = 0uLL;
        v65 = 0uLL;
        v62 = 0uLL;
        v63 = 0uLL;
        v60 = 0uLL;
        v61 = 0uLL;
        v58 = 0uLL;
        v59 = 0uLL;
        v56 = 0uLL;
        v57 = 0uLL;
        v55 = 0uLL;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v55);
        v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "Could not find token at position ", 33);
        v40 = MEMORY[0x1B8C84C00](v39, v15);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " in symbol table(s), ignoring token", 35);
      }

      quasar::QuasarTraceMessage::~QuasarTraceMessage(&v55);
    }

    goto LABEL_50;
  }

  if (*(a2 + 64) != -1)
  {
    if (quasar::gLogLevel >= 6)
    {
      if (a3)
      {
        v70 = 0uLL;
        v71 = 0uLL;
        v68 = 0uLL;
        v69 = 0uLL;
        v66 = 0uLL;
        v67 = 0uLL;
        v64 = 0uLL;
        v65 = 0uLL;
        v62 = 0uLL;
        v63 = 0uLL;
        v60 = 0uLL;
        v61 = 0uLL;
        v58 = 0uLL;
        v59 = 0uLL;
        v56 = 0uLL;
        v57 = 0uLL;
        v55 = 0uLL;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v55);
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "Could not find ", 16);
        v30 = *a3 + v14;
        v31 = *(v30 + 23);
        if (v31 >= 0)
        {
          v32 = *a3 + v14;
        }

        else
        {
          v32 = *v30;
        }

        if (v31 >= 0)
        {
          v33 = *(v30 + 23);
        }

        else
        {
          v33 = *(v30 + 8);
        }

        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v32, v33);
        v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " in symbol table(s), replacing with ", 38);
        v36 = *(a1 + 111);
        if (v36 >= 0)
        {
          v37 = a1 + 88;
        }

        else
        {
          v37 = *(a1 + 88);
        }

        if (v36 >= 0)
        {
          v38 = *(a1 + 111);
        }

        else
        {
          v38 = *(a1 + 96);
        }
      }

      else
      {
        v70 = 0uLL;
        v71 = 0uLL;
        v68 = 0uLL;
        v69 = 0uLL;
        v66 = 0uLL;
        v67 = 0uLL;
        v64 = 0uLL;
        v65 = 0uLL;
        v62 = 0uLL;
        v63 = 0uLL;
        v60 = 0uLL;
        v61 = 0uLL;
        v58 = 0uLL;
        v59 = 0uLL;
        v56 = 0uLL;
        v57 = 0uLL;
        v55 = 0uLL;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v55);
        v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "Could not find token at positiob ", 33);
        v42 = MEMORY[0x1B8C84C00](v41, v15);
        v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " in symbol table(s), replacing with ", 37);
        v43 = *(a1 + 111);
        if (v43 >= 0)
        {
          v37 = a1 + 88;
        }

        else
        {
          v37 = *(a1 + 88);
        }

        if (v43 >= 0)
        {
          v38 = *(a1 + 111);
        }

        else
        {
          v38 = *(a1 + 96);
        }
      }

      v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v37, v38);
      v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, " ", 2);
      MEMORY[0x1B8C84C60](v45, *(a2 + 64));
      quasar::QuasarTraceMessage::~QuasarTraceMessage(&v55);
    }

    LODWORD(v55) = v15;
    std::vector<int>::push_back[abi:ne200100](&a6->__begin_, &v55);
    v22 = (a2 + 64);
    goto LABEL_49;
  }

  if (a3)
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
      v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "Could not find ", 16);
      v48 = *a3 + v14;
      v49 = *(v48 + 23);
      if (v49 >= 0)
      {
        v50 = *a3 + v14;
      }

      else
      {
        v50 = *v48;
      }

      if (v49 >= 0)
      {
        v51 = *(v48 + 23);
      }

      else
      {
        v51 = *(v48 + 8);
      }

      v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v50, v51);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " in symbol table(s)", 20);
LABEL_63:
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v55);
    }
  }

  else if (quasar::gLogLevel >= 1)
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
    v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "Could not find token at position ", 33);
    v54 = MEMORY[0x1B8C84C00](v53, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, " in symbol table(s)", 19);
    goto LABEL_63;
  }

  return 0;
}

void sub_1B52312B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::QuasarErrorMessage::~QuasarErrorMessage(va);
  _Unwind_Resume(a1);
}

void quasar::FstLmScorer::getDecoder<quasar::OnlineLmRescoringDecoder>(uint64_t a1@<X0>, quasar::Decoder ***a2@<X1>, int a3@<W2>, quasar::Decoder **a4@<X8>)
{
  if (a3 && *(a1 + 32) == *(a1 + 40) && (*(a1 + 56) & 1) == 0)
  {
    v7 = *a2;
    v8 = a2[1];
    while (v7 != v8)
    {
      if (quasar::Decoder::isInitialized(*v7))
      {
        memset(v14, 0, 272);
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, "Decoder chain was not lazily initialized");
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v14);
      }

      v7 += 2;
    }

    *(a1 + 56) = 1;
  }

  *a4 = 0;
  a4[1] = 0;
  v9 = *a2;
  v10 = a2[1];
  if (*a2 == v10)
  {
LABEL_22:
    *a4 = 0;
    return;
  }

  v11 = 0;
  while (1)
  {
    if (!*v9)
    {
      v12 = 0;
LABEL_16:
      v13 = 0;
      goto LABEL_17;
    }

    if (!v12)
    {
      goto LABEL_16;
    }

    v13 = v9[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

LABEL_17:
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v12)
    {
      break;
    }

    v9 += 2;
    v11 = v13;
    if (v9 == v10)
    {
      a4[1] = v13;
      goto LABEL_22;
    }
  }

  *a4 = v12;
  a4[1] = v13;
  quasar::SpeechRecognizerModelLoader::initDecoderIfNeeded(*(a1 + 24), v12);
}

uint64_t quasar::compute(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, void *a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16)
{
  v30 = 0;
  v31 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *a8, a8[1], (a8[1] - *a8) >> 2);
  v23 = *a9;
  v24 = a9[1];
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    v35 = v24;
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v35 = 0;
  }

  v34 = v23;
  quasar::loadConstituentDfsts(a2, a3, a4, a5, a6, a7, &__p, &v34, v36, 0, a16);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  quasar::createDfst(v36, a10, a11, a15, a1, &v32);
  v37 = v36;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v37);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  v27 = v32;
  v28 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v25 = quasar::compute(a1, &v27);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  return v25;
}

void sub_1B523167C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::verifyLmInfo(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v8 = 0x2E8BA2E8BA2E8BA3 * ((*(a4 + 16) - *(a4 + 8)) >> 3);
  v10 = *a2;
  v9 = a2[1];
  v11 = (v9 - *a2) >> 3;
  if (*(a4 + 72) != 1)
  {
    if (v8 != v11)
    {
      if (quasar::gLogLevel >= 4)
      {
        goto LABEL_4;
      }

      return 1;
    }

LABEL_6:
    if (v9 == v10)
    {
      return 0;
    }

    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = (*(a4 + 8) + v12);
      if (v14[1].__r_.__value_.__r.__words[0] != *(v10 + 8 * v13))
      {
        break;
      }

      if (a1)
      {
        std::string::operator=(v14, (*a1 + 24 * *(*a3 + 4 * v13)));
        v10 = *a2;
        v9 = a2[1];
      }

      ++v13;
      v12 += 88;
      if (v13 >= (v9 - v10) >> 3)
      {
        return 0;
      }
    }

    if (quasar::gLogLevel >= 4)
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
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Mismatch in token IDs", 21);
      goto LABEL_17;
    }

    return 1;
  }

  if (v8 == v11 + 1)
  {
    goto LABEL_6;
  }

  if (quasar::gLogLevel >= 4)
  {
LABEL_4:
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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Mismatch in tokenLmInfos and filteredIds sizes", 46);
LABEL_17:
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v16);
  }

  return 1;
}

uint64_t quasar::SimpleFstLmRescorerOptions::SimpleFstLmRescorerOptions(uint64_t a1, char a2, __int128 *a3, uint64_t a4, int a5, char a6)
{
  *a1 = a2;
  v10 = (a1 + 8);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v10, *a3, *(a3 + 1));
  }

  else
  {
    v11 = *a3;
    v10->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&v10->__r_.__value_.__l.__data_ = v11;
  }

  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  *(a1 + 44) = a6;
  return a1;
}

void quasar::SimpleFstLmRescorer::SimpleFstLmRescorer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  v5 = *(a2 + 32);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 32) = v5;
  operator new();
}

void sub_1B5231AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](va);
  v7 = *(v4 + 72);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(v4 + 56);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*(v4 + 31) < 0)
  {
    operator delete(*v5);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::SimpleFstLmRescorer::computeLmScore(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  quasar::SymbolTableList::strsToSymbolIds(*(a1 + 48), a2, __p);
  v6 = quasar::SimpleFstLmRescorer::computeLmScore(a1, __p, a3, a2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v6;
}

void sub_1B5231B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::SimpleFstLmRescorer::computeLmScore(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v8 = (a1 + 80);
  if (*(a1 + 80) == *(a1 + 88))
  {
    v9 = *(a1 + 72);
    v20 = *(a1 + 64);
    v21 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    quasar::createConstituentDfstsFromSecondPassDecoder(&v20, &v16);
    std::vector<std::shared_ptr<quasar::Decoder>>::__vdeallocate(v8);
    *(a1 + 80) = v16;
    *(a1 + 96) = v17;
    v17 = 0;
    v16 = 0uLL;
    v13 = &v16;
    std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v13);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  v10 = 1;
  v18 = 1;
  kaldi::Timer::Reset(&v16, a2);
  v19 = 0;
  if (quasar::initLmInfo<quasar::SimpleFstLmRescorerOptions>(a1, *(a1 + 48), a3))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(&v12, 0, sizeof(v12));
    if (quasar::filterTokenIds<quasar::SimpleFstLmRescorerOptions>(a1, a3, a4, a2, &v13, &v12))
    {
      quasar::FstLmScorer::getLinearCompactLattice();
    }

    v10 = 2;
    if (v12.__begin_)
    {
      v12.__end_ = v12.__begin_;
      operator delete(v12.__begin_);
    }

    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_1B5231D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&a17);
  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void quasar::createConstituentDfstsFromSecondPassDecoder(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  memset(v8, 0, sizeof(v8));
  v9 = 1065353216;
  __p = 0;
  v6 = 0;
  v7 = 0;
  v3 = 0;
  v4 = 0;
  quasar::loadConstituentDfsts((v2 + 624), (v2 + 648), v11, v10, v8, 0xFFFFFFFFLL, &__p, &v3, a2, 0, 0x20000);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v8);
  *&v8[0] = v10;
  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](v8);
  *&v8[0] = v11;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](v8);
}

void sub_1B5231EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, void **a15)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  quasar::createConstituentDfstsFromSecondPassDecoder(&a12);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a15);
  a15 = (v15 - 64);
  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](&a15);
  a15 = (v15 - 40);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t quasar::initLmInfo<quasar::SimpleFstLmRescorerOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4 != -1)
  {
    *(a3 + 64) = v4;
    return 1;
  }

  v7 = *(a1 + 31);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 16);
  }

  if (!v7)
  {
    return 1;
  }

  v8 = quasar::SymbolTableList::strToSymbolId(a2, a1 + 8);
  *(a3 + 64) = v8;
  if (v8 != -1)
  {
    return 1;
  }

  if (quasar::gLogLevel >= 1)
  {
    memset(v14, 0, sizeof(v14));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Could not find OOV word ", 25);
    v10 = *(a1 + 31);
    if (v10 >= 0)
    {
      v11 = a1 + 8;
    }

    else
    {
      v11 = *(a1 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(a1 + 31);
    }

    else
    {
      v12 = *(a1 + 16);
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " in symbol table(s)", 20);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(v14);
  }

  return 0;
}

uint64_t quasar::filterTokenIds<quasar::SimpleFstLmRescorerOptions>(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, const void **a5, std::vector<unsigned int> *a6)
{
  std::vector<std::pair<int,int>>::reserve(a5, (a4[1] - *a4) >> 3);
  std::vector<int>::reserve(a6, (a4[1] - *a4) >> 3);
  v12 = *a4;
  if (a4[1] == *a4)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  while (*(v12 + v13) != -1)
  {
    if (a3 && quasar::gLogLevel >= 6)
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
      v16 = *a3 + v14;
      v17 = *(v16 + 23);
      if (v17 >= 0)
      {
        v18 = *a3 + v14;
      }

      else
      {
        v18 = *v16;
      }

      if (v17 >= 0)
      {
        v19 = *(v16 + 23);
      }

      else
      {
        v19 = *(v16 + 8);
      }

      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, v18, v19);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " ", 1);
      MEMORY[0x1B8C84C60](v21, *(*a4 + v13));
      quasar::QuasarTraceMessage::~QuasarTraceMessage(&v55);
    }

    LODWORD(v55) = v15;
    std::vector<int>::push_back[abi:ne200100](&a6->__begin_, &v55);
    v22 = (*a4 + v13);
LABEL_49:
    std::vector<long long>::push_back[abi:ne200100](a5, v22);
LABEL_50:
    ++v15;
    v12 = *a4;
    v14 += 24;
    v13 += 8;
    if (v15 >= (a4[1] - *a4) >> 3)
    {
      return 1;
    }
  }

  if (*a1 == 1)
  {
    if (quasar::gLogLevel >= 6)
    {
      if (a3)
      {
        v70 = 0uLL;
        v71 = 0uLL;
        v68 = 0uLL;
        v69 = 0uLL;
        v66 = 0uLL;
        v67 = 0uLL;
        v64 = 0uLL;
        v65 = 0uLL;
        v62 = 0uLL;
        v63 = 0uLL;
        v60 = 0uLL;
        v61 = 0uLL;
        v58 = 0uLL;
        v59 = 0uLL;
        v56 = 0uLL;
        v57 = 0uLL;
        v55 = 0uLL;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v55);
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "Could not find ", 16);
        v24 = *a3 + v14;
        v25 = *(v24 + 23);
        if (v25 >= 0)
        {
          v26 = *a3 + v14;
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

        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v26, v27);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " in symbol table(s), ignoring token", 36);
      }

      else
      {
        v70 = 0uLL;
        v71 = 0uLL;
        v68 = 0uLL;
        v69 = 0uLL;
        v66 = 0uLL;
        v67 = 0uLL;
        v64 = 0uLL;
        v65 = 0uLL;
        v62 = 0uLL;
        v63 = 0uLL;
        v60 = 0uLL;
        v61 = 0uLL;
        v58 = 0uLL;
        v59 = 0uLL;
        v56 = 0uLL;
        v57 = 0uLL;
        v55 = 0uLL;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v55);
        v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "Could not find token at position ", 33);
        v40 = MEMORY[0x1B8C84C00](v39, v15);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " in symbol table(s), ignoring token", 35);
      }

      quasar::QuasarTraceMessage::~QuasarTraceMessage(&v55);
    }

    goto LABEL_50;
  }

  if (*(a2 + 64) != -1)
  {
    if (quasar::gLogLevel >= 6)
    {
      if (a3)
      {
        v70 = 0uLL;
        v71 = 0uLL;
        v68 = 0uLL;
        v69 = 0uLL;
        v66 = 0uLL;
        v67 = 0uLL;
        v64 = 0uLL;
        v65 = 0uLL;
        v62 = 0uLL;
        v63 = 0uLL;
        v60 = 0uLL;
        v61 = 0uLL;
        v58 = 0uLL;
        v59 = 0uLL;
        v56 = 0uLL;
        v57 = 0uLL;
        v55 = 0uLL;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v55);
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "Could not find ", 16);
        v30 = *a3 + v14;
        v31 = *(v30 + 23);
        if (v31 >= 0)
        {
          v32 = *a3 + v14;
        }

        else
        {
          v32 = *v30;
        }

        if (v31 >= 0)
        {
          v33 = *(v30 + 23);
        }

        else
        {
          v33 = *(v30 + 8);
        }

        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v32, v33);
        v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " in symbol table(s), replacing with ", 38);
        v36 = *(a1 + 31);
        if (v36 >= 0)
        {
          v37 = a1 + 8;
        }

        else
        {
          v37 = *(a1 + 8);
        }

        if (v36 >= 0)
        {
          v38 = *(a1 + 31);
        }

        else
        {
          v38 = *(a1 + 16);
        }
      }

      else
      {
        v70 = 0uLL;
        v71 = 0uLL;
        v68 = 0uLL;
        v69 = 0uLL;
        v66 = 0uLL;
        v67 = 0uLL;
        v64 = 0uLL;
        v65 = 0uLL;
        v62 = 0uLL;
        v63 = 0uLL;
        v60 = 0uLL;
        v61 = 0uLL;
        v58 = 0uLL;
        v59 = 0uLL;
        v56 = 0uLL;
        v57 = 0uLL;
        v55 = 0uLL;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v55);
        v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "Could not find token at positiob ", 33);
        v42 = MEMORY[0x1B8C84C00](v41, v15);
        v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " in symbol table(s), replacing with ", 37);
        v43 = *(a1 + 31);
        if (v43 >= 0)
        {
          v37 = a1 + 8;
        }

        else
        {
          v37 = *(a1 + 8);
        }

        if (v43 >= 0)
        {
          v38 = *(a1 + 31);
        }

        else
        {
          v38 = *(a1 + 16);
        }
      }

      v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v37, v38);
      v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, " ", 2);
      MEMORY[0x1B8C84C60](v45, *(a2 + 64));
      quasar::QuasarTraceMessage::~QuasarTraceMessage(&v55);
    }

    LODWORD(v55) = v15;
    std::vector<int>::push_back[abi:ne200100](&a6->__begin_, &v55);
    v22 = (a2 + 64);
    goto LABEL_49;
  }

  if (a3)
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
      v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "Could not find ", 16);
      v48 = *a3 + v14;
      v49 = *(v48 + 23);
      if (v49 >= 0)
      {
        v50 = *a3 + v14;
      }

      else
      {
        v50 = *v48;
      }

      if (v49 >= 0)
      {
        v51 = *(v48 + 23);
      }

      else
      {
        v51 = *(v48 + 8);
      }

      v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v50, v51);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " in symbol table(s)", 20);
LABEL_63:
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v55);
    }
  }

  else if (quasar::gLogLevel >= 1)
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
    v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "Could not find token at position ", 33);
    v54 = MEMORY[0x1B8C84C00](v53, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, " in symbol table(s)", 19);
    goto LABEL_63;
  }

  return 0;
}

void sub_1B5232528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::QuasarErrorMessage::~QuasarErrorMessage(va);
  _Unwind_Resume(a1);
}

uint64_t quasar::compute(uint64_t a1, uint64_t *a2, void *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v19[24] = 1;
  kaldi::Timer::Reset(v19, a2);
  v20 = 0;
  quasar::createDfst(a2, a3, a4, a8, a1, &v17);
  v15 = v17;
  v16 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = quasar::compute(a1, &v15);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  return v13;
}

void sub_1B5232670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void quasar::loadConstituentDfsts(uint64_t **a1@<X0>, uint64_t **a2@<X1>, uint64_t **a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, void *a9@<X8>, unsigned __int8 a10, int a11)
{
  kaldi::quasar::ConvertLmeFsts(a4, v53);
  memset(v52, 0, sizeof(v52));
  v14 = *a1;
  v15 = a1[1];
  if (*a1 != v15)
  {
    do
    {
      if (a6 == -1)
      {
        v17 = *v14;
        std::string::basic_string[abi:ne200100]<0>(v36, "");
        quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getCachedModel(v17, v36, &v45);
        LODWORD(v39[0]) = 0;
        __p[1] = 0;
        v49 = 0;
        __p[0] = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, v39, v39 + 4, 1uLL);
        kaldi::quasar::DeterministicOnDemandFstCreator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::AddBackoffFst();
      }

      v16 = *v14;
      std::string::basic_string[abi:ne200100]<0>(__p, "");
      quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getCachedModel(v16, __p, &v50);
      LODWORD(v36[0]) = a6;
      v36[1] = v50;
      *&v37 = v51;
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      DWORD2(v37) = -1;
      v46 = 0;
      v47 = 0;
      v45 = &v46;
      kaldi::quasar::DeterministicOnDemandFstCreator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::AddBackoffFst(v52, v36, v53, 1, a10, a11, 0x20000, &v45);
      std::__tree<int>::destroy(&v45, v46);
      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      }

      if (SHIBYTE(v49) < 0)
      {
        operator delete(__p[0]);
      }

      v14 += 2;
    }

    while (v14 != v15);
  }

  v18 = *a3;
  v19 = a3[1];
  if (*a3 == v19)
  {
    goto LABEL_37;
  }

  v20 = 0;
  v21 = *a3;
  do
  {
    v22 = *v21;
    v21 += 2;
    v20 |= *(v22 + 8);
  }

  while (v21 != v19);
  if ((v20 & 1) == 0)
  {
LABEL_37:
    v23 = *a2;
    v24 = a2[1];
    if (*a2 != v24)
    {
      do
      {
        v25 = *v23;
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::getCachedModel(v25, __p, &v43);
        v26 = v43;
        v46 = 0;
        v47 = 0;
        v45 = &v46;
        v27 = *a8;
        if (*a8)
        {
          std::string::basic_string[abi:ne200100]<0>(v39, "");
          quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::getCachedModel(v27, v39, &v41);
          v28 = v41;
        }

        else
        {
          v28 = 0;
        }

        *v36 = 0u;
        v37 = 0u;
        v38 = 1065353216;
        v30 = v36;
        kaldi::quasar::DeterministicOnDemandFstCreator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::AddNnlm(v52, v26, v53, a5, a7, &v45, v28, 1u, a10, a11);
        std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v36);
        if (v27)
        {
          if (v42)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v42);
          }

          if (v40 < 0)
          {
            operator delete(v39[0]);
          }
        }

        std::__tree<int>::destroy(&v45, v46);
        if (v44)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v44);
        }

        if (SHIBYTE(v49) < 0)
        {
          operator delete(__p[0]);
        }

        v23 += 2;
      }

      while (v23 != v24);
      v18 = *a3;
      v19 = a3[1];
    }
  }

  for (; v18 != v19; v18 += 2)
  {
    v29 = *v18;
    v36[1] = 0;
    *&v37 = 0;
    v36[0] = &v36[1];
    (*(*v29 + 16))(v29, v52, v53, a6, 1, 0, a11, v36, a5, 0x20000, v30);
    std::__tree<int>::destroy(v36, v36[1]);
  }

  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  std::vector<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::__init_with_size[abi:ne200100]<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>*,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>*>(a9, *&v52[0], *(&v52[0] + 1), (*(&v52[0] + 1) - *&v52[0]) >> 4);
  v36[0] = &v52[1] + 8;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](v36);
  v36[0] = v52;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](v36);
  *&v52[0] = v53;
  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](v52);
}

void sub_1B5232A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  v45 = kaldi::quasar::DeterministicOnDemandFstCreator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~DeterministicOnDemandFstCreator((v43 - 160));
  *(v43 - 160) = v43 - 112;
  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](v45);
  _Unwind_Resume(a1);
}

uint64_t *quasar::createDfst@<X0>(uint64_t *result@<X0>, void *a2@<X1>, int a3@<W2>, char a4@<W4>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v7 = result;
  v38 = a3;
  v37 = a4;
  v9 = *a2;
  v10 = a2[1];
  if (a5 && v9 == v10)
  {
    kaldi::quasar::GetBestInterpWeights(result, &v20);
  }

  if (v9 != v10)
  {
    if (v10 - v9 == (result[1] - *result) >> 4)
    {
      v11 = *a2;
      while ((*v11 & 0x7FFFFFFFu) < 0x7F800000)
      {
        if (++v11 == v10)
        {
          v12 = 0;
          memset(v19, 0, sizeof(v19));
          while (1)
          {
            if (quasar::gLogLevel >= 6)
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
              v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "LM component ", 13);
              v14 = MEMORY[0x1B8C84C00](v13, v12);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " weight: ", 9);
              std::ostream::operator<<();
              quasar::QuasarTraceMessage::~QuasarTraceMessage(&v20);
              v9 = *a2;
            }

            v15 = *(*v7 + 16 * v12);
            v20 = v15;
            if (*(&v15 + 1))
            {
              atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            LODWORD(v21) = v9[v12];
            std::vector<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>>::push_back[abi:ne200100](v19, &v20);
            if (*(&v20 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v20 + 1));
            }

            ++v12;
            v9 = *a2;
            if (v12 >= (a2[1] - *a2) >> 2)
            {
              std::allocate_shared[abi:ne200100]<fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::vector<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>> &,fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::WeightType &,BOOL const&,0>();
            }
          }
        }
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
      std::operator<<[abi:ne200100]<std::char_traits<char>>(&v20, "At least one interpolation weight is not finite.");
    }

    else
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
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "Num new Lms = ", 14);
      v17 = MEMORY[0x1B8C84C30](v16, (v7[1] - *v7) >> 4);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " but num interp weights = ", 26);
      MEMORY[0x1B8C84C30](v18, (a2[1] - *a2) >> 2);
    }

    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v20);
  }

  *a6 = 0;
  a6[1] = 0;
  return result;
}

void sub_1B5232F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  quasar::QuasarWarnMessage::~QuasarWarnMessage(va);
  _Unwind_Resume(a1);
}

void sub_1B5233068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::GetLabels(void *a1@<X0>, std::vector<unsigned int> *a2@<X8>)
{
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  std::vector<int>::reserve(a2, (a1[1] - *a1) >> 5);
  v4 = *a1;
  v5 = a1[1];
  while (v4 != v5)
  {
    std::vector<int>::push_back[abi:ne200100](&a2->__begin_, v4);
    v4 += 8;
  }
}

void sub_1B523312C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
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
      *v8 = *v9;
      *(v8 + 8) = *(v9 + 8);
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *(v8 + 24) = *(v9 + 24);
      v9 += 32;
      v8 += 32;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>(&v11, a2, v7, v6);
}

void std::_AllocatorDestroyRangeReverse<std::allocator<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 16);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 32;
  }
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = a4 + v7;
      *(v9 - 32) = *(a3 + v7 - 32);
      v10 = *(a3 + v7 - 24);
      *(v8 - 24) = 0;
      *(v8 - 16) = 0;
      v11 = *(a4 + v7 - 16);
      *(v9 - 24) = v10;
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      *(v9 - 8) = *(v8 - 8);
      v7 -= 32;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

void **std::__advance[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(void **result, uint64_t a2)
{
  if (a2 < 0)
  {
    v7 = *result;
    do
    {
      v8 = *v7;
      if (*v7)
      {
        do
        {
          v4 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v4 = v7[2];
          v5 = *v4 == v7;
          v7 = v4;
        }

        while (v5);
      }

      v7 = v4;
    }

    while (!__CFADD__(a2++, 1));
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = *result;
    do
    {
      v3 = v2[1];
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
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (a2-- > 1);
  }

  *result = v4;
  return result;
}

float fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Final(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v9 = 0;
  if (*a3)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN3fst14BackoffArcInfoENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v6 = fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::FinalNoPhiState(a1, a2, &v8);
  v10 = 2139095040;
  if (v6 == INFINITY)
  {
    if (*a3)
    {
      _ZNSt3__115allocate_sharedB8ne200100IN3fst14BackoffArcInfoENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    v6 = fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::FinalUsingPhiState(a1, a2, &v8);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v6;
}

void sub_1B523345C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

float fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Final(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v2 = (*(*a1 + 8))(a1, a2, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

void sub_1B52334E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~BackoffDeterministicOnDemandFst(uint64_t a1)
{
  fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~BackoffDeterministicOnDemandFst(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ReplaceFst(void *a1)
{
  fst::ImplToFst<fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
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

uint64_t fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitMatcher(void *a1, int a2)
{
  if ((*(a1[1] + 160) & 1) == 0)
  {
    if (a2 == 1)
    {
      v2 = *(*a1 + 64);
    }

    else
    {
      if (a2)
      {
        goto LABEL_8;
      }

      v2 = *(*a1 + 64);
    }

    if (v2())
    {
      operator new();
    }
  }

LABEL_8:
  if (FLAGS_v >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
    v3 = fst::LogMessage::LogMessage(&v8, __p);
    v4 = fst::cerr(v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Not using replace matcher", 25);
    fst::LogMessage::~LogMessage(&v8);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ReplaceFstImpl(uint64_t a1)
{
  fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ReplaceFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::CompactHashStateTable<fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>>::~CompactHashStateTable(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 24);
  return a1;
}

uint64_t fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ReplaceFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D06E70;
  v2 = *(a1 + 168);
  if (v2)
  {
    v9 = (v2 + 192);
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v9);
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v2 + 136);
    v3 = *(v2 + 80);
    if (v3)
    {
      *(v2 + 88) = v3;
      operator delete(v3);
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v2 + 24);
    MEMORY[0x1B8C85350](v2, 0x10E0C400D6CF2F0);
  }

  v4 = *(a1 + 240);
  v5 = *(a1 + 248);
  if ((v5 - v4) >= 9)
  {
    v6 = 1;
    do
    {
      v7 = v4[v6];
      if (v7)
      {
        (*(*v7 + 8))(v4[v6]);
        v4 = *(a1 + 240);
        v5 = *(a1 + 248);
      }

      ++v6;
    }

    while (v6 < (v5 - v4) >> 3);
  }

  if (v4)
  {
    *(a1 + 248) = v4;
    operator delete(v4);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 200);
  std::__tree<int>::destroy(a1 + 176, *(a1 + 184));
  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void *fst::ImplToFst<fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D06EC0;
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

uint64_t fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::HashEqual::operator()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 < -1 || a3 < -1)
  {
    return a2 == a3;
  }

  v3 = *a1;
  if (a2 == -1)
  {
    v4 = *(v3 + 104);
  }

  else
  {
    v4 = (*(v3 + 80) + 24 * a2);
  }

  if (a3 == -1)
  {
    v6 = *(v3 + 104);
  }

  else
  {
    v6 = (*(v3 + 80) + 24 * a3);
  }

  return std::equal_to<fst::ReplaceStackPrefix<int,int>>::operator()[abi:ne200100](v3 + 1, v4, v6);
}

uint64_t std::equal_to<fst::ReplaceStackPrefix<int,int>>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v5 == a3[1] - *a3)
  {
    if (v4 == v3)
    {
      return 1;
    }

    v6 = v5 >> 3;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = (*a3 + 4);
    for (i = (v3 + 4); *(i - 1) == *(v7 - 1) && *i == *v7; i += 2)
    {
      v7 += 2;
      if (!--v6)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t std::vector<fst::ReplaceStackPrefix<int,int>>::__construct_one_at_end[abi:ne200100]<fst::ReplaceStackPrefix<int,int> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>::PrefixTuple*,fst::ReplaceStackPrefix<int,int>::PrefixTuple*>(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

BOOL fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)1>::HashEqual::operator()(uint64_t *a1, int a2, int a3)
{
  if (a2 < -1 || a3 < -1)
  {
    return a2 == a3;
  }

  else
  {
    v3 = *a1;
    if (a2 == -1)
    {
      v4 = *(v3 + 104);
    }

    else
    {
      v4 = *(v3 + 80) + 16 * a2;
    }

    if (a3 == -1)
    {
      v7 = *(v3 + 104);
    }

    else
    {
      v7 = *(v3 + 80) + 16 * a3;
    }

    if (*v4 != *v7 || *(v4 + 8) != *(v7 + 8))
    {
      return 0;
    }

    return *(v4 + 12) == *(v7 + 12);
  }
}

float fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Final(uint64_t a1, int a2)
{
  if (fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasFinal(a1, a2))
  {
    v4 = *(a1 + 120);
    if (*(v4 + 76) == a2)
    {
      v5 = (v4 + 80);
    }

    else
    {
      v5 = (*(v4 + 8) + 8 * a2 + 8);
    }

    return **v5;
  }

  else
  {
    v6 = *(*(a1 + 168) + 80) + 16 * a2;
    if (*v6)
    {
      v7 = INFINITY;
    }

    else
    {
      v8 = *(*(a1 + 240) + 8 * *(v6 + 8));
      v7 = (*(*v8 + 32))(v8, *(v6 + 12));
    }

    if ((*(a1 + 160) & 1) != 0 || fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2))
    {
      MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
      *MutableState = v7;
      *(MutableState + 12) |= 9u;
    }
  }

  return v7;
}

uint64_t fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Expand(uint64_t *a1, int a2)
{
  v15 = *(*(a1[21] + 80) + 16 * a2);
  if (HIDWORD(v15) != -1)
  {
    v4 = *(a1[30] + 8 * SDWORD2(v15));
    v14 = 0;
    (*(*v4 + 136))(v4);
    if (fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComputeFinalArc(a1, &v15, &v9, 15))
    {
      MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(a1[15], a2);
      std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](MutableState + 24, &v9);
    }

    while (1)
    {
      if (v10)
      {
        if ((*(*v10 + 24))(v10))
        {
LABEL_15:
          fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
          result = v10;
          if (v10)
          {
            return (*(*v10 + 8))(v10);
          }

          if (v13)
          {
            --*v13;
          }

          return result;
        }

        if (v10)
        {
          v6 = (*(*v10 + 32))(v10);
          goto LABEL_8;
        }
      }

      else if (v14 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v11 + 16 * v14);
LABEL_8:
      if (fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComputeArc(a1, &v15, v6, &v9, 15))
      {
        v7 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(a1[15], a2);
        std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](v7 + 24, &v9);
      }

      if (v10)
      {
        (*(*v10 + 40))(v10);
      }

      else
      {
        ++v14;
      }
    }
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B5233FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15)
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

uint64_t fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumInputEpsilons(uint64_t a1, int a2)
{
  if (fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2))
  {
LABEL_20:
    v11 = *(a1 + 120);
    if (*(v11 + 76) == a2)
    {
      v12 = v11 + 80;
    }

    else
    {
      v12 = *(v11 + 8) + 8 * a2 + 8;
    }

    return *(*v12 + 8);
  }

  if ((*(a1 + 160) & 1) != 0 || !(*(*a1 + 32))(a1, 0x10000000))
  {
    fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Expand(a1, a2);
    goto LABEL_20;
  }

  v19 = *(*(*(a1 + 168) + 80) + 16 * a2);
  if (HIDWORD(v19) == -1)
  {
    return 0;
  }

  v4 = *(*(a1 + 240) + 8 * SDWORD2(v19));
  if ((*(a1 + 132) & 0xFFFFFFFD) != 1)
  {
    v5 = (*(*v4 + 48))(v4);
    goto LABEL_31;
  }

  v18 = 0;
  (*(*v4 + 136))(v4);
  v5 = 0;
  while (1)
  {
    while (v14)
    {
      v6 = (*(*v14 + 24))();
      v7 = v14;
      if (v6)
      {
        goto LABEL_27;
      }

      v8 = (*(*v14 + 32))();
      v7 = v14;
      if (*v8)
      {
        v9 = (*(*v14 + 32))();
        goto LABEL_14;
      }

LABEL_15:
      ++v5;
      if (!v7)
      {
        goto LABEL_18;
      }

      (*(*v7 + 40))(v7);
    }

    if (v18 >= v16)
    {
      goto LABEL_29;
    }

    if (*(v15 + 16 * v18))
    {
      break;
    }

    ++v5;
LABEL_18:
    ++v18;
  }

  v9 = v15 + 16 * v18;
LABEL_14:
  IsNonTerminal = fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::IsNonTerminal(a1, *(v9 + 4));
  v7 = v14;
  if (IsNonTerminal)
  {
    goto LABEL_15;
  }

LABEL_27:
  if (v7)
  {
    (*(*v7 + 8))(v7);
    goto LABEL_31;
  }

LABEL_29:
  if (v17)
  {
    --*v17;
  }

LABEL_31:
  if ((*(a1 + 136) & 0xFFFFFFFD) == 1)
  {
    v5 += fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComputeFinalArc(a1, &v19, 0, 15);
  }

  return v5;
}

void sub_1B5234310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

BOOL fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::IsNonTerminal(void *a1, int a2)
{
  v7 = a2;
  if (*(a1[22] + 28) > a2)
  {
    return 0;
  }

  v2 = a1 + 23;
  v3 = a1[23];
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *(v3 + 8);
    }

    while (v3);
  }

  else
  {
    do
    {
      v4 = v2[2];
      v5 = *v4 == v2;
      v2 = v4;
    }

    while (v5);
  }

  return *(v4 + 28) >= a2 && std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a1 + 25, &v7) != 0;
}

uint64_t fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if (fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2))
  {
LABEL_20:
    v11 = *(a1 + 120);
    if (*(v11 + 76) == a2)
    {
      v12 = v11 + 80;
    }

    else
    {
      v12 = *(v11 + 8) + 8 * a2 + 8;
    }

    return *(*v12 + 16);
  }

  if ((*(a1 + 160) & 1) != 0 || !(*(*a1 + 32))(a1, 0x40000000))
  {
    fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Expand(a1, a2);
    goto LABEL_20;
  }

  v19 = *(*(*(a1 + 168) + 80) + 16 * a2);
  if (HIDWORD(v19) == -1)
  {
    return 0;
  }

  v4 = *(*(a1 + 240) + 8 * SDWORD2(v19));
  if ((*(a1 + 132) - 1) >= 2)
  {
    v5 = (*(*v4 + 56))(v4);
    goto LABEL_31;
  }

  v18 = 0;
  (*(*v4 + 136))(v4);
  v5 = 0;
  while (1)
  {
    while (v14)
    {
      v6 = (*(*v14 + 24))();
      v7 = v14;
      if (v6)
      {
        goto LABEL_27;
      }

      v8 = (*(*v14 + 32))();
      v7 = v14;
      if (*(v8 + 4))
      {
        v9 = (*(*v14 + 32))();
        goto LABEL_14;
      }

LABEL_15:
      ++v5;
      if (!v7)
      {
        goto LABEL_18;
      }

      (*(*v7 + 40))(v7);
    }

    if (v18 >= v16)
    {
      goto LABEL_29;
    }

    if (*(v15 + 16 * v18 + 4))
    {
      break;
    }

    ++v5;
LABEL_18:
    ++v18;
  }

  v9 = v15 + 16 * v18;
LABEL_14:
  IsNonTerminal = fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::IsNonTerminal(a1, *(v9 + 4));
  v7 = v14;
  if (IsNonTerminal)
  {
    goto LABEL_15;
  }

LABEL_27:
  if (v7)
  {
    (*(*v7 + 8))(v7);
    goto LABEL_31;
  }

LABEL_29:
  if (v17)
  {
    --*v17;
  }

LABEL_31:
  if ((*(a1 + 136) - 1) <= 1)
  {
    v5 += fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComputeFinalArc(a1, &v19, 0, 15);
  }

  return v5;
}

void sub_1B5234694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

void sub_1B523488C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v18 = *v16;
  if (*v16)
  {
    *(v15 + 248) = v18;
    operator delete(v18);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v15 + 200);
  std::__tree<int>::destroy(v15 + 176, *(v15 + 184));
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v15);
  _Unwind_Resume(a1);
}

void *fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>::DefaultReplaceStateTable(void *a1, uint64_t a2)
{
  a1[1] = a1;
  a1[2] = a1;
  std::unordered_set<int,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::unordered_set((a1 + 3), 0, a1 + 1, a1 + 2);
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::CompactHashBiTable(a1 + 14, (a2 + 112));
  return a1;
}

void *fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::CompactHashBiTable(void *a1, void *a2)
{
  a1[1] = a1;
  a1[2] = a1;
  std::unordered_set<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::HashEqual,std::allocator<long>>::unordered_set((a1 + 3), a2[6], a1 + 1, a1 + 2);
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  std::vector<fst::ReplaceStackPrefix<int,int>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>*,fst::ReplaceStackPrefix<int,int>*>((a1 + 10), a2[10], a2[11], 0xAAAAAAAAAAAAAAABLL * ((a2[11] - a2[10]) >> 3));
  for (i = a2[5]; i; i = *i)
  {
    std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::HashEqual,std::allocator<long>>::__emplace_unique_key_args<long,long const&>(a1 + 3, i + 2);
  }

  return a1;
}

uint64_t std::vector<fst::ReplaceStackPrefix<int,int>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>*,fst::ReplaceStackPrefix<int,int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5234AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<fst::ReplaceStackPrefix<int,int>>,fst::ReplaceStackPrefix<int,int>*,fst::ReplaceStackPrefix<int,int>*,fst::ReplaceStackPrefix<int,int>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>::PrefixTuple*,fst::ReplaceStackPrefix<int,int>::PrefixTuple*>(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReplaceStackPrefix<int,int>>,fst::ReplaceStackPrefix<int,int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::unordered_map<int,int>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int const,int> const&>(a1, i + 4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int const,int> const&>(void *a1, int *a2)
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

uint64_t fst::CacheStateIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Done(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  if (v2 < *(v3 + 68))
  {
    return 0;
  }

  v5 = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::MinUnexpandedState(v3);
  if (v5 >= *(*(a1 + 16) + 68))
  {
    return 1;
  }

  v6 = v5;
  do
  {
    v15 = *(a1 + 8);
    v17 = -1;
    v18 = -1;
    v19 = 0;
    v20 = 0;
    v16 = v6;
    v22 = 15;
    v31 = 0;
    v23 = 0;
    v26 = 0;
    v24 = 0;
    v25 = 0;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v30 = 0;
    fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Reinit_(&v15);
    fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetFlags(&v15, 15, 31);
    v7 = v19;
    v8 = v21;
    while (v7 < v8)
    {
      v9 = *(a1 + 16);
      v10 = fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(&v15)[3];
      if (*(v9 + 68) <= v10)
      {
        *(v9 + 68) = v10 + 1;
      }

      v8 = v21;
      v7 = ++v19;
    }

    fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::SetExpandedState(*(a1 + 16), v6);
    v11 = *(a1 + 24);
    v12 = *(*(a1 + 16) + 68);
    fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~ArcIterator(&v15);
    v13 = v11 < v12;
    v4 = v11 >= v12;
    if (v13)
    {
      break;
    }

    v6 = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::MinUnexpandedState(*(a1 + 16));
  }

  while (v6 < *(*(a1 + 16) + 68));
  return v4;
}

void sub_1B5234FE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~ArcIterator(va);
  _Unwind_Resume(a1);
}

void *fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~ArcIterator(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    --*v2;
  }

  v3 = a1[17];
  if (v3)
  {
    --*v3;
  }

  v4 = a1[14];
  if (v4)
  {
    (*(*v4 + 8))(v4);
    a1[14] = 0;
  }

  return a1;
}

uint64_t fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitArcIterator(uint64_t *a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitArcIterator(a1, a2, a3);
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ReplaceFstMatcher(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D07020;
  *(a1 + 8) = a2;
  *(a1 + 16) = *(a2 + 8);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *(a1 + 64) = a3;
  *(a1 + 69) = 0;
  *(a1 + 72) = -1;
  *(a1 + 80) = -1;
  *(a1 + 104) = xmmword_1B5AE3080;
  if (a3 == 1)
  {
    *(a1 + 104) = 0xFFFFFFFF00000000;
  }

  fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitMatchers(a1);
  return a1;
}

void sub_1B5235164(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitMatchers(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (*(v1 + 248) - *(v1 + 240)) >> 3;
  v5 = 0;
  std::vector<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::resize((a1 + 32), v2, &v5);
  v3 = *(v1 + 240);
  if (*(v1 + 248) != v3)
  {
    v4 = 0;
    do
    {
      if (*(v3 + 8 * v4))
      {
        operator new();
      }

      ++v4;
      v3 = *(v1 + 240);
    }

    while (v4 < (*(v1 + 248) - v3) >> 3);
  }
}

void fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ReplaceFstMatcher(void *a1)
{
  fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ReplaceFstMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Type(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
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
    return *(a1 + 64);
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

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetState_(uint64_t result, int a2)
{
  if (*(result + 56) != a2)
  {
    v2 = result;
    *(result + 56) = a2;
    *(result + 72) = *(*(*(*(result + 16) + 168) + 80) + 16 * a2);
    v3 = *(result + 84);
    if (v3 == -1)
    {
      *(result + 68) = 1;
    }

    else
    {
      v4 = *(*(result + 32) + 8 * *(result + 80));
      *(result + 24) = v4;
      result = (*(***v4 + 56))(**v4, v3);
      v4[18] = v3;
      *(v2 + 116) = *(v2 + 56);
      *(v2 + 70) = 0;
    }
  }

  return result;
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Find_(uint64_t a1, int a2)
{
  *(a1 + 60) = a2;
  if (a2 == -1)
  {
    v3 = 0;
  }

  else
  {
    if (a2)
    {
      v13 = *(a1 + 24);

      return fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Find(v13, a2);
    }

    v3 = 1;
    *(a1 + 69) = 1;
  }

  *(a1 + 70) = fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComputeFinalArc(*(a1 + 16), (a1 + 72), 0, 15);
  v4 = *(a1 + 24);
  v5 = v4 + 3;
  v4[6] = v4 + 3;
  *(v4 + 56) = 0;
  if (v4[1])
  {
    v8 = v4[2];
    while (1)
    {
      v4[6] = v8;
      if (v8 == v5)
      {
        break;
      }

      v9 = (*(***v4 + 64))(**v4, *(v8 + 7));
      v10 = v4[6];
      if (v9)
      {
        if (v10 == v5)
        {
          break;
        }

        *(v4 + 76) = 0;
        goto LABEL_7;
      }

      v11 = v10[1];
      if (v11)
      {
        do
        {
          v8 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v8 = v10[2];
          v12 = *v8 == v10;
          v10 = v8;
        }

        while (!v12);
      }
    }
  }

  v6 = (*(***v4 + 64))(**v4, 0xFFFFFFFFLL);
  *(v4 + 76) = v6 ^ 1;
  if (v6)
  {
LABEL_7:
    v7 = 1;
  }

  else
  {
    v7 = v3 | *(a1 + 70);
  }

  return v7 & 1;
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done_(uint64_t a1)
{
  if (*(a1 + 69) & 1) != 0 || (*(a1 + 70))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(*(a1 + 24) + 76);
  }

  return v1 & 1;
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Value_(uint64_t a1)
{
  if (*(a1 + 69) == 1)
  {
    return a1 + 104;
  }

  if (*(a1 + 70) == 1)
  {
    v2 = a1 + 88;
    fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComputeFinalArc(*(a1 + 16), (a1 + 72), a1 + 88, 15);
  }

  else
  {
    v3 = *(a1 + 24);
    if (*(v3 + 56) == 1)
    {
      v4 = v3 + 15;
    }

    else
    {
      v4 = (*(***v3 + 80))(**v3);
    }

    v2 = a1 + 88;
    fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComputeArc(*(a1 + 16), a1 + 72, v4, a1 + 88, 15);
  }

  return v2;
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Next_(uint64_t result)
{
  if (*(result + 69) == 1)
  {
    *(result + 69) = 0;
  }

  else if (*(result + 70) == 1)
  {
    *(result + 70) = 0;
  }

  else
  {
    return fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Next(*(result + 24));
  }

  return result;
}

void fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AddMultiEpsLabel(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = a1 + 16;

    fst::CompactSet<int,-1>::Insert(v2, a2);
  }

  else
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v3 = fst::LogMessage::LogMessage(&v7, __p);
    v4 = fst::cerr(v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "MultiEpsMatcher: Bad multi-eps label: 0", 39);
    fst::LogMessage::~LogMessage(&v7);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1B5235870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::MultiEpsMatcher(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, char a6)
{
  if (!a5)
  {
    operator new();
  }

  *result = a5;
  *(result + 8) = a4;
  *(result + 12) = a6;
  *(result + 32) = 0;
  *(result + 24) = 0;
  *(result + 16) = result + 24;
  *(result + 40) = -1;
  *(result + 48) = 0;
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (a3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  *(result + 60) = v6;
  *(result + 64) = v7;
  *(result + 68) = 0xFFFFFFFF00000000;
  return result;
}

void *fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ReplaceFstMatcher(void *a1)
{
  *a1 = &unk_1F2D07020;
  v4 = a1 + 4;
  v2 = a1[4];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        v6 = fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~MultiEpsMatcher(v2[v5]);
        MEMORY[0x1B8C85350](v6, 0x1020C403A3A3D98);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~MultiEpsMatcher(uint64_t a1)
{
  if (*(a1 + 12) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      MEMORY[0x1B8C85350](v2, 0x20C4093837F09);
    }
  }

  std::__tree<int>::destroy(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ReplaceFstMatcher(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = &unk_1F2D07020;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v3 + 8);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  LODWORD(v3) = *(a2 + 64);
  *(a1 + 64) = v3;
  *(a1 + 69) = 0;
  *(a1 + 72) = -1;
  *(a1 + 80) = -1;
  *(a1 + 104) = xmmword_1B5AE3080;
  if (v3 == 1)
  {
    *(a1 + 104) = 0xFFFFFFFF00000000;
  }

  fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitMatchers(a1);
  return a1;
}

void sub_1B5235B4C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~SortedMatcher(void *a1)
{
  fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~SortedMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Type(uint64_t a1, uint64_t a2)
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

uint64_t fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Properties(uint64_t a1, uint64_t a2)
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

uint64_t fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Next_(uint64_t result)
{
  if (*(result + 72) == 1)
  {
    *(result + 72) = 0;
  }

  else
  {
    ++*(*(result + 24) + 32);
  }

  return result;
}

void fst::MemoryPool<fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D07150;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D07150;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D07190;
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

void *fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~SortedMatcher(void *a1)
{
  *a1 = &unk_1F2D070B8;
  v2 = a1[3];
  if (v2)
  {
    v3 = fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~ArcIterator(v2);
    v3[25] = a1[17];
    a1[17] = v3;
  }

  v4 = a1[1];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  a1[10] = &unk_1F2D07150;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::Link>::~MemoryArena(a1 + 11);
  quasar::Bitmap::~Bitmap((a1 + 10));
  return a1;
}

void fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SortedMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D070B8;
  *(a1 + 8) = (*(**(a2 + 8) + 88))(*(a2 + 8), a3);
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 74) = *(a2 + 74);
  fst::MemoryPool<fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::MemoryPool((a1 + 80), 1);
}

BOOL fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Done(uint64_t a1)
{
  if (*(a1 + 72))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (*(v3 + 32) >= *(v3 + 48))
  {
    return 1;
  }

  if (*(a1 + 73) != 1)
  {
    return 0;
  }

  if (*(a1 + 32))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetFlags(v3, v4, 15);
  v5 = *(a1 + 32) != 0;
  return fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(*(a1 + 24))[v5] != *(a1 + 40);
}

float fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::FinalNoPhiState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(**(a1 + 32) + 32))(*(a1 + 32));
  v11[2] = result;
  v11[1] = INFINITY;
  if (result == INFINITY)
  {
    BackoffState = fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::GetBackoffState(a1, a2, v11);
    if (BackoffState == -1)
    {
      return INFINITY;
    }

    else
    {
      if (*a3)
      {
        ++*(*a3 + 8);
      }

      v8 = fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::FinalNoPhiState(a1, BackoffState, a3);
      result = NAN;
      if (v11[0] != -INFINITY && v8 != -INFINITY)
      {
        result = INFINITY;
        v9 = v8 == INFINITY || v11[0] == INFINITY;
        v10 = v11[0] + v8;
        if (!v9)
        {
          return v10;
        }
      }
    }
  }

  return result;
}

float fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::FinalUsingPhiState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = *(a1 + 48); i != *(a1 + 56); ++i)
  {
    v17 = *i;
    if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 72), &v17))
    {
      if (*(a1 + 40) == 1)
      {
        fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(*(a1 + 128), a2);
        if (!fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Find(*(a1 + 128), SLODWORD(v17)))
        {
          continue;
        }

        v7 = fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(*(a1 + 128));
      }

      else
      {
        fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetState(*(a1 + 112), a2);
        if (!fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Find(*(a1 + 112), SLODWORD(v17)))
        {
          continue;
        }

        v7 = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Value(*(a1 + 112));
      }

      v9 = *(v7 + 8);
      v8 = *(v7 + 12);
      v16[0] = v9;
      if (v8 != -1)
      {
        v10 = fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::FinalNoPhiState(a1, v8, a3);
        v17 = v10;
        v16[1] = INFINITY;
        if (v10 != INFINITY)
        {
          result = NAN;
          if (v9 != -INFINITY && v10 != -INFINITY)
          {
            result = INFINITY;
            v12 = v9 == INFINITY || v10 == INFINITY;
            v13 = v10 + v9;
LABEL_27:
            if (!v12)
            {
              return v13;
            }
          }

          return result;
        }
      }
    }
  }

  BackoffState = fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::GetBackoffState(a1, a2, v16);
  if (BackoffState == -1)
  {
    return INFINITY;
  }

  if (*a3)
  {
    ++*(*a3 + 8);
  }

  v15 = fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::FinalUsingPhiState(a1, BackoffState, a3);
  result = NAN;
  if (v16[0] != -INFINITY && v15 != -INFINITY)
  {
    result = INFINITY;
    v12 = v15 == INFINITY || v16[0] == INFINITY;
    v13 = v16[0] + v15;
    goto LABEL_27;
  }

  return result;
}

void *_ZNSt3__120__shared_ptr_emplaceIN3fst14BackoffArcInfoENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D071D0;
  fst::BackoffArcInfo::BackoffArcInfo((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<fst::BackoffArcInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D071D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~BackoffDeterministicOnDemandFst(uint64_t a1)
{
  *a1 = &unk_1F2D06D18;
  v2 = *(a1 + 120);
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

    MEMORY[0x1B8C85350](v2, 0x1070C401ACC3EEFLL);
  }

  v4 = *(a1 + 112);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    v6 = fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~ArcIterator(v5);
    MEMORY[0x1B8C85350](v6, 0x1070C40BAB1B673);
  }

  v7 = *(a1 + 128);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (*(a1 + 41) == 1)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 72);
  v9 = *(a1 + 48);
  if (v9)
  {
    *(a1 + 56) = v9;
    operator delete(v9);
  }

  v11 = (a1 + 8);
  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](&v11);
  return a1;
}

float fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComputeFinalEosRecursively(uint64_t a1, uint64_t a2)
{
  result = (*(**(a1 + 32) + 32))(*(a1 + 32));
  v12 = LODWORD(result);
  v11 = INFINITY;
  if (result != INFINITY)
  {
    return result;
  }

  for (i = *(a1 + 48); i != *(a1 + 56); ++i)
  {
    v12 = *i;
    if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 72), &v12))
    {
      continue;
    }

    if (*(a1 + 40) == 1)
    {
      fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(*(a1 + 128), a2);
      if (!fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Find(*(a1 + 128), v12))
      {
        continue;
      }

      v6 = fst::SortedMatcher<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Value(*(a1 + 128));
    }

    else
    {
      fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetState(*(a1 + 112), a2);
      if (!fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Find(*(a1 + 112), v12))
      {
        continue;
      }

      v6 = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Value(*(a1 + 112));
    }

    v7 = *(v6 + 12);
    v11 = *(v6 + 8);
    if (v7 != -1)
    {
      goto LABEL_14;
    }
  }

  if (fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::GetBackoffState(a1, a2, &v11) == -1)
  {
    return INFINITY;
  }

LABEL_14:
  v8 = fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComputeFinalEosRecursively(a1);
  result = NAN;
  if (v11 != -INFINITY && v8 != -INFINITY)
  {
    result = INFINITY;
    v9 = v8 == INFINITY || v11 == INFINITY;
    v10 = v11 + v8;
    if (!v9)
    {
      return v10;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheDeterministicOnDemandFst(void *a1)
{
  fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheDeterministicOnDemandFst(a1);

  JUMPOUT(0x1B8C85350);
}

void *fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheDeterministicOnDemandFst(void *a1)
{
  *a1 = &unk_1F2D07280;
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    v2 = a1[7];
    v3 = a1[8];
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "CacheDeterministicOnDemandFst cache hit rate = ", 47);
    v5 = MEMORY[0x1B8C84C30](v4, a1[7]);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "/", 1);
    v7 = MEMORY[0x1B8C84C30](v6, v3 + v2);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", size = ", 9);
    MEMORY[0x1B8C84C30](v8, 0xCCCCCCCCCCCCCCCDLL * ((a1[4] - a1[3]) >> 2));
    kaldi::KaldiLogMessage::~KaldiLogMessage(v12);
  }

  v9 = a1[3];
  if (v9)
  {
    a1[4] = v9;
    operator delete(v9);
  }

  v10 = a1[2];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return a1;
}

void std::__shared_ptr_pointer<fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

float kaldi::quasar::RecurrentNeuralDeterministicFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Final(uint64_t a1, int a2)
{
  v4 = (*(a1 + 80) + 24 * a2);
  __p = 0;
  v19 = 0;
  v20 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v4, v4[1], (v4[1] - *v4) >> 2);
  v5 = *(a1 + 388);
  if (v5 < 0.0 || *(a1 + 104) != a2)
  {
    v6 = __p;
    v7 = *(a1 + 112);
    if (*__p / v7 >= 1)
    {
      *__p %= v7;
    }

    v8 = v19;
    v9 = 0.0;
    if ((v19 - v6) >= 0xD && *(v19 - 2) == *(a1 + 112) && (v10 = *(v19 - 1), v19 -= 2, v21 = v8 - 3, v11 = *(*(a1 + 360) + 16 * *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>((a1 + 240), v8 - 3) + 5)), v9 = (*(*v11 + 16))(v11, v10), *&v21 = v9, v22 = 2139095040, v9 == INFINITY))
    {
      v5 = INFINITY;
    }

    else
    {
      v12 = *(a1 + 16);
      v13 = kaldi::quasar::CEAttnEncoderDecoder::BlankIndex(v12);
      LODWORD(v21) = kaldi::quasar::NnlmDecoderWord::GetWordId(v12, v13);
      std::vector<int>::push_back[abi:ne200100](&__p, &v21);
      (*(**(a1 + 8) + 16))(*(a1 + 8), &__p);
      v5 = NAN;
      if (v9 != -INFINITY && v14 != -INFINITY)
      {
        v15 = v14 == INFINITY || v9 == INFINITY;
        v16 = v9 + v14;
        if (v15)
        {
          v5 = INFINITY;
        }

        else
        {
          v5 = v16;
        }
      }
    }
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_1B5236D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::RecurrentNeuralDeterministicFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~RecurrentNeuralDeterministicFst(uint64_t a1)
{
  *a1 = &unk_1F2D07348;
  v2 = a1 + 40;
  v4 = (a1 + 360);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 320);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 280);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 240);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 200);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 160);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 120);
  v4 = (a1 + 80);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::~__hash_table(v2);
  return a1;
}

{
  *a1 = &unk_1F2D07348;
  v2 = a1 + 40;
  v4 = (a1 + 360);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 320);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 280);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 240);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 200);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 160);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 120);
  v4 = (a1 + 80);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::~__hash_table(v2);
  return MEMORY[0x1B8C85350](a1, 0x10E1C406E7053A8);
}

uint64_t kaldi::quasar::RecurrentNeuralDeterministicFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::GetLmeArc(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, _BYTE *a6)
{
  *a6 = 0;
  v19 = -1;
  if (a2[1] - *a2 >= 0xDuLL)
  {
    v11 = a2[1];
    if (*(v11 - 8) == *(a1 + 112))
    {
      v19 = *(v11 - 12);
      v20 = &v19;
      v13 = *(*(a1 + 360) + 16 * *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>((a1 + 240), &v19) + 5));
      if ((*(*v13 + 32))(v13, *(a2[1] - 4), a3, a5))
      {
        return v19;
      }
    }
  }

  result = 0xFFFFFFFFLL;
  if (*(a1 + 384) == 1 && (a4 & 1) == 0)
  {
    v15 = (a1 + 256);
    do
    {
      v15 = *v15;
      if (!v15)
      {
        return 0xFFFFFFFFLL;
      }

      v16 = *(*(a1 + 360) + 16 * *(v15 + 5));
      v17 = (**v16)(v16);
    }

    while (!(*(*v16 + 32))(v16, v17, a3, a5));
    v18 = v19;
    result = *(v15 + 4);
    if (v19 == result)
    {
      *a6 = 1;
      return v18;
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::__emplace_unique_key_args<std::vector<int>,std::pair<std::vector<int>,int> &>(void *a1, int **a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (*a2 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = *a2;
    do
    {
      v6 = *v5++;
      v4 = v6 + 7853 * v4;
    }

    while (v5 != v2);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_25;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v7)
    {
      v10 = v4 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_25:
    std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::__construct_node_hash<std::pair<std::vector<int>,int> &>();
  }

  v13 = v2 - v3;
  while (1)
  {
    v14 = v12[1];
    if (v14 == v4)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v14 >= *&v7)
      {
        v14 %= *&v7;
      }
    }

    else
    {
      v14 &= *&v7 - 1;
    }

    if (v14 != v10)
    {
      goto LABEL_25;
    }

LABEL_24:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  v15 = v12[2];
  if (v12[3] - v15 != v13 || memcmp(v15, v3, v13))
  {
    goto LABEL_24;
  }

  return v12;
}

void sub_1B52372D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::vector<int>,int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B523738C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::vector<int>,int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<kaldi::quasar::RecurrentNeuralDeterministicFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<kaldi::quasar::RecurrentNeuralDeterministicFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<kaldi::quasar::RecurrentNeuralDeterministicFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t kaldi::quasar::NeuralNgramDeterministicFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::NeuralNgramDeterministicFst(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, char a6)
{
  v8 = a1;
  *a1 = &unk_1F2D07410;
  *(a1 + 8) = a2;
  v9 = *(a2 + 8);
  *(a1 + 16) = v9;
  *(a1 + 32) = 0u;
  v35 = (a1 + 32);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1065353216;
  *(a1 + 72) = 0;
  v34 = a1 + 72;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0x100000000;
  *(a1 + 80) = 0;
  *(a1 + 108) = *(a2 + 16);
  *(a1 + 112) = 0u;
  v41 = (a1 + 112);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 1065353216;
  *(a1 + 152) = 0u;
  v40 = (a1 + 152);
  *(a1 + 168) = 0u;
  *(a1 + 184) = 1065353216;
  *(a1 + 192) = 0u;
  v10 = (a1 + 192);
  *(a1 + 208) = 0u;
  *(a1 + 224) = 1065353216;
  *(a1 + 232) = 0;
  v42 = (a1 + 232);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = a6;
  v11 = Ngram::getorder(v9);
  *(v8 + 24) = kaldi::quasar::NnlmDecoderWord::GetWordId(v9, v11);
  v38 = v10;
  v12 = a3;
  if (a4[1] != *a4)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v36 = v8;
    v37 = a4;
    do
    {
      WordId = kaldi::quasar::NnlmDecoderWord::GetWordId(*(v8 + 16), *(*v12 + v14));
      if (WordId == *(v8 + 24))
      {
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "The LME class ", 14);
          v18 = MEMORY[0x1B8C84C00](v17, *(*v12 + v14));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " is not modeled by the NNLM", 27);
          kaldi::KaldiLogMessage::~KaldiLogMessage(__p);
        }
      }

      else
      {
        std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100](v42, (*a4 + v13));
        std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v41, (*v12 + v14));
        p_WordId = &WordId;
        *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v40, &WordId) + 5) = v16;
        if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a5, (*v12 + v14)))
        {
          v19 = (*v12 + v14);
          v20 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a5, v19);
          v21 = v20;
          if (!v20)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v22 = a5;
          v23 = *v19;
          p_WordId = (v20 + 20);
          v10 = v38;
          v24 = std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v38, v20 + 5);
          *(v24 + 5) = v23;
          *(v24 + 6) = 1;
          v25 = *v19;
          p_WordId = (v21 + 3);
          v26 = std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v38, v21 + 6);
          *(v26 + 5) = v25;
          *(v26 + 6) = 2;
          p_WordId = v19;
          v27 = std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v38, v19);
          *(v27 + 5) = v16;
          *(v27 + 6) = 0;
          a5 = v22;
          v8 = v36;
          a4 = v37;
          v12 = a3;
        }

        ++v16;
      }

      ++v15;
      v14 += 4;
      v13 += 16;
    }

    while (v15 < (a4[1] - *a4) >> 4);
  }

  if (*(v8 + 176) < ((*(v8 + 240) - *(v8 + 232)) >> 4))
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "multiple LME FSTs are mapped into the same non-terminals classes, wrong config?", 79);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(__p);
    }

    std::vector<std::shared_ptr<quasar::LmeContainer>>::clear[abi:ne200100](v42);
    std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(v41);
    std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(v40);
    std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(v10);
  }

  *(v8 + 104) = kaldi::MatrixBase<float>::NumCols(*(v8 + 16)) + 1;
  v28 = *(v8 + 108);
  v29 = *(v8 + 16);
  v30 = kaldi::quasar::NnlmDecoderWord::BosSymbol(v29);
  LODWORD(p_WordId) = kaldi::quasar::NnlmDecoderWord::GetWordId(v29, v30);
  std::vector<int>::vector[abi:ne200100](__p, v28 + 1);
  LODWORD(v29) = *(v8 + 96);
  p_WordId = __p;
  *(std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::__emplace_unique_key_args<std::vector<int>,std::piecewise_construct_t const&,std::tuple<std::vector<int> const&>,std::tuple<>>(v35, __p) + 10) = v29;
  std::vector<std::vector<int>>::push_back[abi:ne200100](v34, __p);
  LODWORD(v29) = quasar::artifact::AppLmArtifactLifeCycleStage::operator int(*(v8 + 16));
  v31 = kaldi::MatrixBase<float>::NumCols(*(v8 + 16));
  v32 = log((v29 - v31 + 1));
  *(v8 + 28) = v32;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v8;
}

void sub_1B5237864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *__p, uint64_t a19)
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
  __p = a17;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a13);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a15);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a16);
  __p = a9;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::~__hash_table(a10);
  _Unwind_Resume(a1);
}

float kaldi::quasar::NeuralNgramDeterministicFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Final(uint64_t a1, int a2)
{
  v3 = (*(a1 + 72) + 24 * a2);
  __p = 0;
  v18 = 0;
  v19 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  v4 = __p;
  v5 = v18 - (__p + 4);
  if (v18 != __p + 4)
  {
    memmove(__p, __p + 4, v18 - (__p + 4));
  }

  v6 = &v4[v5];
  v18 = &v4[v5];
  v7 = 0.0;
  if (*(a1 + 108) < ((&v4[v5] - __p) >> 2) && (v8 = *(v6 - 1), v18 = (v6 - 1), v20 = (v6 - 2), v9 = *(*(a1 + 232) + 16 * *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>((a1 + 152), v6 - 2) + 5)), v7 = (*(*v9 + 16))(v9, v8), *&v20 = v7, v21 = 2139095040, v7 == INFINITY))
  {
    v10 = INFINITY;
  }

  else
  {
    v11 = *(a1 + 16);
    v12 = kaldi::quasar::CEAttnEncoderDecoder::BlankIndex(v11);
    LODWORD(v20) = kaldi::quasar::NnlmDecoderWord::GetWordId(v11, v12);
    std::vector<int>::push_back[abi:ne200100](&__p, &v20);
    (*(**(a1 + 8) + 16))(*(a1 + 8), &__p);
    v10 = NAN;
    if (v7 != -INFINITY && v13 != -INFINITY)
    {
      v14 = v13 == INFINITY || v7 == INFINITY;
      v15 = v7 + v13;
      if (v14)
      {
        v10 = INFINITY;
      }

      else
      {
        v10 = v15;
      }
    }
  }

  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  return v10;
}

void sub_1B5237AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::NeuralNgramDeterministicFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::GetArc(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v84 = a3;
  v7 = a1 + 72;
  v8 = (*(a1 + 72) + 24 * a2);
  v81 = 0;
  v82 = 0;
  v83 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v81, *v8, v8[1], (v8[1] - *v8) >> 2);
  v9 = *(v7 + 32);
  v10 = *v81 / v9;
  v11 = v10 - 1;
  if (v10 >= 1)
  {
    *v81 %= v9;
    goto LABEL_3;
  }

  if (*(a1 + 256) == 1)
  {
    if (quasar::artifact::AppLmArtifactLifeCycleStage::operator int(*(a1 + 16)) <= a3)
    {
      goto LABEL_3;
    }

    if (*(a1 + 256))
    {
LABEL_28:
      v26 = v81;
      v27 = v82 - (v81 + 4);
      if (v82 != v81 + 4)
      {
        memmove(v81, v81 + 4, v82 - (v81 + 4));
      }

      v52 = &v26[v27];
      v82 = &v26[v27];
      if (*(a1 + 108) >= ((&v26[v27] - v81) >> 2))
      {
        v53 = 0xFFFFFFFFLL;
        v54 = -1;
      }

      else
      {
        v53 = *(v52 - 1);
        v82 = (v52 - 1);
        __p[0] = v52 - 2;
        v54 = *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>((a1 + 152), v52 - 2) + 5);
      }

      if (*(a1 + 256) == 1)
      {
        *(a4 + 4) = v84;
        if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 192), &v84))
        {
          __p[0] = &v84;
          if (*(std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 192), &v84) + 6) == 1)
          {
            __p[0] = &v84;
            v84 = *(std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 192), &v84) + 5);
            __p[0] = &v84;
            v11 = *(std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 192), &v84) + 5);
          }
        }
      }

      WordId = kaldi::quasar::NnlmDecoderWord::GetWordId(*(a1 + 16), v84);
      LODWORD(v85) = WordId;
      v56 = *(a1 + 24);
      std::vector<int>::push_back[abi:ne200100](&v81, &v85);
      v57 = (*(**(a1 + 8) + 16))(*(a1 + 8), &v81);
      *(a4 + 8) = v57;
      if (WordId == v56)
      {
        v58 = NAN;
        if (v57 != -INFINITY)
        {
          v59 = *(a1 + 28);
          v58 = NAN;
          if (v59 != -INFINITY)
          {
            v58 = INFINITY;
            v60 = v59 == INFINITY || v57 == INFINITY;
            v61 = v57 + v59;
            if (!v60)
            {
              v58 = v61;
            }
          }
        }

        *(a4 + 8) = v58;
      }

      if (v53 != -1)
      {
        v62 = *(*(a1 + 232) + 16 * v54);
        (*(*v62 + 16))(v62, v53);
        v64 = *(a4 + 8);
        v65 = NAN;
        if (v64 != -INFINITY && v63 != -INFINITY)
        {
          v65 = INFINITY;
          v66 = v64 == INFINITY || v63 == INFINITY;
          v67 = v63 + v64;
          if (!v66)
          {
            v65 = v67;
          }
        }

        *(a4 + 8) = v65;
      }

      if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 112), &v84))
      {
        *(a4 + 4) = 0;
        __p[0] = v82 - 4;
        v68 = *(*(a1 + 232) + 16 * *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>((a1 + 152), v82 - 1) + 5));
        LODWORD(__p[0]) = (**v68)(v68);
        std::vector<int>::push_back[abi:ne200100](&v81, __p);
        if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 192), &v84))
        {
          __p[0] = &v84;
          if (!*(std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 192), &v84) + 6))
          {
            __p[0] = &v84;
            v11 = *(std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 192), &v84) + 5);
          }
        }
      }

      else
      {
        *(a4 + 4) = a3;
      }

      goto LABEL_102;
    }
  }

  if (!kaldi::quasar::NnlmDecoderWord::IsPhoneWord(*(a1 + 16), v84))
  {
    goto LABEL_28;
  }

LABEL_3:
  v80 = 0;
  LmeArc = kaldi::quasar::NeuralNgramDeterministicFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::GetLmeArc(a1, &v81, v84, v10 > 0, __p, &v80);
  v13 = LmeArc;
  v79 = LmeArc;
  if (LmeArc < 0)
  {
    goto LABEL_60;
  }

  v14 = *(a1 + 24);
  v15 = v81;
  v16 = *(a1 + 108);
  if (v16 + 1 == (v82 - v81) >> 2)
  {
    v17 = v82 - (v81 + 4);
    if (v82 != v81 + 4)
    {
      memmove(v81, v81 + 4, v82 - (v81 + 4));
    }

    v82 = &v15[v17];
    std::vector<int>::push_back[abi:ne200100](&v81, &v79);
    v18 = (*(**(a1 + 8) + 16))(*(a1 + 8), &v81);
    v19 = NAN;
    if (v18 != -INFINITY)
    {
      v19 = NAN;
      if (*&__p[1] != -INFINITY)
      {
        v19 = INFINITY;
        v20 = *&__p[1] == INFINITY || v18 == INFINITY;
        v21 = v18 + *&__p[1];
        if (!v20)
        {
          v19 = v21;
        }
      }
    }

    *(a4 + 8) = v19;
    if (v13 == v14)
    {
      v22 = NAN;
      if (v19 != -INFINITY)
      {
        v23 = *(a1 + 28);
        v22 = NAN;
        if (v23 != -INFINITY)
        {
          v22 = INFINITY;
          v24 = v23 == INFINITY || v19 == INFINITY;
          v25 = v19 + v23;
          if (!v24)
          {
            v22 = v25;
          }
        }
      }

      *(a4 + 8) = v22;
    }

    std::vector<int>::push_back[abi:ne200100](&v81, &__p[1] + 1);
    *(a4 + 4) = HIDWORD(__p[0]);
    goto LABEL_102;
  }

  v28 = (v81 + 4 * v16);
  if (LmeArc != *v28 || (v80 & 1) != 0)
  {
    v29 = *(v82 - 1);
    v85 = (v81 + 4 * v16);
    v30 = *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>((a1 + 152), v28) + 5);
    v31 = v81;
    v32 = v82 - (v81 + 4);
    if (v82 != v81 + 4)
    {
      memmove(v81, v81 + 4, v82 - (v81 + 4));
    }

    v82 = &v31[v32 - 4];
    std::vector<int>::push_back[abi:ne200100](&v81, &v79);
    v33 = (*(**(a1 + 8) + 16))(*(a1 + 8), &v81);
    v34 = v33;
    if (v13 == v14)
    {
      v34 = NAN;
      if (v33 != -INFINITY)
      {
        v35 = *(a1 + 28);
        v34 = NAN;
        if (v35 != -INFINITY)
        {
          v36 = v35 == INFINITY || v33 == INFINITY;
          v37 = v33 + v35;
          if (v36)
          {
            v34 = INFINITY;
          }

          else
          {
            v34 = v37;
          }
        }
      }
    }

    std::vector<int>::push_back[abi:ne200100](&v81, &__p[1] + 1);
    *(a4 + 4) = HIDWORD(__p[0]);
    v38 = *(*(a1 + 232) + 16 * v30);
    v39 = (*(*v38 + 16))(v38, v29);
    *&v85 = v39;
    v86 = 2139095040;
    if (v39 != INFINITY)
    {
      v40 = NAN;
      if (v39 != -INFINITY)
      {
        v40 = NAN;
        if (*&__p[1] != -INFINITY)
        {
          v41 = *&__p[1] == INFINITY || v39 == INFINITY;
          v42 = v39 + *&__p[1];
          if (v41)
          {
            v42 = INFINITY;
          }

          v40 = NAN;
          if (v42 != -INFINITY && v34 != -INFINITY)
          {
            v40 = INFINITY;
            v43 = v42 == INFINITY || v34 == INFINITY;
            v44 = v34 + v42;
            if (!v43)
            {
              v40 = v44;
            }
          }
        }
      }

      *(a4 + 8) = v40;
      goto LABEL_59;
    }

LABEL_60:
    v45 = 0;
    goto LABEL_118;
  }

  *(v82 - 1) = HIDWORD(__p[1]);
  *(a4 + 4) = *(__p + 4);
  if (v10 < 1)
  {
    goto LABEL_102;
  }

  if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 192), &v84))
  {
    goto LABEL_102;
  }

  v85 = &v84;
  if (*(std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 192), &v84) + 6) != 2)
  {
    goto LABEL_102;
  }

  v46 = *(*(a1 + 232) + 16 * (v10 - 1));
  (*(*v46 + 16))(v46, *(v82 - 1));
  v48 = *(a4 + 8);
  v49 = NAN;
  if (v48 != -INFINITY && v47 != -INFINITY)
  {
    v49 = INFINITY;
    v50 = v48 == INFINITY || v47 == INFINITY;
    v51 = v47 + v48;
    if (!v50)
    {
      v49 = v51;
    }
  }

  *(a4 + 8) = v49;
  v82 -= 4;
LABEL_59:
  v11 = -1;
LABEL_102:
  if (v84 != a3)
  {
    LOBYTE(v85) = 0;
    kaldi::quasar::NeuralNgramDeterministicFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::GetLmeArc(a1, &v81, a3, v11 >= 0, __p, &v85);
    *(v82 - 1) = HIDWORD(__p[1]);
    *(a4 + 4) = HIDWORD(__p[0]);
    v69 = *(a4 + 8);
    v70 = NAN;
    if (v69 != -INFINITY)
    {
      v70 = NAN;
      if (*&__p[1] != -INFINITY)
      {
        v70 = INFINITY;
        v71 = *&__p[1] == INFINITY || v69 == INFINITY;
        v72 = v69 + *&__p[1];
        if (!v71)
        {
          v70 = v72;
        }
      }
    }

    *(a4 + 8) = v70;
  }

  v73 = v81;
  if ((v11 & 0x80000000) == 0)
  {
    *v81 += *(a1 + 104) + *(a1 + 104) * v11;
  }

  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v73, v82, (v82 - v73) >> 2);
  v78 = *(a1 + 100);
  v74 = std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::__emplace_unique_key_args<std::vector<int>,std::pair<std::vector<int>,int> &>((a1 + 32), __p);
  if (v75)
  {
    ++*(a1 + 100);
    std::vector<std::vector<int>>::push_back[abi:ne200100](v7, __p);
  }

  *a4 = a3;
  *(a4 + 12) = *(v74 + 10);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v45 = 1;
LABEL_118:
  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  return v45;
}

void sub_1B52384F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5238550(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B5238538);
}

uint64_t kaldi::quasar::NeuralNgramDeterministicFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~NeuralNgramDeterministicFst(uint64_t a1)
{
  *a1 = &unk_1F2D07410;
  v2 = a1 + 32;
  v4 = (a1 + 232);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 192);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 152);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 112);
  v4 = (a1 + 72);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::~__hash_table(v2);
  return a1;
}

{
  *a1 = &unk_1F2D07410;
  v2 = a1 + 32;
  v4 = (a1 + 232);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 192);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 152);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 112);
  v4 = (a1 + 72);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::~__hash_table(v2);
  return MEMORY[0x1B8C85350](a1, 0x10E1C408DCDB8B8);
}

uint64_t kaldi::quasar::NeuralNgramDeterministicFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::GetLmeArc(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, _BYTE *a6)
{
  *a6 = 0;
  v19 = -1;
  v11 = *(a1 + 108);
  if (v11 + 1 < ((a2[1] - *a2) >> 2))
  {
    v19 = *(*a2 + 4 * v11);
    v20 = &v19;
    v13 = *(*(a1 + 232) + 16 * *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>((a1 + 152), &v19) + 5));
    if ((*(*v13 + 32))(v13, *(a2[1] - 4), a3, a5))
    {
      return v19;
    }
  }

  result = 0xFFFFFFFFLL;
  if (*(a1 + 256) == 1 && (a4 & 1) == 0)
  {
    v15 = (a1 + 168);
    do
    {
      v15 = *v15;
      if (!v15)
      {
        return 0xFFFFFFFFLL;
      }

      v16 = *(*(a1 + 232) + 16 * *(v15 + 5));
      v17 = (**v16)(v16);
    }

    while (!(*(*v16 + 32))(v16, v17, a3, a5));
    v18 = v19;
    result = *(v15 + 4);
    if (v19 == result)
    {
      *a6 = 1;
      return v18;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<kaldi::quasar::NeuralNgramDeterministicFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<kaldi::quasar::NeuralNgramDeterministicFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<kaldi::quasar::NeuralNgramDeterministicFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::__init_with_size[abi:ne200100]<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>*,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5238948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>*,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>*,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineItf>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void **kaldi::quasar::DeterministicOnDemandFstCreator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~DeterministicOnDemandFstCreator(void **a1)
{
  v3 = a1 + 3;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void *std::__shared_ptr_emplace<fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__shared_ptr_emplace[abi:ne200100]<std::vector<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>> &,fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::WeightType &,BOOL const&,std::allocator<fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,0>(void *a1, uint64_t *a2, int *a3, char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D074D8;
  fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::InterpolateDeterministicOnDemandFst((a1 + 3), a2, *a3, *a4);
  return a1;
}

void std::__shared_ptr_emplace<fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D074D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

float fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Final(uint64_t a1, int a2, void *a3)
{
  if (*a3)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN3fst13InterpArcInfoENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v5 = (*(a1 + 80) + 24 * a2);
  std::vector<fst::TropicalWeightTpl<float>>::vector[abi:ne200100](__p, (v5[1] - *v5) >> 2);
  v6 = *v5;
  if (*v5 != v5[1])
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (*a3)
      {
        _ZNSt3__115allocate_sharedB8ne200100IN3fst7ArcInfoENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
      }

      v14 = 0uLL;
      v9 = (*(**(*(a1 + 8) + v8) + 8))(*(*(a1 + 8) + v8), *(v6 + v7), &v14);
      *(__p[0] + v7) = v9;
      if (*a3)
      {
        std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100](8, &v14);
        v13 = *(__p[0] + v7);
        std::vector<float>::push_back[abi:ne200100](0x20, &v13);
      }

      if (*(&v14 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
      }

      v8 += 24;
      v7 += 4;
    }

    while (v6 + v7 != v5[1]);
  }

  InterpolatedWeight = fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::GetInterpolatedWeight(a1, __p);
  v11 = InterpolatedWeight;
  if (*a3)
  {
    MEMORY[0x38] = 0;
    MEMORY[0x40] = LODWORD(InterpolatedWeight);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v11;
}

void sub_1B5238DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

void fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~InterpolateDeterministicOnDemandFst(uint64_t a1)
{
  fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~InterpolateDeterministicOnDemandFst(a1);

  JUMPOUT(0x1B8C85350);
}

float fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::FinalEos(uint64_t a1, int a2)
{
  v3 = (*(a1 + 80) + 24 * a2);
  std::vector<fst::TropicalWeightTpl<float>>::vector[abi:ne200100](__p, (v3[1] - *v3) >> 2);
  v4 = *v3;
  if (*v3 != v3[1])
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = (*(**(*(a1 + 8) + v6) + 56))(*(*(a1 + 8) + v6), *(v4 + v5));
      *(__p[0] + v5) = v7;
      v6 += 24;
      v5 += 4;
    }

    while (v4 + v5 != v3[1]);
  }

  InterpolatedWeight = fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::GetInterpolatedWeight(a1, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return InterpolatedWeight;
}

void sub_1B5238F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::GetInterpolatedWeight(uint64_t a1, float **a2)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v13 = *a2;
    v12 = a2[1];
    if (*a2 == v12)
    {
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v14 = 16;
      do
      {
        v15 = *v13;
        v32 = *v13;
        v31 = 2139095040;
        if (v32 != INFINITY)
        {
          v32 = -(*(*(a1 + 8) + v14) + v15);
          std::vector<float>::push_back[abi:ne200100](&v28, &v32);
          v12 = a2[1];
        }

        ++v13;
        v14 += 24;
      }

      while (v13 != v12);
      v16 = v28;
      v17 = v29;
    }

    v18 = v17 - v16;
    if (v18)
    {
      if (v18 == 1)
      {
        v5 = -*v16;
        goto LABEL_35;
      }

      v20 = v16 + 1;
      v21 = *v16;
      while (v20 != v17)
      {
        v22 = *v20++;
        v23 = v22;
        if (v22 > v21)
        {
          v21 = v23;
        }
      }

      v24 = 0.0;
      if (v16 != v17)
      {
        v25 = v16;
        do
        {
          v26 = *v25 - v21;
          if (v26 >= -15.942)
          {
            v24 = v24 + expf(v26);
          }

          ++v25;
        }

        while (v25 != v17);
      }

      v19 = v21 + logf(v24);
    }

    else
    {
      v19 = -INFINITY;
    }

    v5 = -v19;
    if (!v16)
    {
      return v5;
    }

LABEL_35:
    v29 = v16;
    operator delete(v16);
    return v5;
  }

  v5 = 0.0;
  if (v4 == 1)
  {
    v6 = *a2;
    v7 = a2[1];
    if (*a2 == v7)
    {
      return INFINITY;
    }

    else
    {
      v8 = 0.0;
      v9 = 1;
      v10 = 16;
      do
      {
        v11 = *v6;
        *&v28 = *v6;
        v32 = INFINITY;
        if (*&v28 != INFINITY)
        {
          v9 = 0;
          v8 = v8 + (*(*(a1 + 8) + v10) * v11);
        }

        ++v6;
        v10 += 24;
      }

      while (v6 != v7);
      if (v9)
      {
        return INFINITY;
      }

      else
      {
        return v8;
      }
    }
  }

  return v5;
}

void sub_1B5239134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__120__shared_ptr_emplaceIN3fst13InterpArcInfoENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D07590;
  fst::InterpArcInfo::InterpArcInfo((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<fst::InterpArcInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D07590;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::vector<fst::TropicalWeightTpl<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B52392EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__120__shared_ptr_emplaceIN3fst7ArcInfoENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D075E0;
  fst::ArcInfo::ArcInfo(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<fst::ArcInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D075E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~InterpolateDeterministicOnDemandFst(uint64_t a1)
{
  *a1 = &unk_1F2D07528;
  v2 = (a1 + 8);
  v4 = (a1 + 80);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::~__hash_table(a1 + 40);
  v4 = v2;
  std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

void *std::__shared_ptr_emplace<fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> const&,std::allocator<fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D07630;
  std::allocator<fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::construct[abi:ne200100]<fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::shared_ptr<fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> const&>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D07630;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::construct[abi:ne200100]<fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::shared_ptr<fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> const&>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::LeftContextDeterministicOnDemandFst(a2, &v5, a4);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1B52396A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::LeftContextDeterministicOnDemandFst(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_1F2D07680;
  *(a1 + 8) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 24) = (***(a1 + 8))(*(a1 + 8));
  v5 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    do
    {
      if ((*(**(a1 + 8) + 32))(*(a1 + 8)))
      {
        v7 = v10;
      }

      else
      {
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Invalid word symbol, clipping left context", 42);
          kaldi::KaldiLogMessage::~KaldiLogMessage(v9);
        }

        v7 = (***(a1 + 8))(*(a1 + 8));
      }

      *(a1 + 24) = v7;
      v5 += 4;
    }

    while (v5 != v6);
  }

  return a1;
}

void sub_1B5239814(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void *fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~LeftContextDeterministicOnDemandFst(void *a1)
{
  *a1 = &unk_1F2D07680;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~LeftContextDeterministicOnDemandFst(void *a1)
{
  *a1 = &unk_1F2D07680;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__init_with_size[abi:ne200100]<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B523998C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineItf>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>>::__init_with_size[abi:ne200100]<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5239AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void quasar::FstLmScorerOptions::~FstLmScorerOptions(void **this)
{
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  v2 = this + 7;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t quasar::compute(uint64_t a1, void *a2)
{
  v4[24] = 1;
  kaldi::Timer::Reset(v4, a2);
  v5 = 0;
  if (*a2)
  {
    operator new();
  }

  return 0;
}

void sub_1B523A280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, std::locale a53)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  quasar::QuasarTraceMessage::~QuasarTraceMessage(&a53);
  std::ostringstream::~ostringstream(&a17, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](&a34);
  std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<std::vector<std::shared_ptr<fst::ArcInfo>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D076E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::vector<quasar::TokenLmInfo>::__emplace_back_slow_path<quasar::TokenLmInfo>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TokenLmInfo>>(a1, v6);
  }

  v7 = 88 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 3);
  *(v7 + 30) = *(a2 + 30);
  *(v7 + 24) = v9;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 40) = 0;
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 56) = *(a2 + 7);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 64) = a2[4];
  *(v7 + 80) = *(a2 + 10);
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *&v18 = 88 * v2 + 88;
  v10 = a1[1];
  v11 = 88 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TokenLmInfo>,quasar::TokenLmInfo*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<quasar::TokenLmInfo>::~__split_buffer(&v16);
  return v15;
}

void sub_1B523A5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::TokenLmInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TokenLmInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TokenLmInfo>,quasar::TokenLmInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *(a4 + 30) = *(v7 + 30);
      *(a4 + 24) = v9;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = 0;
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 56) = *(v7 + 56);
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 80) = *(v7 + 80);
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      v7 += 88;
      a4 += 88;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<quasar::TokenLmInfo>>::destroy[abi:ne200100]<quasar::TokenLmInfo,0>(a1, v5);
      v5 += 88;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TokenLmInfo>,quasar::TokenLmInfo*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void std::allocator_traits<std::allocator<quasar::TokenLmInfo>>::destroy[abi:ne200100]<quasar::TokenLmInfo,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  if (v3)
  {
    *(a2 + 72) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 40);
  if (v4)
  {
    *(a2 + 48) = v4;
    operator delete(v4);
  }

  if (*(a2 + 23) < 0)
  {
    v5 = *a2;

    operator delete(v5);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TokenLmInfo>,quasar::TokenLmInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TokenLmInfo>,quasar::TokenLmInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TokenLmInfo>,quasar::TokenLmInfo*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 88;
      std::allocator_traits<std::allocator<quasar::TokenLmInfo>>::destroy[abi:ne200100]<quasar::TokenLmInfo,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<quasar::TokenLmInfo>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::TokenLmInfo>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::TokenLmInfo>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 88;
    std::allocator_traits<std::allocator<quasar::TokenLmInfo>>::destroy[abi:ne200100]<quasar::TokenLmInfo,0>(v5, v4 - 88);
  }
}

uint64_t quasar::TokenLmInfo::TokenLmInfo(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t *a5, float a6)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a6;
  *(a1 + 36) = a3;
  *(a1 + 37) = a4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 40, *a5, a5[1], (a5[1] - *a5) >> 2);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return a1;
}

void sub_1B523A93C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::TokenLmInfo::~TokenLmInfo(quasar::TokenLmInfo *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    *(this + 6) = v3;
    operator delete(v3);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void quasar::DecoderPassData::~DecoderPassData(void **this)
{
  v20 = this + 101;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v20);
  v20 = this + 97;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v20);
  v20 = this + 94;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v20);
  v20 = this + 91;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v20);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((this + 85));
  if (*(this + 655) < 0)
  {
    operator delete(this[79]);
  }

  if (*(this + 631) < 0)
  {
    operator delete(this[76]);
  }

  v2 = this[75];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v20 = this + 71;
  std::vector<std::weak_ptr<quasar::Decoder>>::__destroy_vector::operator()[abi:ne200100](&v20);
  v3 = this[68];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[66];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v20 = this + 62;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v20);
  v20 = this + 59;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v20);
  v5 = this[58];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((this + 51));
  v6 = this[50];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::__tree<int>::destroy((this + 46), this[47]);
  v7 = this[43];
  if (v7)
  {
    this[44] = v7;
    operator delete(v7);
  }

  v20 = this + 40;
  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](&v20);
  v8 = this[37];
  if (v8)
  {
    this[38] = v8;
    operator delete(v8);
  }

  v20 = this + 34;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v20);
  v20 = this + 31;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v20);
  v9 = this[28];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = this[24];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = this[22];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = this[18];
  if (v12)
  {
    this[19] = v12;
    operator delete(v12);
  }

  v13 = this[15];
  if (v13)
  {
    operator delete(v13);
  }

  v14 = this[11];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = this[9];
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = this[7];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = this[5];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = this[3];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = this[1];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }
}

void std::__shared_ptr_emplace<quasar::SymbolTableList>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D07738;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::vector<quasar::LmInfo>::__construct_one_at_end[abi:ne200100]<quasar::LmInfo const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  std::vector<quasar::TokenLmInfo>::__init_with_size[abi:ne200100]<quasar::TokenLmInfo*,quasar::TokenLmInfo*>(v4 + 8, *(a2 + 8), *(a2 + 16), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  v5 = *(a2 + 32);
  *(v4 + 36) = *(a2 + 36);
  *(v4 + 32) = v5;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v6 = *(a2 + 40);
    *(v4 + 56) = *(a2 + 56);
    *(v4 + 40) = v6;
  }

  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  *(v4 + 80) = 0;
  *(v4 + 72) = v8;
  *(v4 + 64) = v7;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v4 + 80, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
  *(a1 + 8) = v4 + 104;
  return result;
}

void sub_1B523ACF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<quasar::TokenLmInfo>::__destroy_vector::operator()[abi:ne200100](va);
  *(v2 + 8) = v3;
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::LmInfo>::__emplace_back_slow_path<quasar::LmInfo const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmInfo>>(a1, v6);
  }

  v7 = 104 * v2;
  v19 = 0;
  v20 = v7;
  v21 = (104 * v2);
  *v7 = *a2;
  v8 = 104 * v2;
  *(v8 + 8) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  std::vector<quasar::TokenLmInfo>::__init_with_size[abi:ne200100]<quasar::TokenLmInfo*,quasar::TokenLmInfo*>(v8 + 8, *(a2 + 8), *(a2 + 16), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  v9 = *(a2 + 32);
  *(v7 + 36) = *(a2 + 36);
  *(v7 + 32) = v9;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v10 = *(a2 + 40);
    *(v7 + 56) = *(a2 + 56);
    *(v7 + 40) = v10;
  }

  v11 = *(a2 + 64);
  v12 = *(a2 + 72);
  *(v7 + 80) = 0;
  *(v7 + 72) = v12;
  *(v7 + 64) = v11;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v7 + 80, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
  *&v21 = v21 + 104;
  v13 = a1[1];
  v14 = v20 + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::LmInfo>,quasar::LmInfo*>(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  std::__split_buffer<quasar::LmInfo>::~__split_buffer(&v19);
  return v18;
}

void sub_1B523AEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v4 - 40) = v3;
  std::vector<quasar::TokenLmInfo>::__destroy_vector::operator()[abi:ne200100]((v4 - 40));
  std::__split_buffer<quasar::LmInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::TokenLmInfo>::__init_with_size[abi:ne200100]<quasar::TokenLmInfo*,quasar::TokenLmInfo*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::TokenLmInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B523AF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::TokenLmInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::TokenLmInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TokenLmInfo>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::TokenLmInfo>,quasar::TokenLmInfo*,quasar::TokenLmInfo*,quasar::TokenLmInfo*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v13 = this;
  v14 = this;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
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

      v8 = *(v6 + 3);
      v9 = *(v6 + 30);
      v4[1].__r_.__value_.__r.__words[2] = 0;
      *(v4[1].__r_.__value_.__r.__words + 6) = v9;
      v4[1].__r_.__value_.__r.__words[0] = v8;
      v4[2].__r_.__value_.__r.__words[0] = 0;
      v4[2].__r_.__value_.__l.__size_ = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v4[1].__r_.__value_.__r.__words[2], *(v6 + 5), *(v6 + 6), (*(v6 + 6) - *(v6 + 5)) >> 2);
      v4[2].__r_.__value_.__r.__words[2] = 0;
      v4[3].__r_.__value_.__r.__words[0] = 0;
      v4[3].__r_.__value_.__l.__size_ = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v4[2].__r_.__value_.__r.__words[2], *(v6 + 8), *(v6 + 9), (*(v6 + 9) - *(v6 + 8)) >> 2);
      v6 = (v6 + 88);
      v4 = (v14 + 88);
      v14 = (v14 + 88);
    }

    while (v6 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TokenLmInfo>,quasar::TokenLmInfo*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

void std::vector<quasar::TokenLmInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::TokenLmInfo>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::TokenLmInfo>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<quasar::TokenLmInfo>>::destroy[abi:ne200100]<quasar::TokenLmInfo,0>(a1, i))
  {
    i -= 88;
  }

  *(a1 + 8) = a2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::LmInfo>,quasar::LmInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v7 + 8);
      *(a4 + 24) = *(v7 + 24);
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      v8 = *(v7 + 32);
      *(a4 + 36) = *(v7 + 36);
      *(a4 + 32) = v8;
      v9 = *(v7 + 40);
      *(a4 + 56) = *(v7 + 56);
      *(a4 + 40) = v9;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 40) = 0;
      v10 = *(v7 + 64);
      *(a4 + 72) = *(v7 + 72);
      *(a4 + 64) = v10;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 80) = 0;
      *(a4 + 80) = *(v7 + 80);
      *(a4 + 96) = *(v7 + 96);
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      *(v7 + 96) = 0;
      v7 += 104;
      a4 += 104;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<quasar::LmInfo>>::destroy[abi:ne200100]<quasar::LmInfo,0>(a1, v5);
      v5 += 104;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::LmInfo>,quasar::LmInfo*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

void std::allocator_traits<std::allocator<quasar::LmInfo>>::destroy[abi:ne200100]<quasar::LmInfo,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  if (v3)
  {
    *(a2 + 88) = v3;
    operator delete(v3);
  }

  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  v4 = (a2 + 8);
  std::vector<quasar::TokenLmInfo>::__destroy_vector::operator()[abi:ne200100](&v4);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::LmInfo>,quasar::LmInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::LmInfo>,quasar::LmInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::LmInfo>,quasar::LmInfo*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 104;
      std::allocator_traits<std::allocator<quasar::LmInfo>>::destroy[abi:ne200100]<quasar::LmInfo,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<quasar::LmInfo>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::LmInfo>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::LmInfo>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 104;
    std::allocator_traits<std::allocator<quasar::LmInfo>>::destroy[abi:ne200100]<quasar::LmInfo,0>(v5, v4 - 104);
  }
}

uint64_t std::vector<std::shared_ptr<kaldi::quasar::LmHandle>>::__init_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::LmHandle>*,std::shared_ptr<kaldi::quasar::LmHandle>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B523B608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<kaldi::quasar::LmHandle>>,std::shared_ptr<kaldi::quasar::LmHandle>*,std::shared_ptr<kaldi::quasar::LmHandle>*,std::shared_ptr<kaldi::quasar::LmHandle>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::LmHandle>>,std::shared_ptr<kaldi::quasar::LmHandle>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::LmHandle>>,std::shared_ptr<kaldi::quasar::LmHandle>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineItf>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::vector<std::shared_ptr<quasar::Decoder>>::__init_with_size[abi:ne200100]<std::shared_ptr<quasar::Decoder>*,std::shared_ptr<quasar::Decoder>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B523B750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<quasar::Decoder>>,std::shared_ptr<quasar::Decoder>*,std::shared_ptr<quasar::Decoder>*,std::shared_ptr<quasar::Decoder>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<quasar::Decoder>>,std::shared_ptr<quasar::Decoder>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<quasar::Decoder>>,std::shared_ptr<quasar::Decoder>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineItf>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void *std::__shared_ptr_emplace<quasar::SpeechRecognizerConfig>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::SpeechRecognizerConfig>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D07788;
  std::allocator<quasar::SpeechRecognizerConfig>::construct[abi:ne200100]<quasar::SpeechRecognizerConfig,std::string const&>(&v4, (a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::SpeechRecognizerConfig>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D07788;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::SpeechRecognizerConfig>::construct[abi:ne200100]<quasar::SpeechRecognizerConfig,std::string const&>(quasar::DecoderOptions *a1, uint64_t a2, uint64_t a3)
{
  memset(v7, 0, sizeof(v7));
  memset(v5, 0, sizeof(v5));
  v6 = 1065353216;
  quasar::DecoderOptions::defaultDecoderOptions(a1);
  quasar::SpeechRecognizerConfig::SpeechRecognizerConfig(a2, a3, v7, v5, 0);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v5);
  *&v5[0] = v7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v5);
}

void sub_1B523BA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a9);
  a9 = &a14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<quasar::Decoder>>::__assign_with_size[abi:ne200100]<std::shared_ptr<quasar::Decoder>*,std::shared_ptr<quasar::Decoder>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<quasar::Decoder>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *>(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *>(&v17, a2, (a2 + v12), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<quasar::Decoder>>,std::shared_ptr<quasar::Decoder>*,std::shared_ptr<quasar::Decoder>*,std::shared_ptr<quasar::Decoder>*>(a1, (a2 + v12), a3, a1[1]);
  }
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::__assoc_state<quasar::Location>::set_value<quasar::Location const&>(uint64_t a1, _OWORD *a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 144) = *a2;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void std::vector<std::weak_ptr<quasar::Decoder>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::weak_ptr<quasar::Decoder>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::weak_ptr<quasar::Decoder>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  a1[1] = v2;
}

void std::__shared_ptr_emplace<quasar::SpeechRequestResultData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D077D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

double quasar::SpeechRequestResultData::SpeechRequestResultData(quasar::SpeechRequestResultData *this)
{
  __asm { FMOV            V1.2D, #-1.0 }

  *this = _Q1;
  *(this + 1) = xmmword_1B5AE71C0;
  *(this + 2) = _Q1;
  *(this + 3) = _Q1;
  *(this + 4) = _Q1;
  *(this + 10) = -1;
  *(this + 11) = 0xBFF0000000000000;
  *(this + 24) = -1;
  *(this + 13) = 0xBFF0000000000000;
  *(this + 28) = -1;
  *(this + 116) = 0;
  *(this + 15) = -1;
  *(this + 16) = 0;
  *(this + 136) = 0;
  result = 0.0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 24) = 850045863;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 31) = 0;
  *(this + 32) = this + 264;
  *(this + 35) = this + 288;
  *(this + 36) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 37) = 0;
  *(this + 38) = this + 312;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 47) = 0;
  return result;
}

void std::allocator<quasar::PhoneticMatchResult>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  v3 = (a2 + 16);
  std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::PhoneticMatchAlignmentSpan>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::PhoneticMatchAlignmentSpan>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = (v3 - 24);
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v4);
      v4 = (v3 - 48);
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v4);
      v4 = (v3 - 72);
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v4);
      v3 -= 72;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void std::vector<quasar::PhoneticMatchDecoderStat>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 17);
    v3 -= 5;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void *std::__shared_ptr_emplace<quasar::DecoderChainOutput>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<quasar::SymbolTableList>,std::shared_ptr<quasar::SpeechRequestResultData>,std::allocator<quasar::DecoderChainOutput>,0>(void *a1, __int128 *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D07828;
  std::allocator<quasar::DecoderChainOutput>::construct[abi:ne200100]<quasar::DecoderChainOutput,std::shared_ptr<quasar::SymbolTableList>,std::shared_ptr<quasar::SpeechRequestResultData>>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::DecoderChainOutput>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D07828;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::DecoderChainOutput>::construct[abi:ne200100]<quasar::DecoderChainOutput,std::shared_ptr<quasar::SymbolTableList>,std::shared_ptr<quasar::SpeechRequestResultData>>(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v4 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v5 = *a4;
  v6 = v4;
  *a4 = 0;
  *(a4 + 1) = 0;
  quasar::DecoderChainOutput::DecoderChainOutput(a2, &v6, &v5);
  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
  }

  if (*(&v6 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6 + 1));
  }
}

void sub_1B523C178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void quasar::DecoderChainOutput::~DecoderChainOutput(void **this)
{
  if (*(this + 1183) < 0)
  {
    operator delete(this[145]);
  }

  v33 = this + 141;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v33);
  v2 = this[135];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 1071) < 0)
  {
    operator delete(this[131]);
  }

  v3 = this[128];
  if (v3)
  {
    this[129] = v3;
    operator delete(v3);
  }

  v4 = this[125];
  if (v4)
  {
    this[126] = v4;
    operator delete(v4);
  }

  if (*(this + 975) < 0)
  {
    operator delete(this[119]);
  }

  if (*(this + 919) < 0)
  {
    operator delete(this[112]);
  }

  v33 = this + 107;
  std::vector<std::vector<kaldi::quasar::WordConf>>::__destroy_vector::operator()[abi:ne200100](&v33);
  v5 = this[101];
  if (v5)
  {
    this[102] = v5;
    operator delete(v5);
  }

  v6 = this[97];
  if (v6)
  {
    this[98] = v6;
    operator delete(v6);
  }

  v7 = this[93];
  if (v7)
  {
    this[94] = v7;
    operator delete(v7);
  }

  v8 = this[89];
  if (v8)
  {
    this[90] = v8;
    operator delete(v8);
  }

  v33 = this + 84;
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](&v33);
  v9 = this[83];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = this[79];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v33 = this + 75;
  std::vector<quasar::LmeInfo>::__destroy_vector::operator()[abi:ne200100](&v33);
  v11 = this[73];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = this[71];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = this[64];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = this[62];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = this[56];
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = this[54];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = this[52];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v33 = this + 48;
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](&v33);
  v18 = this[47];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = this[45];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v20 = this[43];
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = this[41];
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v22 = this[39];
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  v23 = this[37];
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v24 = this[35];
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v25 = this[33];
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v26 = this[31];
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v27 = this[29];
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (*(this + 216) == 1)
  {
    v28 = this[26];
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }
  }

  v29 = this[24];
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v30 = this[22];
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = this[19];
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy((this + 15), this[16]);
  v33 = this + 12;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v33);
  v32 = this[9];
  if (v32)
  {
    this[10] = v32;
    operator delete(v32);
  }

  v33 = this + 6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v33);
  v33 = this + 3;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v33);
  v33 = this;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void std::vector<std::vector<kaldi::quasar::WordConf>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<kaldi::quasar::WordConf>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<kaldi::quasar::WordConf>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        kaldi::quasar::WordConf::~WordConf((v4 - 264));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void kaldi::quasar::WordConf::~WordConf(kaldi::quasar::WordConf *this)
{
  v4 = (this + 240);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 27);
  if (v2)
  {
    *(this + 28) = v2;
    operator delete(v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    *(this + 22) = v3;
    operator delete(v3);
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

void std::vector<quasar::LmeInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::LmeInfo>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t _ZNSt3__120__shared_ptr_emplaceIN5kaldi5TimerENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(uint64_t a1, clockid_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F2D07878;
  *(a1 + 48) = 1;
  kaldi::Timer::Reset((a1 + 24), a2);
  *(a1 + 56) = 0;
  return a1;
}

void std::__shared_ptr_emplace<kaldi::Timer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D07878;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::SpeechRequestData>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<quasar::RunAsyncParams> &,decltype(nullptr),decltype(nullptr),std::vector<std::shared_ptr<quasar::LmeContainer>> const&,quasar::Location,std::shared_ptr<kaldi::Timer>,unsigned long,std::allocator<quasar::SpeechRequestData>,0>(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, _OWORD *a6, __int128 *a7, void *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D078C8;
  std::allocator<quasar::SpeechRequestData>::construct[abi:ne200100]<quasar::SpeechRequestData,std::shared_ptr<quasar::RunAsyncParams> &,decltype(nullptr),decltype(nullptr),std::vector<std::shared_ptr<quasar::LmeContainer>> const&,quasar::Location,std::shared_ptr<kaldi::Timer>,unsigned long>(&v10, (a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void std::__shared_ptr_emplace<quasar::SpeechRequestData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D078C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::SpeechRequestData>::construct[abi:ne200100]<quasar::SpeechRequestData,std::shared_ptr<quasar::RunAsyncParams> &,decltype(nullptr),decltype(nullptr),std::vector<std::shared_ptr<quasar::LmeContainer>> const&,quasar::Location,std::shared_ptr<kaldi::Timer>,unsigned long>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, _OWORD *a7, __int128 *a8, void *a9)
{
  v12 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  v9 = *a8;
  *a8 = 0;
  *(a8 + 1) = 0;
  quasar::SpeechRequestData::SpeechRequestData(a2, a3, &v12, &v10, a6, a7, &v9, *a9 != 0, 1, 4uLL);
  if (*(&v9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_1B523C9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  std::allocator<quasar::SpeechRequestData>::construct[abi:ne200100]<quasar::SpeechRequestData,std::shared_ptr<quasar::RunAsyncParams> &,decltype(nullptr),decltype(nullptr),std::vector<std::shared_ptr<quasar::LmeContainer>> const&,quasar::Location,std::shared_ptr<kaldi::Timer>,unsigned long>(va, v5 - 32);
  _Unwind_Resume(a1);
}

void *std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*>,std::__wrap_iter<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*>>(void *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__move_range(a1, a2, a1[1], &a2[2 * a5]);
        v18 = &v7[2 * a5];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*>(a1, (a3 + v16), a4, a1[1]);
        if (v17 < 1)
        {
          return v5;
        }

        std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__move_range(a1, v5, v10, &v5[2 * a5]);
        v18 = (v7 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *>(v30, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v32 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<quasar::FeatureExtractor>>>(a1, v15);
    }

    v19 = 16 * (v13 >> 4);
    v31 = 0;
    v20 = (v19 + 16 * a5);
    v21 = v19;
    do
    {
      *v21 = *v7;
      v22 = v7[1];
      *(v21 + 1) = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v21 += 16;
      v7 += 2;
    }

    while (v21 != v20);
    memcpy(v20, v5, a1[1] - v5);
    v23 = *a1;
    v24 = &v20[a1[1] - v5];
    a1[1] = v5;
    v25 = v5 - v23;
    v26 = (v19 - (v5 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    a1[1] = v24;
    v28 = a1[2];
    a1[2] = v31;
    v30[2] = v27;
    v31 = v28;
    v30[0] = v27;
    v30[1] = v27;
    std::__split_buffer<std::shared_ptr<quasar::FeatureExtractor>>::~__split_buffer(v30);
    return v19;
  }

  return v5;
}

void *std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__move_range(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      v9[1] = 0;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>> *,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>> *,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>> *>(&v11, a2, v7, v6);
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>> *,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>> *,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>> *>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

void *std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*>,std::__wrap_iter<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*>>(void *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__move_range(a1, a2, a1[1], &a2[2 * a5]);
        v18 = &v7[2 * a5];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>>,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*>(a1, (a3 + v16), a4, a1[1]);
        if (v17 < 1)
        {
          return v5;
        }

        std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__move_range(a1, v5, v10, &v5[2 * a5]);
        v18 = (v7 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *>(v30, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v32 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<quasar::FeatureExtractor>>>(a1, v15);
    }

    v19 = 16 * (v13 >> 4);
    v31 = 0;
    v20 = (v19 + 16 * a5);
    v21 = v19;
    do
    {
      *v21 = *v7;
      v22 = v7[1];
      *(v21 + 1) = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v21 += 16;
      v7 += 2;
    }

    while (v21 != v20);
    memcpy(v20, v5, a1[1] - v5);
    v23 = *a1;
    v24 = &v20[a1[1] - v5];
    a1[1] = v5;
    v25 = v5 - v23;
    v26 = (v19 - (v5 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    a1[1] = v24;
    v28 = a1[2];
    a1[2] = v31;
    v30[2] = v27;
    v31 = v28;
    v30[0] = v27;
    v30[1] = v27;
    std::__split_buffer<std::shared_ptr<quasar::FeatureExtractor>>::~__split_buffer(v30);
    return v19;
  }

  return v5;
}

void std::__function::__func<quasar::FstLmScorer::computeLmScore(quasar::FstLmScorerOptions const&,std::vector<std::shared_ptr<quasar::LmeContainer>> const&,quasar::Location const&,std::vector<std::string> const&,quasar::LmInfo &,std::vector<int> const&,std::vector<std::string> const&)::$_0,std::allocator<quasar::FstLmScorer::computeLmScore(quasar::FstLmScorerOptions const&,std::vector<std::shared_ptr<quasar::LmeContainer>> const&,quasar::Location const&,std::vector<std::string> const&,quasar::LmInfo &,std::vector<int> const&,std::vector<std::string> const&)::$_0>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> const&)>::operator()(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t std::__function::__func<quasar::FstLmScorer::computeLmScore(quasar::FstLmScorerOptions const&,std::vector<std::shared_ptr<quasar::LmeContainer>> const&,quasar::Location const&,std::vector<std::string> const&,quasar::LmInfo &,std::vector<int> const&,std::vector<std::string> const&)::$_0,std::allocator<quasar::FstLmScorer::computeLmScore(quasar::FstLmScorerOptions const&,std::vector<std::shared_ptr<quasar::LmeContainer>> const&,quasar::Location const&,std::vector<std::string> const&,quasar::LmInfo &,std::vector<int> const&,std::vector<std::string> const&)::$_0>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<quasar::FstLmScorer::computeLmScore(quasar::FstLmScorerOptions const&,std::vector<std::shared_ptr<quasar::LmeContainer>> const&,quasar::Location const&,std::vector<std::string> const&,quasar::LmInfo &,std::vector<int> const&,std::vector<std::string> const&)::$_1,std::allocator<quasar::FstLmScorer::computeLmScore(quasar::FstLmScorerOptions const&,std::vector<std::shared_ptr<quasar::LmeContainer>> const&,quasar::Location const&,std::vector<std::string> const&,quasar::LmInfo &,std::vector<int> const&,std::vector<std::string> const&)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> const&)>::operator()(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t std::__function::__func<quasar::FstLmScorer::computeLmScore(quasar::FstLmScorerOptions const&,std::vector<std::shared_ptr<quasar::LmeContainer>> const&,quasar::Location const&,std::vector<std::string> const&,quasar::LmInfo &,std::vector<int> const&,std::vector<std::string> const&)::$_1,std::allocator<quasar::FstLmScorer::computeLmScore(quasar::FstLmScorerOptions const&,std::vector<std::shared_ptr<quasar::LmeContainer>> const&,quasar::Location const&,std::vector<std::string> const&,quasar::LmInfo &,std::vector<int> const&,std::vector<std::string> const&)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void quasar::QuasarG2PBase::QuasarG2PBase(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a2[1];
  v13 = *a2;
  v14 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a3[1];
  v11 = *a3;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  Ptree = quasar::SystemConfig::getPtree(a5, a7);
  std::string::basic_string[abi:ne200100]<0>(__p, "max-prons");
  quasar::PTree::getIntOptional<int>(Ptree, __p);
}

void sub_1B523D2BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (*(v28 + 335) < 0)
  {
    operator delete(*v29);
  }

  quasar::G2P::~G2P(v28);
  _Unwind_Resume(a1);
}

void quasar::G2P::G2P(void *a1, void *a2, void *a3)
{
  *a1 = &unk_1F2D0D298;
  a1[1] = *a2;
  v3 = a2[1];
  a1[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  a1[3] = *a3;
  v4 = a3[1];
  a1[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1B523D4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  v12 = v10[5];
  v10[5] = 0;
  if (v12)
  {
    std::default_delete<quasar::PronCombinator>::operator()[abi:ne200100]((v10 + 5), v12);
  }

  v13 = v10[4];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = v10[2];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::QuasarG2PBase::tokenIsLegal(quasar::QuasarG2PBase *this, const Token *a2, BOOL *a3)
{
  *a3 = 0;
  size = *(&a2->tokenName.__rep_.__l + 23);
  if ((size & 0x80u) != 0)
  {
    size = a2->tokenName.__rep_.__l.__size_;
  }

  if (size)
  {
    (*(*this + 64))(&__p);
    memset(&v11, 0, sizeof(v11));
    v6 = (*(*this + 72))(this);
    if (v6)
    {
      tokenize_entry(&__p, this + 336, v6, a3, &v13);
      std::vector<std::string>::__vdeallocate(&v11);
      *&v11.__begin_ = v13;
      v11.__end_cap_.__value_ = v14;
      *&v14 = 0;
      v13 = 0uLL;
      v30 = &v13;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v30);
      v7 = v11.__begin_ == v11.__end_;
    }

    else
    {
      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v9 = __p.__r_.__value_.__l.__size_;
      }

      v7 = v9 == 0;
    }

    v8 = !v7;
    *&v13 = &v11;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (quasar::gLogLevel >= 4)
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
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Empty token received", 20);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v13);
    }

    return 0;
  }

  return v8;
}

void sub_1B523D734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  quasar::QuasarInfoMessage::~QuasarInfoMessage(va);
  _Unwind_Resume(a1);
}

void sub_1B523D748(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34)
{
  switch(a2)
  {
    case 4:
      v34 = __cxa_begin_catch(a1);
      if (quasar::gLogLevel >= 2)
      {
        v35 = v34;
        a33 = 0u;
        a34 = 0u;
        a31 = 0u;
        a32 = 0u;
        a29 = 0u;
        a30 = 0u;
        a27 = 0u;
        a28 = 0u;
        a25 = 0u;
        a26 = 0u;
        a23 = 0u;
        a24 = 0u;
        a21 = 0u;
        a22 = 0u;
        a19 = 0u;
        a20 = 0u;
        a18 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&a18);
        v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a18, "Not enough space, ", 18);
        v37 = (*(*v35 + 16))(v35);
        v38 = strlen(v37);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v37, v38);
        quasar::QuasarWarnMessage::~QuasarWarnMessage(&a18);
      }

      break;
    case 3:
      v39 = __cxa_begin_catch(a1);
      if (quasar::gLogLevel >= 2)
      {
        v40 = v39;
        a33 = 0u;
        a34 = 0u;
        a31 = 0u;
        a32 = 0u;
        a29 = 0u;
        a30 = 0u;
        a27 = 0u;
        a28 = 0u;
        a25 = 0u;
        a26 = 0u;
        a23 = 0u;
        a24 = 0u;
        a21 = 0u;
        a22 = 0u;
        a19 = 0u;
        a20 = 0u;
        a18 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&a18);
        v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a18, "Invalid UTF-8, ", 15);
        v42 = (*(*v40 + 16))(v40);
        v43 = strlen(v42);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v42, v43);
        quasar::QuasarWarnMessage::~QuasarWarnMessage(&a18);
      }

      break;
    case 2:
      v44 = __cxa_begin_catch(a1);
      if (quasar::gLogLevel >= 2)
      {
        v45 = v44;
        a33 = 0u;
        a34 = 0u;
        a31 = 0u;
        a32 = 0u;
        a29 = 0u;
        a30 = 0u;
        a27 = 0u;
        a28 = 0u;
        a25 = 0u;
        a26 = 0u;
        a23 = 0u;
        a24 = 0u;
        a21 = 0u;
        a22 = 0u;
        a19 = 0u;
        a20 = 0u;
        a18 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&a18);
        v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a18, "Invalid code point, ", 20);
        v47 = (*(*v45 + 16))(v45);
        v48 = strlen(v47);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v47, v48);
        quasar::QuasarWarnMessage::~QuasarWarnMessage(&a18);
      }

      break;
    case 1:
      v49 = __cxa_begin_catch(a1);
      if (quasar::gLogLevel >= 2)
      {
        v50 = v49;
        a33 = 0u;
        a34 = 0u;
        a31 = 0u;
        a32 = 0u;
        a29 = 0u;
        a30 = 0u;
        a27 = 0u;
        a28 = 0u;
        a25 = 0u;
        a26 = 0u;
        a23 = 0u;
        a24 = 0u;
        a21 = 0u;
        a22 = 0u;
        a19 = 0u;
        a20 = 0u;
        a18 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&a18);
        v51 = (*(*v50 + 16))(v50);
        v52 = strlen(v51);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a18, v51, v52);
        quasar::QuasarWarnMessage::~QuasarWarnMessage(&a18);
      }

      break;
    default:
      *&a18 = &a9;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a18);
      if (a17 < 0)
      {
        operator delete(__p);
      }

      JUMPOUT(0x1B523D740);
  }

  __cxa_end_catch();
  JUMPOUT(0x1B523D6FCLL);
}

void quasar::QuasarG2PBase::normalizeToken(const std::locale *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&matches, *a2, *(a2 + 8));
  }

  else
  {
    matches = *a2;
  }

  quasar::trim(&matches);
  if ((SHIBYTE(matches.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&matches.__r_.__value_.__s + 23))
    {
      goto LABEL_6;
    }

LABEL_24:
    std::string::basic_string[abi:ne200100]<0>(a3, "");
    goto LABEL_142;
  }

  if (!matches.__r_.__value_.__l.__size_)
  {
    goto LABEL_24;
  }

LABEL_6:
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v5 = 0;
  memset(v72, 0, 41);
  {
    v5 = 0;
    if (v53)
    {
      operator new();
    }
  }

  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  *&__p.__matches_.__begin_ = v5;
  *&__p.__matches_.__end_cap_.__value_ = v5;
  size = HIBYTE(matches.__r_.__value_.__r.__words[2]);
  if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &matches;
  }

  else
  {
    v7 = matches.__r_.__value_.__r.__words[0];
  }

  if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = matches.__r_.__value_.__l.__size_;
  }

  *(&__p.__unmatched_.std::pair<const wchar_t *, const wchar_t *> + 1) = v5;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(quasar::QuasarG2PBase::normalizeToken(std::string const&)::PATTERN_1, v7, (v7 + size), &__p, 0);
  v9 = HIBYTE(matches.__r_.__value_.__r.__words[2]);
  if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &matches;
  }

  else
  {
    v10 = matches.__r_.__value_.__r.__words[0];
  }

  if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = matches.__r_.__value_.__l.__size_;
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v72, v10, (v10 + v9), &__p, 0);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  if (v8)
  {
    if (quasar::gLogLevel >= 2)
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
      memset(&__p, 0, sizeof(__p));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "input contains | which is the separator for g2p model.", 54);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(&__p);
    }

    std::string::basic_string[abi:ne200100]<0>(a3, "");
  }

  else
  {
    {
      operator new();
    }

    {
      operator new();
    }

    memset(&__p.__prefix_, 0, 17);
    memset(&__p.__suffix_, 0, 17);
    __p.__ready_ = 0;
    __p.__position_start_ = 0;
    memset(&__p, 0, 32);
    v11 = HIBYTE(matches.__r_.__value_.__r.__words[2]);
    if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &matches;
    }

    else
    {
      v12 = matches.__r_.__value_.__r.__words[0];
    }

    if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = matches.__r_.__value_.__l.__size_;
    }

    *(&__p.__unmatched_.std::pair<const wchar_t *, const wchar_t *> + 1) = 0uLL;
    v13 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(quasar::QuasarG2PBase::normalizeToken(std::string const&)::PATTERN_2, v12, (v12 + v11), &__p, 0);
    v14 = HIBYTE(matches.__r_.__value_.__r.__words[2]);
    if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &matches;
    }

    else
    {
      v15 = matches.__r_.__value_.__r.__words[0];
    }

    if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = matches.__r_.__value_.__l.__size_;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v72, v15, (v15 + v14), &__p, 0);
    if (__p.__matches_.__begin_)
    {
      __p.__matches_.__end_ = __p.__matches_.__begin_;
      operator delete(__p.__matches_.__begin_);
    }

    if (v13)
    {
      memset(&__p, 0, 24);
      v16 = HIBYTE(matches.__r_.__value_.__r.__words[2]);
      if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17.__i_ = &matches;
      }

      else
      {
        v17.__i_ = matches.__r_.__value_.__r.__words[0];
      }

      if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v16 = matches.__r_.__value_.__l.__size_;
      }

      v18.__i_ = &v17.__i_[v16];
      std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(&__p, v17, v18, quasar::QuasarG2PBase::normalizeToken(std::string const&)::PATTERN_3, "_", 0);
      if (SHIBYTE(matches.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(matches.__r_.__value_.__l.__data_);
      }

      matches = __p.__matches_;
    }

    {
      operator new();
    }

    {
      operator new();
    }

    memset(&__p.__prefix_, 0, 17);
    memset(&__p.__suffix_, 0, 17);
    __p.__ready_ = 0;
    __p.__position_start_ = 0;
    memset(&__p, 0, 32);
    v19 = HIBYTE(matches.__r_.__value_.__r.__words[2]);
    if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_matches = &matches;
    }

    else
    {
      p_matches = matches.__r_.__value_.__r.__words[0];
    }

    if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = matches.__r_.__value_.__l.__size_;
    }

    *(&__p.__unmatched_.std::pair<const wchar_t *, const wchar_t *> + 1) = 0uLL;
    v21 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(quasar::QuasarG2PBase::normalizeToken(std::string const&)::PATTERN_4, p_matches, (p_matches + v19), &__p, 0);
    v22 = HIBYTE(matches.__r_.__value_.__r.__words[2]);
    if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &matches;
    }

    else
    {
      v23 = matches.__r_.__value_.__r.__words[0];
    }

    if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = matches.__r_.__value_.__l.__size_;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v72, v23, (v23 + v22), &__p, 0);
    if (__p.__matches_.__begin_)
    {
      __p.__matches_.__end_ = __p.__matches_.__begin_;
      operator delete(__p.__matches_.__begin_);
    }

    if (v21)
    {
      memset(&__p, 0, 24);
      v24 = HIBYTE(matches.__r_.__value_.__r.__words[2]);
      if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25.__i_ = &matches;
      }

      else
      {
        v25.__i_ = matches.__r_.__value_.__r.__words[0];
      }

      if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v24 = matches.__r_.__value_.__l.__size_;
      }

      v26.__i_ = &v25.__i_[v24];
      std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(&__p, v25, v26, quasar::QuasarG2PBase::normalizeToken(std::string const&)::PATTERN_5, "_", 0);
      if (SHIBYTE(matches.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(matches.__r_.__value_.__l.__data_);
      }

      matches = __p.__matches_;
    }

    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(v59, "");
    std::string::basic_string[abi:ne200100]<0>(v57, "");
    quasar::toUpper(&matches, a1 + 14, &a1[15], &__p);
    if (SHIBYTE(value) < 0)
    {
      operator delete(v59[0]);
    }

    *v59 = *&__p.__matches_.__begin_;
    value = __p.__matches_.__end_cap_.__value_;
    quasar::toLower(&matches, a1 + 14, &a1[15], &__p);
    if (SHIBYTE(v58) < 0)
    {
      operator delete(v57[0]);
    }

    *v57 = *&__p.__matches_.__begin_;
    v58 = __p.__matches_.__end_cap_.__value_;
    if (SHIBYTE(value) >= 0)
    {
      v27 = HIBYTE(value);
    }

    else
    {
      v27 = v59[1];
    }

    v28 = HIBYTE(matches.__r_.__value_.__r.__words[2]);
    if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = matches.__r_.__value_.__l.__size_;
    }

    if (v27 == v28)
    {
      v29 = SHIBYTE(value) >= 0 ? v59 : v59[0];
      v30 = (matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &matches : matches.__r_.__value_.__r.__words[0];
      if (!memcmp(v29, v30, v27))
      {
        v48 = HIBYTE(v58);
        if (SHIBYTE(v58) < 0)
        {
          v48 = v57[1];
        }

        if (v48 != v27 || (SHIBYTE(v58) >= 0 ? (v49 = v57) : (v49 = v57[0]), memcmp(v49, v30, v27)))
        {
          memset(&__p.__prefix_, 0, 17);
          memset(&__p.__suffix_, 0, 17);
          __p.__ready_ = 0;
          __p.__position_start_ = 0;
          memset(&__p, 0, 41);
          v50 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(quasar::QuasarG2PBase::normalizeToken(std::string const&)::PATTERN_6, v30, (v30 + v27), &__p, 0);
          v51 = HIBYTE(matches.__r_.__value_.__r.__words[2]);
          if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v52 = &matches;
          }

          else
          {
            v52 = matches.__r_.__value_.__r.__words[0];
          }

          if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v51 = matches.__r_.__value_.__l.__size_;
          }

          std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v72, v52, (v52 + v51), &__p, 0);
          if (__p.__matches_.__begin_)
          {
            __p.__matches_.__end_ = __p.__matches_.__begin_;
            operator delete(__p.__matches_.__begin_);
          }

          if ((v50 & 1) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "");
            tokenize_utf8_string(&matches, &__p, v56);
            v54[0] = "_";
            v54[1] = 1;
            quasar::join<std::vector<std::string>>(v56, v54);
            if (SHIBYTE(matches.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(matches.__r_.__value_.__l.__data_);
            }

            matches = v55;
            v55.__r_.__value_.__r.__words[0] = v56;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v55);
            if (SHIBYTE(__p.__matches_.__end_cap_.__value_) < 0)
            {
              operator delete(__p.__matches_.__begin_);
            }
          }
        }
      }
    }

    {
      operator new();
    }

    {
      operator new();
    }

    memset(&__p.__prefix_, 0, 17);
    memset(&__p.__suffix_, 0, 17);
    __p.__ready_ = 0;
    __p.__position_start_ = 0;
    memset(&__p, 0, 32);
    v31 = HIBYTE(matches.__r_.__value_.__r.__words[2]);
    if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = &matches;
    }

    else
    {
      v31 = matches.__r_.__value_.__l.__size_;
      v32 = matches.__r_.__value_.__r.__words[0];
    }

    *(&__p.__unmatched_.std::pair<const wchar_t *, const wchar_t *> + 1) = 0uLL;
    v33 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(quasar::QuasarG2PBase::normalizeToken(std::string const&)::PATTERN_7, v32, (v32 + v31), &__p, 0);
    v34 = HIBYTE(matches.__r_.__value_.__r.__words[2]);
    if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &matches;
    }

    else
    {
      v35 = matches.__r_.__value_.__r.__words[0];
    }

    if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v34 = matches.__r_.__value_.__l.__size_;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v72, v35, (v35 + v34), &__p, 0);
    if (__p.__matches_.__begin_)
    {
      __p.__matches_.__end_ = __p.__matches_.__begin_;
      operator delete(__p.__matches_.__begin_);
    }

    if (v33)
    {
      memset(&__p, 0, 24);
      v36 = HIBYTE(matches.__r_.__value_.__r.__words[2]);
      if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37.__i_ = &matches;
      }

      else
      {
        v37.__i_ = matches.__r_.__value_.__r.__words[0];
      }

      if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v36 = matches.__r_.__value_.__l.__size_;
      }

      v38.__i_ = &v37.__i_[v36];
      std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(&__p, v37, v38, quasar::QuasarG2PBase::normalizeToken(std::string const&)::PATTERN_8, "_$1", 0);
      if (SHIBYTE(matches.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(matches.__r_.__value_.__l.__data_);
      }

      matches = __p.__matches_;
    }

    {
      operator new();
    }

    memset(&__p, 0, 24);
    v39 = HIBYTE(matches.__r_.__value_.__r.__words[2]);
    if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40.__i_ = &matches;
    }

    else
    {
      v40.__i_ = matches.__r_.__value_.__r.__words[0];
    }

    if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v39 = matches.__r_.__value_.__l.__size_;
    }

    v41.__i_ = &v40.__i_[v39];
    std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(&__p, v40, v41, quasar::QuasarG2PBase::normalizeToken(std::string const&)::PATTERN_9, "_", 0);
    if (SHIBYTE(matches.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(matches.__r_.__value_.__l.__data_);
    }

    matches = __p.__matches_;
    {
      operator new();
    }

    memset(&__p, 0, 24);
    v42 = HIBYTE(matches.__r_.__value_.__r.__words[2]);
    if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43.__i_ = &matches;
    }

    else
    {
      v43.__i_ = matches.__r_.__value_.__r.__words[0];
    }

    if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v42 = matches.__r_.__value_.__l.__size_;
    }

    v44.__i_ = &v43.__i_[v42];
    std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(&__p, v43, v44, quasar::QuasarG2PBase::normalizeToken(std::string const&)::PATTERN_10, "_", 0);
    if (SHIBYTE(matches.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(matches.__r_.__value_.__l.__data_);
    }

    matches = __p.__matches_;
    {
      operator new();
    }

    memset(&__p, 0, 24);
    v45 = HIBYTE(matches.__r_.__value_.__r.__words[2]);
    if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46.__i_ = &matches;
    }

    else
    {
      v46.__i_ = matches.__r_.__value_.__r.__words[0];
    }

    if ((matches.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v45 = matches.__r_.__value_.__l.__size_;
    }

    v47.__i_ = &v46.__i_[v45];
    std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(&__p, v46, v47, quasar::QuasarG2PBase::normalizeToken(std::string const&)::PATTERN_11, "|", 0);
    if (SHIBYTE(matches.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(matches.__r_.__value_.__l.__data_);
    }

    matches = __p.__matches_;
    quasar::toLower(&matches, a1 + 14, &a1[15], &__p);
    if (SHIBYTE(matches.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(matches.__r_.__value_.__l.__data_);
    }

    matches.__r_.__value_.__r.__words[2] = __p.__matches_.__end_cap_.__value_;
    *a3 = *&__p.__matches_.__begin_;
    *(a3 + 16) = *(&matches.__r_.__value_.__l + 2);
    memset(&matches, 0, sizeof(matches));
    if (SHIBYTE(v58) < 0)
    {
      operator delete(v57[0]);
    }

    if (SHIBYTE(value) < 0)
    {
      operator delete(v59[0]);
    }
  }

  if (v72[0].__begin_)
  {
    v72[0].__end_ = v72[0].__begin_;
    operator delete(v72[0].__begin_);
  }

LABEL_142:
  if (SHIBYTE(matches.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(matches.__r_.__value_.__l.__data_);
  }
}

void sub_1B523E7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 __p, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, __int128 a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, __int128 a36, __int128 a37, __int128 a38, __int128 a39, __int128 a40, __int128 a41, __int128 a42, __int128 a43, __int128 a44, __int128 a45, __int128 a46, __int128 a47, __int128 a48, __int128 a49, __int128 a50)
{
  MEMORY[0x1B8C85350](v50, 0x1060C4040BE2400);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  v53 = *(v51 - 192);
  if (v53)
  {
    *(v51 - 184) = v53;
    operator delete(v53);
  }

  if (*(v51 - 57) < 0)
  {
    operator delete(*(v51 - 80));
  }

  _Unwind_Resume(a1);
}

void quasar::QuasarG2PBase::chopTokenIntoUTF8Units(quasar::QuasarG2PBase *this@<X0>, std::vector<std::wstring> *a2@<X8>)
{
  v10[32] = *MEMORY[0x1E69E9840];
  (*(*this + 64))(&__p);
  memset(&v6, 0, sizeof(v6));
  v5 = (*(*this + 72))(this);
  if (v5)
  {
    tokenize_entry(&__p, this + 336, v5, 0, &v9);
    std::vector<std::string>::__vdeallocate(&v6);
    v6 = v9;
    v8 = &v9;
    memset(&v9, 0, sizeof(v9));
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
    *a2 = v6;
    memset(&v6, 0, sizeof(v6));
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v9 = __p;
    }

    a2->__begin_ = 0;
    a2->__end_ = 0;
    a2->__end_cap_.__value_ = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(a2, &v9, v10, 1uLL);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

  v9.__r_.__value_.__r.__words[0] = &v6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B523EF8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36)
{
  switch(a2)
  {
    case 4:
      v37 = __cxa_begin_catch(a1);
      if (quasar::gLogLevel >= 2)
      {
        v38 = v37;
        a35 = 0u;
        a36 = 0u;
        a33 = 0u;
        a34 = 0u;
        a31 = 0u;
        a32 = 0u;
        a29 = 0u;
        a30 = 0u;
        a27 = 0u;
        a28 = 0u;
        a25 = 0u;
        a26 = 0u;
        a23 = 0u;
        a24 = 0u;
        a21 = 0u;
        a22 = 0u;
        a20 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&a20);
        v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a20, "Not enough space, ", 18);
        v40 = (*(*v38 + 16))(v38);
        v41 = strlen(v40);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, v40, v41);
        quasar::QuasarWarnMessage::~QuasarWarnMessage(&a20);
      }

      break;
    case 3:
      v42 = __cxa_begin_catch(a1);
      if (quasar::gLogLevel >= 2)
      {
        v43 = v42;
        a35 = 0u;
        a36 = 0u;
        a33 = 0u;
        a34 = 0u;
        a31 = 0u;
        a32 = 0u;
        a29 = 0u;
        a30 = 0u;
        a27 = 0u;
        a28 = 0u;
        a25 = 0u;
        a26 = 0u;
        a23 = 0u;
        a24 = 0u;
        a21 = 0u;
        a22 = 0u;
        a20 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&a20);
        v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a20, "Invalid UTF-8, ", 15);
        v45 = (*(*v43 + 16))(v43);
        v46 = strlen(v45);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v45, v46);
        quasar::QuasarWarnMessage::~QuasarWarnMessage(&a20);
      }

      break;
    case 2:
      v47 = __cxa_begin_catch(a1);
      if (quasar::gLogLevel >= 2)
      {
        v48 = v47;
        a35 = 0u;
        a36 = 0u;
        a33 = 0u;
        a34 = 0u;
        a31 = 0u;
        a32 = 0u;
        a29 = 0u;
        a30 = 0u;
        a27 = 0u;
        a28 = 0u;
        a25 = 0u;
        a26 = 0u;
        a23 = 0u;
        a24 = 0u;
        a21 = 0u;
        a22 = 0u;
        a20 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&a20);
        v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a20, "Invalid code point, ", 20);
        v50 = (*(*v48 + 16))(v48);
        v51 = strlen(v50);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, v50, v51);
        quasar::QuasarWarnMessage::~QuasarWarnMessage(&a20);
      }

      break;
    default:
      if (a2 != 1)
      {
        *&a20 = &a9;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a20);
        if (a18 < 0)
        {
          operator delete(__p);
        }

        _Unwind_Resume(a1);
      }

      v52 = __cxa_begin_catch(a1);
      if (quasar::gLogLevel >= 2)
      {
        v53 = v52;
        a35 = 0u;
        a36 = 0u;
        a33 = 0u;
        a34 = 0u;
        a31 = 0u;
        a32 = 0u;
        a29 = 0u;
        a30 = 0u;
        a27 = 0u;
        a28 = 0u;
        a25 = 0u;
        a26 = 0u;
        a23 = 0u;
        a24 = 0u;
        a21 = 0u;
        a22 = 0u;
        a20 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&a20);
        v54 = (*(*v53 + 16))(v53);
        v55 = strlen(v54);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a20, v54, v55);
        quasar::QuasarWarnMessage::~QuasarWarnMessage(&a20);
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x1B523EEC8);
}

void std::default_delete<quasar::PronCombinator>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    std::__tree<int>::destroy(a2 + 8, *(a2 + 16));

    JUMPOUT(0x1B8C85350);
  }
}

uint64_t kaldi::LatticeWordAligner::ComputationState::OutputSilenceArc(uint64_t a1, uint64_t a2, kaldi::TransitionModel *this, uint64_t a4, _BYTE *a5)
{
  if (*a1 == *(a1 + 8))
  {
    return 0;
  }

  v10 = kaldi::TransitionModel::TransitionIdToPhone(this, **a1);
  if (kaldi::WordBoundaryInfo::TypeOfPhone(a2, v10) != 5)
  {
    return 0;
  }

  v29 = a4;
  v11 = *(a1 + 8) - *a1;
  v12 = v11 >> 2;
  v13 = 0;
  if (v11)
  {
    if (v12 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v11 >> 2;
    }

    while (1)
    {
      v15 = *(*a1 + 4 * v13);
      if (kaldi::TransitionModel::TransitionIdToPhone(this, v15) != v10 && (*a5 & 1) == 0)
      {
        *a5 = 1;
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v37);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "Phone changed before final transition-id found [broken lattice or mismatched model or wrong --reorder option?]", 110);
          kaldi::KaldiLogMessage::~KaldiLogMessage(&v37);
        }
      }

      if (kaldi::TransitionModel::IsFinal(this, v15))
      {
        break;
      }

      if (v14 == ++v13)
      {
        v13 = v14;
        break;
      }
    }
  }

  if (v13 == v12)
  {
    return 0;
  }

  v16 = v13 + 1;
  if (v13 + 1 < v12 && (*(a2 + 56) & 1) != 0)
  {
    while (kaldi::TransitionModel::IsSelfLoop(this, *(*a1 + 4 * v16)))
    {
      if (v12 == ++v16)
      {
        return 0;
      }
    }
  }

  if (v16 == v12)
  {
    return 0;
  }

  if (kaldi::TransitionModel::TransitionIdToPhone(this, *(*a1 + 4 * v16 - 4)) != v10 && (*a5 & 1) == 0 && (kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v37);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "Phone changed unexpectedly in lattice [broken lattice or mismatched model?]", 75);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&v37);
  }

  v18 = *a1;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(&v34, v18, &v18[v16], v16);
  v19 = *(a2 + 24);
  v30 = *(a1 + 48);
  v32 = 0;
  v33 = 0;
  v31 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v31, v34, v35, (v35 - v34) >> 2);
  LODWORD(v37.__locale_) = v19;
  HIDWORD(v37.__locale_) = v19;
  v38 = v30;
  v40 = 0;
  v41 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v31, v32, (v32 - v31) >> 2);
  v20 = -1;
  v42 = -1;
  *v29 = v37;
  *(v29 + 8) = v38;
  if (&v37 != v29)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v29 + 16), __p, v40, (v40 - __p) >> 2);
    v20 = v42;
  }

  *(v29 + 40) = v20;
  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  v22 = *(a1 + 24);
  v21 = *(a1 + 32);
  if (v22 != v21)
  {
    do
    {
      if (*v22 != *(a2 + 24))
      {
        break;
      }

      v23 = v22;
      v24 = v21 - (v22 + 4);
      if (v21 != v22 + 4)
      {
        memmove(v22, v22 + 4, v21 - (v22 + 4));
        v23 = *(a1 + 24);
      }

      v21 = &v22[v24];
      *(a1 + 32) = &v22[v24];
      v22 = v23;
    }

    while (v23 != v21);
  }

  if (v16)
  {
    v26 = *a1;
    v25 = *(a1 + 8);
    v27 = (*a1 + 4 * v16);
    v28 = v25 - v27;
    if (v25 != v27)
    {
      memmove(*a1, v27, v25 - v27);
    }

    *(a1 + 8) = v26 + v28;
  }

  *(a1 + 48) = 0;
  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  return 1;
}