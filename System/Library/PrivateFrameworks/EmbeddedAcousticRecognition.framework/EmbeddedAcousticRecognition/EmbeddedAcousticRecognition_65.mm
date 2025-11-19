void sub_1B54E4F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::WriteData(uint64_t a1, void *a2, int a3)
{
  kaldi::VectorwiseQuantizedMatrix<signed char>::Write((a1 + 48), a2, a3);

  kaldi::CuVectorBase<float>::Write(a1 + 88, a2, a3);
}

uint64_t *kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  LODWORD(a4) = 1.0;
  kaldi::CuMatrixBase<float>::AddMatMat<signed char>(a3, a2, 111, a1 + 48, 112, a4, 0.0);

  return kaldi::CuMatrixBase<float>::AddVecToRows(a3, a1 + 88, 1.0, 1.0);
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::BackpropagateFnc()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "BackpropagateFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, " Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int16x4_t a5)
{
  a5.i32[0] = *(*(a1 + 96) + 4 * a3);
  kaldi::CuVectorBase<float>::Set(a4, a5);
  kaldi::VectorwiseQuantizedMatrix<signed char>::Row(a1 + 48, a3, v9);
  kaldi::QuantizedVectorBase<signed char>::AddMatVec(v9, a2 + 8, a4 + 8, 1.0);
}

float kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(*(a1 + 96) + 4 * a3);
  kaldi::VectorwiseQuantizedMatrix<signed char>::Row(a1 + 48, a3, v6);
  return v4 + kaldi::VecVec<float,signed char>(a2, v6);
}

double kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  kaldi::VectorwiseQuantizedMatrix<signed char>::Read((a1 + 48), a2, a3, a4);

  return kaldi::CuVector<float>::Read(a1 + 88, a2, a3);
}

void *kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::~VectorwiseQuantizedAffineTransform(void *a1)
{
  *a1 = &unk_1F2D18A68;
  kaldi::CuVector<float>::~CuVector(a1 + 11);
  v2 = a1[9];
  a1[9] = 0;
  if (v2)
  {
    MEMORY[0x1B8C85350](v2, 0x1000C4077774924);
  }

  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    MEMORY[0x1B8C85350](v3, 0x1000C4052888210);
  }

  *a1 = &unk_1F2D15BB8;
  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::VectorwiseQuantizedAffineTransform(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D15BB8;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = &unk_1F2D18A68;
  kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(a1 + 48, a2 + 48);
  kaldi::CuVector<float>::CuVector((a1 + 88), a2 + 88);
  return a1;
}

void sub_1B54E5330(_Unwind_Exception *a1)
{
  kaldi::VectorwiseQuantizedMatrix<signed char>::~VectorwiseQuantizedMatrix((v1 + 6));
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::VectorwiseQuantizedAffineTransform<short>::VectorwiseQuantizedAffineTransform(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F2D18B28;
  kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(a1 + 48, a3, a2);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = &unk_1F2D3AC18;
  *(a1 + 112) = 0;
  kaldi::CuVector<float>::Resize(a1 + 88, a3, 0);
  return a1;
}

void sub_1B54E5418(_Unwind_Exception *a1)
{
  kaldi::VectorwiseQuantizedMatrix<short>::~VectorwiseQuantizedMatrix((v1 + 6));
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::VectorwiseQuantizedMatrix<short>::~VectorwiseQuantizedMatrix(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    MEMORY[0x1B8C85350](v2, 0x1000C40BDFB0063);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    MEMORY[0x1B8C85350](v3, 0x1000C4052888210);
  }

  return a1;
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<short>::~VectorwiseQuantizedAffineTransform(void *a1)
{
  kaldi::nnet1::VectorwiseQuantizedAffineTransform<short>::~VectorwiseQuantizedAffineTransform(a1);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<short>::Info(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v11, "\n  linearity is vectorwise quantized");
  v4 = std::string::append(&v11, "\n  bias");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<float>(a1 + 88);
  if ((v10 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v12, v6, v7);
  *a2 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_1B54E5640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<short>::WriteData(uint64_t a1, void *a2, int a3)
{
  kaldi::VectorwiseQuantizedMatrix<short>::Write((a1 + 48), a2, a3);

  kaldi::CuVectorBase<float>::Write(a1 + 88, a2, a3);
}

uint64_t *kaldi::nnet1::VectorwiseQuantizedAffineTransform<short>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  LODWORD(a4) = 1.0;
  kaldi::CuMatrixBase<float>::AddMatMat<short>(a3, a2, 111, a1 + 48, 112, a4, 0.0);

  return kaldi::CuMatrixBase<float>::AddVecToRows(a3, a1 + 88, 1.0, 1.0);
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<short>::BackpropagateFnc()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "BackpropagateFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, " Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<short>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int16x4_t a5)
{
  a5.i32[0] = *(*(a1 + 96) + 4 * a3);
  kaldi::CuVectorBase<float>::Set(a4, a5);
  kaldi::VectorwiseQuantizedMatrix<short>::Row(a1 + 48, a3, v9);
  kaldi::QuantizedVectorBase<short>::AddMatVec(v9, a2 + 8, a4 + 8, 1.0);
}

float kaldi::nnet1::VectorwiseQuantizedAffineTransform<short>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(*(a1 + 96) + 4 * a3);
  kaldi::VectorwiseQuantizedMatrix<short>::Row(a1 + 48, a3, v6);
  return v4 + kaldi::VecVec<float,short>(a2, v6);
}

double kaldi::nnet1::VectorwiseQuantizedAffineTransform<short>::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  kaldi::VectorwiseQuantizedMatrix<short>::Read((a1 + 48), a2, a3, a4);

  return kaldi::CuVector<float>::Read(a1 + 88, a2, a3);
}

void *kaldi::nnet1::VectorwiseQuantizedAffineTransform<short>::~VectorwiseQuantizedAffineTransform(void *a1)
{
  *a1 = &unk_1F2D18B28;
  kaldi::CuVector<float>::~CuVector(a1 + 11);
  v2 = a1[9];
  a1[9] = 0;
  if (v2)
  {
    MEMORY[0x1B8C85350](v2, 0x1000C40BDFB0063);
  }

  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    MEMORY[0x1B8C85350](v3, 0x1000C4052888210);
  }

  *a1 = &unk_1F2D15BB8;
  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t kaldi::nnet1::VectorwiseQuantizedAffineTransform<short>::VectorwiseQuantizedAffineTransform(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D15BB8;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = &unk_1F2D18B28;
  kaldi::VectorwiseQuantizedMatrix<short>::VectorwiseQuantizedMatrix(a1 + 48, a2 + 48);
  kaldi::CuVector<float>::CuVector((a1 + 88), a2 + 88);
  return a1;
}

void sub_1B54E5A10(_Unwind_Exception *a1)
{
  kaldi::VectorwiseQuantizedMatrix<short>::~VectorwiseQuantizedMatrix((v1 + 6));
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void *NgramEvalStats::_incrementCounts(NgramEvalStats *this, const unsigned int *a2, unsigned int a3, uint64_t a4)
{
  v5 = this;
  result = (this + 160);
  LODWORD(v5) = *(v5 + 39);
  v7 = __OFSUB__(a3, v5);
  v8 = a3 - v5;
  if (v8 < 0 != v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 + 1;
  }

  for (; v9 <= a3; ++v9)
  {
    v12 = a2[v9];
    v13 = 0;
    result = LHash<unsigned int,Trie<unsigned int,unsigned long>>::insert(result, v12, &v13);
    if (!v13)
    {
      *result = 0;
    }
  }

  result[1] += a4;
  return result;
}

uint64_t NgramEvalStats::countSentence(NgramEvalStats *this, const unsigned int *a2, uint64_t a3)
{
  if (*a2 == -1)
  {
    v6 = 0;
    v7 = -1;
  }

  else
  {
    LODWORD(v6) = 0;
    do
    {
      NgramEvalStats::_incrementCounts(this, a2, v6, a3);
      v6 = (v6 + 1);
    }

    while (a2[v6] != -1);
    v7 = *a2;
  }

  *(this + 8) = *(this + 8) + v6;
  if (v7 == *(*(**(this + 3) + 104))(*(this + 3)))
  {
    *(this + 8) = *(this + 8) + -1.0;
  }

  if (v6)
  {
    v8 = a2[(v6 - 1)];
    if (v8 == *(*(**(this + 3) + 120))(*(this + 3)))
    {
      *(this + 8) = *(this + 8) + -1.0;
    }
  }

  *(this + 7) = *(this + 7) + 1.0;
  return v6;
}

void NgramEvalStats::~NgramEvalStats(NgramEvalStats *this)
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

uint64_t quasar::IndexRuleLmeWordTagger::init(uint64_t a1, quasar::SystemConfig *this, uint64_t a3)
{
  __p[0] = quasar::SystemConfig::getConfigFileVersion(this);
  quasar::result_handler::Range::Range(&v43, 90, 0);
  if (!quasar::SystemConfig::Version::operator<(__p, &v43))
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(&v42, "lme-word-tagger");
    v7 = std::string::insert(v6, 0, ".");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v43, ".");
    v10 = *&v9->__r_.__value_.__l.__data_;
    *&v26 = *(&v9->__r_.__value_.__l + 2);
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(v44, "index-rule-tagger");
    if ((v45 & 0x80u) == 0)
    {
      v11 = v44;
    }

    else
    {
      v11 = v44[0];
    }

    if ((v45 & 0x80u) == 0)
    {
      v12 = v45;
    }

    else
    {
      v12 = v44[1];
    }

    v13 = std::string::append(__p, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v47 = v13->__r_.__value_.__r.__words[2];
    v46 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    if (SBYTE7(v26) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, &v46, __p);
    quasar::IndexRuleLmeWordTagger::registerParams(a1, this, __p);
    if (SBYTE7(v26) < 0)
    {
      operator delete(__p[0]);
    }

    quasar::SystemConfig::getPrefix(this, &v42);
    v15 = *(a3 + 23);
    if (v15 >= 0)
    {
      v16 = a3;
    }

    else
    {
      v16 = *a3;
    }

    if (v15 >= 0)
    {
      v17 = *(a3 + 23);
    }

    else
    {
      v17 = *(a3 + 8);
    }

    v18 = std::string::append(&v42, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (v47 >= 0)
    {
      v20 = &v46;
    }

    else
    {
      v20 = v46;
    }

    if (v47 >= 0)
    {
      v21 = HIBYTE(v47);
    }

    else
    {
      v21 = *(&v46 + 1);
    }

    v22 = std::string::append(&v43, v20, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    *&v26 = *(&v22->__r_.__value_.__l + 2);
    *__p = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    quasar::SystemConfig::readPtree(this, __p);
  }

  if (quasar::gLogLevel >= 1)
  {
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
    *v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Config Version is not high enough for index rule denumeration", 61);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(__p);
  }

  return 0;
}

void sub_1B54E6440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&__p);
  if (*(v14 - 200) == 1 && *(v14 - 201) < 0)
  {
    operator delete(*(v14 - 224));
  }

  quasar::PTree::~PTree((v14 - 192));
  if (*(v14 - 73) < 0)
  {
    operator delete(*(v14 - 96));
  }

  _Unwind_Resume(a1);
}

void quasar::IndexRuleLmeWordTagger::registerParams(uint64_t a1, quasar::SystemConfig *this, uint64_t a3)
{
  quasar::SystemConfig::getPrefix(this, &v16);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  v7 = &v14;
  std::string::basic_string[abi:ne200100](&v14, size + 1);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v14.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v16;
    }

    else
    {
      v8 = v16.__r_.__value_.__r.__words[0];
    }

    memmove(v7, v8, size);
  }

  *(&v7->__r_.__value_.__l.__data_ + size) = 46;
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

  v12 = std::string::append(&v14, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  quasar::SystemConfig::setPrefix(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "default-tag");
  std::string::basic_string[abi:ne200100]<0>(&v14, "The default tag for denumeration");
  quasar::SystemConfig::Register<std::string>(this, &__p.__r_.__value_.__l.__data_, a1 + 32, &v14, 1, 90, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  quasar::SystemConfig::setPrefix(this, &v16);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_1B54E67A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::IndexRuleLmeWordTagger::~IndexRuleLmeWordTagger(void **this)
{
  *this = &unk_1F2D18CA0;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  v2 = this + 1;
  std::vector<std::pair<unsigned long,std::wstring>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  quasar::IndexRuleLmeWordTagger::~IndexRuleLmeWordTagger(this);

  JUMPOUT(0x1B8C85350);
}

std::string *quasar::IndexRuleLmeWordTagger::addTagsToWord(std::string *result, std::string **a2)
{
  v3 = result;
  v4 = *a2;
  v5 = a2[1];
  while (v4 != v5)
  {
    result = std::string::operator=(v4 + 1, (v3 + 32));
    v4 = (v4 + 80);
  }

  size = v3->__r_.__value_.__l.__size_;
  for (i = v3->__r_.__value_.__r.__words[2]; size != i; size += 32)
  {
    v8 = *size;
    if ((*size & 0x80000000) != 0)
    {
      v8 -= 858993459 * ((a2[1] - *a2) >> 4);
      if (v8 < 0)
      {
        continue;
      }
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 4) > v8)
    {
      v9 = *a2 + 80 * v8;
      v10 = *(v9 + 47);
      if (v10 >= 0)
      {
        v11 = *(v9 + 47);
      }

      else
      {
        v11 = *(v9 + 32);
      }

      v12 = v3[2].__r_.__value_.__s.__data_[7];
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = v3[1].__r_.__value_.__r.__words[2];
      }

      if (v11 == v12)
      {
        v14 = (v9 + 24);
        v15 = *(v9 + 24);
        if (v10 >= 0)
        {
          v16 = v14;
        }

        else
        {
          v16 = v15;
        }

        if (v13 >= 0)
        {
          p_size = &v3[1].__r_.__value_.__l.__size_;
        }

        else
        {
          p_size = v3[1].__r_.__value_.__l.__size_;
        }

        result = memcmp(v16, p_size, v11);
        if (!result)
        {
          result = std::string::operator=(v14, (size + 8));
        }
      }
    }
  }

  return result;
}

void quasar::getLmeWordTagger(quasar::SystemConfig *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  __p[0] = quasar::SystemConfig::getConfigFileVersion(a1);
  quasar::result_handler::Range::Range(&v11, 90, 0);
  if (!quasar::SystemConfig::Version::operator<(__p, &v11))
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = a2[1];
    }

    v7 = &v11;
    std::string::basic_string[abi:ne200100](&v11, v6 + 1);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v11.__r_.__value_.__r.__words[0];
    }

    if (v6)
    {
      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      memmove(v7, v8, v6);
    }

    *(&v7->__r_.__value_.__l.__data_ + v6) = 46;
    v9 = std::string::append(&v11, "lme-word-tagger");
    v10 = *&v9->__r_.__value_.__l.__data_;
    *&v13 = *(&v9->__r_.__value_.__l + 2);
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    quasar::SystemConfig::getPtreeOptional(a1, __p);
  }

  if (quasar::gLogLevel >= 5)
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
    v13 = 0u;
    v14 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Config Version is not high enough for denumeration", 50);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
  }

  *a3 = 0;
}

void std::vector<quasar::IndexRuleLmeWordTagger::Rule>::__construct_one_at_end[abi:ne200100]<int &,std::string const&>(uint64_t a1, _DWORD *a2, __int128 *a3)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  v5 = (v4 + 8);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(v4 + 24) = *(a3 + 2);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  *(a1 + 8) = v4 + 32;
}

uint64_t std::vector<quasar::IndexRuleLmeWordTagger::Rule>::__emplace_back_slow_path<int &,std::string const&>(uint64_t *a1, _DWORD *a2, __int128 *a3)
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

  v21 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::IndexRuleLmeWordTagger::Rule>>(a1, v8);
  }

  v9 = 32 * v3;
  v18 = 0;
  v19 = 32 * v3;
  v20 = (32 * v3);
  *(32 * v3) = *a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((32 * v3 + 8), *a3, *(a3 + 1));
    v9 = v19;
    v11 = v20;
  }

  else
  {
    v10 = *a3;
    *(32 * v3 + 0x18) = *(a3 + 2);
    *(32 * v3 + 8) = v10;
    v11 = 32 * v3;
  }

  *&v20 = v11 + 32;
  v12 = a1[1];
  v13 = v9 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::IndexRuleLmeWordTagger::Rule>,quasar::IndexRuleLmeWordTagger::Rule*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<quasar::IndexRuleLmeWordTagger::Rule>::~__split_buffer(&v18);
  return v17;
}

void sub_1B54E7020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::IndexRuleLmeWordTagger::Rule>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::IndexRuleLmeWordTagger::Rule>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::IndexRuleLmeWordTagger::Rule>,quasar::IndexRuleLmeWordTagger::Rule*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::IndexRuleLmeWordTagger::Rule>,quasar::IndexRuleLmeWordTagger::Rule*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::IndexRuleLmeWordTagger::Rule>,quasar::IndexRuleLmeWordTagger::Rule*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::IndexRuleLmeWordTagger::Rule>,quasar::IndexRuleLmeWordTagger::Rule*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::IndexRuleLmeWordTagger::Rule>,quasar::IndexRuleLmeWordTagger::Rule*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 32;
  }
}

uint64_t std::__split_buffer<quasar::IndexRuleLmeWordTagger::Rule>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::IndexRuleLmeWordTagger::Rule>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::IndexRuleLmeWordTagger::Rule>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t ResolveIndexForCollation(void *a1, int a2)
{
  if (a2 == 2)
  {
    v3 = *(*a1 + 80);

    return v3();
  }

  else
  {
    if (a2 != 3)
    {
      fprintf(*MEMORY[0x1E69E9848], "Function %s has not been implemented.\n", "ResolveIndexForCollation");
      exit(1);
    }

    return quasar::tennessee::nashville::GenericNashvilleLexicon<std::string_view,quasar::tennessee::nashville::flatbuf::TokenInfoToUTF8StringViewFunctor>::GetNormalizationCollationIndex(a1);
  }
}

uint64_t SDWord_GetName(void *a1, char *a2, char *a3, unint64_t a4)
{
  v6 = (*(*a1 + 48))(a1, a2 - 1);
  v8 = v7;
  if (a4)
  {
    if (v7 + 1 < a4)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = a4;
    }

    memcpy(a3, v6, v9);
  }

  return v8;
}

int *SDWord_GetTagBits(uint64_t a1, uint64_t a2, int a3, _WORD *a4, size_t a5)
{
  result = (*(*a1 + 88))(a1, a2 - 1);
  v10 = result;
  if (a3 != 1)
  {
    if (a3 != 2)
    {
      fprintf(*MEMORY[0x1E69E9848], "Function %s has not been implemented.\n", "SDWord_GetTagBits");
      exit(1);
    }

    v10 = result + 1;
    result = quasar::tennessee::nashville::GenericNashvilleLexicon<std::string_view,quasar::tennessee::nashville::flatbuf::TokenInfoToUTF8StringViewFunctor>::GetMetadata(a1);
    v11 = (result - *result);
    if (*v11 >= 0xBu)
    {
      v12 = v11[5];
      if (v12)
      {
        if (*(result + v12) >= 1)
        {
          bzero(a4, a5);
          Metadata = quasar::tennessee::nashville::GenericNashvilleLexicon<std::string_view,quasar::tennessee::nashville::flatbuf::TokenInfoToUTF8StringViewFunctor>::GetMetadata(a1);
          v14 = (Metadata - *Metadata);
          if (*v14 < 0xBu || (v15 = v14[5]) == 0 || (*(Metadata + v15) & 7) == 0)
          {
            result = quasar::tennessee::nashville::GenericNashvilleLexicon<std::string_view,quasar::tennessee::nashville::flatbuf::TokenInfoToUTF8StringViewFunctor>::GetMetadata(a1);
            v16 = (result - *result);
            if (*v16 < 0xBu)
            {
              v17 = 0;
            }

            else
            {
              v17 = v16[5];
              if (v17)
              {
                v17 = (*(result + v17) + (*(result + v17) < 0 ? 7 : 0)) >> 3;
              }
            }

            if (a5 > v17 && a5 - v17 > 1)
            {
              a4 = (a4 + v17);
              goto LABEL_13;
            }
          }

LABEL_18:
          memset(v18, 0, sizeof(v18));
          quasar::QuasarExceptionMessage::QuasarExceptionMessage(v18);
          quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v18);
        }
      }
    }
  }

  if (a5 != 2)
  {
    goto LABEL_18;
  }

LABEL_13:
  *a4 = *v10;
  return result;
}

uint64_t SDVoc_GetAllowedWordCollations(uint64_t a1, void *a2, unint64_t a3)
{
  if (a3 <= 1)
  {
    v9 = v4;
    v10 = v3;
    v11 = v5;
    v12 = v6;
    memset(v8, 0, sizeof(v8));
    quasar::QuasarExceptionMessage::QuasarExceptionMessage(v8);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v8);
  }

  *a2 = 0x300000002;
  return 2;
}

uint64_t SDVoc_GetCollationName(int a1, unsigned int a2, void *__dst, unint64_t a4)
{
  if (a2 != 3)
  {
    if (quasar::gLogLevel >= -1)
    {
      memset(v9, 0, sizeof(v9));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Unknown collation ", 18);
      MEMORY[0x1B8C84C00](v6, a2);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v9);
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = 0;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  if (a4)
  {
    v4 = 10;
    if (a4 < 0xA)
    {
      v4 = a4;
    }

    memcpy(__dst, "tokencoll", v4);
  }

  return 9;
}

void SDVoc_GetWords(void *a1, int a2, char *a3, char *a4, uint64_t a5, unint64_t a6, unint64_t *a7, void *a8, unint64_t *a9, uint64_t a10, uint64_t a11, _BYTE *a12)
{
  if (a12)
  {
    *a12 = 0;
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  v18 = ResolveIndexForCollation(a1, a2);
  if (!*a3)
  {
    if (!*a4)
    {
      fprintf(*MEMORY[0x1E69E9848], "Function %s has not been implemented.\n", "SDVoc_GetWords");
      exit(1);
    }

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
    v38 = 0u;
    v39 = 0u;
    *v37 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v37);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v37);
  }

  v19 = v18;
  std::string::basic_string[abi:ne200100]<0>(v37, a3);
  if (*a4)
  {
    std::string::basic_string[abi:ne200100]<0>(v35, a4);
    v20 = BYTE7(v38);
    v21 = v37;
    if (SBYTE7(v38) < 0)
    {
      v21 = v37[0];
      v20 = v37[1];
    }

    __p = v21;
    v32 = v20;
    (*(*v19 + 40))(v19, &__p, &v54);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v37, v35, &__p);
    v22 = v33;
    if ((v33 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v33 & 0x80u) != 0)
    {
      v22 = v32;
    }

    v34[0] = p_p;
    v34[1] = v22;
    (*(*v19 + 24))(v19, v34, 1, &v54);
    if (v33 < 0)
    {
      operator delete(__p);
    }

    v24 = BYTE7(v38);
    v25 = v37;
    if (SBYTE7(v38) < 0)
    {
      v25 = v37[0];
      v24 = v37[1];
    }

    __p = v25;
    v32 = v24;
    *a12 = (*(*v19 + 56))(v19, &__p);
    if (v36 < 0)
    {
      operator delete(v35[0]);
    }
  }

  else
  {
    v26 = BYTE7(v38);
    v27 = v37;
    if (SBYTE7(v38) < 0)
    {
      v27 = v37[0];
      v26 = v37[1];
    }

    v35[0] = v27;
    v35[1] = v26;
    (*(*v19 + 24))(v19, v35, 1, &v54);
  }

  if (SBYTE7(v38) < 0)
  {
    operator delete(v37[0]);
  }

  v28 = v54;
  v29 = v55;
  if (a6 < v55 - v54)
  {
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
    v38 = 0u;
    v39 = 0u;
    *v37 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v37);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v37);
  }

  *a8 = a5;
  *a9 = a6;
  if (v29 == v28)
  {
    v30 = 0;
  }

  else
  {
    v30 = 0;
    do
    {
      *(*a8 + 8 * v30) = v28[v30] + 1;
      ++v30;
      v28 = v54;
    }

    while (v30 < v55 - v54);
  }

  *a7 = v30;
  if (v28)
  {
    v55 = v28;
    operator delete(v28);
  }
}

void sub_1B54E79FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  v32 = *(v30 - 104);
  if (v32)
  {
    *(v30 - 96) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

int *SDVoc_GetInfo(uint64_t a1, void *a2)
{
  *a2 = 0x200000002;
  Metadata = quasar::tennessee::nashville::GenericNashvilleLexicon<std::string_view,quasar::tennessee::nashville::flatbuf::TokenInfoToUTF8StringViewFunctor>::GetMetadata(a1);
  v5 = (Metadata - *Metadata);
  if (*v5 < 7u)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5[3];
    if (v6)
    {
      v6 = *(Metadata + v6);
    }
  }

  a2[1] = v6;
  result = quasar::tennessee::nashville::GenericNashvilleLexicon<std::string_view,quasar::tennessee::nashville::flatbuf::TokenInfoToUTF8StringViewFunctor>::GetMetadata(a1);
  v8 = (result - *result);
  if (*v8 < 9u)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8[4];
    if (v9)
    {
      v9 = *(result + v9);
    }
  }

  a2[2] = v9;
  return result;
}

uint64_t SDColl_StringCompare(void *a1, int a2, const char *a3, const char *a4)
{
  v6 = *(ResolveIndexForCollation(a1, a2) + 8);
  v10[0] = a3;
  v10[1] = strlen(a3);
  v9[0] = a4;
  v9[1] = strlen(a4);
  v7 = (*(*v6 + 16))(v6);
  return (*(*v7 + 16))(v7, v10, v9);
}

void *SDEnv_GetData(uint64_t a1, const char *a2, void *a3, unint64_t a4)
{
  if (*a1 != 8 || (v4 = *(a1 + 8)) == 0)
  {
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
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    *__s1 = 0u;
    quasar::QuasarExceptionMessage::QuasarExceptionMessage(__s1);
    goto LABEL_54;
  }

  std::string::basic_string[abi:ne200100]<0>(__s1, "VocVersionID");
  v8 = strlen(a2);
  if ((SBYTE7(v36) & 0x8000000000000000) != 0)
  {
    if (v8 == __s1[1])
    {
      if (v8 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v9 = __s1[0];
      v10 = memcmp(__s1[0], a2, v8);
      operator delete(v9);
      if (!v10)
      {
LABEL_10:
        Metadata = quasar::tennessee::nashville::GenericNashvilleLexicon<std::string_view,quasar::tennessee::nashville::flatbuf::TokenInfoToUTF8StringViewFunctor>::GetMetadata(v4);
        v12 = (Metadata - *Metadata);
        if (*v12 < 5u || (v13 = v12[2]) == 0)
        {
LABEL_24:
          v18 = 0;
          goto LABEL_25;
        }

LABEL_23:
        v18 = (Metadata + v13 + *(Metadata + v13));
LABEL_25:
        flatbuffers_2_0_6::String::str(v18, __s1);
        goto LABEL_39;
      }
    }

    else
    {
      operator delete(__s1[0]);
    }
  }

  else if (v8 == SBYTE7(v36) && !memcmp(__s1, a2, v8))
  {
    goto LABEL_10;
  }

  std::string::basic_string[abi:ne200100]<0>(__s1, "_LmCategoryStrings");
  v14 = strlen(a2);
  if ((SBYTE7(v36) & 0x8000000000000000) != 0)
  {
    if (v14 == __s1[1])
    {
      if (v14 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v15 = __s1[0];
      v16 = memcmp(__s1[0], a2, v14);
      operator delete(v15);
      if (!v16)
      {
LABEL_21:
        Metadata = quasar::tennessee::nashville::GenericNashvilleLexicon<std::string_view,quasar::tennessee::nashville::flatbuf::TokenInfoToUTF8StringViewFunctor>::GetMetadata(v4);
        v17 = (Metadata - *Metadata);
        if (*v17 < 0xDu)
        {
          goto LABEL_24;
        }

        v13 = v17[6];
        if (!v13)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    else
    {
      operator delete(__s1[0]);
    }
  }

  else if (v14 == SBYTE7(v36) && !memcmp(__s1, a2, v14))
  {
    goto LABEL_21;
  }

  std::string::basic_string[abi:ne200100]<0>(__s1, "CategoryStringSize");
  v19 = strlen(a2);
  if ((SBYTE7(v36) & 0x8000000000000000) != 0)
  {
    if (v19 != __s1[1])
    {
      operator delete(__s1[0]);
LABEL_56:
      if (quasar::gLogLevel < -1)
      {
        exception = __cxa_allocate_exception(4uLL);
        *exception = 0;
        __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
      }

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
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      *__s1 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__s1);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__s1, "Unknown key '", 13);
      v32 = strlen(a2);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, a2, v32);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v33, "'");
LABEL_54:
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__s1);
    }

    if (v19 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v20 = __s1[0];
    v21 = memcmp(__s1[0], a2, v19);
    operator delete(v20);
    if (v21)
    {
      goto LABEL_56;
    }
  }

  else if (v19 != SBYTE7(v36) || memcmp(__s1, a2, v19))
  {
    goto LABEL_56;
  }

  v22 = quasar::tennessee::nashville::GenericNashvilleLexicon<std::string_view,quasar::tennessee::nashville::flatbuf::TokenInfoToUTF8StringViewFunctor>::GetMetadata(v4);
  v23 = (v22 - *v22);
  if (*v23 >= 0xFu && (v24 = v23[7]) != 0)
  {
    v25 = *(v22 + v24);
  }

  else
  {
    v25 = 0;
  }

  std::to_string(__s1, v25);
LABEL_39:
  v26 = SBYTE7(v36);
  if ((SBYTE7(v36) & 0x80u) == 0)
  {
    v27 = BYTE7(v36);
  }

  else
  {
    v27 = __s1[1];
  }

  if (a4)
  {
    if ((SBYTE7(v36) & 0x80u) == 0)
    {
      v28 = __s1;
    }

    else
    {
      v28 = __s1[0];
    }

    if (v27 + 1 < a4)
    {
      v29 = v27 + 1;
    }

    else
    {
      v29 = a4;
    }

    memcpy(a3, v28, v29);
  }

  if (v26 < 0)
  {
    operator delete(__s1[0]);
  }

  return v27;
}

void sub_1B54E8130(_Unwind_Exception *exception_object)
{
  if (*(v1 - 49) < 0)
  {
    operator delete(*(v1 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::MinimizeCompactLattice<fst::LatticeWeightTpl<float>,int>(uint64_t a1, float a2)
{
  v4 = a1;
  v5 = a2;
  *v6 = 0u;
  *__p = 0u;
  v8 = 0u;
  v2 = fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::Minimize(&v4);
  if (__p[1])
  {
    *&v8 = __p[1];
    operator delete(__p[1]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  return v2;
}

uint64_t fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::Minimize(float *a1)
{
  if (!(*(**a1 + 64))(*a1, 0x4000000000, 1))
  {
    fst::TopSort<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>();
  }

  fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::ComputeStateHashValues(a1);
  fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::ComputeStateMap(a1);
  fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::ModifyModel(a1);
  return 1;
}

void *fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::~CompactLatticeMinimizer(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::ComputeStateHashValues(void *a1)
{
  v2 = (*(**a1 + 160))(*a1);
  std::vector<double>::resize(a1 + 2, v2);
  result = (*(**a1 + 160))();
  if (result < 1)
  {
    return result;
  }

  v4 = result;
  do
  {
    v5 = v4--;
    v17 = 0;
    (*(**a1 + 32))(&v10);
    fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::InitHashValue(&v10, &v17);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    v6 = *a1;
    v16 = 0;
    (*(*v6 + 136))(v6, v4, v14);
    while (1)
    {
      result = v14[0];
      if (!v14[0])
      {
        if (v16 >= v14[2])
        {
          goto LABEL_21;
        }

        goto LABEL_11;
      }

      v7 = (*(*v14[0] + 24))(v14[0]);
      result = v14[0];
      if (v7)
      {
        break;
      }

      if (v14[0])
      {
        v8 = (*(*v14[0] + 32))(v14[0]);
        goto LABEL_12;
      }

LABEL_11:
      v8 = v14[1] + 48 * v16;
LABEL_12:
      v13 = 0;
      v9 = *(v8 + 40);
      if (v5 <= v9)
      {
        v13 = *(a1[2] + 8 * v9);
      }

      else
      {
        v13 = 1;
        if (kaldi::g_kaldi_verbose_level >= -1)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v10);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Minimizing lattice with self-loops (lattices should not have self-loops)", 72);
          kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v10);
        }
      }

      fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::UpdateHashValueForTransition(v8 + 8, *v8, &v13, &v17);
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
      result = (*(*v14[0] + 8))(v14[0]);
      goto LABEL_23;
    }

LABEL_21:
    if (v15)
    {
      --*v15;
    }

LABEL_23:
    *(a1[2] + 8 * v4) = v17;
  }

  while (v5 > 1);
  return result;
}

void sub_1B54E85CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::ComputeStateMap(float *a1)
{
  v2 = (*(**a1 + 160))(*a1);
  v26 = 0u;
  v27 = 0u;
  v28 = 1065353216;
  LODWORD(v24) = 0;
  if (v2 >= 1)
  {
    for (i = 0; i < v2; LODWORD(v24) = i)
    {
      v25[0] = (*(a1 + 2) + 8 * i);
      v4 = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v26, v25[0]);
      std::vector<int>::push_back[abi:ne200100](v4 + 3, &v24);
      i = v24 + 1;
    }
  }

  std::vector<int>::resize((a1 + 10), v2);
  v5 = v2;
  if (v2 >= 1)
  {
    v6 = 0;
    v7 = vdupq_n_s64(v2 - 1);
    v8 = xmmword_1B5AE0050;
    v9 = xmmword_1B5AE0060;
    v10 = (*(a1 + 5) + 8);
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
        *(v10 - 1) = v6 + 1;
      }

      if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v8))).i32[1])
      {
        *v10 = v6 + 2;
        v10[1] = v6 + 3;
      }

      v6 += 4;
      v8 = vaddq_s64(v8, v11);
      v9 = vaddq_s64(v9, v11);
      v10 += 4;
    }

    while (((v2 + 3) & 0xFFFFFFFC) != v6);
  }

  v13 = v27;
  if (v27)
  {
    v14 = 0;
    do
    {
      if (v14 <= (v13[4] - v13[3]) >> 2)
      {
        v14 = (v13[4] - v13[3]) >> 2;
      }

      v13 = *v13;
    }

    while (v13);
    v15 = v14 < 0x3E9 || kaldi::g_kaldi_verbose_level <= -2;
    if (!v15)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v25);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Largest equivalence group (using hash) is ", 42);
      v17 = MEMORY[0x1B8C84C30](v16, v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", minimization might be slow.", 29);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v25);
    }
  }

  if (v2 >= 1)
  {
    do
    {
      v24 = *(*(a1 + 2) + 8 * (v5 - 1));
      v25[0] = &v24;
      v18 = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v26, &v24);
      v19 = 0;
      v20 = v18[3];
      v21 = v18[4];
      while (1)
      {
        v22 = *(v20 + 4 * v19);
        if (v5 > v22 || *(*(a1 + 5) + 4 * v22) != v22)
        {
          goto LABEL_29;
        }

        if (fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::Equivalent(a1, v5 - 1, *(v20 + 4 * v19)))
        {
          break;
        }

        v20 = v18[3];
        v21 = v18[4];
LABEL_29:
        if (++v19 >= ((v21 - v20) >> 2))
        {
          goto LABEL_32;
        }
      }

      *(*(a1 + 5) + 4 * (v5 - 1)) = v22;
LABEL_32:
      v15 = v5-- <= 1;
    }

    while (!v15);
  }

  return std::__hash_table<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,true>,std::__unordered_map_equal<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeEquality,kaldi::quasar::AttributeHash,true>,std::allocator<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>>>::~__hash_table(&v26);
}

void fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::ModifyModel(uint64_t *a1)
{
  v2 = (*(**a1 + 160))(*a1);
  v3 = v2;
  v4 = v2;
  if (v2 < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    LODWORD(v6) = 0;
    do
    {
      if (v5 == *(a1[5] + 4 * v5))
      {
        v6 = v6;
      }

      else
      {
        v6 = (v6 + 1);
      }

      ++v5;
    }

    while (v2 != v5);
  }

  if (kaldi::g_kaldi_verbose_level > 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v16, 3);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Removing ", 9);
    v8 = MEMORY[0x1B8C84C00](v7, v6);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " of ", 4);
    v10 = MEMORY[0x1B8C84C00](v9, v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " states.", 8);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v16);
  }

  if (v6)
  {
    v11 = *a1;
    v12 = (*(**a1 + 24))(*a1);
    (*(*v11 + 176))(v11, *(a1[5] + 4 * v12));
    if (v3 >= 1)
    {
      v13 = 0;
      do
      {
        if (v13 == *(a1[5] + 4 * v13))
        {
          (*(**a1 + 296))(*a1, v13, &v15);
          while (!(*(*v15 + 24))(v15))
          {
            v14 = (*(*v15 + 32))(v15);
            v16[0] = *v14;
            v16[1] = *(v14 + 8);
            v18 = 0;
            v19 = 0;
            __p = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(v14 + 16), *(v14 + 24), (*(v14 + 24) - *(v14 + 16)) >> 2);
            v20 = *(v14 + 40);
            if (*(a1[5] + 4 * v20) != v20)
            {
              v20 = *(a1[5] + 4 * v20);
              (*(*v15 + 88))(v15, v16);
            }

            if (__p)
            {
              v18 = __p;
              operator delete(__p);
            }

            (*(*v15 + 40))(v15);
          }

          if (v15)
          {
            (*(*v15 + 8))(v15);
          }
        }

        ++v13;
      }

      while (v13 != v4);
    }

    fst::Connect<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(*a1);
  }
}

uint64_t fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::InitHashValue(uint64_t result, uint64_t *a2)
{
  if (*result == INFINITY && *(result + 4) == INFINITY && *(result + 16) == *(result + 8))
  {
    v6 = 33317;
  }

  else
  {
    v2 = *(result + 8);
    v3 = *(result + 16);
    if (v2 == v3)
    {
      goto LABEL_8;
    }

    v4 = 0;
    do
    {
      v5 = *v2++;
      v4 = 7853 * v4 + v5;
    }

    while (v2 != v3);
    if (!v4)
    {
LABEL_8:
      v4 = 53281;
    }

    v6 = 607 * v4;
  }

  *a2 = v6;
  return result;
}

uint64_t fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::UpdateHashValueForTransition(uint64_t result, int a2, void *a3, void *a4)
{
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5)
  {
    goto LABEL_5;
  }

  v6 = 0;
  do
  {
    v7 = *v4++;
    v6 = 7853 * v6 + v7;
  }

  while (v4 != v5);
  if (!v6)
  {
LABEL_5:
    v6 = 53281;
  }

  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = 51907;
  }

  *a4 += 1447 * (v8 * *a3 * v6 + v8);
  return result;
}

BOOL fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::Equivalent(float *a1, uint64_t a2, unsigned int a3)
{
  (*(**a1 + 32))(&v47);
  v46 = a3;
  (*(**a1 + 32))(&v53);
  v6 = *&v47 == *&v53 && *(&v47 + 1) == *(&v53 + 1);
  if (!v6 && vabds_f32(*&v47 + *(&v47 + 1), *&v53 + *(&v53 + 1)) > a1[2])
  {
    v7 = 0;
    v8 = __p;
    if (!__p)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v8 = __p;
  if (v49 - v48 == v55 - __p)
  {
    v7 = memcmp(v48, __p, v49 - v48) == 0;
    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v7 = 0;
  if (__p)
  {
LABEL_12:
    v55 = v8;
    operator delete(v8);
  }

LABEL_13:
  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  if (!v7)
  {
    return 0;
  }

  v9 = (*(**a1 + 40))(*a1, a2);
  if (v9 != (*(**a1 + 40))(*a1, v46))
  {
    return 0;
  }

  v59 = 0;
  v60 = 0;
  v61 = 0;
  v10 = 1;
  memset(v58, 0, sizeof(v58));
  do
  {
    v11 = v10;
    if (v10)
    {
      v12 = a2;
    }

    else
    {
      v12 = v46;
    }

    if (v10)
    {
      v13 = &v59;
    }

    else
    {
      v13 = v58;
    }

    v14 = (*(**a1 + 40))(*a1, a2);
    std::vector<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::reserve(v13, v14);
    v15 = *a1;
    v57 = 0;
    (*(*v15 + 136))(v15, v12, &v53);
    while (1)
    {
      if (!v53)
      {
        if (v57 >= v55)
        {
          goto LABEL_41;
        }

        goto LABEL_30;
      }

      if ((*(*v53 + 24))(v53))
      {
        break;
      }

      if (v53)
      {
        v16 = (*(*v53 + 32))();
        goto LABEL_31;
      }

LABEL_30:
      v16 = __p + 48 * v57;
LABEL_31:
      v47 = *v16;
      v48 = *(v16 + 1);
      v50 = 0;
      v51 = 0;
      v49 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v49, *(v16 + 2), *(v16 + 3), (*(v16 + 3) - *(v16 + 2)) >> 2);
      v17 = *(v16 + 10);
      v52 = v17;
      if (v17 == v12)
      {
        v52 = -1;
      }

      else
      {
        v52 = *(*(a1 + 5) + 4 * v17);
        std::vector<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::push_back[abi:ne200100](v13, &v47);
      }

      if (v49)
      {
        v50 = v49;
        operator delete(v49);
      }

      if (v53)
      {
        (*(*v53 + 40))(v53);
      }

      else
      {
        ++v57;
      }
    }

    if (v53)
    {
      (*(*v53 + 8))();
      goto LABEL_43;
    }

LABEL_41:
    if (v56)
    {
      --*v56;
    }

LABEL_43:
    v18 = *v13;
    v19 = v58;
    if (v11)
    {
      v19 = &v59;
    }

    v20 = v19[1];
    v21 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v20 - v18) >> 4));
    if (v20 == v18)
    {
      v22 = 0;
    }

    else
    {
      v22 = v21;
    }

    std::__introsort<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,false>(v18, v20, &v53, v22, 1);
    v10 = 0;
  }

  while ((v11 & 1) != 0);
  v23 = v59;
  if (v60 == v59)
  {
    v29 = 1;
  }

  else
  {
    v24 = (v60 - v59) >> 4;
    v25 = 0xAAAAAAAAAAAAAAABLL * v24;
    v26 = v58[0];
    if (0xAAAAAAAAAAAAAAABLL * v24 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = 0xAAAAAAAAAAAAAAABLL * v24;
    }

    if (*(v59 + 40) == *(v58[0] + 40))
    {
      v28 = 0;
      v29 = 0;
      v30 = 1;
      do
      {
        if (*(v23 + v28) != *(v26 + v28))
        {
          break;
        }

        v31 = v23 + v28;
        v32 = v26 + v28;
        v33 = *(v23 + v28 + 8);
        v34 = *(v23 + v28 + 12);
        v35 = *(v26 + v28 + 8);
        v36 = *(v26 + v28 + 12);
        v37 = v33 == v35 && v34 == v36;
        v38 = vabds_f32(v33 + v34, v35 + v36);
        if (!v37 && v38 > 0.00097656)
        {
          break;
        }

        v40 = *(v31 + 16);
        v41 = *(v31 + 24) - v40;
        v42 = *(v32 + 16);
        if (v41 != *(v32 + 24) - v42)
        {
          break;
        }

        if (memcmp(v40, v42, v41))
        {
          break;
        }

        v29 = v30 >= v25;
        if (v27 == v30)
        {
          break;
        }

        v43 = *(v23 + v28 + 88);
        v44 = *(v26 + v28 + 88);
        v28 += 48;
        ++v30;
      }

      while (v43 == v44);
    }

    else
    {
      v29 = 0;
    }
  }

  v47 = v58;
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&v47);
  v47 = &v59;
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&v47);
  return v29;
}

void sub_1B54E92DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::vector<int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void std::__introsort<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,false>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 4);
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
      v23 = a2 - 6;
      v24 = *(a2 - 12);
      if (v24 >= *v9 && (v24 > *v9 || *(a2 - 2) >= *(v9 + 40)))
      {
        return;
      }

LABEL_35:

      std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(v9, v23);
      return;
    }

LABEL_10:
    if (v12 <= 1151)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *>(v9, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *>(v9, a2, a2, a3);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = (v9 + 48 * (v13 >> 1));
    if (v12 < 0x1801)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,0>(v15, v9, (a2 - 6));
      if (a5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,0>(v9, v15, (a2 - 6));
      v16 = 3 * v14;
      v17 = (v9 + 48 * v14 - 48);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,0>((v9 + 48), v17, (a2 - 12));
      v18 = (v9 + 48 + 16 * v16);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,0>((a1 + 96), v18, (a2 - 18));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,0>(v17, v15, v18);
      std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a1, v15);
      if (a5)
      {
        goto LABEL_19;
      }
    }

    v19 = *(a1 - 48);
    if (v19 >= *a1 && (v19 > *a1 || *(a1 - 8) >= *(a1 + 40)))
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &>(a1, a2);
      goto LABEL_24;
    }

LABEL_19:
    v20 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &>(a1, a2);
    if ((v21 & 1) == 0)
    {
      goto LABEL_22;
    }

    v22 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *>(a1, v20);
    v9 = v20 + 48;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *>(v20 + 48, a2))
    {
      a4 = -v11;
      a2 = v20;
      if (v22)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v22)
    {
LABEL_22:
      std::__introsort<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,false>(a1, v20, a3, -v11, a5 & 1);
      v9 = v20 + 48;
LABEL_24:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v13 == 3)
  {

    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,0>(v9, (v9 + 48), (a2 - 6));
    return;
  }

  if (v13 != 4)
  {
    if (v13 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,0>(v9, v9 + 48, v9 + 96, v9 + 144, (a2 - 6));
      return;
    }

    goto LABEL_10;
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,0>(v9, (v9 + 48), v9 + 96);
  v25 = *(a2 - 12);
  v26 = *(v9 + 96);
  if (v25 < v26 || v25 <= v26 && *(a2 - 2) < *(v9 + 136))
  {
    std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>((v9 + 96), a2 - 6);
    v27 = *(v9 + 96);
    v28 = *(v9 + 48);
    if (v27 < v28 || v27 <= v28 && *(v9 + 136) < *(v9 + 88))
    {
      std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>((v9 + 48), (v9 + 96));
      v29 = *(v9 + 48);
      if (v29 < *v9 || v29 <= *v9 && *(v9 + 88) < *(v9 + 40))
      {
        v23 = (v9 + 48);
        goto LABEL_35;
      }
    }
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,0>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1;
  v6 = *a2;
  if (*a2 < *a1 || v6 <= *a1 && *(a2 + 10) < *(a1 + 10))
  {
    if (*a3 >= v6 && (*a3 > v6 || *(a3 + 40) >= *(a2 + 10)))
    {
      std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a1, a2);
      if (*a3 >= *a2 && (*a3 > *a2 || *(a3 + 40) >= *(a2 + 10)))
      {
        return 1;
      }

      a1 = a2;
    }

    v7 = a3;
LABEL_14:
    std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a1, v7);
    return 1;
  }

  if (*a3 < v6 || *a3 <= v6 && *(a3 + 40) < *(a2 + 10))
  {
    std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a2, a3);
    if (*a2 >= *v5 && (*a2 > *v5 || *(a2 + 10) >= *(v5 + 10)))
    {
      return 1;
    }

    a1 = v5;
    v7 = a2;
    goto LABEL_14;
  }

  return 0;
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,0>(a1, a2, a3);
  if (*a4 < *a3 || *a4 <= *a3 && *(a4 + 40) < *(a3 + 40))
  {
    std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a3, a4);
    if (*a3 < *a2 || *a3 <= *a2 && *(a3 + 40) < *(a2 + 40))
    {
      std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a2, a3);
      if (*a2 < *a1 || *a2 <= *a1 && *(a2 + 40) < *(a1 + 40))
      {
        std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a1, a2);
      }
    }
  }

  if (*a5 < *a4 || *a5 <= *a4 && *(a5 + 40) < *(a4 + 40))
  {
    std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a4, a5);
    if (*a4 < *a3 || *a4 <= *a3 && *(a4 + 40) < *(a3 + 40))
    {
      std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a3, a4);
      if (*a3 < *a2 || *a3 <= *a2 && *(a3 + 40) < *(a2 + 40))
      {
        std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a2, a3);
        if (*a2 < *a1 || *a2 <= *a1 && *(a2 + 40) < *(a1 + 40))
        {

          std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a1, a2);
        }
      }
    }
  }
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *>(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v4 = a1 + 6;
    if (a1 + 6 != a2)
    {
      v5 = 0;
      v6 = a1;
      do
      {
        v7 = v6;
        v6 = v4;
        v8 = *(v7 + 12);
        if (v8 < *v7 || v8 <= *v7 && *(v7 + 22) < *(v7 + 10))
        {
          v13 = *v6;
          v14 = v7[7];
          v16 = 0;
          v17 = 0;
          __p = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v7[8], v7[9], (v7[9] - v7[8]) >> 2);
          v18 = *(v7 + 22);
          for (i = v5; ; i -= 48)
          {
            *(a1 + i + 48) = *(a1 + i);
            fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=((a1 + i + 56), a1 + i + 8);
            *(a1 + i + 88) = *(a1 + i + 40);
            if (!i)
            {
              v11 = a1;
              goto LABEL_16;
            }

            v10 = *(a1 + i - 48);
            if (v13 >= v10 && (v13 > v10 || v18 >= *(a1 + i - 8)))
            {
              break;
            }
          }

          v11 = a1 + i;
LABEL_16:
          *v11 = v13;
          v12 = HIDWORD(v14);
          *(a1 + i + 8) = v14;
          *(v11 + 3) = v12;
          if (v11 != &v13)
          {
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v11 + 2, __p, v16, (v16 - __p) >> 2);
          }

          *(v11 + 10) = v18;
          if (__p)
          {
            v16 = __p;
            operator delete(__p);
          }
        }

        v4 = v6 + 6;
        v5 += 48;
      }

      while (v6 + 6 != a2);
    }
  }
}

void sub_1B54E9EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *>(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    v4 = a1 + 6;
    if (a1 + 6 != a2)
    {
      v5 = a1 + 11;
      do
      {
        v6 = v3;
        v3 = v4;
        v7 = *(v6 + 12);
        if (v7 < *v6 || v7 <= *v6 && *(v6 + 22) < *(v6 + 10))
        {
          v10 = *v3;
          v11 = v6[7];
          v13 = 0;
          v14 = 0;
          __p = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v6[8], v6[9], (v6[9] - v6[8]) >> 2);
          v15 = *(v6 + 22);
          for (i = v5; ; i -= 12)
          {
            *(i - 5) = *(i - 11);
            fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(i - 4, (i - 20));
            *i = *(i - 12);
            v9 = *(i - 34);
            if (v10 >= v9 && (v10 > v9 || v15 >= *(i - 24)))
            {
              break;
            }
          }

          *(i - 11) = v10;
          *(i - 10) = v11;
          if (i - 22 != &v10)
          {
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(i - 9, __p, v13, (v13 - __p) >> 2);
          }

          *(i - 12) = v15;
          if (__p)
          {
            v13 = __p;
            operator delete(__p);
          }
        }

        v4 = v3 + 6;
        v5 += 12;
      }

      while (v3 + 6 != a2);
    }
  }
}

void sub_1B54EA064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &>(uint64_t *a1, unint64_t a2)
{
  v17 = *a1;
  v4 = a1 + 1;
  v18 = a1[1];
  v20 = 0;
  v21 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, a1[2], a1[3], (a1[3] - a1[2]) >> 2);
  v5 = *(a1 + 10);
  v22 = v5;
  v6 = *(a2 - 48);
  if (v17 < v6 || v17 <= v6 && v5 < *(a2 - 8))
  {
    i = a1;
    do
    {
      v9 = *(i + 48);
      i += 48;
      v8 = v9;
    }

    while (v17 >= v9 && (v17 > v8 || v5 >= *(i + 40)));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 48; v17 < v6 || v17 <= v6 && v5 < *(a2 + 40); a2 -= 48)
    {
      v10 = *(a2 - 48);
      v6 = v10;
    }
  }

  while (i < a2)
  {
    std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(i, a2);
    v12 = *(i + 48);
    i += 48;
    for (j = v12; v17 >= j && (v17 > j || v22 >= *(i + 40)); j = v13)
    {
      v13 = *(i + 48);
      i += 48;
    }

    do
    {
      do
      {
        v14 = *(a2 - 48);
        a2 -= 48;
        v15 = v17 <= v14;
      }

      while (v17 < v14);
    }

    while (v15 && v22 < *(a2 + 40));
  }

  if ((i - 48) != a1)
  {
    *a1 = *(i - 48);
    fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v4, i - 40);
    *(a1 + 10) = *(i - 8);
  }

  *(i - 48) = v17;
  *(i - 40) = v18;
  if ((i - 40) != &v18)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((i - 32), __p, v20, (v20 - __p) >> 2);
  }

  *(i - 8) = v22;
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  return i;
}

void sub_1B54EA274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &>(uint64_t *a1, unint64_t a2)
{
  v21 = *a1;
  v4 = a1 + 1;
  v22 = a1[1];
  v24 = 0;
  v25 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, a1[2], a1[3], (a1[3] - a1[2]) >> 2);
  v5 = 0;
  v6 = *(a1 + 10);
  v26 = v6;
  while (1)
  {
    v7 = a1[v5 + 6];
    if (v7 >= v21 && (v7 > v21 || SLODWORD(a1[v5 + 11]) >= v6))
    {
      break;
    }

    v5 += 6;
  }

  v8 = &a1[v5 + 6];
  if (v5 * 8)
  {
    do
    {
      v10 = *(a2 - 48);
      a2 -= 48;
      v9 = v10;
    }

    while (v10 >= v21 && (v9 > v21 || *(a2 + 40) >= v6));
  }

  else
  {
LABEL_19:
    if (v8 < a2)
    {
      do
      {
        v12 = *(a2 - 48);
        a2 -= 48;
        v11 = v12;
        if (v12 < v21)
        {
          break;
        }

        if (v11 > v21)
        {
          goto LABEL_19;
        }
      }

      while (*(a2 + 40) >= v6 && v8 < a2);
    }
  }

  v14 = v8;
  if (v8 < a2)
  {
    v15 = a2;
    do
    {
      std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(v14, v15);
      do
      {
        do
        {
          v16 = *(v14 + 48);
          v14 += 48;
          v17 = v16 <= v21;
        }

        while (v16 < v21);
      }

      while (v17 && *(v14 + 40) < v26);
      do
      {
        v19 = *(v15 - 48);
        v15 -= 48;
        v18 = v19;
      }

      while (v19 >= v21 && (v18 > v21 || *(v15 + 40) >= v26));
    }

    while (v14 < v15);
  }

  if ((v14 - 48) != a1)
  {
    *a1 = *(v14 - 48);
    fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v4, v14 - 40);
    *(a1 + 10) = *(v14 - 8);
  }

  *(v14 - 48) = v21;
  *(v14 - 40) = v22;
  if ((v14 - 40) != &v22)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v14 - 32), __p, v24, (v24 - __p) >> 2);
  }

  *(v14 - 8) = v26;
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  return v14 - 48;
}

void sub_1B54EA490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *>(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = (a2 - 48);
        v6 = *(a2 - 48);
        if (v6 >= *a1 && (v6 > *a1 || *(a2 - 8) >= *(a1 + 40)))
        {
          return 1;
        }

        goto LABEL_38;
      }

      goto LABEL_13;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,0>(a1, (a1 + 48), a2 - 48);
      return 1;
    case 4:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,0>(a1, (a1 + 48), a1 + 96);
      v15 = *(a2 - 48);
      v16 = *(a1 + 96);
      if (v15 >= v16 && (v15 > v16 || *(a2 - 8) >= *(a1 + 136)))
      {
        return 1;
      }

      std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>((a1 + 96), (a2 - 48));
      v17 = *(a1 + 96);
      v18 = *(a1 + 48);
      if (v17 >= v18 && (v17 > v18 || *(a1 + 136) >= *(a1 + 88)))
      {
        return 1;
      }

      std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>((a1 + 48), (a1 + 96));
      v19 = *(a1 + 48);
      if (v19 >= *a1 && (v19 > *a1 || *(a1 + 88) >= *(a1 + 40)))
      {
        return 1;
      }

      v5 = (a1 + 48);
LABEL_38:
      std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a1, v5);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,0>(a1, a1 + 48, a1 + 96, a1 + 144, a2 - 48);
      return 1;
  }

LABEL_13:
  v7 = (a1 + 96);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,0>(a1, (a1 + 48), a1 + 96);
  v8 = a1 + 144;
  if (a1 + 144 == a2)
  {
    return 1;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    if (*v8 < *v7 || *v8 <= *v7 && *(v8 + 40) < v7[10])
    {
      v21 = *v8;
      v22 = *(v8 + 8);
      v24 = 0;
      v25 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(v8 + 16), *(v8 + 24), (*(v8 + 24) - *(v8 + 16)) >> 2);
      v26 = *(v8 + 40);
      for (i = v9; ; i -= 48)
      {
        *(a1 + i + 144) = *(a1 + i + 96);
        fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=((a1 + i + 152), a1 + i + 104);
        *(a1 + i + 184) = *(a1 + i + 136);
        if (i == -96)
        {
          v13 = a1;
          goto LABEL_27;
        }

        v12 = *(a1 + i + 48);
        if (v21 >= v12 && (v21 > v12 || v26 >= *(a1 + i + 88)))
        {
          break;
        }
      }

      v13 = a1 + i + 96;
LABEL_27:
      *v13 = v21;
      v14 = HIDWORD(v22);
      *(a1 + i + 104) = v22;
      *(v13 + 12) = v14;
      if (v13 != &v21)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v13 + 16), __p, v24, (v24 - __p) >> 2);
      }

      *(v13 + 40) = v26;
      if (__p)
      {
        v24 = __p;
        operator delete(__p);
      }

      if (++v10 == 8)
      {
        return v8 + 48 == a2;
      }
    }

    v7 = v8;
    v9 += 48;
    v8 += 48;
    if (v8 == a2)
    {
      return 1;
    }
  }
}

void sub_1B54EA7CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
    if (a2 - a1 >= 49)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 48 * v10);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *>(a1, a4, v9, v12);
        v12 -= 6;
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if (*v13 < *a1 || *v13 <= *a1 && *(v13 + 40) < *(a1 + 40))
        {
          std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(v13, a1);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *>(a1, a4, v9, a1);
        }

        v13 += 48;
      }

      while (v13 != a3);
    }

    if (v8 >= 49)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *>(a1, v6, a4, v14);
        v6 -= 48;
      }

      while (v14-- > 2);
    }

    return v13;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 4)))
    {
      v9 = (0x5555555555555556 * ((a4 - a1) >> 4)) | 1;
      v10 = (a1 + 48 * v9);
      if (0x5555555555555556 * ((a4 - a1) >> 4) + 2 < a3)
      {
        v11 = *(v10 + 12);
        if (*v10 < v11 || *v10 <= v11 && *(v10 + 10) < *(v10 + 22))
        {
          v10 += 6;
          v9 = 0x5555555555555556 * ((a4 - a1) >> 4) + 2;
        }
      }

      if (*v10 >= *a4 && (*v10 > *a4 || *(v10 + 10) >= *(a4 + 10)))
      {
        v16 = *a4;
        v17 = a4[1];
        v19 = 0;
        v20 = 0;
        __p = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, a4[2], a4[3], (a4[3] - a4[2]) >> 2);
        v21 = *(v5 + 10);
        while (1)
        {
          v12 = v10;
          *v5 = *v10;
          fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v5 + 1, (v10 + 1));
          *(v5 + 10) = *(v10 + 10);
          if (v7 < v9)
          {
            break;
          }

          v13 = 2 * v9;
          v9 = (2 * v9) | 1;
          v10 = (a1 + 48 * v9);
          v14 = v13 + 2;
          if (v14 < a3)
          {
            v15 = *(v10 + 12);
            if (*v10 < v15 || *v10 <= v15 && *(v10 + 10) < *(v10 + 22))
            {
              v10 += 6;
              v9 = v14;
            }
          }

          if (*v10 < v16)
          {
            break;
          }

          v5 = v12;
          if (*v10 <= v16)
          {
            v5 = v12;
            if (*(v10 + 10) < v21)
            {
              break;
            }
          }
        }

        *v12 = v16;
        v12[1] = v17;
        if (v12 != &v16)
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v12 + 2, __p, v19, (v19 - __p) >> 2);
        }

        *(v12 + 10) = v21;
        if (__p)
        {
          v19 = __p;
          operator delete(__p);
        }
      }
    }
  }
}

void sub_1B54EAB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v10 = *a1;
    v11 = *(a1 + 8);
    v13 = 0;
    v14 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a1 + 16), *(a1 + 24), (*(a1 + 24) - *(a1 + 16)) >> 2);
    v15 = *(a1 + 40);
    v8 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *>(a1, a3, a4);
    v9 = v8;
    if (v8 == (a2 - 48))
    {
      *v8 = v10;
      v8[1] = v11;
      if (v8 != &v10)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v8 + 2, __p, v13, (v13 - __p) >> 2);
      }

      *(v9 + 10) = v15;
    }

    else
    {
      *v8 = *(a2 - 48);
      fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v8 + 1, a2 - 40);
      *(v9 + 10) = *(a2 - 8);
      *(a2 - 48) = v10;
      *(a2 - 40) = v11;
      if ((a2 - 40) != &v11)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a2 - 32), __p, v13, (v13 - __p) >> 2);
      }

      *(a2 - 8) = v15;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *>(a1, (v9 + 6), a3, 0xAAAAAAAAAAAAAAABLL * ((v9 - a1 + 48) >> 4));
    }

    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }
  }
}

void sub_1B54EACD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *>(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1;
    v8 = &a1[12 * v5];
    a1 = v8 + 12;
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v10 < a3)
    {
      v11 = v8[24];
      v12 = v8[12];
      if (v12 < v11 || v12 <= v11 && v8[22] < v8[34])
      {
        a1 = v8 + 24;
        v5 = v10;
      }
    }

    *v7 = *a1;
    fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v7 + 1, (a1 + 2));
    v7[10] = a1[10];
  }

  while (v5 <= v6);
  return a1;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::EquivalenceSorter &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = a1 + 48 * (v4 >> 1);
    v10 = a2 - 48;
    v9 = *(a2 - 48);
    if (*v8 < v9 || *v8 <= v9 && *(v8 + 40) < *(a2 - 8))
    {
      v12 = *(a2 - 48);
      v13 = *(a2 - 40);
      v15 = 0;
      v16 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a2 - 32), *(a2 - 24), (*(a2 - 24) - *(a2 - 32)) >> 2);
      v17 = *(a2 - 8);
      while (1)
      {
        v11 = v8;
        *v10 = *v8;
        fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=((v10 + 8), v8 + 8);
        *(v10 + 40) = *(v8 + 40);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = a1 + 48 * v7;
        v10 = v11;
        if (*v8 >= v12)
        {
          if (*v8 > v12)
          {
            break;
          }

          v10 = v11;
          if (*(v8 + 40) >= v17)
          {
            break;
          }
        }
      }

      *v11 = v12;
      *(v11 + 8) = v13;
      if (v11 != &v12)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v11 + 16), __p, v15, (v15 - __p) >> 2);
      }

      *(v11 + 40) = v17;
      if (__p)
      {
        v15 = __p;
        operator delete(__p);
      }
    }
  }
}

void sub_1B54EAF18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::corrective_reranking::CorrectiveReranker::CorrectiveReranker(std::string *this, const quasar::corrective_reranking::CorrectiveRerankerConfig *a2, const quasar::PTree *a3, const quasar::corrective_reranking::Models *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v8;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[1], *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  v9 = *(a2 + 3);
  v10 = *(a2 + 60);
  this[3].__r_.__value_.__l.__size_ = 0;
  *(&this[2].__r_.__value_.__r.__words[1] + 4) = v10;
  *&this[2].__r_.__value_.__l.__data_ = v9;
  this[3].__r_.__value_.__r.__words[2] = 0;
  this[4].__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[3].__r_.__value_.__l.__size_, *(a2 + 10), *(a2 + 11), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 11) - *(a2 + 10)) >> 3));
  this[4].__r_.__value_.__l.__size_ = a4;
  std::string::basic_string[abi:ne200100]<0>(v14, "deleteTargetless");
  std::string::basic_string[abi:ne200100]<0>(v15, "send");
  std::unordered_set<std::string>::unordered_set(&this[4].__r_.__value_.__r.__words[2], v14, 2);
  v11 = 0;
  while (1)
  {
    if (v15[v11 * 8 + 23] < 0)
    {
      operator delete(v14[v11 + 3]);
    }

    v11 -= 3;
    if (v11 == -6)
    {
      std::string::basic_string[abi:ne200100]<0>(v14, "delete");
      std::string::basic_string[abi:ne200100]<0>(v15, "insertbefore");
      std::string::basic_string[abi:ne200100]<0>(v16, "insertafter");
      std::string::basic_string[abi:ne200100]<0>(v17, "replace");
      std::unordered_set<std::string>::unordered_set(&this[6].__r_.__value_.__l.__size_, v14, 4);
      v12 = 0;
      while (1)
      {
        if (v17[v12 + 23] < 0)
        {
          operator delete(*&v17[v12]);
        }

        v12 -= 24;
        if (v12 == -96)
        {
          std::string::basic_string[abi:ne200100]<0>(v14, ".");
          std::string::basic_string[abi:ne200100]<0>(v15, "!");
          std::string::basic_string[abi:ne200100]<0>(v16, "?");
          std::string::basic_string[abi:ne200100]<0>(v17, ",");
          std::unordered_set<std::string>::unordered_set(&this[8], v14, 4);
          v13 = 0;
          while (1)
          {
            if (v17[v13 + 23] < 0)
            {
              operator delete(*&v17[v13]);
            }

            v13 -= 24;
            if (v13 == -96)
            {
              quasar::corrective_reranking::InitFeaturizers(a2 + 3, a3, &this[9].__r_.__value_.__r.__words[2]);
              kaldi::quasar::LoadClassifier(a2);
            }
          }
        }
      }
    }
  }
}

void sub_1B54EB1E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::vector<std::unique_ptr<quasar::corrective_reranking::Featurizer>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((v15 + 24));
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((v15 + 19));
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((v15 + 14));
  quasar::corrective_reranking::CorrectiveRerankerConfig::~CorrectiveRerankerConfig(v15);
  _Unwind_Resume(a1);
}

uint64_t quasar::corrective_reranking::CorrectiveReranker::performCorrectiveReranking@<X0>(quasar::corrective_reranking *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v7 = std::vector<quasar::corrective_reranking::Parse>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::Parse*,quasar::corrective_reranking::Parse*>(a4, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 7));
  if (*(a3 + 145) == 1 && quasar::gLogLevel >= 5)
  {
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
    v61 = 0u;
    v62 = 0u;
    *__p = 0u;
    v60 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Adjacent edits enabled: ", 24);
    isAdjacentEditsEnabled = quasar::corrective_reranking::isAdjacentEditsEnabled(v9);
    MEMORY[0x1B8C84BD0](v9, isAdjacentEditsEnabled);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
  }

  v53 = *(a3 + 136);
  v11 = quasar::corrective_reranking::isAdjacentEditsEnabled(v7);
  if (v11)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = 1;
  }

  v52 = v12;
  if (*(a3 + 124))
  {
    quasar::corrective_reranking::CorrectiveReranker::correctTarget(a1, a4, __p);
    std::vector<quasar::corrective_reranking::Parse>::__vdeallocate(a4);
    *a4 = *__p;
    *(a4 + 16) = v60;
    __p[1] = 0;
    *&v60 = 0;
    __p[0] = 0;
    *&v77 = __p;
    std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&v77);
    if (*(a3 + 145) == 1 && quasar::gLogLevel >= 5)
    {
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
      v61 = 0u;
      v62 = 0u;
      *__p = 0u;
      v60 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[Target Correction]\n", 20);
      *&v77 = a4;
      BYTE8(v77) = 0;
      v78 = a3;
      quasar::corrective_reranking::operator<<(v13, &v77);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }
  }

  if (*(a3 + 125) == 1)
  {
    quasar::corrective_reranking::CorrectiveReranker::correctPayload(a1, a4, 0, __p);
    std::vector<quasar::corrective_reranking::Parse>::__vdeallocate(a4);
    *a4 = *__p;
    *(a4 + 16) = v60;
    __p[1] = 0;
    *&v60 = 0;
    __p[0] = 0;
    *&v77 = __p;
    std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&v77);
    if (*(a3 + 145) == 1 && quasar::gLogLevel >= 5)
    {
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
      v61 = 0u;
      v62 = 0u;
      *__p = 0u;
      v60 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[Payload Correction]\n", 21);
      *&v77 = a4;
      BYTE8(v77) = 0;
      v78 = a3;
      quasar::corrective_reranking::operator<<(v14, &v77);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }
  }

  if (*(a3 + 127) == 1)
  {
    quasar::corrective_reranking::CorrectiveReranker::cleanParses(a1, a4, a3, __p);
    std::vector<quasar::corrective_reranking::Parse>::__vdeallocate(a4);
    *a4 = *__p;
    *(a4 + 16) = v60;
    __p[1] = 0;
    *&v60 = 0;
    __p[0] = 0;
    *&v77 = __p;
    std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&v77);
    if (*(a3 + 145) == 1 && quasar::gLogLevel >= 5)
    {
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
      v61 = 0u;
      v62 = 0u;
      *__p = 0u;
      v60 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[Parse Cleaning]\n", 17);
      *&v77 = a4;
      BYTE8(v77) = 0;
      v78 = a3;
      quasar::corrective_reranking::operator<<(v15, &v77);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }
  }

  v17 = *a4;
  v16 = *(a4 + 8);
  if (*a4 == v16)
  {
LABEL_37:
    v18 = v17;
    goto LABEL_38;
  }

  v18 = *(a4 + 8);
  while (1)
  {
    quasar::corrective_reranking::Parse::getIntent(v17, __p);
    v19 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1 + 14, __p);
    if (SBYTE7(v60) < 0)
    {
      operator delete(__p[0]);
    }

    if (v19)
    {
      break;
    }

    v17 = (v17 + 384);
    if (v17 == v16)
    {
      goto LABEL_38;
    }
  }

  if (v17 != v16)
  {
    v20 = (v17 + 384);
    if ((v17 + 384) != v16)
    {
      v18 = v17;
      while (1)
      {
        quasar::corrective_reranking::Parse::getIntent(v20, __p);
        v21 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1 + 14, __p);
        v22 = v21;
        if (SBYTE7(v60) < 0)
        {
          operator delete(__p[0]);
          if (!v22)
          {
LABEL_36:
            quasar::corrective_reranking::Parse::operator=(v18, v20);
            v18 += 384;
          }
        }

        else if (!v21)
        {
          goto LABEL_36;
        }

        v20 = (v20 + 384);
        if (v20 == v16)
        {
          goto LABEL_38;
        }
      }
    }

    goto LABEL_37;
  }

LABEL_38:
  std::vector<quasar::corrective_reranking::Parse>::erase(a4, v18, *(a4 + 8));
  v23 = *(a3 + 132);
  if (v23 >= 1)
  {
    v77 = 0uLL;
    v78 = 0;
    v24 = *a4;
    v25 = *(a4 + 8);
    if (0xAAAAAAAAAAAAAAABLL * ((v25 - *a4) >> 7) >= v23)
    {
      v26 = v23;
    }

    else
    {
      v26 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *a4) >> 7);
    }

    std::random_device::random_device[abi:ne200100](v56);
    v27 = arc4random();
    LODWORD(__p[0]) = v27;
    for (i = 1; i != 624; ++i)
    {
      v27 = i + 1812433253 * (v27 ^ (v27 >> 30));
      *(__p + i) = v27;
    }

    v76 = 0;
    std::__sample[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<quasar::corrective_reranking::Parse *>,std::__wrap_iter<quasar::corrective_reranking::Parse *>,std::back_insert_iterator<std::vector<quasar::corrective_reranking::Parse>>,unsigned long,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(v24, v25, &v77, v26, __p);
    std::random_device::~random_device(v56);
    std::vector<quasar::corrective_reranking::Parse>::__vdeallocate(a4);
    *a4 = v77;
    *(a4 + 16) = v78;
    v78 = 0;
    v77 = 0uLL;
    if (*(a3 + 145) == 1 && quasar::gLogLevel >= 5)
    {
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
      v61 = 0u;
      v62 = 0u;
      *__p = 0u;
      v60 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[Limit Number of Parses to ", 27);
      v30 = MEMORY[0x1B8C84C00](v29, *(a3 + 132));
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "]\n", 2);
      *&v56[0].__padding_ = a4;
      v57 = 0;
      v58 = a3;
      quasar::corrective_reranking::operator<<(v31, v56);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }

    __p[0] = &v77;
    std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  v33 = *a4;
  v32 = *(a4 + 8);
  while (v33 != v32)
  {
    quasar::corrective_reranking::Parse::updateAdjustedSlots(v33, a3);
    v33 = (v33 + 384);
  }

  if (*(a3 + 145) == 1 && quasar::gLogLevel > 4)
  {
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
    v61 = 0u;
    v62 = 0u;
    *__p = 0u;
    v60 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[Update Adjusted Slots]\n", 24);
    *&v77 = a4;
    BYTE8(v77) = 0;
    v78 = a3;
    quasar::corrective_reranking::operator<<(v35, &v77);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
  }

  if (*(a3 + 126) == 1)
  {
    quasar::corrective_reranking::CorrectiveReranker::rankParses(a1, a4, a3, a3 + 72, a3 + 96, __p);
    std::vector<quasar::corrective_reranking::Parse>::__vdeallocate(a4);
    *a4 = *__p;
    *(a4 + 16) = v60;
    __p[1] = 0;
    *&v60 = 0;
    __p[0] = 0;
    *&v77 = __p;
    std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&v77);
    if (*(a3 + 145) == 1 && quasar::gLogLevel >= 5)
    {
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
      v61 = 0u;
      v62 = 0u;
      *__p = 0u;
      v60 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[Re-Ranking]\n", 13);
      *&v77 = a4;
      BYTE8(v77) = 1;
      v78 = a3;
      quasar::corrective_reranking::operator<<(v36, &v77);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }
  }

  if (*(a3 + 128) == 1)
  {
    memset(v55, 0, sizeof(v55));
    std::vector<quasar::corrective_reranking::Parse>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::Parse*,quasar::corrective_reranking::Parse*>(v55, *a4, *(a4 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 7));
    quasar::corrective_reranking::CorrectiveReranker::filterParsesForUi(a1, v55, a3, 1, __p);
    std::vector<quasar::corrective_reranking::Parse>::__vdeallocate(a4);
    *a4 = *__p;
    *(a4 + 16) = v60;
    __p[1] = 0;
    *&v60 = 0;
    __p[0] = 0;
    *&v77 = __p;
    std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&v77);
    *&v77 = v55;
    std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&v77);
    if (*(a3 + 145) == 1 && quasar::gLogLevel >= 5)
    {
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
      v61 = 0u;
      v62 = 0u;
      *__p = 0u;
      v60 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[Filter Parses for UI - Initial]\n", 33);
      *&v77 = a4;
      BYTE8(v77) = 0;
      v78 = a3;
      quasar::corrective_reranking::operator<<(v37, &v77);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }
  }

  v38 = v11 ^ 1;
  if (*(a3 + 129) == 1)
  {
    quasar::corrective_reranking::CorrectiveReranker::correctFloatingPunctuation(a4, a3, v38, __p);
    std::vector<quasar::corrective_reranking::Parse>::__vdeallocate(a4);
    *a4 = *__p;
    *(a4 + 16) = v60;
    __p[1] = 0;
    *&v60 = 0;
    __p[0] = 0;
    *&v77 = __p;
    std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&v77);
    if (*(a3 + 145) == 1 && quasar::gLogLevel >= 5)
    {
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
      v61 = 0u;
      v62 = 0u;
      *__p = 0u;
      v60 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[Floating Punctuation Removal]\n", 31);
      *&v77 = a4;
      BYTE8(v77) = 0;
      v78 = a3;
      quasar::corrective_reranking::operator<<(v39, &v77);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }

    v41 = *a4;
    v40 = *(a4 + 8);
    while (v41 != v40)
    {
      quasar::corrective_reranking::Parse::updateAdjustedSlots(v41, a3);
      v41 = (v41 + 384);
    }

    if (*(a3 + 145) == 1 && quasar::gLogLevel > 4)
    {
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
      v61 = 0u;
      v62 = 0u;
      *__p = 0u;
      v60 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[Update Adjusted Slots]\n", 24);
      *&v77 = a4;
      BYTE8(v77) = 0;
      v78 = a3;
      quasar::corrective_reranking::operator<<(v43, &v77);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }
  }

  quasar::corrective_reranking::CorrectiveReranker::correctPayloadCapitalization(a1, a4, a3, v52, v38 & v53, *(a3 + 145), __p);
  std::vector<quasar::corrective_reranking::Parse>::__vdeallocate(a4);
  *a4 = *__p;
  *(a4 + 16) = v60;
  __p[1] = 0;
  *&v60 = 0;
  __p[0] = 0;
  *&v77 = __p;
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&v77);
  if (*(a3 + 145) == 1 && quasar::gLogLevel >= 5)
  {
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
    v61 = 0u;
    v62 = 0u;
    *__p = 0u;
    v60 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[Payload Capitalization Correction]\n", 36);
    *&v77 = a4;
    BYTE8(v77) = 0;
    v78 = a3;
    quasar::corrective_reranking::operator<<(v45, &v77);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
  }

  v46 = *a4;
  v47 = *(a4 + 8);
  while (v46 != v47)
  {
    quasar::corrective_reranking::Parse::updateAdjustedSlots(v46, a3);
    v46 = (v46 + 384);
  }

  if (*(a3 + 145) == 1 && quasar::gLogLevel > 4)
  {
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
    v61 = 0u;
    v62 = 0u;
    *__p = 0u;
    v60 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[Update Adjusted Slots]\n", 24);
    *&v77 = a4;
    BYTE8(v77) = 0;
    v78 = a3;
    quasar::corrective_reranking::operator<<(v49, &v77);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
  }

  if (*(a3 + 128) == 1)
  {
    memset(v54, 0, sizeof(v54));
    std::vector<quasar::corrective_reranking::Parse>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::Parse*,quasar::corrective_reranking::Parse*>(v54, *a4, *(a4 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 7));
    quasar::corrective_reranking::CorrectiveReranker::filterParsesForUi(a1, v54, a3, 0, __p);
    std::vector<quasar::corrective_reranking::Parse>::__vdeallocate(a4);
    *a4 = *__p;
    *(a4 + 16) = v60;
    __p[1] = 0;
    *&v60 = 0;
    __p[0] = 0;
    *&v77 = __p;
    std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&v77);
    *&v77 = v54;
    std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&v77);
    if (*(a3 + 145) == 1 && quasar::gLogLevel >= 5)
    {
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
      v61 = 0u;
      v62 = 0u;
      *__p = 0u;
      v60 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[Filter Parses for UI - Final]\n", 31);
      *&v77 = a4;
      BYTE8(v77) = 0;
      v78 = a3;
      quasar::corrective_reranking::operator<<(v50, &v77);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }
  }

  result = quasar::corrective_reranking::CorrectiveReranker::checkParses(v44, a4, a3);
  if ((result & 1) == 0)
  {
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
    v61 = 0u;
    v62 = 0u;
    *__p = 0u;
    v60 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "check_parses: Invalid parse found! This is a must-fix bug.", 58);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  return result;
}

void sub_1B54EC004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::random_device a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a19);
  a19 = v20 - 128;
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&a19);
  *(v20 - 128) = v19;
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100]((v20 - 128));
  _Unwind_Resume(a1);
}

void sub_1B54EC0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  quasar::QuasarDebugMessage::~QuasarDebugMessage(va);
  *(v12 - 128) = v11;
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100]((v12 - 128));
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::CorrectiveReranker::correctTarget(uint64_t a1@<X0>, quasar::corrective_reranking::Parse **a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    while (1)
    {
      quasar::corrective_reranking::Parse::getIntent(v5, __p);
      if ((SBYTE7(v22) & 0x80000000) == 0)
      {
        break;
      }

      if (__p[1] == 7)
      {
        v10 = *__p[0] != 1952672100 || *(__p[0] + 3) != 1702125940;
        operator delete(__p[0]);
        if (v10)
        {
          goto LABEL_23;
        }

LABEL_18:
        v11 = *(a3 + 8);
        if (v11 >= *(a3 + 16))
        {
          v12 = std::vector<quasar::corrective_reranking::Parse>::__emplace_back_slow_path<quasar::corrective_reranking::Parse const&>(a3, v5);
        }

        else
        {
          quasar::corrective_reranking::Parse::Parse(*(a3 + 8), v5);
          v12 = v11 + 384;
        }

        *(a3 + 8) = v12;
        goto LABEL_23;
      }

      operator delete(__p[0]);
LABEL_23:
      v5 = (v5 + 384);
      if (v5 == v6)
      {
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_25;
      }
    }

    if (SBYTE7(v22) != 7)
    {
      goto LABEL_23;
    }

    if (LODWORD(__p[0]) != 1952672100 || *(__p + 3) != 1702125940)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

LABEL_25:
  while (v5 != v6)
  {
    v13 = *(a1 + 68);
    if (v13 >= 1 && 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 7) > v13)
    {
      break;
    }

    quasar::corrective_reranking::Parse::getIntent(v5, __p);
    if (SBYTE7(v22) < 0)
    {
      if (__p[1] == 7)
      {
        v16 = *__p[0] != 1952672100 || *(__p[0] + 3) != 1702125940;
        operator delete(__p[0]);
        if (!v16)
        {
          goto LABEL_55;
        }
      }

      else
      {
        operator delete(__p[0]);
      }
    }

    else if (SBYTE7(v22) == 7 && LODWORD(__p[0]) == 1952672100 && *(__p + 3) == 1702125940)
    {
      goto LABEL_55;
    }

    if (quasar::corrective_reranking::Parse::isTargetExpectingCommand(v5))
    {
      if (*(v5 + 376) != 1)
      {
        quasar::corrective_reranking::Parse::getTarget(v5, 0, v39);
        quasar::corrective_reranking::CorrectiveReranker::findTargetCandidates(&v38);
      }

      v17 = *(a3 + 8);
      if (v17 >= *(a3 + 16))
      {
LABEL_53:
        v18 = std::vector<quasar::corrective_reranking::Parse>::__emplace_back_slow_path<quasar::corrective_reranking::Parse const&>(a3, v5);
        goto LABEL_54;
      }
    }

    else
    {
      v17 = *(a3 + 8);
      if (v17 >= *(a3 + 16))
      {
        goto LABEL_53;
      }
    }

    quasar::corrective_reranking::Parse::Parse(*(a3 + 8), v5);
    v18 = v17 + 384;
LABEL_54:
    *(a3 + 8) = v18;
LABEL_55:
    v5 = (v5 + 384);
  }

  v19 = *(a1 + 68);
  if (v19 >= 1 && 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 7) > v19)
  {
    if (quasar::gLogLevel >= 5)
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
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Dropping parses since parse count is too high: ", 47);
      MEMORY[0x1B8C84C30](v20, 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 7));
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
      LODWORD(v19) = *(a1 + 68);
    }

    std::vector<quasar::corrective_reranking::Parse>::resize(a3, v19);
  }
}

void quasar::corrective_reranking::CorrectiveReranker::correctPayload(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 56);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  v6 = *a2;
  if (v5 <= 0)
  {
    v15 = a2[1];
    v16 = *a2;

    std::vector<quasar::corrective_reranking::Parse>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::Parse*,quasar::corrective_reranking::Parse*>(a4, v16, v15, 0xAAAAAAAAAAAAAAABLL * ((v15 - v6) >> 7));
  }

  else
  {
    for (i = a2[1]; v6 != i; v6 = (v6 + 384))
    {
      if (!quasar::corrective_reranking::Parse::isPayloadExpectingCommand(v6))
      {
        v10 = *(a4 + 8);
        if (v10 >= *(a4 + 16))
        {
          v11 = std::vector<quasar::corrective_reranking::Parse>::__emplace_back_slow_path<quasar::corrective_reranking::Parse const&>(a4, v6);
        }

        else
        {
          quasar::corrective_reranking::Parse::Parse(*(a4 + 8), v6);
          v11 = v10 + 384;
        }

        *(a4 + 8) = v11;
        continue;
      }

      quasar::corrective_reranking::Parse::getPayload(v6, 0, &v18);
      size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v18.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        if (*(v6 + 377) != 1)
        {
          if ((a3 & 1) == 0)
          {
            v13 = *(a4 + 8);
            if (v13 >= *(a4 + 16))
            {
              v14 = std::vector<quasar::corrective_reranking::Parse>::__emplace_back_slow_path<quasar::corrective_reranking::Parse const&>(a4, v6);
            }

            else
            {
              quasar::corrective_reranking::Parse::Parse(*(a4 + 8), v6);
              v14 = v13 + 384;
            }

            *(a4 + 8) = v14;
          }

          quasar::utf::toString();
        }

        v9 = *(a4 + 8);
        if (v9 < *(a4 + 16))
        {
LABEL_15:
          quasar::corrective_reranking::Parse::Parse(*(a4 + 8), v6);
          v12 = v9 + 384;
          goto LABEL_20;
        }
      }

      else
      {
        v9 = *(a4 + 8);
        if (v9 < *(a4 + 16))
        {
          goto LABEL_15;
        }
      }

      v12 = std::vector<quasar::corrective_reranking::Parse>::__emplace_back_slow_path<quasar::corrective_reranking::Parse const&>(a4, v6);
LABEL_20:
      *(a4 + 8) = v12;
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_1B54ECF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p)
{
  v10[1] = v11;
  if (*(v12 - 113) < 0)
  {
    operator delete(*(v12 - 136));
  }

  __p = v10;
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::CorrectiveReranker::cleanParses(uint64_t a1@<X0>, quasar::corrective_reranking::Parse **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memset(v24, 0, sizeof(v24));
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    v19 = *a2;
  }

  else
  {
    v20 = a1;
    do
    {
      LOBYTE(__p.__r_.__value_.__l.__data_) = 0;
      v23 = 0;
      if (*(v5 + 112) == 1)
      {
        quasar::corrective_reranking::TargetRange::getTargetFromText(v5 + 88, a3, &v21);
        if (v23 == 1)
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v21;
        }

        else
        {
          __p = v21;
          v23 = 1;
        }

        if ((v23 & 1) != 0 && quasar::corrective_reranking::Parse::isPayloadExpectingCommand(v5))
        {
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

          quasar::utf32::convertToLowerCaseOrThrow(p_p, size);
        }
      }

      if (!quasar::corrective_reranking::Parse::isIncomplete(v5))
      {
        if (v23 == 1)
        {
          quasar::corrective_reranking::Parse::getIntent(v5, &v21);
          if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
          {
            if (v21.__r_.__value_.__l.__size_ == 9 && *v21.__r_.__value_.__l.__data_ == 0x7361637265776F6CLL && *(v21.__r_.__value_.__r.__words[0] + 8) == 101)
            {
LABEL_34:
              quasar::corrective_reranking::classifyCasing(&__p);
            }

            operator delete(v21.__r_.__value_.__l.__data_);
          }

          else if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) == 9 && v21.__r_.__value_.__r.__words[0] == 0x7361637265776F6CLL && LOBYTE(v21.__r_.__value_.__r.__words[1]) == 101)
          {
            goto LABEL_34;
          }

          quasar::corrective_reranking::Parse::getIntent(v5, &v21);
          if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
          {
            if (v21.__r_.__value_.__l.__size_ == 10 && *v21.__r_.__value_.__l.__data_ == 0x696C617469706163 && *(v21.__r_.__value_.__r.__words[0] + 8) == 25978)
            {
LABEL_49:
              quasar::corrective_reranking::classifyCasing(&__p);
            }

            operator delete(v21.__r_.__value_.__l.__data_);
          }

          else if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) == 10 && v21.__r_.__value_.__r.__words[0] == 0x696C617469706163 && LOWORD(v21.__r_.__value_.__r.__words[1]) == 25978)
          {
            goto LABEL_49;
          }

          quasar::corrective_reranking::Parse::getIntent(v5, &v21);
          if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
          {
            if (v21.__r_.__value_.__l.__size_ == 9 && *v21.__r_.__value_.__l.__data_ == 0x7361637265707075 && *(v21.__r_.__value_.__r.__words[0] + 8) == 101)
            {
LABEL_64:
              quasar::corrective_reranking::classifyCasing(&__p);
            }

            operator delete(v21.__r_.__value_.__l.__data_);
          }

          else if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) == 9 && v21.__r_.__value_.__r.__words[0] == 0x7361637265707075 && LOBYTE(v21.__r_.__value_.__r.__words[1]) == 101)
          {
            goto LABEL_64;
          }
        }

        v17 = *(a4 + 8);
        if (v17 >= *(a4 + 16))
        {
          v18 = std::vector<quasar::corrective_reranking::Parse>::__emplace_back_slow_path<quasar::corrective_reranking::Parse const&>(a4, v5);
        }

        else
        {
          quasar::corrective_reranking::Parse::Parse(*(a4 + 8), v5);
          v18 = v17 + 384;
        }

        *(a4 + 8) = v18;
      }

      if (v23 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v5 = (v5 + 384);
    }

    while (v5 != v6);
    v5 = *a2;
    v19 = a2[1];
    a1 = v20;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v19 - v5) >> 7) > 1 && 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 7) <= 1)
  {
    quasar::corrective_reranking::CorrectiveReranker::correctPayload(a1, v24, 1, &__p);
    std::vector<quasar::corrective_reranking::Parse>::__insert_with_size[abi:ne200100]<std::__wrap_iter<quasar::corrective_reranking::Parse*>,std::__wrap_iter<quasar::corrective_reranking::Parse*>>(a4, *(a4 + 8), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 7));
    v21.__r_.__value_.__r.__words[0] = &__p;
    std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&v21);
  }

  __p.__r_.__value_.__r.__words[0] = v24;
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1B54ED634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void **p_p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  p_p = &__p;
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&p_p);
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = (v31 - 104);
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t quasar::corrective_reranking::CorrectiveReranker::rankParses@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  result = std::vector<quasar::corrective_reranking::Parse>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::Parse*,quasar::corrective_reranking::Parse*>(a6, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 7));
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 7) >= 2)
  {
    kaldi::Matrix<float>::Matrix(v38);
    quasar::corrective_reranking::CorrectiveReranker::featurizeParses(a1, a2, a3, a4, a5, v38);
    v13 = kaldi::Matrix<float>::Matrix(v36);
    (*(**(a1 + 256) + 16))(*(a1 + 256), v38, v36, v13);
    v14 = a6[1];
    v15 = *a6;
    v16 = 0;
    v17 = 0;
    if (v14 == *a6)
    {
      v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a6) >> 7);
    }

    else
    {
      do
      {
        *(v16 + v15 + 168) = *(v36[0] + 4 * v37 * v17 + 4);
        v18 = v38[0];
        v19 = v39;
        v20 = kaldi::MatrixBase<float>::NumCols(v38);
        __p[0] = 0;
        __p[1] = 0;
        v41[0] = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(__p, v18 + 4 * v19 * v17, v18 + 4 * v19 * v17 + 4 * v20, v20);
        v21 = (v16 + v15);
        v23 = v21 + 22;
        v22 = v21[22];
        if (v22)
        {
          v21[23] = v22;
          operator delete(v22);
          *v23 = 0;
          v21[23] = 0;
          v21[24] = 0;
        }

        *v23 = *__p;
        v21[24] = v41[0];
        ++v17;
        v15 = *a6;
        v14 = a6[1];
        v24 = v14 - *a6;
        v25 = 0xAAAAAAAAAAAAAAABLL * (v24 >> 7);
        v16 = (v16 + 384);
      }

      while (v25 > v17);
      if (v24 < 1)
      {
        v16 = 0;
        v17 = 0;
      }

      else
      {
        v26 = MEMORY[0x1E69E5398];
        v17 = 0xAAAAAAAAAAAAAAABLL * (v24 >> 7);
        while (1)
        {
          v27 = operator new(384 * v17, v26);
          if (v27)
          {
            break;
          }

          v28 = v17 >> 1;
          v29 = v17 > 1;
          v17 >>= 1;
          if (!v29)
          {
            v16 = 0;
            v17 = v28;
            goto LABEL_14;
          }
        }

        v16 = v27;
      }
    }

LABEL_14:
    std::__stable_sort<std::_ClassicAlgPolicy,quasar::corrective_reranking::CorrectiveReranker::rankParses(std::vector<quasar::corrective_reranking::Parse> const&,std::basic_string<char32_t> const&,std::vector<int> const&,std::vector<int> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::Parse*>>(v15, v14, v25, v16, v17);
    if (v16)
    {
      operator delete(v16);
    }

    v30 = *(a3 + 23);
    if ((v30 & 0x80u) != 0)
    {
      v30 = *(a3 + 8);
    }

    if (!v30)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "undo");
      std::string::basic_string[abi:ne200100]<0>(&v41[1], "redo");
      std::string::basic_string[abi:ne200100]<0>(v42, "stop");
      std::unordered_set<std::string>::unordered_set(v35, __p, 3);
      for (i = 0; i != -72; i -= 24)
      {
        if (v42[i + 23] < 0)
        {
          operator delete(*&v42[i]);
        }
      }

      v32 = *a6;
      v33 = a6[1];
      if (*a6 != v33)
      {
        while (1)
        {
          quasar::corrective_reranking::Parse::getIntent(v32, __p);
          v34 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v35, __p);
          if (SHIBYTE(v41[0]) < 0)
          {
            operator delete(__p[0]);
          }

          if (v34)
          {
            break;
          }

          v32 += 24;
          if (v32 == v33)
          {
            v32 = v33;
            break;
          }
        }

        v33 = a6[1];
      }

      if (v32 != v33)
      {
        if (quasar::gLogLevel >= 5)
        {
          memset(v42, 0, 224);
          memset(v41, 0, sizeof(v41));
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Found 'undo' parse while displayed text is empty. Move the undo parse to the top. ", 82);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
        }

        if (*a6 != v32)
        {
          std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<quasar::corrective_reranking::Parse *>>(*a6, v32, v32 + 24);
        }
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v35);
    }

    kaldi::Matrix<float>::~Matrix(v36);
    return kaldi::Matrix<float>::~Matrix(v38);
  }

  return result;
}

void sub_1B54EDAF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  va_copy(va3, va2);
  v15 = va_arg(va3, void **);
  v17 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  v19 = va_arg(va3, void);
  v20 = va_arg(va3, void);
  quasar::QuasarDebugMessage::~QuasarDebugMessage(va3);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  kaldi::Matrix<float>::~Matrix(va1);
  kaldi::Matrix<float>::~Matrix(va2);
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](va2);
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::CorrectiveReranker::filterParsesForUi(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  memset(&__p, 0, sizeof(__p));
  memset(&v29, 0, sizeof(v29));
  v6 = *a2;
  if (a2[1] == *a2)
  {
    goto LABEL_60;
  }

  v10 = 0;
  while (1)
  {
    v11 = v6 + 384 * v10;
    if (!v10)
    {
      break;
    }

    quasar::corrective_reranking::Parse::getIntent(v11, &__dst);
    v12 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = __p.__r_.__value_.__l.__size_;
    }

    if (size == v14)
    {
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v17 = memcmp(p_dst, p_p, size) != 0;
      if ((v12 & 0x80000000) == 0)
      {
LABEL_17:
        if (!v17)
        {
          goto LABEL_26;
        }

        goto LABEL_54;
      }
    }

    else
    {
      v17 = 1;
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
    if (!v17)
    {
LABEL_26:
      if (a4)
      {
        if (*(v11 + 112) == 1)
        {
          quasar::corrective_reranking::TargetRange::getTargetFromText(v11 + 88, a3, &__dst);
        }

        else
        {
          std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&__dst, byte_1B5B03720);
        }

        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = &v29;
        }

        else
        {
          v19 = v29.__r_.__value_.__r.__words[0];
        }

        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v20 = v29.__r_.__value_.__l.__size_;
        }

        quasar::utf32::caseInsensitiveEquals(v19, v20);
      }

      v18 = *(a5 + 8);
      if (*(v11 + 112) == 1 && *a5 != v18)
      {
        v21 = *a5 + 88;
        while (*(v21 + 24) != 1 || !quasar::corrective_reranking::TargetRange::overlaps((v11 + 88), v21))
        {
          v22 = (v21 + 296);
          v21 += 384;
          if (v22 == v18)
          {
            v18 = *(a5 + 8);
            goto LABEL_49;
          }
        }

        goto LABEL_54;
      }

LABEL_49:
      if (v18 < *(a5 + 16))
      {
        quasar::corrective_reranking::Parse::Parse(v18, v11);
LABEL_51:
        v23 = &v18[16];
LABEL_53:
        *(a5 + 8) = v23;
        goto LABEL_54;
      }

LABEL_52:
      v23 = std::vector<quasar::corrective_reranking::Parse>::__emplace_back_slow_path<quasar::corrective_reranking::Parse const&>(a5, v11);
      goto LABEL_53;
    }

LABEL_54:
    ++v10;
    v6 = *a2;
    if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 7) <= v10)
    {
      goto LABEL_60;
    }
  }

  if (quasar::corrective_reranking::Parse::isTargetExpectingCommand(v11))
  {
    quasar::corrective_reranking::Parse::getIntent(v11, &__dst);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = __dst;
    if (*(v11 + 112) == 1)
    {
      quasar::corrective_reranking::TargetRange::getTargetFromText(v11 + 88, a3, &__dst);
    }

    else
    {
      std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(&__dst, byte_1B5B03720);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    v29 = __dst;
    v18 = *(a5 + 8);
    if (v18 < *(a5 + 16))
    {
      quasar::corrective_reranking::Parse::Parse(*(a5 + 8), v11);
      goto LABEL_51;
    }

    goto LABEL_52;
  }

  v24 = *(a5 + 8);
  if (v24 >= *(a5 + 16))
  {
    v25 = std::vector<quasar::corrective_reranking::Parse>::__emplace_back_slow_path<quasar::corrective_reranking::Parse const&>(a5, v11);
  }

  else
  {
    quasar::corrective_reranking::Parse::Parse(*(a5 + 8), v11);
    v25 = v24 + 384;
  }

  *(a5 + 8) = v25;
LABEL_60:
  v26 = *(a1 + 72);
  if (v26 >= 1 && 0xAAAAAAAAAAAAAAABLL * ((*(a5 + 8) - *a5) >> 7) > v26)
  {
    std::vector<quasar::corrective_reranking::Parse>::resize(a5, v26);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B54EDF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::CorrectiveReranker::correctFloatingPunctuation(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6 == *a1)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;

    std::vector<quasar::corrective_reranking::Parse>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::Parse*,quasar::corrective_reranking::Parse*>(a4, v5, v6, 0);
  }

  else
  {
    if (a3)
    {
      quasar::corrective_reranking::Parse::getIntent(*a1, __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        if (__p[0].__r_.__value_.__l.__size_ != 6)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
LABEL_36:
          *a4 = 0;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          std::vector<quasar::corrective_reranking::Parse>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::Parse*,quasar::corrective_reranking::Parse*>(a4, *a1, *(a1 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 7));
          return;
        }

        v13 = *__p[0].__r_.__value_.__l.__data_ != 1701602660 || *(__p[0].__r_.__value_.__r.__words[0] + 4) != 25972;
        operator delete(__p[0].__r_.__value_.__l.__data_);
        if (v13)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) != 6)
        {
          goto LABEL_36;
        }

        if (__p[0].__r_.__value_.__s.__data_[0] != 1701602660 || WORD2(__p[0].__r_.__value_.__r.__words[0]) != 25972)
        {
          goto LABEL_36;
        }
      }

      quasar::corrective_reranking::TargetRange::getTargetFromText(v5 + 88, a2, __p);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p[0].__r_.__value_.__l.__size_;
      }

      quasar::utf32::convertToLowerCaseOrThrow(v14, size);
    }

    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    do
    {
      quasar::corrective_reranking::CorrectiveReranker::extendTargetToSubsequentPunctuation(v5, a2, __p);
      v10 = *(a4 + 8);
      if (v10 >= *(a4 + 16))
      {
        v11 = std::vector<quasar::corrective_reranking::Parse>::__emplace_back_slow_path<quasar::corrective_reranking::Parse&>(a4, __p);
      }

      else
      {
        quasar::corrective_reranking::Parse::Parse(*(a4 + 8), __p);
        v11 = v10 + 384;
      }

      *(a4 + 8) = v11;
      quasar::corrective_reranking::Parse::~Parse(&__p[0].__r_.__value_.__l.__data_);
      v5 = (v5 + 384);
    }

    while (v5 != v6);
  }
}

void sub_1B54EE5C8(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x34F]) < 0)
  {
    operator delete(STACK[0x338]);
  }

  quasar::corrective_reranking::Parse::~Parse(&STACK[0x368]);
  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(STACK[0x350]);
  }

  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::CorrectiveReranker::correctPayloadCapitalization(quasar::corrective_reranking *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, char a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  v10 = *a2;
  if (a2[1] != *a2)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if (v13 >= a4)
      {
        v18 = *(a7 + 8);
        if (v18 >= *(a7 + 16))
        {
          goto LABEL_15;
        }
      }

      else
      {
        quasar::corrective_reranking::Parse::getIntent((v10 + v12), __p);
        v14 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1 + 19, __p);
        v15 = v14;
        if (SBYTE7(v27) < 0)
        {
          operator delete(__p[0]);
          if (v15)
          {
LABEL_6:
            quasar::corrective_reranking::CorrectiveReranker::applyPayloadCapitalization(a1, (v10 + v12), a3, __p);
            v16 = *(a7 + 8);
            if (v16 >= *(a7 + 16))
            {
              v17 = std::vector<quasar::corrective_reranking::Parse>::__emplace_back_slow_path<quasar::corrective_reranking::Parse&>(a7, __p);
            }

            else
            {
              quasar::corrective_reranking::Parse::Parse(*(a7 + 8), __p);
              v17 = v16 + 384;
            }

            *(a7 + 8) = v17;
            quasar::corrective_reranking::Parse::~Parse(__p);
            goto LABEL_17;
          }
        }

        else if (v14)
        {
          goto LABEL_6;
        }

        v18 = *(a7 + 8);
        if (v18 >= *(a7 + 16))
        {
LABEL_15:
          v19 = std::vector<quasar::corrective_reranking::Parse>::__emplace_back_slow_path<quasar::corrective_reranking::Parse const&>(a7, (v10 + v12));
          goto LABEL_16;
        }
      }

      quasar::corrective_reranking::Parse::Parse(*(a7 + 8), (v10 + v12));
      v19 = v18 + 384;
LABEL_16:
      *(a7 + 8) = v19;
LABEL_17:
      ++v13;
      v10 = *a2;
      v12 += 384;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 7) > v13);
  }

  if ((a5 & 1) != 0 && quasar::corrective_reranking::CorrectiveReranker::hasCasingConflictsWithTopParse(a1, a7, a3))
  {
    if (a6 && quasar::gLogLevel >= 5)
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
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[Payload Capitalization Correction] Found top parse to have a different payload casing than in another parse. Lowercasing PARSE 0's payload.", 140);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }

    if (*(a7 + 8) != *a7)
    {
      quasar::corrective_reranking::Parse::getPayload(*a7, 0, &v25);
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v25;
      }

      else
      {
        v20 = v25.__r_.__value_.__r.__words[0];
      }

      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v25.__r_.__value_.__l.__size_;
      }

      quasar::utf32::convertToLowerCaseOrThrow(v20, size);
    }

    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }
}

void sub_1B54EE974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&__p);
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t quasar::corrective_reranking::CorrectiveReranker::checkParses(int a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (a2[1] == *a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = 0;
  LODWORD(v8) = 1;
  do
  {
    v8 = quasar::corrective_reranking::Parse::check(v3 + v6, a3, v7++, a2) & v8;
    v3 = *a2;
    v6 += 384;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 7) > v7);
  return v8;
}

void quasar::corrective_reranking::CorrectiveReranker::findTargetCandidates(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  quasar::corrective_reranking::tokenize();
}

void sub_1B54EF034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, uint64_t a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  a38 = (v47 - 160);
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a38);
  a38 = a12;
  std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::__destroy_vector::operator()[abi:ne200100](&a38);
  _Unwind_Resume(a1);
}

void std::vector<quasar::corrective_reranking::Parse>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 7);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<quasar::corrective_reranking::Parse>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 384 * a2;
    while (v3 != v7)
    {
      quasar::corrective_reranking::Parse::~Parse((v3 - 384));
    }

    a1[1] = v7;
  }
}

BOOL quasar::corrective_reranking::CorrectiveReranker::applyPayloadCapitalization@<W0>(quasar::corrective_reranking *a1@<X0>, const quasar::corrective_reranking::Parse *a2@<X1>, uint64_t *a3@<X2>, std::wstring *a4@<X8>)
{
  if (!quasar::corrective_reranking::isAdjacentEditsEnabled(a1))
  {

    quasar::corrective_reranking::CorrectiveReranker::applyPayloadCapitalizationV1(a1, a2, a3, a4);
  }

  return quasar::corrective_reranking::CorrectiveReranker::applyPayloadCapitalizationV2(a1, a2, a3, a4);
}

BOOL quasar::corrective_reranking::CorrectiveReranker::hasCasingConflictsWithTopParse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 != *(a2 + 8))
  {
    result = quasar::corrective_reranking::Parse::isPayloadExpectingCommand(*a2);
    if (!result)
    {
      return result;
    }

    v7 = *a2;
    if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 7) >= 2)
    {
      v8 = 1;
      do
      {
        quasar::corrective_reranking::Parse::Parse(&v13, (v7 + 384 * v8));
        if (quasar::corrective_reranking::Parse::isPayloadExpectingCommand(&v13) && v14[24] == 1 && *(v3 + 112) == 1)
        {
          quasar::corrective_reranking::TargetRange::getTargetFromText(v14, a3, &v12);
          quasar::corrective_reranking::TargetRange::getTargetFromText(v3 + 88, a3, &v11);
          if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v9 = &v12;
          }

          else
          {
            v9 = v12.__r_.__value_.__r.__words[0];
          }

          if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v12.__r_.__value_.__l.__size_;
          }

          quasar::utf32::convertToLowerCaseOrThrow(v9, size);
        }

        quasar::corrective_reranking::Parse::~Parse(&v13.__r_.__value_.__l.__data_);
        ++v8;
        v7 = *a2;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 7) > v8);
    }
  }

  return 0;
}

void sub_1B54EF7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  quasar::corrective_reranking::Parse::~Parse(&STACK[0x228]);
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::CorrectiveReranker::featurizeParses(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  kaldi::Matrix<float>::Resize(a6, -1431655765 * ((a2[1] - *a2) >> 7), (a1[30] - a1[29]) >> 3, 1, 0);
  v13 = *a2;
  v12 = a2[1];
  if (v12 != *a2)
  {
    v14 = 0;
    v15 = a1[29];
    v16 = a1[30];
    do
    {
      if (v16 == v15)
      {
        v16 = v15;
      }

      else
      {
        v17 = 0;
        do
        {
          v18 = *(v15 + 8 * v17);
          v19 = *a2 + 384 * v14;
          v20 = a1[13];
          v21[0] = a2;
          v21[1] = v19;
          v21[2] = v20;
          v21[3] = a3;
          v21[4] = a4;
          v21[5] = a5;
          *(*a6 + 4 * v14 * *(a6 + 16) + 4 * v17++) = (*(*v18 + 16))(v18, v21);
          v15 = a1[29];
          v16 = a1[30];
        }

        while (v17 < (v16 - v15) >> 3);
        v13 = *a2;
        v12 = a2[1];
      }

      ++v14;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 7) > v14);
  }
}

void quasar::corrective_reranking::CorrectiveReranker::applyOverridePhrases(void *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  *v3 = 0u;
  if (*a1 != a1[1])
  {
    quasar::corrective_reranking::detokenize((*a1 + 32));
  }

  *a2 = 0uLL;
  *(a2 + 16) = 0;
  v4 = 0;
  v3[0] = 0;
  v3[1] = 0;
  __p = v3;
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1B54F035C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, int a62, __int16 a63)
{
  if (a65 < 0)
  {
    operator delete(__p);
  }

  if (LOBYTE(STACK[0x358]) == 1)
  {
    quasar::corrective_reranking::Parse::~Parse(&a71);
  }

  a71 = &STACK[0x360];
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a71);
  if (SLOBYTE(STACK[0x38F]) < 0)
  {
    operator delete(STACK[0x378]);
  }

  a71 = &STACK[0x390];
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&a71);
  _Unwind_Resume(a1);
}

uint64_t std::optional<quasar::corrective_reranking::Parse>::operator=[abi:ne200100]<quasar::corrective_reranking::Parse,void>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 384) == 1)
  {
    quasar::corrective_reranking::Parse::operator=(a1, a2);
  }

  else
  {
    quasar::corrective_reranking::Parse::Parse(a1, a2);
    *(a1 + 384) = 1;
  }

  return a1;
}

uint64_t std::optional<quasar::corrective_reranking::AdjustedPayloadParts>::~optional(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
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
  }

  return a1;
}

void quasar::corrective_reranking::CorrectiveReranker::extendTargetToSubsequentPunctuation(quasar::corrective_reranking::Parse *this@<X1>, uint64_t a2@<X2>, std::wstring *a3@<X8>)
{
  v12[4] = *MEMORY[0x1E69E9840];
  memset(v12, 0, 24);
  if (!quasar::corrective_reranking::Parse::isTargetExpectingCommand(this))
  {
    goto LABEL_20;
  }

  quasar::corrective_reranking::Parse::getIntent(this, __p);
  if ((v10 & 0x80000000) == 0)
  {
    if (v10 != 6)
    {
      goto LABEL_20;
    }

    if (LODWORD(__p[0]) != 1701602660 || WORD2(__p[0]) != 25972)
    {
      goto LABEL_20;
    }

LABEL_18:
    quasar::corrective_reranking::TargetRange::getTargetFromText(this + 88, a2, &v11);
    quasar::utf::toString();
  }

  if (__p[1] != 6)
  {
    operator delete(__p[0]);
    goto LABEL_20;
  }

  v8 = *__p[0] != 1701602660 || *(__p[0] + 2) != 25972;
  operator delete(__p[0]);
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_20:
  quasar::corrective_reranking::Parse::Parse(a3, this);
  __p[0] = v12;
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1B54F0A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    a10 = __p;
    operator delete(__p);
  }

  v13 = *(v11 - 128);
  if (v13)
  {
    *(v11 - 120) = v13;
    operator delete(v13);
  }

  quasar::corrective_reranking::Parse::~Parse(v10);
  __p = (v11 - 104);
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void *quasar::corrective_reranking::CorrectiveReranker::findAdjacentPunctuationRange(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 2);
  }

  quasar::result_handler::Range::Range(&v18, v7, 0);
  if (a4)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(a2 + 23);
    if (a4 >= 0)
    {
      v11 = a4;
    }

    else
    {
      v11 = -a4;
    }

    if ((v10 & 0x80u) == 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    while (1)
    {
      v13 = a4 < 0 ? v8 : v9;
      v14 = (v13 + a3);
      if (v13 + a3 < 0)
      {
        break;
      }

      if ((v10 & 0x80) != 0)
      {
        v15 = a2[1];
        if (v15 <= v14)
        {
          break;
        }
      }

      else
      {
        v15 = *(a2 + 23);
        if (v14 >= v10)
        {
          break;
        }
      }

      if (v15 <= v14)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (*(v12 + v14) != 32)
      {
        quasar::utf::toString();
      }

      ++v9;
      --v8;
      if (v11 == v9)
      {
        return v18;
      }
    }

    quasar::result_handler::Range::Range(&__p, a3 + v9, 0);
    return __p;
  }

  return v18;
}

void sub_1B54F0D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

BOOL quasar::corrective_reranking::CorrectiveReranker::applyPayloadCapitalizationV2@<W0>(quasar::corrective_reranking *a1@<X0>, const quasar::corrective_reranking::Parse *a2@<X1>, uint64_t *a3@<X2>, std::wstring *a4@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((quasar::corrective_reranking::isAdjacentEditsEnabled(a1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v12, "isAdjacentEditsEnabled()");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v12);
  }

  v8 = quasar::corrective_reranking::Parse::Parse(a4, a2);
  result = quasar::corrective_reranking::Parse::isTargetExpectingCommand(v8);
  if (result)
  {
    quasar::corrective_reranking::TextEdit::TextEdit(v11, a4);
    quasar::corrective_reranking::TextEdit::onText(v11, a3, &v10);
    quasar::corrective_reranking::TransformerClassifier::classifyCapitalization(*(*(a1 + 13) + 24), &v10, a4, a3);
  }

  return result;
}

void sub_1B54F2188(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::CorrectiveReranker::applyPayloadCapitalizationV1(quasar::corrective_reranking *a1@<X0>, const quasar::corrective_reranking::Parse *a2@<X1>, uint64_t *a3@<X2>, std::wstring *a4@<X8>)
{
  if (!quasar::corrective_reranking::isAdjacentEditsEnabled(a1))
  {
    quasar::corrective_reranking::Parse::Parse(a4, a2);
    quasar::corrective_reranking::TextEdit::TextEdit(v9, a4);
    quasar::corrective_reranking::TextEdit::onText(v9, a3, &v8);
    quasar::corrective_reranking::TransformerClassifier::classifyCapitalization(*(*(a1 + 13) + 24), &v8, a4, a3);
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "!isAdjacentEditsEnabled()");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
}

void *quasar::pySlice<std::vector<quasar::corrective_reranking::TokenClassification>>@<X0>(void *result@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v5 = result[1];
  if (*result == v5)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    v6 = (v5 - *result) >> 6;
    v7 = ((v6 & (a2 >> 31)) + a2) & ~(((v6 & (a2 >> 31)) + a2) >> 31);
    v8 = ((v6 & (a3 >> 31)) + a3) & ~(((v6 & (a3 >> 31)) + a3) >> 31);
    if (v8 >= v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    if (v9 > v7)
    {
      v10 = result;
      std::vector<quasar::corrective_reranking::TokenClassification>::reserve(a4, v9 - v7);
      v11 = v7 << 6;
      do
      {
        if (v7 >= (v10[1] - *v10) >> 6)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        result = std::vector<quasar::corrective_reranking::TokenClassification>::push_back[abi:ne200100](a4, (*v10 + v11));
        ++v7;
        v11 += 64;
      }

      while (v9 != v7);
    }
  }

  return result;
}

void sub_1B54F302C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<quasar::corrective_reranking::TokenClassification>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::CorrectiveReranker::applyPayloadCapitalizationV2(quasar::corrective_reranking::Parse const&,std::basic_string<char32_t> const&,int)const::$_5::operator()(uint64_t a1, unsigned int a2)
{
  v2 = **(a1 + 32) + (a2 << 6);
  quasar::pySlice<std::basic_string<char32_t>>(***a1, *(v2 + 48), *(v2 + 52) + *(v2 + 48), __p);
  quasar::corrective_reranking::classifyCasing(__p);
}

double quasar::corrective_reranking::CorrectiveReranker::applyPayloadCapitalizationV2(quasar::corrective_reranking::Parse const&,std::basic_string<char32_t> const&,int)const::$_6::operator()@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2[1] != *a2)
  {
    quasar::pySlice<std::basic_string<char32_t>>(***(a1 + 24), *(*a2 + 48), *(*a2 + 52) + *(*a2 + 48), &__p);
    quasar::corrective_reranking::classifyCasing(&__p);
  }

  result = 0.0;
  *a3 = 0uLL;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  return result;
}

void sub_1B54F3510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::corrective_reranking::Parse::operator=(uint64_t a1, __int128 *a2)
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
  *(a1 + 24) = *(a2 + 6);
  std::vector<std::pair<std::string,float>>::__vdeallocate(a1 + 32);
  *(a1 + 32) = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  std::vector<std::string>::__vdeallocate((a1 + 56));
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 9);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a1 + 80) = *(a2 + 20);
  std::__optional_storage_base<quasar::corrective_reranking::TargetRange,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<quasar::corrective_reranking::TargetRange,false>>((a1 + 88), (a2 + 88));
  std::vector<std::pair<std::string,float>>::__vdeallocate(a1 + 120);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v5 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 144) = v5;
  *(a2 + 167) = 0;
  *(a2 + 36) = 0;
  *(a1 + 168) = *(a2 + 42);
  std::vector<int>::__move_assign(a1 + 176, a2 + 11);
  *(a1 + 200) = *(a2 + 200);
  std::vector<std::string>::__vdeallocate((a1 + 208));
  *(a1 + 208) = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a2 + 26) = 0;
  *(a2 + 27) = 0;
  *(a2 + 28) = 0;
  std::vector<std::string>::__vdeallocate((a1 + 232));
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 31);
  *(a2 + 29) = 0;
  *(a2 + 30) = 0;
  *(a2 + 31) = 0;
  *(a1 + 256) = *(a2 + 256);
  std::__optional_storage_base<quasar::corrective_reranking::TargetRange,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<quasar::corrective_reranking::TargetRange,false>>((a1 + 264), (a2 + 264));
  std::__optional_storage_base<quasar::corrective_reranking::AdjustedPayloadParts,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<quasar::corrective_reranking::AdjustedPayloadParts,false>>(a1 + 296, (a2 + 296));
  *(a1 + 376) = *(a2 + 47);
  return a1;
}

uint64_t std::vector<quasar::corrective_reranking::Parse>::erase(uint64_t a1, uint64_t a2, __int128 *a3)
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
        quasar::corrective_reranking::Parse::operator=(v7, v4);
        v4 += 24;
        v7 += 384;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v6 -= 48;
      quasar::corrective_reranking::Parse::~Parse(v6);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t std::__tree<std::vector<std::string>>::find<std::vector<std::string>>(uint64_t a1, const void ***a2)
{
  v3 = a1 + 8;
  v4 = std::__tree<std::vector<std::string>>::__lower_bound<std::vector<std::string>>(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  if (std::__lexicographical_compare[abi:ne200100]<std::string const*,std::string const*,std::string const*,std::string const*,std::__identity,std::__identity,std::__less<void,void>>(*a2, a2[1], *(v5 + 32), *(v5 + 40)))
  {
    return v3;
  }

  return v5;
}

uint64_t std::__tree<std::vector<std::string>>::__lower_bound<std::vector<std::string>>(uint64_t a1, const void ***a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v7 = std::__lexicographical_compare[abi:ne200100]<std::string const*,std::string const*,std::string const*,std::string const*,std::__identity,std::__identity,std::__less<void,void>>(*(v5 + 32), *(v5 + 40), *a2, a2[1]);
      if (v7)
      {
        v8 = 8;
      }

      else
      {
        v8 = 0;
      }

      if (!v7)
      {
        a4 = v5;
      }

      v5 = *(v5 + v8);
    }

    while (v5);
  }

  return a4;
}

std::wstring *quasar::corrective_reranking::Parse::Parse(std::wstring *this, const quasar::corrective_reranking::Parse *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 6);
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__s.__data_[0] = v5;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__r.__words[0] = 0;
  std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__init_with_size[abi:ne200100]<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*>(&this[1].__r_.__value_.__l.__size_, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 5);
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  this[3].__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[2].__r_.__value_.__l.__size_, *(a2 + 7), *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *(a2 + 7)) >> 3));
  this[3].__r_.__value_.__s.__data_[2] = *(a2 + 20);
  std::__optional_copy_base<quasar::corrective_reranking::TargetRange,false>::__optional_copy_base[abi:ne200100](&this[3].__r_.__value_.__r.__words[2], a2 + 88);
  this[5].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__l.__size_ = 0;
  this[5].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__init_with_size[abi:ne200100]<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*>(&this[5], *(a2 + 15), *(a2 + 16), (*(a2 + 16) - *(a2 + 15)) >> 5);
  if (*(a2 + 167) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(this + 6, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v6 = *(a2 + 9);
    this[6].__r_.__value_.__r.__words[2] = *(a2 + 20);
    *&this[6].__r_.__value_.__l.__data_ = v6;
  }

  v7 = *(a2 + 42);
  this[7].__r_.__value_.__l.__size_ = 0;
  this[7].__r_.__value_.__s.__data_[0] = v7;
  this[7].__r_.__value_.__r.__words[2] = 0;
  this[8].__r_.__value_.__r.__words[0] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&this[7].__r_.__value_.__l.__size_, *(a2 + 22), *(a2 + 23), (*(a2 + 23) - *(a2 + 22)) >> 2);
  v8 = *(a2 + 200);
  this[8].__r_.__value_.__r.__words[2] = 0;
  LOBYTE(this[8].__r_.__value_.__r.__words[1]) = v8;
  this[9].__r_.__value_.__r.__words[0] = 0;
  this[9].__r_.__value_.__l.__size_ = 0;
  std::vector<std::basic_string<char32_t>>::__init_with_size[abi:ne200100]<std::basic_string<char32_t>*,std::basic_string<char32_t>*>(&this[8].__r_.__value_.__r.__words[2], *(a2 + 26), *(a2 + 27), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 27) - *(a2 + 26)) >> 3));
  this[9].__r_.__value_.__r.__words[2] = 0;
  this[10].__r_.__value_.__r.__words[0] = 0;
  this[10].__r_.__value_.__l.__size_ = 0;
  std::vector<std::basic_string<char32_t>>::__init_with_size[abi:ne200100]<std::basic_string<char32_t>*,std::basic_string<char32_t>*>(&this[9].__r_.__value_.__r.__words[2], *(a2 + 29), *(a2 + 30), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 30) - *(a2 + 29)) >> 3));
  LOBYTE(this[10].__r_.__value_.__r.__words[2]) = *(a2 + 256);
  std::__optional_copy_base<quasar::corrective_reranking::TargetRange,false>::__optional_copy_base[abi:ne200100](&this[11], a2 + 264);
  std::__optional_copy_base<quasar::corrective_reranking::AdjustedPayloadParts,false>::__optional_copy_base[abi:ne200100]((this + 296), (a2 + 296));
  this[15].__r_.__value_.__r.__words[2] = *(a2 + 47);
  return this;
}

void sub_1B54F3A58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 112) == 1)
  {
    v4 = *(v2 + 88);
    if (v4)
    {
      *(v2 + 96) = v4;
      operator delete(v4);
    }
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void std::__optional_storage_base<quasar::corrective_reranking::AdjustedPayloadParts,false>::__construct[abi:ne200100]<quasar::corrective_reranking::AdjustedPayloadParts const&>(std::wstring *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  LOBYTE(this[3].__r_.__value_.__l.__data_) = 1;
}

void sub_1B54F3BF4(_Unwind_Exception *exception_object)
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

void quasar::corrective_reranking::Parse::~Parse(void **this)
{
  if (*(this + 368) == 1)
  {
    if (*(this + 367) < 0)
    {
      operator delete(this[43]);
    }

    if (*(this + 343) < 0)
    {
      operator delete(this[40]);
    }

    if (*(this + 319) < 0)
    {
      operator delete(this[37]);
    }
  }

  if (*(this + 288) == 1)
  {
    v2 = this[33];
    if (v2)
    {
      this[34] = v2;
      operator delete(v2);
    }
  }

  v5 = this + 29;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = this + 26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = this[22];
  if (v3)
  {
    this[23] = v3;
    operator delete(v3);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  v5 = this + 15;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 112) == 1)
  {
    v4 = this[11];
    if (v4)
    {
      this[12] = v4;
      operator delete(v4);
    }
  }

  v5 = this + 7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = this + 4;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void quasar::corrective_reranking::TokenClassification::~TokenClassification(quasar::corrective_reranking::TokenClassification *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void quasar::corrective_reranking::TextEdit::~TextEdit(void **this)
{
  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 160) == 1)
  {
    v2 = this[17];
    if (v2)
    {
      this[18] = v2;
      operator delete(v2);
    }
  }

  v4 = this + 13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = this + 10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 48) == 1)
  {
    v3 = this[3];
    if (v3)
    {
      this[4] = v3;
      operator delete(v3);
    }
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

std::wstring *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_12basic_stringIDiNS_11char_traitsIDiEENS_9allocatorIDiEEEES8_iiEEC2B8ne200100IJLm0ELm1ELm2ELm3EEJS8_S8_iiEJEJEJRS8_SB_RiSC_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSE_IJDpT2_EEEDpOT3_(std::wstring *this, __int128 *a2, __int128 *a3, std::wstring::value_type *a4, std::wstring::value_type *a5)
{
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v9;
  }

  if (*(a3 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
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

void sub_1B54F3EDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__optional_storage_base<quasar::corrective_reranking::TargetRange,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<quasar::corrective_reranking::TargetRange,false>>(std::vector<int> *this, __n128 *a2)
{
  if (LOBYTE(this[1].__begin_) == a2[1].n128_u8[8])
  {
    if (LOBYTE(this[1].__begin_))
    {

      result.n128_u64[0] = std::vector<int>::__move_assign(this, a2).n128_u64[0];
    }
  }

  else if (LOBYTE(this[1].__begin_))
  {
    begin = this->__begin_;
    if (this->__begin_)
    {
      this->__end_ = begin;
      operator delete(begin);
    }

    LOBYTE(this[1].__begin_) = 0;
  }

  else
  {
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
    result = *a2;
    *this = *a2->n128_u8;
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    LOBYTE(this[1].__begin_) = 1;
  }

  return result;
}

__n128 std::__optional_storage_base<quasar::corrective_reranking::AdjustedPayloadParts,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<quasar::corrective_reranking::AdjustedPayloadParts,false>>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 72) == *(a2 + 72))
  {
    if (*(a1 + 72))
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
      *(a2 + 6) = 0;
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }

      result = a2[3];
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 48) = result;
      *(a2 + 71) = 0;
      *(a2 + 12) = 0;
    }
  }

  else if (*(a1 + 72))
  {

    std::__optional_destruct_base<quasar::corrective_reranking::AdjustedPayloadParts,false>::reset[abi:ne200100](a1);
  }

  else
  {
    v7 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v7;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v8 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v8;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    result = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = result;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    *(a1 + 72) = 1;
  }

  return result;
}

void std::__optional_destruct_base<quasar::corrective_reranking::AdjustedPayloadParts,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
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

    *(a1 + 72) = 0;
  }
}

uint64_t std::vector<quasar::corrective_reranking::Parse>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::Parse*,quasar::corrective_reranking::Parse*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::corrective_reranking::Parse>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B54F4184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::corrective_reranking::Parse>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::Parse>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::Parse>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::wstring *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::corrective_reranking::Parse>,quasar::corrective_reranking::Parse*,quasar::corrective_reranking::Parse*,quasar::corrective_reranking::Parse*>(int a1, quasar::corrective_reranking::Parse *a2, quasar::corrective_reranking::Parse *a3, std::wstring *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      quasar::corrective_reranking::Parse::Parse(this, v6);
      v6 = (v6 + 384);
      this += 16;
      v7 -= 384;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_1B54F42A8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 384);
    do
    {
      quasar::corrective_reranking::Parse::~Parse(v4);
      v4 = (v5 - 384);
      v2 += 384;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        quasar::corrective_reranking::Parse::~Parse(v4 - 48);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<quasar::corrective_reranking::Parse>::__vdeallocate(void **a1)
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
        quasar::corrective_reranking::Parse::~Parse(v3 - 48);
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

uint64_t std::__sample[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<quasar::corrective_reranking::Parse *>,std::__wrap_iter<quasar::corrective_reranking::Parse *>,std::back_insert_iterator<std::vector<quasar::corrective_reranking::Parse>>,unsigned long,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(const quasar::corrective_reranking::Parse *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 7);
  if (v6 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 7);
  }

  if (v7)
  {
    v9 = a1;
    v10 = v6 - 1;
    do
    {
      v14[0] = 0;
      v14[1] = v10;
      if (std::uniform_int_distribution<unsigned long>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(v14, a5, v14) < v7)
      {
        v11 = *(a3 + 8);
        if (v11 >= *(a3 + 16))
        {
          v12 = std::vector<quasar::corrective_reranking::Parse>::__emplace_back_slow_path<quasar::corrective_reranking::Parse const&>(a3, v9);
        }

        else
        {
          quasar::corrective_reranking::Parse::Parse(*(a3 + 8), v9);
          v12 = v11 + 384;
          *(a3 + 8) = v11 + 384;
        }

        *(a3 + 8) = v12;
        --v7;
      }

      v9 = (v9 + 384);
      --v10;
    }

    while (v7);
  }

  return a3;
}

void std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

uint64_t std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::__emplace_back_slow_path<std::basic_string<char32_t>&,quasar::corrective_reranking::TargetRange&>(uint64_t *a1, __int128 *a2, uint64_t *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x555555555555555)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<std::string>>>>(a1, v7);
  }

  v14 = 0;
  v15 = 48 * v3;
  std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>::pair[abi:ne200100]<std::basic_string<char32_t>&,quasar::corrective_reranking::TargetRange&,0>((48 * v3), a2, a3);
  v16 = 48 * v3 + 48;
  v8 = a1[1];
  v9 = 48 * v3 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::~__split_buffer(&v14);
  return v13;
}

void sub_1B54F4684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

std::wstring *std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>::pair[abi:ne200100]<std::basic_string<char32_t>&,quasar::corrective_reranking::TargetRange&,0>(std::wstring *this, __int128 *a2, uint64_t *a3)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange*,quasar::corrective_reranking::TextRange*>(&this[1], *a3, a3[1], (a3[1] - *a3) >> 3);
  return this;
}

void sub_1B54F4708(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::destroy[abi:ne200100](a1, v5);
      v5 += 48;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>*>::operator()[abi:ne200100](uint64_t *a1)
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
      std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::destroy[abi:ne200100](v4, i - 48);
  }
}

uint64_t std::__tree<std::basic_string<char32_t>>::__emplace_unique_key_args<std::basic_string<char32_t>,std::basic_string<char32_t> const&>(uint64_t a1, uint64_t a2)
{
  result = *std::__tree<std::basic_string<char32_t>>::__find_equal<std::basic_string<char32_t>>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::basic_string<char32_t>>::__construct_node<std::basic_string<char32_t> const&>();
  }

  return result;
}

void *std::__tree<std::basic_string<char32_t>>::__find_equal<std::basic_string<char32_t>>(uint64_t a1, void *a2, uint64_t a3)
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
        if (!std::less<std::basic_string<char32_t>>::operator()[abi:ne200100](a1, a3, (v4 + 4)))
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

      if (!std::less<std::basic_string<char32_t>>::operator()[abi:ne200100](a1, (v8 + 4), a3))
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

void sub_1B54F4AB4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

BOOL std::less<std::basic_string<char32_t>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a3 + 8);
  }

  v5 = *(a2 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v3 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  if (v7)
  {
    if (v6 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v4 >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    while (*v9 == *v8)
    {
      ++v8;
      ++v9;
      if (!--v7)
      {
        goto LABEL_17;
      }
    }

    v10 = *v8 >= *v9;
  }

  else
  {
LABEL_17:
    v10 = v5 >= v3;
  }

  return !v10;
}

uint64_t std::__tree<std::basic_string<char32_t>>::__count_unique<std::basic_string<char32_t>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = 1;
    do
    {
      if (!std::less<std::basic_string<char32_t>>::operator()[abi:ne200100](a1, a2, (v2 + 4)))
      {
        if (!std::less<std::basic_string<char32_t>>::operator()[abi:ne200100](a1, (v2 + 4), a2))
        {
          return v5;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::__emplace_back_slow_path<std::basic_string<char32_t> const&,quasar::corrective_reranking::TargetRange&>(uint64_t *a1, __int128 *a2, uint64_t *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x555555555555555)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<std::string>>>>(a1, v7);
  }

  v14 = 0;
  v15 = 48 * v3;
  std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>::pair[abi:ne200100]<std::basic_string<char32_t> const&,quasar::corrective_reranking::TargetRange&,0>((48 * v3), a2, a3);
  v16 = 48 * v3 + 48;
  v8 = a1[1];
  v9 = 48 * v3 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::~__split_buffer(&v14);
  return v13;
}

void sub_1B54F4CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

std::wstring *std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>::pair[abi:ne200100]<std::basic_string<char32_t> const&,quasar::corrective_reranking::TargetRange&,0>(std::wstring *this, __int128 *a2, uint64_t *a3)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange*,quasar::corrective_reranking::TextRange*>(&this[1], *a3, a3[1], (a3[1] - *a3) >> 3);
  return this;
}

void sub_1B54F4D6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::corrective_reranking::Parse>::__emplace_back_slow_path<quasar::corrective_reranking::Parse const&>(uint64_t a1, const quasar::corrective_reranking::Parse *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 7);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 7) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 7);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 7) >= 0x55555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::Parse>>(a1, v6);
  }

  v13 = 0;
  v14 = 384 * v2;
  quasar::corrective_reranking::Parse::Parse((384 * v2), a2);
  v15 = 384 * v2 + 384;
  v7 = *(a1 + 8);
  v8 = 384 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::corrective_reranking::Parse>,quasar::corrective_reranking::Parse*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::corrective_reranking::Parse>::~__split_buffer(&v13);
  return v12;
}

void sub_1B54F4EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::corrective_reranking::Parse>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::corrective_reranking::Parse>,quasar::corrective_reranking::Parse*>(uint64_t a1, void **a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = quasar::corrective_reranking::Parse::Parse(a4, v7);
      v7 += 24;
      a4 = v8 + 384;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      quasar::corrective_reranking::Parse::~Parse(v6);
      v6 += 48;
    }
  }
}

uint64_t quasar::corrective_reranking::Parse::Parse(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(result + 24) = *(a2 + 6);
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 32) = 0;
  *(result + 32) = a2[2];
  *(result + 48) = *(a2 + 6);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 56) = *(a2 + 56);
  *(result + 72) = *(a2 + 9);
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a2 + 7) = 0;
  LODWORD(v2) = *(a2 + 20);
  *(result + 88) = 0;
  *(result + 80) = v2;
  *(result + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 88) = *(a2 + 88);
    *(result + 104) = *(a2 + 13);
    *(a2 + 11) = 0;
    *(a2 + 12) = 0;
    *(a2 + 13) = 0;
    *(result + 112) = 1;
  }

  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 120) = *(a2 + 120);
  *(result + 136) = *(a2 + 17);
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  v3 = a2[9];
  *(result + 160) = *(a2 + 20);
  *(result + 144) = v3;
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  *(a2 + 18) = 0;
  *(result + 168) = *(a2 + 42);
  *(result + 184) = 0;
  *(result + 192) = 0;
  *(result + 176) = 0;
  *(result + 176) = a2[11];
  *(result + 192) = *(a2 + 24);
  *(a2 + 23) = 0;
  *(a2 + 24) = 0;
  *(a2 + 22) = 0;
  *(result + 200) = *(a2 + 200);
  *(result + 216) = 0;
  *(result + 224) = 0;
  *(result + 208) = 0;
  *(result + 208) = a2[13];
  *(result + 224) = *(a2 + 28);
  *(a2 + 26) = 0;
  *(a2 + 27) = 0;
  *(a2 + 28) = 0;
  *(result + 232) = 0;
  *(result + 240) = 0;
  *(result + 248) = 0;
  *(result + 232) = *(a2 + 232);
  *(result + 248) = *(a2 + 31);
  *(a2 + 30) = 0;
  *(a2 + 31) = 0;
  *(a2 + 29) = 0;
  *(result + 256) = *(a2 + 256);
  *(result + 264) = 0;
  *(result + 288) = 0;
  if (*(a2 + 288) == 1)
  {
    *(result + 264) = 0;
    *(result + 272) = 0;
    *(result + 280) = 0;
    *(result + 264) = *(a2 + 33);
    *(result + 272) = a2[17];
    *(a2 + 33) = 0;
    *(a2 + 34) = 0;
    *(a2 + 35) = 0;
    *(result + 288) = 1;
  }

  *(result + 296) = 0;
  *(result + 368) = 0;
  if (*(a2 + 368) == 1)
  {
    v4 = *(a2 + 296);
    *(result + 312) = *(a2 + 39);
    *(result + 296) = v4;
    *(a2 + 38) = 0;
    *(a2 + 39) = 0;
    *(a2 + 37) = 0;
    v5 = a2[20];
    *(result + 336) = *(a2 + 42);
    *(result + 320) = v5;
    *(a2 + 41) = 0;
    *(a2 + 42) = 0;
    *(a2 + 40) = 0;
    v6 = *(a2 + 344);
    *(result + 360) = *(a2 + 45);
    *(result + 344) = v6;
    *(a2 + 44) = 0;
    *(a2 + 45) = 0;
    *(a2 + 43) = 0;
    *(result + 368) = 1;
  }

  *(result + 376) = *(a2 + 47);
  return result;
}

uint64_t std::__split_buffer<quasar::corrective_reranking::Parse>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 384;
    quasar::corrective_reranking::Parse::~Parse((i - 384));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<quasar::corrective_reranking::Parse>::__emplace_back_slow_path<quasar::corrective_reranking::ASRCandidate const&,std::vector<std::string> const&,float const&,quasar::corrective_reranking::TargetRange>(void *a1, __int128 *a2, int a3, uint64_t a4, __int128 *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 7) + 1;
  if (v5 <= 0xAAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 7) > v5)
    {
      v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 7);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 7) >= 0x55555555555555)
    {
      v7 = 0xAAAAAAAAAAAAAALL;
    }

    else
    {
      v7 = v5;
    }

    if (v7)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::Parse>>(a1, v7);
    }

    std::allocator<quasar::corrective_reranking::Parse>::construct[abi:ne200100]<quasar::corrective_reranking::Parse,quasar::corrective_reranking::ASRCandidate const&,std::vector<std::string> const&,float const&,quasar::corrective_reranking::TargetRange>(a1, ((a1[1] - *a1) >> 7 << 7), a2, a3, a4, a5);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void sub_1B54F52CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::corrective_reranking::Parse>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::corrective_reranking::Parse>::construct[abi:ne200100]<quasar::corrective_reranking::Parse,quasar::corrective_reranking::ASRCandidate const&,std::vector<std::string> const&,float const&,quasar::corrective_reranking::TargetRange>(uint64_t a1, std::wstring *a2, __int128 *a3, int a4, uint64_t a5, __int128 *a6)
{
  v18 = *a6;
  v19 = *(a6 + 2);
  *(a6 + 1) = 0;
  *(a6 + 2) = 0;
  *a6 = 0;
  v20 = 1;
  memset(v17, 0, sizeof(v17));
  std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(__dst, byte_1B5B03720);
  memset(v15, 0, sizeof(v15));
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  LOBYTE(v11) = 0;
  v12 = 0;
  LOBYTE(v9) = 0;
  v10 = 0;
  quasar::corrective_reranking::Parse::Parse(a2, a3, a4, &v18, v17, __dst, v15, 1, v14, v13, 0, &v11, &v9, 0, 0, 0, 0, 0, 0);
}

void sub_1B54F5498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, int a30, char a31)
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

uint64_t std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange> const*>,std::__wrap_iter<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange> const*>>(uint64_t *a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 4)) >= a5)
      {
        v19 = 3 * a5;
        std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::__move_range(a1, a2, a1[1], a2 + 48 * a5);
        v20 = &v7[v19];
        v21 = v5;
        do
        {
          std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>::operator=[abi:ne200100](v21, v7);
          v7 += 3;
          v21 += 2;
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange> const*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange> const*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 >= 1)
        {
          std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::__move_range(a1, v5, v10, v5 + 48 * a5);
          v18 = v5;
          do
          {
            std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>::operator=[abi:ne200100](v18, v7);
            v7 += 3;
            v18 += 2;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 4);
      if (v12 > 0x555555555555555)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 4);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x2AAAAAAAAAAAAAALL)
      {
        v15 = 0x555555555555555;
      }

      else
      {
        v15 = v12;
      }

      v29 = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<std::string>>>>(a1, v15);
      }

      v22 = (16 * (v13 >> 4));
      v26[0] = 0;
      v26[1] = v22;
      v27 = v22;
      v28 = 0;
      v23 = &v22[2 * a5];
      v24 = 48 * a5;
      do
      {
        std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>::pair[abi:ne200100](v22, v7);
        v22 += 2;
        v7 += 3;
        v24 -= 48;
      }

      while (v24);
      v27 = v23;
      v5 = std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::__swap_out_circular_buffer(a1, v26, v5);
      std::__split_buffer<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::~__split_buffer(v26);
    }
  }

  return v5;
}

uint64_t std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::__move_range(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  v5 = (a2 + v4 - a4);
  v6 = v4;
  while (v5 < a3)
  {
    v7 = *v5;
    *(v6 + 16) = *(v5 + 2);
    *v6 = v7;
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    *v5 = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 40) = 0;
    *(v6 + 24) = *(v5 + 24);
    *(v6 + 40) = *(v5 + 5);
    *(v5 + 3) = 0;
    *(v5 + 4) = 0;
    *(v5 + 5) = 0;
    v5 += 3;
    v6 += 48;
  }

  *(result + 8) = v6;
  if (v4 != a4)
  {
    v8 = v4 - 48;
    v9 = a4 - v4;
    v10 = (a2 + v4 - 48 - a4);
    do
    {
      result = std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>::operator=[abi:ne200100](v8, v10);
      v8 -= 48;
      v10 -= 3;
      v9 += 48;
    }

    while (v9);
  }

  return result;
}

uint64_t std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>*>(a1, v7, a3, v9);
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

std::wstring *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange> const*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange> const*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::wstring *this)
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
      std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>::pair[abi:ne200100](v4, v6);
      v6 += 3;
      v4 = v11 + 2;
      v11 += 2;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

std::wstring *std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>::pair[abi:ne200100](std::wstring *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange*,quasar::corrective_reranking::TextRange*>(&this[1], *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  return this;
}

void sub_1B54F59E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>::operator=[abi:ne200100](uint64_t a1, __int128 *a2)
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
  std::vector<int>::__move_assign(a1 + 24, (a2 + 24));
  return a1;
}

std::basic_string<char32_t> *std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>::operator=[abi:ne200100](std::basic_string<char32_t> *a1, uint64_t a2)
{
  std::basic_string<char32_t>::operator=(a1, a2);
  if (a1 != a2)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a1[1].__r_.__value_.__r.__words, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  }

  return a1;
}

void std::vector<quasar::corrective_reranking::Parse>::__emplace_back_slow_path<quasar::corrective_reranking::ASRCandidate const&,std::vector<std::string> const&,float const&,quasar::corrective_reranking::TargetRange const&>(void *a1, __int128 *a2, int a3, uint64_t a4, uint64_t *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 7) + 1;
  if (v5 <= 0xAAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 7) > v5)
    {
      v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 7);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 7) >= 0x55555555555555)
    {
      v7 = 0xAAAAAAAAAAAAAALL;
    }

    else
    {
      v7 = v5;
    }

    if (v7)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::Parse>>(a1, v7);
    }

    std::allocator<quasar::corrective_reranking::Parse>::construct[abi:ne200100]<quasar::corrective_reranking::Parse,quasar::corrective_reranking::ASRCandidate const&,std::vector<std::string> const&,float const&,quasar::corrective_reranking::TargetRange const&>(a1, ((a1[1] - *a1) >> 7 << 7), a2, a3, a4, a5);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void sub_1B54F5BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::corrective_reranking::Parse>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::corrective_reranking::Parse>::construct[abi:ne200100]<quasar::corrective_reranking::Parse,quasar::corrective_reranking::ASRCandidate const&,std::vector<std::string> const&,float const&,quasar::corrective_reranking::TargetRange const&>(uint64_t a1, std::wstring *a2, __int128 *a3, int a4, uint64_t a5, uint64_t *a6)
{
  memset(v18, 0, sizeof(v18));
  std::vector<quasar::corrective_reranking::TextRange>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::TextRange*,quasar::corrective_reranking::TextRange*>(v18, *a6, a6[1], (a6[1] - *a6) >> 3);
  v19 = 1;
  memset(v17, 0, sizeof(v17));
  std::basic_string<char32_t>::basic_string[abi:ne200100]<0>(__dst, byte_1B5B03720);
  memset(v15, 0, sizeof(v15));
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  LOBYTE(v11) = 0;
  v12 = 0;
  LOBYTE(v9) = 0;
  v10 = 0;
  quasar::corrective_reranking::Parse::Parse(a2, a3, a4, v18, v17, __dst, v15, 1, v14, v13, 0, &v11, &v9, 0, 0, 0, 0, 0, 0);
}

void sub_1B54F5DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, int a30, char a31)
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

void **std::vector<quasar::corrective_reranking::Parse>::__insert_with_size[abi:ne200100]<std::__wrap_iter<quasar::corrective_reranking::Parse*>,std::__wrap_iter<quasar::corrective_reranking::Parse*>>(void *a1, uint64_t a2, const quasar::corrective_reranking::Parse *a3, quasar::corrective_reranking::Parse *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 7)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 7)) >= a5)
      {
        v19 = 3 * a5;
        std::vector<quasar::corrective_reranking::Parse>::__move_range(a1, a2, a1[1], a2 + 384 * a5);
        v20 = (v7 + 128 * v19);
        v21 = v5;
        do
        {
          quasar::corrective_reranking::Parse::operator=(v21, v7);
          v7 = (v7 + 384);
          v21 += 384;
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::corrective_reranking::Parse>,quasar::corrective_reranking::Parse*,quasar::corrective_reranking::Parse*,quasar::corrective_reranking::Parse*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 >= 1)
        {
          std::vector<quasar::corrective_reranking::Parse>::__move_range(a1, v5, v10, &v5[48 * a5]);
          v18 = v5;
          do
          {
            quasar::corrective_reranking::Parse::operator=(v18, v7);
            v7 = (v7 + 384);
            v18 += 384;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 7);
      if (v12 > 0xAAAAAAAAAAAAAALL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 7);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x55555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v29 = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::Parse>>(a1, v15);
      }

      v22 = (v13 >> 7 << 7);
      v26[0] = 0;
      v26[1] = v22;
      v27 = v22;
      v28 = 0;
      v23 = &v22[16 * a5];
      v24 = 384 * a5;
      do
      {
        quasar::corrective_reranking::Parse::Parse(v22, v7);
        v22 += 16;
        v7 = (v7 + 384);
        v24 -= 384;
      }

      while (v24);
      v27 = v23;
      v5 = std::vector<quasar::corrective_reranking::Parse>::__swap_out_circular_buffer(a1, v26, v5);
      std::__split_buffer<quasar::corrective_reranking::Parse>::~__split_buffer(v26);
    }
  }

  return v5;
}

uint64_t std::vector<quasar::corrective_reranking::Parse>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = (a2 + v7 - a4);
  if (v8 >= a3)
  {
    result = *(a1 + 8);
  }

  else
  {
    result = *(a1 + 8);
    do
    {
      v11 = quasar::corrective_reranking::Parse::Parse(result, v8);
      v8 += 24;
      result = v11 + 384;
    }

    while (v8 < a3);
  }

  *(a1 + 8) = result;
  if (v7 != a4)
  {
    v12 = v7 - 384;
    v13 = a4 - v7;
    v14 = (a2 + v7 - 384 - a4);
    do
    {
      result = quasar::corrective_reranking::Parse::operator=(v12, v14);
      v12 -= 384;
      v14 -= 24;
      v13 += 384;
    }

    while (v13);
  }

  return result;
}

uint64_t std::vector<quasar::corrective_reranking::Parse>::__swap_out_circular_buffer(uint64_t a1, void *a2, void **a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::corrective_reranking::Parse>,quasar::corrective_reranking::Parse*>(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::corrective_reranking::Parse>,quasar::corrective_reranking::Parse*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t quasar::corrective_reranking::Parse::operator=(uint64_t a1, uint64_t a2)
{
  std::basic_string<char32_t>::operator=(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  if (a1 == a2)
  {
    *(a1 + 80) = *(a2 + 80);
    std::__optional_storage_base<quasar::corrective_reranking::TargetRange,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<quasar::corrective_reranking::TargetRange,false> const&>(a1 + 88, a2 + 88);
    std::basic_string<char32_t>::operator=((a1 + 144), (a2 + 144));
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 200) = *(a2 + 200);
  }

  else
  {
    std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__assign_with_size[abi:ne200100]<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*>((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 5);
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 56), *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 3));
    *(a1 + 80) = *(a2 + 80);
    std::__optional_storage_base<quasar::corrective_reranking::TargetRange,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<quasar::corrective_reranking::TargetRange,false> const&>(a1 + 88, a2 + 88);
    std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__assign_with_size[abi:ne200100]<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*,std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>*>((a1 + 120), *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 5);
    std::basic_string<char32_t>::operator=((a1 + 144), (a2 + 144));
    *(a1 + 168) = *(a2 + 168);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 176), *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
    *(a1 + 200) = *(a2 + 200);
    std::vector<std::basic_string<char32_t>>::__assign_with_size[abi:ne200100]<std::basic_string<char32_t>*,std::basic_string<char32_t>*>((a1 + 208), *(a2 + 208), *(a2 + 216), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 216) - *(a2 + 208)) >> 3));
    std::vector<std::basic_string<char32_t>>::__assign_with_size[abi:ne200100]<std::basic_string<char32_t>*,std::basic_string<char32_t>*>((a1 + 232), *(a2 + 232), *(a2 + 240), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 240) - *(a2 + 232)) >> 3));
  }

  *(a1 + 256) = *(a2 + 256);
  std::__optional_storage_base<quasar::corrective_reranking::TargetRange,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<quasar::corrective_reranking::TargetRange,false> const&>(a1 + 264, a2 + 264);
  std::__optional_storage_base<quasar::corrective_reranking::AdjustedPayloadParts,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<quasar::corrective_reranking::AdjustedPayloadParts,false> const&>((a1 + 296), (a2 + 296));
  *(a1 + 376) = *(a2 + 376);
  return a1;
}

void std::__optional_storage_base<quasar::corrective_reranking::AdjustedPayloadParts,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<quasar::corrective_reranking::AdjustedPayloadParts,false> const&>(std::wstring *this, std::basic_string<char32_t> *__str)
{
  if (LOBYTE(this[3].__r_.__value_.__l.__data_) == LOBYTE(__str[3].__r_.__value_.__l.__data_))
  {
    if (LOBYTE(this[3].__r_.__value_.__l.__data_))
    {
      std::basic_string<char32_t>::operator=(this, __str);
      std::basic_string<char32_t>::operator=(&this[1], __str + 1);

      std::basic_string<char32_t>::operator=(&this[2], __str + 2);
    }
  }

  else if (LOBYTE(this[3].__r_.__value_.__l.__data_))
  {

    std::__optional_destruct_base<quasar::corrective_reranking::AdjustedPayloadParts,false>::reset[abi:ne200100](this);
  }

  else
  {

    std::__optional_storage_base<quasar::corrective_reranking::AdjustedPayloadParts,false>::__construct[abi:ne200100]<quasar::corrective_reranking::AdjustedPayloadParts const&>(this, __str);
  }
}

uint64_t std::vector<quasar::corrective_reranking::Parse>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 7) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 384 * a2;
      do
      {
        *(v4 + 336) = 0uLL;
        *(v4 + 352) = 0uLL;
        *(v4 + 304) = 0uLL;
        *(v4 + 320) = 0uLL;
        *(v4 + 272) = 0uLL;
        *(v4 + 288) = 0uLL;
        *(v4 + 192) = 0uLL;
        *(v4 + 208) = 0uLL;
        *(v4 + 160) = 0uLL;
        *(v4 + 176) = 0uLL;
        *(v4 + 128) = 0uLL;
        *(v4 + 144) = 0uLL;
        *(v4 + 96) = 0uLL;
        *(v4 + 112) = 0uLL;
        *(v4 + 64) = 0uLL;
        *(v4 + 80) = 0uLL;
        *(v4 + 32) = 0uLL;
        *(v4 + 48) = 0uLL;
        *v4 = 0uLL;
        *(v4 + 16) = 0uLL;
        *(v4 + 200) = 1;
        *(v4 + 208) = 0uLL;
        *(v4 + 224) = 0uLL;
        *(v4 + 224) = 0uLL;
        *(v4 + 240) = 0uLL;
        *(v4 + 240) = 0uLL;
        *(v4 + 256) = 0uLL;
        *(v4 + 256) = 0;
        *(v4 + 368) = 0;
        *(v4 + 376) = 0;
        v4 += 384;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 7);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 7);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x55555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v20 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::Parse>>(result, v9);
    }

    v11 = 384 * v6;
    v17 = 0;
    v18 = 384 * v6;
    *(&v19 + 1) = 0;
    v12 = 384 * v6;
    do
    {
      *(v12 + 336) = 0uLL;
      *(v12 + 352) = 0uLL;
      *(v12 + 304) = 0uLL;
      *(v12 + 320) = 0uLL;
      *(v12 + 272) = 0uLL;
      *(v12 + 288) = 0uLL;
      *(v12 + 192) = 0uLL;
      *(v12 + 208) = 0uLL;
      *(v12 + 160) = 0uLL;
      *(v12 + 176) = 0uLL;
      *(v12 + 128) = 0uLL;
      *(v12 + 144) = 0uLL;
      *(v12 + 96) = 0uLL;
      *(v12 + 112) = 0uLL;
      *(v12 + 64) = 0uLL;
      *(v12 + 80) = 0uLL;
      *(v12 + 32) = 0uLL;
      *(v12 + 48) = 0uLL;
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 200) = 1;
      *(v12 + 208) = 0uLL;
      *(v12 + 224) = 0uLL;
      *(v12 + 224) = 0uLL;
      *(v12 + 240) = 0uLL;
      *(v12 + 240) = 0uLL;
      *(v12 + 256) = 0uLL;
      *(v12 + 256) = 0;
      *(v12 + 368) = 0;
      *(v12 + 376) = 0;
      v12 += 384;
    }

    while (v12 != 384 * v6 + 384 * a2);
    *&v19 = v11 + 384 * a2;
    v13 = *(result + 8);
    v14 = v11 + *result - v13;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::corrective_reranking::Parse>,quasar::corrective_reranking::Parse*>(result, *result, v13, v14);
    v15 = *v3;
    *v3 = v14;
    v16 = *(v3 + 16);
    *(v3 + 8) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    return std::__split_buffer<quasar::corrective_reranking::Parse>::~__split_buffer(&v17);
  }

  return result;
}

void sub_1B54F65D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::corrective_reranking::Parse>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

float std::vector<quasar::EuclidNeighbor>::__construct_one_at_end[abi:ne200100]<std::string const&,double>(uint64_t a1, __int128 *a2, double *a3)
{
  v4 = *(a1 + 8);
  v5 = *a3;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
  }

  result = v5;
  *(v4 + 24) = -1;
  *(v4 + 28) = result;
  *(a1 + 8) = v4 + 32;
  return result;
}

uint64_t std::vector<quasar::EuclidNeighbor>::__emplace_back_slow_path<std::string const&,double>(uint64_t a1, __int128 *a2, double *a3)
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

  v24 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>>(a1, v8);
  }

  v9 = 32 * v3;
  v21 = 0;
  v22 = v9;
  v23 = v9;
  v10 = *a3;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v9, *a2, *(a2 + 1));
    v12 = v22;
    v13 = v23;
  }

  else
  {
    v11 = *a2;
    *(v9 + 16) = *(a2 + 2);
    *v9 = v11;
    v12 = v9;
    v13 = v9;
  }

  v14 = v10;
  *(v9 + 24) = -1;
  *(v9 + 28) = v14;
  *&v23 = v13 + 32;
  v15 = *(a1 + 8);
  v16 = v12 + *a1 - v15;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::EuclidNeighbor>,quasar::EuclidNeighbor*>(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  v18 = *(a1 + 16);
  v20 = v23;
  *(a1 + 8) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(&v21);
  return v20;
}

void sub_1B54F67A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::corrective_reranking::Parse>::__emplace_back_slow_path<quasar::corrective_reranking::Parse&>(uint64_t a1, const quasar::corrective_reranking::Parse *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 7);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 7) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 7);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 7) >= 0x55555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::Parse>>(a1, v6);
  }

  v13 = 0;
  v14 = 384 * v2;
  quasar::corrective_reranking::Parse::Parse((384 * v2), a2);
  v15 = 384 * v2 + 384;
  v7 = *(a1 + 8);
  v8 = 384 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::corrective_reranking::Parse>,quasar::corrective_reranking::Parse*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::corrective_reranking::Parse>::~__split_buffer(&v13);
  return v12;
}

void sub_1B54F68D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::corrective_reranking::Parse>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void **std::vector<quasar::corrective_reranking::Parse>::__insert_with_size[abi:ne200100]<std::__wrap_iter<quasar::corrective_reranking::Parse const*>,std::__wrap_iter<quasar::corrective_reranking::Parse const*>>(void *a1, uint64_t a2, const quasar::corrective_reranking::Parse *a3, quasar::corrective_reranking::Parse *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 7)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 7)) >= a5)
      {
        v19 = 3 * a5;
        std::vector<quasar::corrective_reranking::Parse>::__move_range(a1, a2, a1[1], a2 + 384 * a5);
        v20 = (v7 + 128 * v19);
        v21 = v5;
        do
        {
          quasar::corrective_reranking::Parse::operator=(v21, v7);
          v7 = (v7 + 384);
          v21 += 384;
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::corrective_reranking::Parse>,quasar::corrective_reranking::Parse const*,quasar::corrective_reranking::Parse const*,quasar::corrective_reranking::Parse*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 >= 1)
        {
          std::vector<quasar::corrective_reranking::Parse>::__move_range(a1, v5, v10, &v5[48 * a5]);
          v18 = v5;
          do
          {
            quasar::corrective_reranking::Parse::operator=(v18, v7);
            v7 = (v7 + 384);
            v18 += 384;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 7);
      if (v12 > 0xAAAAAAAAAAAAAALL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 7);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x55555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v29 = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::Parse>>(a1, v15);
      }

      v22 = (v13 >> 7 << 7);
      v26[0] = 0;
      v26[1] = v22;
      v27 = v22;
      v28 = 0;
      v23 = &v22[16 * a5];
      v24 = 384 * a5;
      do
      {
        quasar::corrective_reranking::Parse::Parse(v22, v7);
        v22 += 16;
        v7 = (v7 + 384);
        v24 -= 384;
      }

      while (v24);
      v27 = v23;
      v5 = std::vector<quasar::corrective_reranking::Parse>::__swap_out_circular_buffer(a1, v26, v5);
      std::__split_buffer<quasar::corrective_reranking::Parse>::~__split_buffer(v26);
    }
  }

  return v5;
}

std::wstring *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::corrective_reranking::Parse>,quasar::corrective_reranking::Parse const*,quasar::corrective_reranking::Parse const*,quasar::corrective_reranking::Parse*>(int a1, quasar::corrective_reranking::Parse *a2, quasar::corrective_reranking::Parse *a3, std::wstring *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      quasar::corrective_reranking::Parse::Parse(this, v6);
      v6 = (v6 + 384);
      this += 16;
      v7 -= 384;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_1B54F6B70(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 384);
    do
    {
      quasar::corrective_reranking::Parse::~Parse(v4);
      v4 = (v5 - 384);
      v2 += 384;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::corrective_reranking::Parse>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::Parse const*,quasar::corrective_reranking::Parse const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::corrective_reranking::Parse>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B54F6BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::corrective_reranking::Parse>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__stable_sort<std::_ClassicAlgPolicy,quasar::corrective_reranking::CorrectiveReranker::rankParses(std::vector<quasar::corrective_reranking::Parse> const&,std::basic_string<char32_t> const&,std::vector<int> const&,std::vector<int> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::Parse*>>(uint64_t a1, __int128 *a2, unint64_t a3, quasar::corrective_reranking::Parse *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    v6 = a1;
    if (a3 == 2)
    {
      if (*(a2 - 54) > *(a1 + 168))
      {
        v7 = a2 - 24;

        std::swap[abi:ne200100]<quasar::corrective_reranking::Parse>(a1, v7);
      }
    }

    else if (a3 <= 0)
    {
      if (a1 != a2)
      {
        v14 = a1 + 384;
        if ((a1 + 384) != a2)
        {
          v15 = 0;
          v16 = a1;
          do
          {
            v17 = v14;
            if (*(v16 + 552) > *(v16 + 168))
            {
              v18 = *v14;
              v33 = *(v14 + 16);
              *v32 = v18;
              *(v14 + 8) = 0;
              *(v14 + 16) = 0;
              *v14 = 0;
              v34 = *(v16 + 408);
              v35 = *(v16 + 416);
              v36 = *(v16 + 432);
              *(v16 + 416) = 0;
              *(v16 + 424) = 0;
              *(v16 + 432) = 0;
              v37 = *(v16 + 440);
              v38 = *(v16 + 456);
              *(v16 + 448) = 0;
              *(v16 + 456) = 0;
              *(v16 + 440) = 0;
              v39 = *(v16 + 464);
              LOBYTE(v40) = 0;
              v42 = 0;
              if (*(v16 + 496) == 1)
              {
                v40 = *(v16 + 472);
                v41 = *(v16 + 488);
                *(v16 + 472) = 0;
                *(v16 + 480) = 0;
                *(v16 + 488) = 0;
                v42 = 1;
              }

              v43 = *(v16 + 504);
              v44 = *(v16 + 520);
              *(v16 + 504) = 0u;
              *(v16 + 520) = 0;
              v45 = *(v16 + 528);
              v46 = *(v16 + 544);
              *(v16 + 536) = 0u;
              *(v16 + 528) = 0;
              v47 = *(v16 + 552);
              v48 = *(v16 + 560);
              v49 = *(v16 + 576);
              *(v16 + 560) = 0u;
              *(v16 + 576) = 0;
              v50 = *(v16 + 584);
              v51 = *(v16 + 592);
              v52 = *(v16 + 608);
              *(v16 + 592) = 0u;
              *(v16 + 608) = 0;
              v53 = *(v16 + 616);
              v54 = *(v16 + 632);
              *(v16 + 616) = 0;
              *(v16 + 624) = 0;
              *(v16 + 632) = 0;
              v55 = *(v16 + 640);
              LOBYTE(v56) = 0;
              v58 = 0;
              if (*(v16 + 672) == 1)
              {
                v56 = *(v16 + 648);
                v57 = *(v16 + 656);
                *(v16 + 656) = 0;
                *(v16 + 664) = 0;
                *(v16 + 648) = 0;
                v58 = 1;
              }

              LOBYTE(v59) = 0;
              v65 = 0;
              if (*(v16 + 752) == 1)
              {
                v59 = *(v16 + 680);
                v60 = *(v16 + 696);
                v19 = *(v16 + 704);
                *(v16 + 680) = 0uLL;
                *(v16 + 696) = 0uLL;
                v61 = v19;
                v62 = *(v16 + 720);
                *(v16 + 712) = 0uLL;
                v64 = *(v16 + 744);
                v63 = *(v16 + 728);
                *(v16 + 744) = 0;
                *(v16 + 728) = 0uLL;
                v65 = 1;
              }

              v66 = *(v16 + 760);
              v20 = v15;
              while (1)
              {
                quasar::corrective_reranking::Parse::operator=(v6 + v20 + 384, (v6 + v20));
                if (!v20)
                {
                  break;
                }

                v21 = *(v6 + v20 - 216);
                v20 -= 384;
                if (v47 <= v21)
                {
                  v22 = v6 + v20 + 384;
                  goto LABEL_28;
                }
              }

              v22 = v6;
LABEL_28:
              quasar::corrective_reranking::Parse::operator=(v22, v32);
              quasar::corrective_reranking::Parse::~Parse(v32);
            }

            v14 = v17 + 384;
            v15 += 384;
            v16 = v17;
          }

          while ((v17 + 384) != a2);
        }
      }
    }

    else
    {
      v10 = a4;
      v11 = a3 >> 1;
      v12 = a1 + 384 * (a3 >> 1);
      if (a3 <= a5)
      {
        v31 = 0;
        v32[0] = a4;
        v32[1] = &v31;
        std::__stable_sort_move<std::_ClassicAlgPolicy,quasar::corrective_reranking::CorrectiveReranker::rankParses(std::vector<quasar::corrective_reranking::Parse> const&,std::basic_string<char32_t> const&,std::vector<int> const&,std::vector<int> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::Parse*>>(a1, (a1 + 384 * (a3 >> 1)), a3 >> 1, a4);
        v31 = a3 >> 1;
        v23 = a3 - v11;
        v24 = v10 + 384 * v11;
        std::__stable_sort_move<std::_ClassicAlgPolicy,quasar::corrective_reranking::CorrectiveReranker::rankParses(std::vector<quasar::corrective_reranking::Parse> const&,std::basic_string<char32_t> const&,std::vector<int> const&,std::vector<int> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::Parse*>>(v6 + 384 * (a3 >> 1), a2, v23, v24);
        v31 = a3;
        v25 = v10 + 384 * a3;
        v26 = v24;
        while (v26 != v25)
        {
          if (*(v26 + 168) <= *(v10 + 42))
          {
            quasar::corrective_reranking::Parse::operator=(v6, v10);
            v10 = (v10 + 384);
          }

          else
          {
            quasar::corrective_reranking::Parse::operator=(v6, v26);
            v26 += 384;
          }

          v6 += 384;
          if (v10 == v24)
          {
            while (v26 != v25)
            {
              quasar::corrective_reranking::Parse::operator=(v6, v26);
              v26 += 384;
              v6 += 384;
            }

            goto LABEL_43;
          }
        }

        while (v10 != v24)
        {
          quasar::corrective_reranking::Parse::operator=(v6, v10);
          v10 = (v10 + 384);
          v6 += 384;
        }

LABEL_43:
        v27 = v32[0];
        if (v32[0])
        {
          v28 = v32[1];
          if (*v32[1])
          {
            v29 = 0;
            do
            {
              quasar::corrective_reranking::Parse::~Parse(v27);
              ++v29;
              v27 = (v30 + 384);
            }

            while (v29 < *v28);
          }
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,quasar::corrective_reranking::CorrectiveReranker::rankParses(std::vector<quasar::corrective_reranking::Parse> const&,std::basic_string<char32_t> const&,std::vector<int> const&,std::vector<int> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::Parse*>>(a1, a1 + 384 * (a3 >> 1), a3 >> 1, a4, a5);
        v13 = a3 - v11;
        std::__stable_sort<std::_ClassicAlgPolicy,quasar::corrective_reranking::CorrectiveReranker::rankParses(std::vector<quasar::corrective_reranking::Parse> const&,std::basic_string<char32_t> const&,std::vector<int> const&,std::vector<int> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::Parse*>>(v12, a2, v13, v10, a5);

        std::__inplace_merge<std::_ClassicAlgPolicy,quasar::corrective_reranking::CorrectiveReranker::rankParses(std::vector<quasar::corrective_reranking::Parse> const&,std::basic_string<char32_t> const&,std::vector<int> const&,std::vector<int> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::Parse*>>(v6, v12, a2, v11, v13, v10, a5);
      }
    }
  }
}

void sub_1B54F70E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<quasar::corrective_reranking::Parse,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,quasar::corrective_reranking::CorrectiveReranker::rankParses(std::vector<quasar::corrective_reranking::Parse> const&,std::basic_string<char32_t> const&,std::vector<int> const&,std::vector<int> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::Parse*>>(uint64_t result, __int128 *a2, unint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return result;
  }

  v4 = a4;
  v7 = result;
  if (a3 == 2)
  {
    if (*(a2 - 54) <= *(result + 168))
    {
      quasar::corrective_reranking::Parse::Parse(a4, result);
      v8 = v4 + 384;
      v9 = a2 - 24;
      goto LABEL_23;
    }

    quasar::corrective_reranking::Parse::Parse(a4, a2 - 24);
    v8 = v4 + 384;
LABEL_7:
    v9 = v7;
LABEL_23:

    return quasar::corrective_reranking::Parse::Parse(v8, v9);
  }

  if (a3 == 1)
  {
    v8 = a4;
    goto LABEL_7;
  }

  if (a3 > 8)
  {
    v18 = result + 384 * (a3 >> 1);
    std::__stable_sort<std::_ClassicAlgPolicy,quasar::corrective_reranking::CorrectiveReranker::rankParses(std::vector<quasar::corrective_reranking::Parse> const&,std::basic_string<char32_t> const&,std::vector<int> const&,std::vector<int> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::Parse*>>(result, v18, a3 >> 1, a4, a3 >> 1);
    result = std::__stable_sort<std::_ClassicAlgPolicy,quasar::corrective_reranking::CorrectiveReranker::rankParses(std::vector<quasar::corrective_reranking::Parse> const&,std::basic_string<char32_t> const&,std::vector<int> const&,std::vector<int> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::Parse*>>(v7 + 384 * (a3 >> 1), a2, a3 - (a3 >> 1), v4 + 384 * (a3 >> 1), a3 - (a3 >> 1));
    v19 = v7 + 384 * (a3 >> 1);
    while (v19 != a2)
    {
      if (*(v19 + 168) <= *(v7 + 168))
      {
        result = quasar::corrective_reranking::Parse::Parse(v4, v7);
        v7 += 384;
      }

      else
      {
        result = quasar::corrective_reranking::Parse::Parse(v4, v19);
        v19 += 384;
      }

      v4 += 384;
      if (v7 == v18)
      {
        while (v19 != a2)
        {
          result = quasar::corrective_reranking::Parse::Parse(v4, v19);
          v19 += 384;
          v4 += 384;
        }

        return result;
      }
    }

    while (v7 != v18)
    {
      result = quasar::corrective_reranking::Parse::Parse(v4, v7);
      v7 += 384;
      v4 += 384;
    }
  }

  else if (result != a2)
  {
    result = quasar::corrective_reranking::Parse::Parse(a4, result);
    v10 = (v7 + 384);
    if ((v7 + 384) != a2)
    {
      v11 = 0;
      v12 = v4;
      do
      {
        v13 = v10;
        v14 = v12 + 384;
        v15 = v12 + 384;
        if (*(v7 + 552) <= *(v12 + 168))
        {
          result = quasar::corrective_reranking::Parse::Parse(v15, v10);
        }

        else
        {
          quasar::corrective_reranking::Parse::Parse(v15, v12);
          v16 = v4;
          if (v12 != v4)
          {
            v17 = v11;
            while (1)
            {
              v16 = v4 + v17;
              if (*(v7 + 552) <= *(v4 + v17 - 216))
              {
                break;
              }

              v17 -= 384;
              quasar::corrective_reranking::Parse::operator=(v16, (v17 + v4));
              if (!v17)
              {
                v16 = v4;
                break;
              }
            }
          }

          result = quasar::corrective_reranking::Parse::operator=(v16, v13);
        }

        v10 = v13 + 24;
        v11 += 384;
        v12 = v14;
        v7 = v13;
      }

      while (v13 + 24 != a2);
    }
  }

  return result;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,quasar::corrective_reranking::CorrectiveReranker::rankParses(std::vector<quasar::corrective_reranking::Parse> const&,std::basic_string<char32_t> const&,std::vector<int> const&,std::vector<int> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::Parse*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, uint64_t a7)
{
  if (a5)
  {
    v8 = a5;
    while (v8 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return;
      }

      v13 = 0;
      v14 = -a4;
      while (1)
      {
        v15 = a1 + v13;
        if (*(a2 + 168) > *(a1 + v13 + 168))
        {
          break;
        }

        v13 += 384;
        if (__CFADD__(v14++, 1))
        {
          return;
        }
      }

      v56 = a3;
      v57 = a6;
      if (-v14 >= v8)
      {
        if (v14 == -1)
        {

          std::swap[abi:ne200100]<quasar::corrective_reranking::Parse>(a1 + v13, a2);
          return;
        }

        v25 = -v14 / 2;
        v18 = a2;
        if (a2 != a3)
        {
          v26 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 7);
          v18 = a2;
          do
          {
            v27 = v26 >> 1;
            v28 = v18 + 384 * (v26 >> 1);
            v29 = *(v28 + 168);
            v30 = v28 + 384;
            v26 += ~(v26 >> 1);
            if (v29 > *(a1 + 384 * v25 + v13 + 168))
            {
              v18 = v30;
            }

            else
            {
              v26 = v27;
            }
          }

          while (v26);
        }

        v17 = 0xAAAAAAAAAAAAAAABLL * ((v18 - a2) >> 7);
        v19 = a1 + 384 * v25 + v13;
      }

      else
      {
        v17 = v8 / 2;
        v18 = a2 + 384 * (v8 / 2);
        v19 = a2;
        if (a2 - a1 != v13)
        {
          v20 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1 - v13) >> 7);
          v19 = a1 + v13;
          do
          {
            v21 = v20 >> 1;
            v22 = v19 + 384 * (v20 >> 1);
            v23 = *(v22 + 168);
            v24 = v22 + 384;
            v20 += ~(v20 >> 1);
            if (*(v18 + 168) > v23)
            {
              v20 = v21;
            }

            else
            {
              v19 = v24;
            }
          }

          while (v20);
        }

        v25 = 0xAAAAAAAAAAAAAAABLL * ((v19 - a1 - v13) >> 7);
      }

      a3 = v18;
      if (v19 != a2)
      {
        a3 = v19;
        if (a2 != v18)
        {
          v31 = a7;
          v32 = v25;
          v33 = v17;
          v34 = std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<quasar::corrective_reranking::Parse *>>(v19, a2, v18);
          v17 = v33;
          v25 = v32;
          a7 = v31;
          a3 = v34;
        }
      }

      a4 = -v14 - v25;
      v35 = v8 - v17;
      if (v25 + v17 >= v8 - (v25 + v17) - v14)
      {
        v39 = v25;
        v40 = v17;
        v38 = a7;
        std::__inplace_merge<std::_ClassicAlgPolicy,quasar::corrective_reranking::CorrectiveReranker::rankParses(std::vector<quasar::corrective_reranking::Parse> const&,std::basic_string<char32_t> const&,std::vector<int> const&,std::vector<int> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::Parse*>>(a3, v18, v56, a4, v35, v57);
        v18 = v19;
        a6 = v57;
        v35 = v40;
        a4 = v39;
      }

      else
      {
        v36 = a1 + v13;
        v37 = v19;
        a6 = v57;
        v38 = a7;
        std::__inplace_merge<std::_ClassicAlgPolicy,quasar::corrective_reranking::CorrectiveReranker::rankParses(std::vector<quasar::corrective_reranking::Parse> const&,std::basic_string<char32_t> const&,std::vector<int> const&,std::vector<int> const&,BOOL)::$_0 &,std::__wrap_iter<quasar::corrective_reranking::Parse*>>(v36, v37, a3, v25, v17, v57);
        v15 = a3;
        a3 = v56;
      }

      v8 = v35;
      a1 = v15;
      a2 = v18;
      a7 = v38;
      if (!v35)
      {
        return;
      }
    }

    v41 = a2;
    if (a4 <= v8)
    {
      if (a2 == a1)
      {
        return;
      }

      v43 = 0;
      v50 = a6;
      v51 = a1;
      do
      {
        quasar::corrective_reranking::Parse::Parse(v50, v51);
        ++v43;
        v51 += 24;
        v50 += 384;
      }

      while (v51 != v41);
      v52 = v41;
      v53 = a6;
      while (v52 != a3)
      {
        v54 = v52;
        if (*(v52 + 42) <= *(v53 + 42))
        {
          quasar::corrective_reranking::Parse::operator=(a1, v53);
          v52 = v54;
          v53 += 48;
        }

        else
        {
          quasar::corrective_reranking::Parse::operator=(a1, v52);
          v52 = v54 + 24;
        }

        a1 += 384;
        if (v50 == v53)
        {
          goto LABEL_66;
        }
      }

      do
      {
        quasar::corrective_reranking::Parse::operator=(a1, v53);
        a1 += 384;
        v55 = v50 - 384 == v53;
        v53 += 48;
      }

      while (!v55);
    }

    else
    {
      if (a2 == a3)
      {
        return;
      }

      v42 = 0;
      v43 = 0;
      do
      {
        quasar::corrective_reranking::Parse::Parse(&a6[v42 / 8], (a2 + v42));
        a2 = v41;
        ++v43;
        v42 += 384;
      }

      while (&v41[v42 / 0x10] != a3);
      v44 = a3 - 384;
      v45 = &a6[v42 / 8];
      while (a2 != a1)
      {
        v46 = *(v45 - 54);
        v47 = *(a2 - 216);
        if (v46 <= v47)
        {
          v48 = v45 - 24;
        }

        else
        {
          v48 = (a2 - 384);
        }

        if (v46 <= v47)
        {
          v49 = a2;
        }

        else
        {
          v49 = a2 - 384;
        }

        if (v46 <= v47)
        {
          v45 -= 24;
        }

        quasar::corrective_reranking::Parse::operator=(v44, v48);
        a2 = v49;
        v44 -= 384;
        if (v45 == a6)
        {
          goto LABEL_66;
        }
      }

      while (v45 != a6)
      {
        v45 -= 24;
        quasar::corrective_reranking::Parse::operator=(v44, v45);
        v44 -= 384;
      }
    }

LABEL_66:
    if (a6 && v43)
    {
      do
      {
        quasar::corrective_reranking::Parse::~Parse(a6);
        a6 += 48;
        --v43;
      }

      while (v43);
    }
  }
}

void std::swap[abi:ne200100]<quasar::corrective_reranking::Parse>(uint64_t a1, __int128 *a2)
{
  v7 = *a1;
  v8 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v12 = *(a1 + 56);
  v13 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v14 = *(a1 + 80);
  LOBYTE(v15) = 0;
  v17 = 0;
  if (*(a1 + 112) == 1)
  {
    v15 = *(a1 + 88);
    v16 = *(a1 + 104);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 88) = 0;
    v17 = 1;
  }

  v18 = *(a1 + 120);
  v19 = *(a1 + 136);
  v3 = *(a1 + 144);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v20 = v3;
  v21 = *(a1 + 160);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v22 = *(a1 + 168);
  v23 = *(a1 + 176);
  v24 = *(a1 + 192);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v25 = *(a1 + 200);
  v26 = *(a1 + 208);
  v27 = *(a1 + 224);
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  v28 = *(a1 + 232);
  v29 = *(a1 + 248);
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  v30 = *(a1 + 256);
  LOBYTE(v31) = 0;
  v33 = 0;
  if (*(a1 + 288) == 1)
  {
    v31 = *(a1 + 264);
    v32 = *(a1 + 272);
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
    *(a1 + 264) = 0;
    v33 = 1;
  }

  LOBYTE(v34) = 0;
  v40 = 0;
  if (*(a1 + 368) == 1)
  {
    v35 = *(a1 + 312);
    v34 = *(a1 + 296);
    v4 = *(a1 + 320);
    *(a1 + 312) = 0;
    *(a1 + 320) = 0;
    *(a1 + 296) = 0;
    *(a1 + 304) = 0;
    v36 = v4;
    v5 = *(a1 + 336);
    *(a1 + 328) = 0;
    *(a1 + 336) = 0;
    v38 = *(a1 + 344);
    v6 = *(a1 + 360);
    v37 = v5;
    v39 = v6;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 344) = 0;
    v40 = 1;
  }

  v41 = *(a1 + 376);
  quasar::corrective_reranking::Parse::operator=(a1, a2);
  quasar::corrective_reranking::Parse::operator=(a2, &v7);
  quasar::corrective_reranking::Parse::~Parse(&v7);
}

uint64_t std::unique_ptr<quasar::corrective_reranking::Parse,std::__destruct_n &>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (*v3)
    {
      v4 = 0;
      do
      {
        quasar::corrective_reranking::Parse::~Parse(v2);
        ++v4;
        v2 = (v5 + 384);
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

uint64_t std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<quasar::corrective_reranking::Parse *>>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v4 = a2;
  std::swap[abi:ne200100]<quasar::corrective_reranking::Parse>(a1, a2);
  v6 = a1 + 384;
  for (i = v4 + 24; i != a3; i += 24)
  {
    if (v6 == v4)
    {
      v4 = i;
    }

    std::swap[abi:ne200100]<quasar::corrective_reranking::Parse>(v6, i);
    v6 += 384;
  }

  if (v6 != v4)
  {
    v8 = v6;
    v9 = v4;
    do
    {
      while (1)
      {
        std::swap[abi:ne200100]<quasar::corrective_reranking::Parse>(v8, v9);
        v8 += 384;
        v9 += 24;
        if (v9 == a3)
        {
          break;
        }

        if (v8 == v4)
        {
          v4 = v9;
        }
      }

      v9 = v4;
    }

    while (v8 != v4);
  }

  return v6;
}

uint64_t *std::__find[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::string,std::__identity>(uint64_t *a1, uint64_t *a2, const void **a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = *(a3 + 23);
    if (v5 >= 0)
    {
      v6 = *(a3 + 23);
    }

    else
    {
      v6 = a3[1];
    }

    if (v5 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    while (1)
    {
      v8 = *(v3 + 39);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = v3[3];
      }

      if (v8 == v6)
      {
        v10 = v9 >= 0 ? v3 + 2 : v3[2];
        if (!memcmp(v10, v7, v6))
        {
          break;
        }
      }

      v3 = *v3;
      if (v3 == a2)
      {
        return a2;
      }
    }
  }

  return v3;
}

void std::vector<quasar::corrective_reranking::TokenClassification>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 64;
        std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<quasar::corrective_reranking::TokenClassification>::__emplace_back_slow_path<quasar::corrective_reranking::TokenClassification&>(uint64_t *a1, __int128 *a2)
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

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::TokenClassification>>(a1, v7);
  }

  v14 = 0;
  v15 = v2 << 6;
  std::allocator_traits<std::allocator<quasar::corrective_reranking::TokenClassification>>::construct[abi:ne200100]<quasar::corrective_reranking::TokenClassification,quasar::corrective_reranking::TokenClassification&,0>(a1, (v2 << 6), a2);
  v16 = ((v2 << 6) + 64);
  v8 = a1[1];
  v9 = (v2 << 6) + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::corrective_reranking::TokenClassification>,quasar::corrective_reranking::TokenClassification*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<quasar::corrective_reranking::TokenClassification>::~__split_buffer(&v14);
  return v13;
}

void sub_1B54F7CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::corrective_reranking::TokenClassification>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::allocator_traits<std::allocator<quasar::corrective_reranking::TokenClassification>>::construct[abi:ne200100]<quasar::corrective_reranking::TokenClassification,quasar::corrective_reranking::TokenClassification&,0>(int a1, std::wstring *this, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(this, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    this->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&this[1], *(a3 + 3), *(a3 + 4), (*(a3 + 4) - *(a3 + 3)) >> 2);
  v7 = *(a3 + 6);
  this[2].__r_.__value_.__s.__data_[2] = *(a3 + 14);
  this[2].__r_.__value_.__r.__words[0] = v7;
  return result;
}