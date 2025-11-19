void sub_1B5318A30(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  quasar::QuasarInfoMessage::~QuasarInfoMessage(va);
  JUMPOUT(0x1B5318A48);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearTransform(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D15BB8;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = &unk_1F2D172B0;
  *(a1 + 48) = &unk_1F2D279F8;
  v5 = *(a2 + 56);
  *(a1 + 71) = *(a2 + 71);
  *(a1 + 56) = v5;
  *a1 = &unk_1F2D0C578;
  *(a1 + 88) = &unk_1F2D0C6B0;
  *(a1 + 96) = &unk_1F2D0C6D8;
  *(a1 + 104) = 0;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 112), (*(a2 + 120) - *(a2 + 112)) >> 3);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 136, *(a2 + 136), *(a2 + 144), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 144) - *(a2 + 136)) >> 4));
  v6 = *(a2 + 160);
  v7 = *(a2 + 164);
  *(a1 + 176) = 0;
  *(a1 + 160) = v6;
  *(a1 + 164) = v7;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 176, *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 200, *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 2);
  v8 = *(a2 + 224);
  *(a1 + 232) = 0u;
  *(a1 + 224) = v8;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  v9 = *(a2 + 104);
  if (v9)
  {
    kaldi::NewCuSubOrMat<float>(v9, 0);
  }

  v11 = *(a1 + 112);
  v10 = *(a1 + 120);
  if (v10 != v11)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = *(a2 + 112);
      if (*(v14 + 8 * v13))
      {
        kaldi::NewCuSubOrMat<float>(*(v14 + (v12 >> 29)), *(a1 + 16));
      }

      ++v13;
      v12 += 0x100000000;
    }

    while (v13 < (v10 - v11) >> 3);
  }

  if (*(a2 + 240) != *(a2 + 232))
  {
    kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
    kaldi::nnet1::QuantizerResidualAggregator::PushSetup((a1 + 232), *(*(a1 + 112) + 8 * ((((*(a1 + 120) - *(a1 + 112)) << 29) - 0x100000000) >> 32)));
  }

  return a1;
}

void sub_1B5318E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, quasar::Bitmap *a10, quasar::Bitmap *a11, uint64_t a12)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v15);
  v17 = *v14;
  if (*v14)
  {
    *(v12 + 26) = v17;
    operator delete(v17);
  }

  v18 = *v13;
  if (*v13)
  {
    *(v12 + 23) = v18;
    operator delete(v18);
  }

  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  v19 = *(v12 + 13);
  *(v12 + 13) = 0;
  if (v19)
  {
    (*(*v19 + 24))(v19);
  }

  quasar::Bitmap::~Bitmap(a10);
  quasar::Bitmap::~Bitmap(a11);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v12);
  _Unwind_Resume(a1);
}

void kaldi::NewCuSubOrMat<float>(uint64_t a1, int a2)
{
  if (a2)
  {
    operator new();
  }

  operator new();
}

void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::~LinearTransform(uint64_t a1)
{
  *a1 = &unk_1F2D0C578;
  v2 = (a1 + 88);
  *(a1 + 88) = &unk_1F2D0C6B0;
  v3 = (a1 + 96);
  *(a1 + 96) = &unk_1F2D0C6D8;
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 232));
  v4 = *(a1 + 200);
  if (v4)
  {
    *(a1 + 208) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 176);
  if (v5)
  {
    *(a1 + 184) = v5;
    operator delete(v5);
  }

  v7 = (a1 + 136);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (a1 + 112);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v6 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  quasar::Bitmap::~Bitmap(v3);
  quasar::Bitmap::~Bitmap(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a1);
}

{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::~LinearTransform(a1);

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk tokaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::~LinearTransform(uint64_t a1)
{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::~LinearTransform(a1 - 88);
}

{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::~LinearTransform(a1 - 96);
}

{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::~LinearTransform(a1 - 88);

  JUMPOUT(0x1B8C85350);
}

{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::~LinearTransform(a1 - 96);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::InitData(uint64_t a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v57 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker(2, &v56);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 160), &v55);
  v54 = -1;
  memset(v53, 0, sizeof(v53));
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_98;
    }

    kaldi::ReadToken(a2, 0, v53);
    if (SHIBYTE(v53[2]) < 0)
    {
      break;
    }

    if (HIBYTE(v53[2]) <= 0xEu)
    {
      if (HIBYTE(v53[2]) == 9)
      {
        v15 = v53;
        goto LABEL_78;
      }

      if (HIBYTE(v53[2]) == 12)
      {
        if (v53[0] != 0x536D6F646E61523CLL || LODWORD(v53[1]) != 1046766949)
        {
          v26 = v53;
          goto LABEL_93;
        }

LABEL_66:
        kaldi::ReadBasicType<int>(a2, 0, &v54);
        goto LABEL_89;
      }

      if (HIBYTE(v53[2]) != 13)
      {
        goto LABEL_128;
      }

      if (v53[0] != 0x74536D617261503CLL || *(v53 + 5) != 0x3E7665646474536DLL)
      {
        goto LABEL_128;
      }

      goto LABEL_60;
    }

    if (HIBYTE(v53[2]) != 15)
    {
      if (HIBYTE(v53[2]) == 18)
      {
        if (v53[0] != 0x6E6569646172473CLL || v53[1] != 0x7079546D726F4E74 || LOWORD(v53[2]) != 15973)
        {
          goto LABEL_128;
        }

        goto LABEL_75;
      }

      if (HIBYTE(v53[2]) != 19)
      {
        goto LABEL_128;
      }

      v16 = v53[0] == 0x61725474696E493CLL && v53[1] == 0x79546D726F66736ELL;
      if (!v16 || *(&v53[1] + 3) != 0x3E657079546D726FLL)
      {
        goto LABEL_128;
      }

LABEL_59:
      v18 = &v56;
LABEL_76:
      kaldi::ReadToken(a2, 0, v18);
      goto LABEL_89;
    }

    v25 = v53[0] == 0x61526E7261654C3CLL && *(v53 + 7) == 0x3E66656F43657461;
    v9 = (a1 + 168);
    if (!v25)
    {
      goto LABEL_128;
    }

LABEL_88:
    kaldi::ReadBasicType<float>(a2, 0, v9);
LABEL_89:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (v53[1] == 13 && *v53[0] == 0x74536D617261503CLL && *(v53[0] + 5) == 0x3E7665646474536DLL)
  {
LABEL_60:
    v9 = &v57;
    goto LABEL_88;
  }

  if (v53[1] == 15)
  {
    v8 = *v53[0] == 0x61526E7261654C3CLL && *(v53[0] + 7) == 0x3E66656F43657461;
    v9 = (a1 + 168);
    if (v8)
    {
      goto LABEL_88;
    }
  }

  if (v53[1] == 19)
  {
    if (*v53[0] == 0x61725474696E493CLL && *(v53[0] + 1) == 0x79546D726F66736ELL && *(v53[0] + 11) == 0x3E657079546D726FLL)
    {
      goto LABEL_59;
    }
  }

  else if (v53[1] == 12 && *v53[0] == 0x536D6F646E61523CLL && *(v53[0] + 2) == 1046766949)
  {
    goto LABEL_66;
  }

  if (v53[1] != 9)
  {
    if (v53[1] != 18)
    {
      goto LABEL_91;
    }

    v13 = *v53[0] == 0x6E6569646172473CLL && *(v53[0] + 1) == 0x7079546D726F4E74;
    if (!v13 || *(v53[0] + 8) != 15973)
    {
      goto LABEL_91;
    }

LABEL_75:
    v18 = &v55;
    goto LABEL_76;
  }

  v15 = v53[0];
LABEL_78:
  v22 = *v15;
  v23 = *(v15 + 8);
  v24 = v22 == 0x6461724778614D3CLL && v23 == 62;
  v9 = (a1 + 164);
  if (v24)
  {
    goto LABEL_88;
  }

  if ((HIBYTE(v53[2]) & 0x80) == 0)
  {
    goto LABEL_128;
  }

LABEL_91:
  if (v53[1] != 12)
  {
    goto LABEL_128;
  }

  v26 = v53[0];
LABEL_93:
  v27 = *v26;
  v28 = *(v26 + 2);
  if (v27 != 0x6E6F706D6F432F3CLL || v28 != 1047817829)
  {
LABEL_128:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v52);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "Unknown token ", 14);
    if (SHIBYTE(v53[2]) >= 0)
    {
      v42 = v53;
    }

    else
    {
      v42 = v53[0];
    }

    if (SHIBYTE(v53[2]) >= 0)
    {
      v43 = HIBYTE(v53[2]);
    }

    else
    {
      v43 = v53[1];
    }

    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v42, v43);
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " (ParamStddev|LearnRateCoef|InitTransformType|RandomSeed|GradientNormType|MaxGrad)", 82);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v52);
  }

LABEL_98:
  inited = kaldi::nnet1::Component::MarkerToMatrixInitType(&v56);
  *(a1 + 160) = kaldi::nnet1::Component::MarkerToGradientNormType(&v55);
  if (v54 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v54);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(v48, a3);
  kaldi::Matrix<float>::Matrix(v46, *(a1 + 12), *(a1 + 8), 0, 0);
  v31 = *(a1 + 12);
  if (v31 < 1)
  {
    goto LABEL_116;
  }

  v32 = 0;
  LODWORD(v33) = *(a1 + 8);
  while (2)
  {
    if (v33 < 1)
    {
      goto LABEL_115;
    }

    v34 = 0;
    while (2)
    {
      switch(inited)
      {
        case 0:
          if (v32 == v34)
          {
            v36 = 1.0;
          }

          else
          {
            v36 = 0.0;
          }

          goto LABEL_112;
        case 2:
          v37 = *&v57;
          kaldi::GaussRandomNumber::Rand(v48, 0);
          v36 = v37 * v38;
LABEL_112:
          *(*v46 + 4 * v32 * v47 + 4 * v34) = v36;
          break;
        case 1:
          v35 = *&v57;
          v36 = (kaldi::UniformRandomNumber::RandUniform(a3, 0) + -0.5) * (v35 + v35);
          goto LABEL_112;
      }

      ++v34;
      v33 = *(a1 + 8);
      if (v34 < v33)
      {
        continue;
      }

      break;
    }

    v31 = *(a1 + 12);
LABEL_115:
    if (++v32 < v31)
    {
      continue;
    }

    break;
  }

LABEL_116:
  v39 = *(*(a1 + 104) + 20);
  if (v39 != kaldi::MatrixBase<float>::NumRows(v46) || (v40 = *(*(a1 + 104) + 16), v40 != kaldi::MatrixBase<float>::NumCols(v46)))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v52);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "Linearity().NumRows() == mat.NumRows() && Linearity().NumCols() == mat.NumCols()", 80);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v52);
  }

  kaldi::CuMatrixBase<float>::CopyFromMat(*(a1 + 104), v46, 111);
  kaldi::Matrix<float>::~Matrix(v46);
  if (__p)
  {
    v51 = __p;
    operator delete(__p);
  }

  v52[0] = &v49;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v52);
  if (SHIBYTE(v53[2]) < 0)
  {
    operator delete(v53[0]);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }
}

void kaldi::GaussRandomNumber::~GaussRandomNumber(kaldi::GaussRandomNumber *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = (this + 16);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void *kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::WriteConfig(uint64_t a1, void *a2, uint64_t a3)
{
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>");
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 160), &__p);
  kaldi::WriteToken(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>");
  return kaldi::WriteBasicType<float>(a2, a3);
}

void sub_1B5319B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::WriteData(void *a1, void *a2, int a3, int a4)
{
  (*(*a1 + 168))(a1);
  v8 = a1[13];

  return kaldi::CuMatrixBase<float>::Write(v8, a2, a3, a4);
}

void *kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::GetParams(uint64_t a1, void **a2)
{
  v4 = (*(*(a1 + 104) + 16) * *(*(a1 + 104) + 20));
  kaldi::Vector<float>::Resize(a2, v4, 0);
  v7 = 0;
  v8 = 0;
  v6 = *a2;
  LODWORD(v7) = v4;
  return kaldi::VectorBase<float>::CopyRowsFromMat(&v6, *(a1 + 104));
}

void **kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::SetParams(void *a1, char **a2)
{
  (*(*a1 + 176))(a1);
  v4 = a1[13];

  return kaldi::CuMatrixBase<float>::CopyRowsFromVec(v4, a2);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::PerturbParams(uint64_t a1, float a2)
{
  kaldi::CuMatrix<float>::CuMatrix(v5, *(*(a1 + 104) + 20), *(*(a1 + 104) + 16), 1, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v5);
  kaldi::CuMatrixBase<float>::AddMat(*(a1 + 104), v5, 111, a2, 1.0);
  return kaldi::CuMatrix<float>::~CuMatrix(v5);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::Info(uint64_t *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  (*(*a1 + 168))(a1, &v8, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "\n linearity", 11);
  kaldi::nnet1::MomentStatistics<float>(a1[13]);
  if ((v7 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v8 = *MEMORY[0x1E69E54E8];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v9 = MEMORY[0x1E69E5548] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v12);
}

void sub_1B5319ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::InfoGradient(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v17, "\n  linearity_grad");
  kaldi::nnet1::MomentStatistics<float>((a1 + 112));
  if ((v16 & 0x80u) == 0)
  {
    v4 = v15;
  }

  else
  {
    v4 = v15[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = v15[1];
  }

  v6 = std::string::append(&v17, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v18, ", lr-coef ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>();
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

  v12 = std::string::append(&v19, v10, v11);
  *a2 = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_1B531A04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::MomentStatistics<float>(void *a1)
{
  kaldi::CuMatrix<float>::CuMatrix(v6, *(**a1 + 20), *(**a1 + 16), 0, 0, 0);
  v2 = *a1;
  if (a1[1] != *a1)
  {
    v3 = 0;
    do
    {
      kaldi::CuMatrixBase<float>::AddMat(v6, *(v2 + 8 * v3++), 111, 1.0, 1.0);
      v2 = *a1;
    }

    while (v3 < (a1[1] - *a1) >> 3);
  }

  kaldi::Matrix<float>::Matrix<float>(v5, v6, 111);
  kaldi::nnet1::MomentStatistics<float>(v5);
  kaldi::Matrix<float>::~Matrix(v5);
  return kaldi::CuMatrix<float>::~CuMatrix(v6);
}

{
  kaldi::CuMatrix<float>::CuMatrix(v7, *(*a1 + 20), *(*a1 + 16), 0, 0, 0);
  v2 = *a1;
  if (a1[1] != *a1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      kaldi::CuMatrixBase<float>::AddMat(v7, v2 + v3, 111, 1.0, 1.0);
      ++v4;
      v2 = *a1;
      v3 += 48;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) > v4);
  }

  kaldi::Matrix<float>::Matrix<float>(v6, v7, 111);
  kaldi::nnet1::MomentStatistics<float>(v6);
  kaldi::Matrix<float>::~Matrix(v6);
  return kaldi::CuMatrix<float>::~CuMatrix(v7);
}

void sub_1B531A184(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  kaldi::Matrix<float>::~Matrix(va);
  kaldi::CuMatrix<float>::~CuMatrix(va1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ToString<float>()
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v1);
  std::ostream::operator<<();
  std::stringbuf::str();
  v1 = *MEMORY[0x1E69E54E8];
  *(&v1 + *(v1 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v2 = MEMORY[0x1E69E5548] + 16;
  if (v4 < 0)
  {
    operator delete(v3[7].__locale_);
  }

  v2 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v3);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v5);
}

void sub_1B531A2FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return kaldi::CuMatrixBase<float>::AddMatMat(a3, a2, 111, *(a1 + 104), 112);
}

{
  return kaldi::CuVectorBase<float>::AddMatVec(a3, *(a1 + 104), 111, a2);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(a1 + 104);
  v5 = *(v4 + 8) + 4 * *(v4 + 24) * a3;
  v6 = *(v4 + 16);
  v7 = *(v4 + 32);
  v9[1] = v5;
  v9[0] = &unk_1F2CFCA48;
  v9[2] = v6;
  v9[3] = v7;
  return kaldi::CuVectorBase<float>::AddMatVec(a4, a2, 111, v9);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  *(*(a1 + 176) + 4 * a5) = *(a2 + 20);
  v10 = *(*(a1 + 112) + 8 * a5);
  *(v10 + 32) = a4;

  return kaldi::CuMatrixBase<float>::AddMatMat(v10, a3, 112, a2, 111);
}

void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::EnsureCorrs(uint64_t a1)
{
  if ((*(a1 + 224) & 1) == 0)
  {
    v2 = *(a1 + 80);
    if (v2 > 1)
    {
      v3 = (v2 + 1);
    }

    else
    {
      v3 = 1;
    }

    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 112), v3);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 136), v3);
    if (v3 >= 1)
    {
      operator new();
    }

    std::vector<int>::resize((a1 + 176), v3);
    *(a1 + 224) = 1;
  }
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 164) = a3;
  *(result + 160) = a2;
  *(result + 224) = 0;
  return result;
}

void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::NormalizeGradients(uint64_t a1, int a2, float a3)
{
  v3 = *(a1 + 160);
  if (v3 == 3)
  {
    if (a3 >= 0.0 && a3 <= 1.0)
    {
      kaldi::nnet1::UpdatableComponent::RmspropGradient(*(*(a1 + 112) + 8 * a2), *(a1 + 136) + 48 * a2, a3);
    }
  }

  else if (v3 == 2)
  {
    if (a3 > 0.0)
    {
      if (*(a1 + 84))
      {
        a3 = *(*(a1 + 176) + 4 * a2) * a3;
      }

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(*(*(a1 + 112) + 8 * a2), (*(a1 + 136) + 48 * a2), a3);
    }
  }

  else if (v3 == 1 && a3 > 0.0)
  {
    if (*(a1 + 84))
    {
      a3 = *(*(a1 + 176) + 4 * a2) * a3;
    }

    kaldi::nnet1::UpdatableComponent::ClipGradient(*(*(a1 + 112) + 8 * a2), a3);
  }
}

float kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::GetNormalizedLearningRate(uint64_t a1, int a2)
{
  if ((*(a1 + 84) & 1) == 0)
  {
    return *(a1 + 56);
  }

  v2 = *(a1 + 200);
  v3 = *(a1 + 208) - v2;
  if (!v3)
  {
    return NAN;
  }

  v4 = v3 >> 2;
  if (v4 <= a2)
  {
    return NAN;
  }

  v5 = v4 - 1;
  if (a2 >= 0)
  {
    v5 = a2;
  }

  return *(v2 + 4 * v5);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = (*(*a1 + 16))(a1);
  ((*v8)[29])(v8, a2, a3, 0, 0);
  v9 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a4, v9, 1);
  kaldi::VectorBase<float>::CopyRowsFromMat(a4, *v8[14]);
  v10 = (*v8)[1];

  return v10(v8);
}

int *kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::SetLinearity(uint64_t a1, int *a2)
{
  kaldi::MatrixBase<float>::NumRows(a2);
  kaldi::MatrixBase<float>::NumCols(a2);
  v4 = *(a1 + 104);

  return kaldi::CuMatrixBase<float>::CopyFromMat(v4, a2, 111);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  v6 = *(a1 + 112);
  *a3 = *(*(a1 + 104) + 16) * *(*(a1 + 104) + 20);
  v7 = *(a1 + 120) - v6;
  if (v7)
  {
    if (*(a1 + 80) == 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a1 + 80);
    }

    if ((v7 >> 3) - 1 != v8)
    {
      v10 = v8;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Unexpected mismatch in indexes: ", 32);
      v12 = MEMORY[0x1B8C84C00](v11, v10);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "  ", 2);
      MEMORY[0x1B8C84C30](v13, ((*(a1 + 120) - *(a1 + 112)) >> 3) - 1);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
    }

    result = kaldi::CuMatrixBase<float>::CountZeros(*(v6 + 8 * v8));
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::ApplyCorr(uint64_t a1, int a2, float a3)
{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  v6 = *(a1 + 104);
  v7 = *(*(a1 + 112) + 8 * a2);
  v8 = -(a3 * *(a1 + 168));

  return kaldi::CuMatrixBase<float>::AddMat(v6, v7, 111, v8, 1.0);
}

void std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v8 = *--v3;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          (*(*v7 + 24))(v7);
        }
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__append(a1, v5);
  }
}

void kaldi::nnet1::QuantizerResidualAggregator::PushSetup(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  memset(v12, 0, sizeof(v12));
  v11 = &unk_1F2D0EE38;
  v13 = 0;
  if (v4 >= a1[2])
  {
    v6 = std::vector<kaldi::CuMatrix<float>>::__emplace_back_slow_path<kaldi::CuMatrix<float>>(a1, &v11);
  }

  else
  {
    kaldi::CuMatrix<float>::CuMatrix(v4, &v11, 111);
    v6 = v4 + 48;
    a1[1] = v4 + 48;
  }

  a1[1] = v6;
  kaldi::CuMatrix<float>::~CuMatrix(&v11);
  kaldi::CuMatrix<float>::Resize((*a1 + v4 - v5), *(a2 + 20), *(a2 + 16), 0, 0);
  v7 = *(a2 + 8);
  v8 = *(a2 + 32);
  *(v12 + 8) = *(a2 + 16);
  *(&v12[1] + 1) = v8;
  v11 = &unk_1F2CFA908;
  *&v12[0] = v7;
  std::vector<kaldi::CuSubMatrix<float>>::push_back[abi:ne200100](a1 + 3, &v11);
  v11 = &unk_1F2CFA908;
  memset(v12, 0, sizeof(v12));
  quasar::Bitmap::~Bitmap(&v11);
  v9 = *(a2 + 8);
  v10 = *(a2 + 32);
  *(v12 + 8) = *(a2 + 16);
  *(&v12[1] + 1) = v10;
  v11 = &unk_1F2CFA908;
  *&v12[0] = v9;
  std::vector<kaldi::CuSubMatrix<float>>::push_back[abi:ne200100](a1 + 6, &v11);
  v11 = &unk_1F2CFA908;
  memset(v12, 0, sizeof(v12));
  quasar::Bitmap::~Bitmap(&v11);
}

{
  v5 = *a1;
  v4 = a1[1];
  v12 = 0u;
  v11 = 0u;
  v10 = &unk_1F2D0EE38;
  v13 = 0;
  std::vector<kaldi::CuMatrix<float>>::push_back[abi:ne200100](a1, &v10);
  kaldi::CuMatrix<float>::~CuMatrix(&v10);
  kaldi::CuMatrix<float>::Resize((*a1 + v4 - v5), 1, *(a2 + 16), 0, 0);
  v6 = *(a2 + 16);
  v7 = *(a2 + 8);
  v10 = &unk_1F2CFA908;
  *&v11 = v7;
  *(&v11 + 1) = v6 | 0x100000000;
  LODWORD(v12) = v6;
  DWORD1(v12) = v6;
  *(&v12 + 1) = *(a2 + 24);
  std::vector<kaldi::CuSubMatrix<float>>::push_back[abi:ne200100](a1 + 3, &v10);
  v10 = &unk_1F2CFA908;
  v11 = 0u;
  v12 = 0u;
  quasar::Bitmap::~Bitmap(&v10);
  v8 = *(a2 + 16);
  v9 = *(a2 + 8);
  v10 = &unk_1F2CFA908;
  *&v11 = v9;
  *(&v11 + 1) = v8 | 0x100000000;
  LODWORD(v12) = v8;
  DWORD1(v12) = v8;
  *(&v12 + 1) = *(a2 + 24);
  std::vector<kaldi::CuSubMatrix<float>>::push_back[abi:ne200100](a1 + 6, &v10);
  v10 = &unk_1F2CFA908;
  v11 = 0u;
  v12 = 0u;
  quasar::Bitmap::~Bitmap(&v10);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::LinearTransform(uint64_t a1, int a2, int a3)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = &unk_1F2D279F8;
  *(a1 + 56) = xmmword_1B5AE0070;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = &unk_1F2D0C700;
  *(a1 + 88) = &unk_1F2D0C838;
  *(a1 + 96) = &unk_1F2D0C860;
  operator new();
}

void sub_1B531ADE8(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v4, 0x10D0C4068EB0291);
  quasar::Bitmap::~Bitmap(v3);
  quasar::Bitmap::~Bitmap(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::LinearTransform(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D15BB8;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = &unk_1F2D172B0;
  *(a1 + 48) = &unk_1F2D279F8;
  v5 = *(a2 + 56);
  *(a1 + 71) = *(a2 + 71);
  *(a1 + 56) = v5;
  *a1 = &unk_1F2D0C700;
  *(a1 + 88) = &unk_1F2D0C838;
  *(a1 + 104) = 0;
  *(a1 + 96) = &unk_1F2D0C860;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 112), (*(a2 + 120) - *(a2 + 112)) >> 3);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 136, *(a2 + 136), *(a2 + 144), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 144) - *(a2 + 136)) >> 4));
  v6 = *(a2 + 160);
  v7 = *(a2 + 164);
  *(a1 + 176) = 0;
  *(a1 + 160) = v6;
  *(a1 + 164) = v7;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 176, *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 200, *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 2);
  v8 = *(a2 + 224);
  *(a1 + 232) = 0u;
  *(a1 + 224) = v8;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  if (*(a2 + 104))
  {
    operator new();
  }

  v10 = *(a1 + 112);
  v9 = *(a1 + 120);
  if (v9 != v10)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(a2 + 112);
      if (*(v13 + 8 * v12))
      {
        kaldi::NewCuSubOrMat<float>(*(v13 + (v11 >> 29)), *(a1 + 16));
      }

      ++v12;
      v11 += 0x100000000;
    }

    while (v12 < (v9 - v10) >> 3);
  }

  if (*(a2 + 240) != *(a2 + 232))
  {
    kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::EnsureCorrs(a1);
    kaldi::nnet1::QuantizerResidualAggregator::PushSetup((a1 + 232), *(*(a1 + 112) + 8 * ((((*(a1 + 120) - *(a1 + 112)) << 29) - 0x100000000) >> 32)));
  }

  return a1;
}

void sub_1B531B1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, quasar::Bitmap *a10, quasar::Bitmap *a11, uint64_t a12)
{
  MEMORY[0x1B8C85350](v13, 0x10D0C4068EB0291);
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v16);
  v18 = *v15;
  if (*v15)
  {
    *(v12 + 26) = v18;
    operator delete(v18);
  }

  v19 = *v14;
  if (*v14)
  {
    *(v12 + 23) = v19;
    operator delete(v19);
  }

  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](a9, 0);
  quasar::Bitmap::~Bitmap(a10);
  quasar::Bitmap::~Bitmap(a11);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v12);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::~LinearTransform(uint64_t a1)
{
  *a1 = &unk_1F2D0C700;
  v2 = (a1 + 88);
  *(a1 + 88) = &unk_1F2D0C838;
  v3 = (a1 + 96);
  *(a1 + 96) = &unk_1F2D0C860;
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 232));
  v4 = *(a1 + 200);
  if (v4)
  {
    *(a1 + 208) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 176);
  if (v5)
  {
    *(a1 + 184) = v5;
    operator delete(v5);
  }

  v6 = (a1 + 136);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (a1 + 112);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v6);
  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100]((a1 + 104), 0);
  quasar::Bitmap::~Bitmap(v3);
  quasar::Bitmap::~Bitmap(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a1);
}

{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::~LinearTransform(a1);

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk tokaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::~LinearTransform(uint64_t a1)
{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::~LinearTransform(a1 - 88);
}

{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::~LinearTransform(a1 - 96);
}

{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::~LinearTransform(a1 - 88);

  JUMPOUT(0x1B8C85350);
}

{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::~LinearTransform(a1 - 96);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::InitData(uint64_t a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v57 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker(2, &v56);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 160), &v55);
  v54 = -1;
  memset(v53, 0, sizeof(v53));
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_98;
    }

    kaldi::ReadToken(a2, 0, v53);
    if (SHIBYTE(v53[2]) < 0)
    {
      break;
    }

    if (HIBYTE(v53[2]) <= 0xEu)
    {
      if (HIBYTE(v53[2]) == 9)
      {
        v15 = v53;
        goto LABEL_78;
      }

      if (HIBYTE(v53[2]) == 12)
      {
        if (v53[0] != 0x536D6F646E61523CLL || LODWORD(v53[1]) != 1046766949)
        {
          v26 = v53;
          goto LABEL_93;
        }

LABEL_66:
        kaldi::ReadBasicType<int>(a2, 0, &v54);
        goto LABEL_89;
      }

      if (HIBYTE(v53[2]) != 13)
      {
        goto LABEL_128;
      }

      if (v53[0] != 0x74536D617261503CLL || *(v53 + 5) != 0x3E7665646474536DLL)
      {
        goto LABEL_128;
      }

      goto LABEL_60;
    }

    if (HIBYTE(v53[2]) != 15)
    {
      if (HIBYTE(v53[2]) == 18)
      {
        if (v53[0] != 0x6E6569646172473CLL || v53[1] != 0x7079546D726F4E74 || LOWORD(v53[2]) != 15973)
        {
          goto LABEL_128;
        }

        goto LABEL_75;
      }

      if (HIBYTE(v53[2]) != 19)
      {
        goto LABEL_128;
      }

      v16 = v53[0] == 0x61725474696E493CLL && v53[1] == 0x79546D726F66736ELL;
      if (!v16 || *(&v53[1] + 3) != 0x3E657079546D726FLL)
      {
        goto LABEL_128;
      }

LABEL_59:
      v18 = &v56;
LABEL_76:
      kaldi::ReadToken(a2, 0, v18);
      goto LABEL_89;
    }

    v25 = v53[0] == 0x61526E7261654C3CLL && *(v53 + 7) == 0x3E66656F43657461;
    v9 = (a1 + 168);
    if (!v25)
    {
      goto LABEL_128;
    }

LABEL_88:
    kaldi::ReadBasicType<float>(a2, 0, v9);
LABEL_89:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (v53[1] == 13 && *v53[0] == 0x74536D617261503CLL && *(v53[0] + 5) == 0x3E7665646474536DLL)
  {
LABEL_60:
    v9 = &v57;
    goto LABEL_88;
  }

  if (v53[1] == 15)
  {
    v8 = *v53[0] == 0x61526E7261654C3CLL && *(v53[0] + 7) == 0x3E66656F43657461;
    v9 = (a1 + 168);
    if (v8)
    {
      goto LABEL_88;
    }
  }

  if (v53[1] == 19)
  {
    if (*v53[0] == 0x61725474696E493CLL && *(v53[0] + 1) == 0x79546D726F66736ELL && *(v53[0] + 11) == 0x3E657079546D726FLL)
    {
      goto LABEL_59;
    }
  }

  else if (v53[1] == 12 && *v53[0] == 0x536D6F646E61523CLL && *(v53[0] + 2) == 1046766949)
  {
    goto LABEL_66;
  }

  if (v53[1] != 9)
  {
    if (v53[1] != 18)
    {
      goto LABEL_91;
    }

    v13 = *v53[0] == 0x6E6569646172473CLL && *(v53[0] + 1) == 0x7079546D726F4E74;
    if (!v13 || *(v53[0] + 8) != 15973)
    {
      goto LABEL_91;
    }

LABEL_75:
    v18 = &v55;
    goto LABEL_76;
  }

  v15 = v53[0];
LABEL_78:
  v22 = *v15;
  v23 = *(v15 + 8);
  v24 = v22 == 0x6461724778614D3CLL && v23 == 62;
  v9 = (a1 + 164);
  if (v24)
  {
    goto LABEL_88;
  }

  if ((HIBYTE(v53[2]) & 0x80) == 0)
  {
    goto LABEL_128;
  }

LABEL_91:
  if (v53[1] != 12)
  {
    goto LABEL_128;
  }

  v26 = v53[0];
LABEL_93:
  v27 = *v26;
  v28 = *(v26 + 2);
  if (v27 != 0x6E6F706D6F432F3CLL || v28 != 1047817829)
  {
LABEL_128:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v52);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "Unknown token ", 14);
    if (SHIBYTE(v53[2]) >= 0)
    {
      v42 = v53;
    }

    else
    {
      v42 = v53[0];
    }

    if (SHIBYTE(v53[2]) >= 0)
    {
      v43 = HIBYTE(v53[2]);
    }

    else
    {
      v43 = v53[1];
    }

    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v42, v43);
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " (ParamStddev|LearnRateCoef|InitTransformType|RandomSeed|GradientNormType|MaxGrad)", 82);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v52);
  }

LABEL_98:
  inited = kaldi::nnet1::Component::MarkerToMatrixInitType(&v56);
  *(a1 + 160) = kaldi::nnet1::Component::MarkerToGradientNormType(&v55);
  if (v54 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v54);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(v48, a3);
  kaldi::Matrix<float>::Matrix(v46, *(a1 + 12), *(a1 + 8), 0, 0);
  v31 = *(a1 + 12);
  if (v31 < 1)
  {
    goto LABEL_116;
  }

  v32 = 0;
  LODWORD(v33) = *(a1 + 8);
  while (2)
  {
    if (v33 < 1)
    {
      goto LABEL_115;
    }

    v34 = 0;
    while (2)
    {
      switch(inited)
      {
        case 0:
          if (v32 == v34)
          {
            v36 = 1.0;
          }

          else
          {
            v36 = 0.0;
          }

          goto LABEL_112;
        case 2:
          v37 = *&v57;
          kaldi::GaussRandomNumber::Rand(v48, 0);
          v36 = v37 * v38;
LABEL_112:
          *(v46[0] + 4 * v32 * v47 + 4 * v34) = v36;
          break;
        case 1:
          v35 = *&v57;
          v36 = (kaldi::UniformRandomNumber::RandUniform(a3, 0) + -0.5) * (v35 + v35);
          goto LABEL_112;
      }

      ++v34;
      v33 = *(a1 + 8);
      if (v34 < v33)
      {
        continue;
      }

      break;
    }

    v31 = *(a1 + 12);
LABEL_115:
    if (++v32 < v31)
    {
      continue;
    }

    break;
  }

LABEL_116:
  v39 = kaldi::quasar::Vocab::VocabSize(*(a1 + 104));
  if (v39 != kaldi::MatrixBase<float>::NumRows(v46) || (v40 = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 104)), v40 != kaldi::MatrixBase<float>::NumCols(v46)))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v52);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "Linearity().NumRows() == mat.NumRows() && Linearity().NumCols() == mat.NumCols()", 80);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v52);
  }

  kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(*(a1 + 104), v46);
  kaldi::Matrix<float>::~Matrix(v46);
  if (__p)
  {
    v51 = __p;
    operator delete(__p);
  }

  v52[0] = &v49;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v52);
  if (SHIBYTE(v53[2]) < 0)
  {
    operator delete(v53[0]);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::ReadData(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  while (kaldi::Peek(a2, a3) == 60)
  {
    v25 = 0uLL;
    v26 = 0;
    kaldi::ReadToken(a2, a3, &v25);
    if (SHIBYTE(v26) < 0)
    {
      if (*(&v25 + 1) != 15 || (*v25 == 0x61526E7261654C3CLL ? (v9 = *(v25 + 7) == 0x3E66656F43657461) : (v9 = 0), v10 = (a1 + 168), !v9))
      {
        if (*(&v25 + 1) == 18)
        {
          v11 = *v25 == 0x6E6569646172473CLL && *(v25 + 8) == 0x7079546D726F4E74;
          if (v11 && *(v25 + 16) == 15973)
          {
            goto LABEL_29;
          }
        }

        if (*(&v25 + 1) != 9)
        {
          goto LABEL_47;
        }

        v13 = v25;
        goto LABEL_37;
      }
    }

    else
    {
      if (HIBYTE(v26) == 9)
      {
        v13 = &v25;
LABEL_37:
        v15 = *v13;
        v16 = *(v13 + 8);
        v17 = v15 == 0x6461724778614D3CLL && v16 == 62;
        v10 = (a1 + 164);
        if (!v17)
        {
LABEL_47:
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
          if (v26 >= 0)
          {
            v20 = &v25;
          }

          else
          {
            v20 = v25;
          }

          if (v26 >= 0)
          {
            v21 = HIBYTE(v26);
          }

          else
          {
            v21 = *(&v25 + 1);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
        }

        goto LABEL_42;
      }

      if (HIBYTE(v26) != 15)
      {
        if (HIBYTE(v26) != 18)
        {
          goto LABEL_47;
        }

        v7 = v25 == 0x6E6569646172473CLL && *(&v25 + 1) == 0x7079546D726F4E74;
        if (!v7 || v26 != 15973)
        {
          goto LABEL_47;
        }

LABEL_29:
        __p[0] = 0;
        __p[1] = 0;
        v24 = 0;
        kaldi::ReadToken(a2, a3, __p);
        *(a1 + 160) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_43;
      }

      v14 = v25 == 0x61526E7261654C3CLL && *(&v25 + 7) == 0x3E66656F43657461;
      v10 = (a1 + 168);
      if (!v14)
      {
        goto LABEL_47;
      }
    }

LABEL_42:
    kaldi::ReadBasicType<float>(a2, a3, v10);
LABEL_43:
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }
  }

  kaldi::QuantizedMatrix<signed char>::Read(*(a1 + 104), a2, a3, a4);
  *(a1 + 16) = 0;
  kaldi::quasar::Vocab::VocabSize(*(a1 + 104));
  return kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 104));
}

void sub_1B531BF68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 - 89) < 0)
  {
    operator delete(*(v16 - 112));
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::WriteConfig(uint64_t a1, void *a2, uint64_t a3)
{
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>");
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 160), &__p);
  kaldi::WriteToken(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>");
  return kaldi::WriteBasicType<float>(a2, a3);
}

void sub_1B531C060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::WriteData(void *a1, void *a2, int a3, int a4)
{
  (*(*a1 + 168))(a1);
  v8 = a1[13];

  return kaldi::QuantizedMatrix<signed char>::Write(v8, a2, a3, a4);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::GetParams(uint64_t a1, void **a2)
{
  v4 = kaldi::quasar::Vocab::VocabSize(*(a1 + 104));
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 104)) * v4;
  kaldi::Vector<float>::Resize(a2, v5, 0);
  v8 = 0;
  v9 = 0;
  v7 = *a2;
  LODWORD(v8) = v5;
  return kaldi::VectorBase<float>::CopyRowsFromMat<signed char>(&v7, *(a1 + 104));
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::SetParams(void *a1, char **a2)
{
  (*(*a1 + 176))(a1);
  v4 = a1[13];

  return kaldi::QuantizedMatrixBase<signed char>::CopyRowsFromVec(v4, a2);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::PerturbParams(uint64_t a1)
{
  v2 = kaldi::quasar::Vocab::VocabSize(*(a1 + 104));
  v3 = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 104));
  kaldi::CuMatrix<float>::CuMatrix(v4, v2, v3, 1, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v4);
  kaldi::QuantizedMatrixBase<signed char>::AddMat();
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::Info(kaldi::quasar::Vocab **a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  (*(*a1 + 21))(a1, &v8, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "\n linearity", 11);
  kaldi::nnet1::MomentStatistics<signed char>(a1[13]);
  if ((v7 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v8 = *MEMORY[0x1E69E54E8];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v9 = MEMORY[0x1E69E5548] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v12);
}

void sub_1B531C478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MomentStatistics<signed char>(kaldi::quasar::Vocab *a1)
{
  v2 = kaldi::quasar::Vocab::VocabSize(a1);
  v3 = kaldi::QuantizedMatrixBase<short>::NumCols(a1);
  memset(v4, 0, sizeof(v4));
  kaldi::Vector<float>::Resize(v4, (v3 * v2), 0);
  kaldi::VectorBase<float>::CopyRowsFromMat<signed char>(v4, a1);
  kaldi::nnet1::MomentStatistics<float>(v4);
  kaldi::Vector<float>::Destroy(v4);
}

void sub_1B531C528(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::InfoGradient(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v17, "\n  linearity_grad");
  kaldi::nnet1::MomentStatistics<float>((a1 + 112));
  if ((v16 & 0x80u) == 0)
  {
    v4 = v15;
  }

  else
  {
    v4 = v15[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = v15[1];
  }

  v6 = std::string::append(&v17, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v18, ", lr-coef ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>();
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

  v12 = std::string::append(&v19, v10, v11);
  *a2 = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_1B531C68C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  kaldi::QuantizedMatrixBase<signed char>::Row(*(a1 + 104), a3, v7);
  LODWORD(v6) = 1.0;
  kaldi::CuVectorBase<float>::AddMatVec<signed char>(a4, a2, 111, v7, v6, 0.0);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::EnsureCorrs(a1);
  *(*(a1 + 176) + 4 * a5) = *(a2 + 20);
  v10 = *(*(a1 + 112) + 8 * a5);
  *(v10 + 32) = a4;

  return kaldi::CuMatrixBase<float>::AddMatMat(v10, a3, 112, a2, 111);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::EnsureCorrs(uint64_t a1)
{
  if ((*(a1 + 224) & 1) == 0)
  {
    v2 = *(a1 + 80);
    if (v2 > 1)
    {
      v3 = (v2 + 1);
    }

    else
    {
      v3 = 1;
    }

    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 112), v3);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 136), v3);
    if (v3 >= 1)
    {
      operator new();
    }

    std::vector<int>::resize((a1 + 176), v3);
    *(a1 + 224) = 1;
  }
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 164) = a3;
  *(result + 160) = a2;
  *(result + 224) = 0;
  return result;
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::NormalizeGradients(uint64_t a1, int a2, float a3)
{
  v3 = *(a1 + 160);
  if (v3 == 3)
  {
    if (a3 >= 0.0 && a3 <= 1.0)
    {
      kaldi::nnet1::UpdatableComponent::RmspropGradient(*(*(a1 + 112) + 8 * a2), *(a1 + 136) + 48 * a2, a3);
    }
  }

  else if (v3 == 2)
  {
    if (a3 > 0.0)
    {
      if (*(a1 + 84))
      {
        a3 = *(*(a1 + 176) + 4 * a2) * a3;
      }

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(*(*(a1 + 112) + 8 * a2), (*(a1 + 136) + 48 * a2), a3);
    }
  }

  else if (v3 == 1 && a3 > 0.0)
  {
    if (*(a1 + 84))
    {
      a3 = *(*(a1 + 176) + 4 * a2) * a3;
    }

    kaldi::nnet1::UpdatableComponent::ClipGradient(*(*(a1 + 112) + 8 * a2), a3);
  }
}

float kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::GetNormalizedLearningRate(uint64_t a1, int a2)
{
  if ((*(a1 + 84) & 1) == 0)
  {
    return *(a1 + 56);
  }

  v2 = *(a1 + 200);
  v3 = *(a1 + 208) - v2;
  if (!v3)
  {
    return NAN;
  }

  v4 = v3 >> 2;
  if (v4 <= a2)
  {
    return NAN;
  }

  v5 = v4 - 1;
  if (a2 >= 0)
  {
    v5 = a2;
  }

  return *(v2 + 4 * v5);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::UpdateWeights()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented except for BaseFloat weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = (*(*a1 + 16))(a1);
  ((*v8)[29])(v8, a2, a3, 0, 0);
  v9 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a4, v9, 1);
  kaldi::VectorBase<float>::CopyRowsFromMat(a4, *v8[14]);
  v10 = (*v8)[1];

  return v10(v8);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::VectorizeWeightsCorrs()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented except for BaseFloat weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::SetLinearity(uint64_t a1, uint64_t a2)
{
  kaldi::MatrixBase<float>::NumRows(a2);
  kaldi::quasar::Vocab::VocabSize(*(a1 + 104));
  kaldi::MatrixBase<float>::NumCols(a2);
  kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 104));
  v4 = *(a1 + 104);

  kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(v4, a2);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::EnsureCorrs(a1);
  v6 = kaldi::quasar::Vocab::VocabSize(*(a1 + 104));
  *a3 = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 104)) * v6;
  v7 = *(a1 + 112);
  v8 = *(a1 + 120) - v7;
  if (v8)
  {
    if (*(a1 + 80) == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a1 + 80);
    }

    if ((v8 >> 3) - 1 != v9)
    {
      v11 = v9;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Unexpected mismatch in indexes: ", 32);
      v13 = MEMORY[0x1B8C84C00](v12, v11);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "  ", 2);
      MEMORY[0x1B8C84C30](v14, ((*(a1 + 120) - *(a1 + 112)) >> 3) - 1);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
    }

    result = kaldi::CuMatrixBase<float>::CountZeros(*(v7 + 8 * v9));
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::LinearTransform(uint64_t a1, int a2, int a3)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = &unk_1F2D279F8;
  *(a1 + 56) = xmmword_1B5AE0070;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = &unk_1F2D0C888;
  *(a1 + 88) = &unk_1F2D0C9C0;
  *(a1 + 96) = &unk_1F2D0C9E8;
  operator new();
}

void sub_1B531CF9C(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v4, 0x10D0C4068EB0291);
  quasar::Bitmap::~Bitmap(v3);
  quasar::Bitmap::~Bitmap(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::LinearTransform(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D15BB8;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = &unk_1F2D172B0;
  *(a1 + 48) = &unk_1F2D279F8;
  v5 = *(a2 + 56);
  *(a1 + 71) = *(a2 + 71);
  *(a1 + 56) = v5;
  *a1 = &unk_1F2D0C888;
  *(a1 + 88) = &unk_1F2D0C9C0;
  *(a1 + 104) = 0;
  *(a1 + 96) = &unk_1F2D0C9E8;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 112), (*(a2 + 120) - *(a2 + 112)) >> 3);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 136, *(a2 + 136), *(a2 + 144), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 144) - *(a2 + 136)) >> 4));
  v6 = *(a2 + 160);
  v7 = *(a2 + 164);
  *(a1 + 176) = 0;
  *(a1 + 160) = v6;
  *(a1 + 164) = v7;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 176, *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 200, *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 2);
  v8 = *(a2 + 224);
  *(a1 + 232) = 0u;
  *(a1 + 224) = v8;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  if (*(a2 + 104))
  {
    operator new();
  }

  v10 = *(a1 + 112);
  v9 = *(a1 + 120);
  if (v9 != v10)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(a2 + 112);
      if (*(v13 + 8 * v12))
      {
        kaldi::NewCuSubOrMat<float>(*(v13 + (v11 >> 29)), *(a1 + 16));
      }

      ++v12;
      v11 += 0x100000000;
    }

    while (v12 < (v9 - v10) >> 3);
  }

  if (*(a2 + 240) != *(a2 + 232))
  {
    kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::EnsureCorrs(a1);
    kaldi::nnet1::QuantizerResidualAggregator::PushSetup((a1 + 232), *(*(a1 + 112) + 8 * ((((*(a1 + 120) - *(a1 + 112)) << 29) - 0x100000000) >> 32)));
  }

  return a1;
}

void sub_1B531D354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, quasar::Bitmap *a10, quasar::Bitmap *a11, uint64_t a12)
{
  MEMORY[0x1B8C85350](v13, 0x10D0C4068EB0291);
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v16);
  v18 = *v15;
  if (*v15)
  {
    *(v12 + 26) = v18;
    operator delete(v18);
  }

  v19 = *v14;
  if (*v14)
  {
    *(v12 + 23) = v19;
    operator delete(v19);
  }

  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](a9, 0);
  quasar::Bitmap::~Bitmap(a10);
  quasar::Bitmap::~Bitmap(a11);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v12);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::~LinearTransform(uint64_t a1)
{
  *a1 = &unk_1F2D0C888;
  v2 = (a1 + 88);
  *(a1 + 88) = &unk_1F2D0C9C0;
  v3 = (a1 + 96);
  *(a1 + 96) = &unk_1F2D0C9E8;
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 232));
  v4 = *(a1 + 200);
  if (v4)
  {
    *(a1 + 208) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 176);
  if (v5)
  {
    *(a1 + 184) = v5;
    operator delete(v5);
  }

  v6 = (a1 + 136);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (a1 + 112);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v6);
  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100]((a1 + 104), 0);
  quasar::Bitmap::~Bitmap(v3);
  quasar::Bitmap::~Bitmap(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a1);
}

{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::~LinearTransform(a1);

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk tokaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::~LinearTransform(uint64_t a1)
{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::~LinearTransform(a1 - 88);
}

{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::~LinearTransform(a1 - 96);
}

{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::~LinearTransform(a1 - 88);

  JUMPOUT(0x1B8C85350);
}

{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::~LinearTransform(a1 - 96);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::InitData(uint64_t a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v57 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker(2, &v56);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 160), &v55);
  v54 = -1;
  memset(v53, 0, sizeof(v53));
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_98;
    }

    kaldi::ReadToken(a2, 0, v53);
    if (SHIBYTE(v53[2]) < 0)
    {
      break;
    }

    if (HIBYTE(v53[2]) <= 0xEu)
    {
      if (HIBYTE(v53[2]) == 9)
      {
        v15 = v53;
        goto LABEL_78;
      }

      if (HIBYTE(v53[2]) == 12)
      {
        if (v53[0] != 0x536D6F646E61523CLL || LODWORD(v53[1]) != 1046766949)
        {
          v26 = v53;
          goto LABEL_93;
        }

LABEL_66:
        kaldi::ReadBasicType<int>(a2, 0, &v54);
        goto LABEL_89;
      }

      if (HIBYTE(v53[2]) != 13)
      {
        goto LABEL_128;
      }

      if (v53[0] != 0x74536D617261503CLL || *(v53 + 5) != 0x3E7665646474536DLL)
      {
        goto LABEL_128;
      }

      goto LABEL_60;
    }

    if (HIBYTE(v53[2]) != 15)
    {
      if (HIBYTE(v53[2]) == 18)
      {
        if (v53[0] != 0x6E6569646172473CLL || v53[1] != 0x7079546D726F4E74 || LOWORD(v53[2]) != 15973)
        {
          goto LABEL_128;
        }

        goto LABEL_75;
      }

      if (HIBYTE(v53[2]) != 19)
      {
        goto LABEL_128;
      }

      v16 = v53[0] == 0x61725474696E493CLL && v53[1] == 0x79546D726F66736ELL;
      if (!v16 || *(&v53[1] + 3) != 0x3E657079546D726FLL)
      {
        goto LABEL_128;
      }

LABEL_59:
      v18 = &v56;
LABEL_76:
      kaldi::ReadToken(a2, 0, v18);
      goto LABEL_89;
    }

    v25 = v53[0] == 0x61526E7261654C3CLL && *(v53 + 7) == 0x3E66656F43657461;
    v9 = (a1 + 168);
    if (!v25)
    {
      goto LABEL_128;
    }

LABEL_88:
    kaldi::ReadBasicType<float>(a2, 0, v9);
LABEL_89:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (v53[1] == 13 && *v53[0] == 0x74536D617261503CLL && *(v53[0] + 5) == 0x3E7665646474536DLL)
  {
LABEL_60:
    v9 = &v57;
    goto LABEL_88;
  }

  if (v53[1] == 15)
  {
    v8 = *v53[0] == 0x61526E7261654C3CLL && *(v53[0] + 7) == 0x3E66656F43657461;
    v9 = (a1 + 168);
    if (v8)
    {
      goto LABEL_88;
    }
  }

  if (v53[1] == 19)
  {
    if (*v53[0] == 0x61725474696E493CLL && *(v53[0] + 1) == 0x79546D726F66736ELL && *(v53[0] + 11) == 0x3E657079546D726FLL)
    {
      goto LABEL_59;
    }
  }

  else if (v53[1] == 12 && *v53[0] == 0x536D6F646E61523CLL && *(v53[0] + 2) == 1046766949)
  {
    goto LABEL_66;
  }

  if (v53[1] != 9)
  {
    if (v53[1] != 18)
    {
      goto LABEL_91;
    }

    v13 = *v53[0] == 0x6E6569646172473CLL && *(v53[0] + 1) == 0x7079546D726F4E74;
    if (!v13 || *(v53[0] + 8) != 15973)
    {
      goto LABEL_91;
    }

LABEL_75:
    v18 = &v55;
    goto LABEL_76;
  }

  v15 = v53[0];
LABEL_78:
  v22 = *v15;
  v23 = *(v15 + 8);
  v24 = v22 == 0x6461724778614D3CLL && v23 == 62;
  v9 = (a1 + 164);
  if (v24)
  {
    goto LABEL_88;
  }

  if ((HIBYTE(v53[2]) & 0x80) == 0)
  {
    goto LABEL_128;
  }

LABEL_91:
  if (v53[1] != 12)
  {
    goto LABEL_128;
  }

  v26 = v53[0];
LABEL_93:
  v27 = *v26;
  v28 = *(v26 + 2);
  if (v27 != 0x6E6F706D6F432F3CLL || v28 != 1047817829)
  {
LABEL_128:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v52);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "Unknown token ", 14);
    if (SHIBYTE(v53[2]) >= 0)
    {
      v42 = v53;
    }

    else
    {
      v42 = v53[0];
    }

    if (SHIBYTE(v53[2]) >= 0)
    {
      v43 = HIBYTE(v53[2]);
    }

    else
    {
      v43 = v53[1];
    }

    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v42, v43);
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " (ParamStddev|LearnRateCoef|InitTransformType|RandomSeed|GradientNormType|MaxGrad)", 82);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v52);
  }

LABEL_98:
  inited = kaldi::nnet1::Component::MarkerToMatrixInitType(&v56);
  *(a1 + 160) = kaldi::nnet1::Component::MarkerToGradientNormType(&v55);
  if (v54 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v54);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(v48, a3);
  kaldi::Matrix<float>::Matrix(v46, *(a1 + 12), *(a1 + 8), 0, 0);
  v31 = *(a1 + 12);
  if (v31 < 1)
  {
    goto LABEL_116;
  }

  v32 = 0;
  LODWORD(v33) = *(a1 + 8);
  while (2)
  {
    if (v33 < 1)
    {
      goto LABEL_115;
    }

    v34 = 0;
    while (2)
    {
      switch(inited)
      {
        case 0:
          if (v32 == v34)
          {
            v36 = 1.0;
          }

          else
          {
            v36 = 0.0;
          }

          goto LABEL_112;
        case 2:
          v37 = *&v57;
          kaldi::GaussRandomNumber::Rand(v48, 0);
          v36 = v37 * v38;
LABEL_112:
          *(v46[0] + 4 * v32 * v47 + 4 * v34) = v36;
          break;
        case 1:
          v35 = *&v57;
          v36 = (kaldi::UniformRandomNumber::RandUniform(a3, 0) + -0.5) * (v35 + v35);
          goto LABEL_112;
      }

      ++v34;
      v33 = *(a1 + 8);
      if (v34 < v33)
      {
        continue;
      }

      break;
    }

    v31 = *(a1 + 12);
LABEL_115:
    if (++v32 < v31)
    {
      continue;
    }

    break;
  }

LABEL_116:
  v39 = kaldi::quasar::Vocab::VocabSize(*(a1 + 104));
  if (v39 != kaldi::MatrixBase<float>::NumRows(v46) || (v40 = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 104)), v40 != kaldi::MatrixBase<float>::NumCols(v46)))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v52);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "Linearity().NumRows() == mat.NumRows() && Linearity().NumCols() == mat.NumCols()", 80);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v52);
  }

  kaldi::QuantizedMatrixBase<short>::CopyFromMat(*(a1 + 104), v46);
  kaldi::Matrix<float>::~Matrix(v46);
  if (__p)
  {
    v51 = __p;
    operator delete(__p);
  }

  v52[0] = &v49;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v52);
  if (SHIBYTE(v53[2]) < 0)
  {
    operator delete(v53[0]);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::ReadData(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  while (kaldi::Peek(a2, a3) == 60)
  {
    v25 = 0uLL;
    v26 = 0;
    kaldi::ReadToken(a2, a3, &v25);
    if (SHIBYTE(v26) < 0)
    {
      if (*(&v25 + 1) != 15 || (*v25 == 0x61526E7261654C3CLL ? (v9 = *(v25 + 7) == 0x3E66656F43657461) : (v9 = 0), v10 = (a1 + 168), !v9))
      {
        if (*(&v25 + 1) == 18)
        {
          v11 = *v25 == 0x6E6569646172473CLL && *(v25 + 8) == 0x7079546D726F4E74;
          if (v11 && *(v25 + 16) == 15973)
          {
            goto LABEL_29;
          }
        }

        if (*(&v25 + 1) != 9)
        {
          goto LABEL_47;
        }

        v13 = v25;
        goto LABEL_37;
      }
    }

    else
    {
      if (HIBYTE(v26) == 9)
      {
        v13 = &v25;
LABEL_37:
        v15 = *v13;
        v16 = *(v13 + 8);
        v17 = v15 == 0x6461724778614D3CLL && v16 == 62;
        v10 = (a1 + 164);
        if (!v17)
        {
LABEL_47:
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
          if (v26 >= 0)
          {
            v20 = &v25;
          }

          else
          {
            v20 = v25;
          }

          if (v26 >= 0)
          {
            v21 = HIBYTE(v26);
          }

          else
          {
            v21 = *(&v25 + 1);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
        }

        goto LABEL_42;
      }

      if (HIBYTE(v26) != 15)
      {
        if (HIBYTE(v26) != 18)
        {
          goto LABEL_47;
        }

        v7 = v25 == 0x6E6569646172473CLL && *(&v25 + 1) == 0x7079546D726F4E74;
        if (!v7 || v26 != 15973)
        {
          goto LABEL_47;
        }

LABEL_29:
        __p[0] = 0;
        __p[1] = 0;
        v24 = 0;
        kaldi::ReadToken(a2, a3, __p);
        *(a1 + 160) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_43;
      }

      v14 = v25 == 0x61526E7261654C3CLL && *(&v25 + 7) == 0x3E66656F43657461;
      v10 = (a1 + 168);
      if (!v14)
      {
        goto LABEL_47;
      }
    }

LABEL_42:
    kaldi::ReadBasicType<float>(a2, a3, v10);
LABEL_43:
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }
  }

  kaldi::QuantizedMatrix<short>::Read(*(a1 + 104), a2, a3, a4);
  *(a1 + 16) = 0;
  kaldi::quasar::Vocab::VocabSize(*(a1 + 104));
  return kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 104));
}

void sub_1B531E11C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 - 89) < 0)
  {
    operator delete(*(v16 - 112));
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::WriteConfig(uint64_t a1, void *a2, uint64_t a3)
{
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>");
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 160), &__p);
  kaldi::WriteToken(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>");
  return kaldi::WriteBasicType<float>(a2, a3);
}

void sub_1B531E214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::WriteData(void *a1, void *a2, int a3, int a4)
{
  (*(*a1 + 168))(a1);
  v8 = a1[13];

  return kaldi::QuantizedMatrix<short>::Write(v8, a2, a3, a4);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::GetParams(uint64_t a1, void **a2)
{
  v4 = kaldi::quasar::Vocab::VocabSize(*(a1 + 104));
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 104)) * v4;
  kaldi::Vector<float>::Resize(a2, v5, 0);
  v8 = 0;
  v9 = 0;
  v7 = *a2;
  LODWORD(v8) = v5;
  return kaldi::VectorBase<float>::CopyRowsFromMat<short>(&v7, *(a1 + 104));
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::SetParams(void *a1, char **a2)
{
  (*(*a1 + 176))(a1);
  v4 = a1[13];

  return kaldi::QuantizedMatrixBase<short>::CopyRowsFromVec(v4, a2);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::PerturbParams(uint64_t a1)
{
  v2 = kaldi::quasar::Vocab::VocabSize(*(a1 + 104));
  v3 = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 104));
  kaldi::CuMatrix<float>::CuMatrix(v4, v2, v3, 1, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v4);
  kaldi::QuantizedMatrixBase<short>::AddMat();
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::Info(kaldi::quasar::Vocab **a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  (*(*a1 + 21))(a1, &v8, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "\n linearity", 11);
  kaldi::nnet1::MomentStatistics<short>(a1[13]);
  if ((v7 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v8 = *MEMORY[0x1E69E54E8];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v9 = MEMORY[0x1E69E5548] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v12);
}

void sub_1B531E62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MomentStatistics<short>(kaldi::quasar::Vocab *a1)
{
  v2 = kaldi::quasar::Vocab::VocabSize(a1);
  v3 = kaldi::QuantizedMatrixBase<short>::NumCols(a1);
  memset(v4, 0, sizeof(v4));
  kaldi::Vector<float>::Resize(v4, (v3 * v2), 0);
  kaldi::VectorBase<float>::CopyRowsFromMat<short>(v4, a1);
  kaldi::nnet1::MomentStatistics<float>(v4);
  kaldi::Vector<float>::Destroy(v4);
}

void sub_1B531E6DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::InfoGradient(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v17, "\n  linearity_grad");
  kaldi::nnet1::MomentStatistics<float>((a1 + 112));
  if ((v16 & 0x80u) == 0)
  {
    v4 = v15;
  }

  else
  {
    v4 = v15[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = v15[1];
  }

  v6 = std::string::append(&v17, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v18, ", lr-coef ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>();
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

  v12 = std::string::append(&v19, v10, v11);
  *a2 = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_1B531E840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  kaldi::QuantizedMatrixBase<short>::Row(*(a1 + 104), a3, v7);
  LODWORD(v6) = 1.0;
  kaldi::CuVectorBase<float>::AddMatVec<short>(a4, a2, 111, v7, v6, 0.0);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::EnsureCorrs(a1);
  *(*(a1 + 176) + 4 * a5) = *(a2 + 20);
  v10 = *(*(a1 + 112) + 8 * a5);
  *(v10 + 32) = a4;

  return kaldi::CuMatrixBase<float>::AddMatMat(v10, a3, 112, a2, 111);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::EnsureCorrs(uint64_t a1)
{
  if ((*(a1 + 224) & 1) == 0)
  {
    v2 = *(a1 + 80);
    if (v2 > 1)
    {
      v3 = (v2 + 1);
    }

    else
    {
      v3 = 1;
    }

    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 112), v3);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 136), v3);
    if (v3 >= 1)
    {
      operator new();
    }

    std::vector<int>::resize((a1 + 176), v3);
    *(a1 + 224) = 1;
  }
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 164) = a3;
  *(result + 160) = a2;
  *(result + 224) = 0;
  return result;
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::NormalizeGradients(uint64_t a1, int a2, float a3)
{
  v3 = *(a1 + 160);
  if (v3 == 3)
  {
    if (a3 >= 0.0 && a3 <= 1.0)
    {
      kaldi::nnet1::UpdatableComponent::RmspropGradient(*(*(a1 + 112) + 8 * a2), *(a1 + 136) + 48 * a2, a3);
    }
  }

  else if (v3 == 2)
  {
    if (a3 > 0.0)
    {
      if (*(a1 + 84))
      {
        a3 = *(*(a1 + 176) + 4 * a2) * a3;
      }

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(*(*(a1 + 112) + 8 * a2), (*(a1 + 136) + 48 * a2), a3);
    }
  }

  else if (v3 == 1 && a3 > 0.0)
  {
    if (*(a1 + 84))
    {
      a3 = *(*(a1 + 176) + 4 * a2) * a3;
    }

    kaldi::nnet1::UpdatableComponent::ClipGradient(*(*(a1 + 112) + 8 * a2), a3);
  }
}

float kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::GetNormalizedLearningRate(uint64_t a1, int a2)
{
  if ((*(a1 + 84) & 1) == 0)
  {
    return *(a1 + 56);
  }

  v2 = *(a1 + 200);
  v3 = *(a1 + 208) - v2;
  if (!v3)
  {
    return NAN;
  }

  v4 = v3 >> 2;
  if (v4 <= a2)
  {
    return NAN;
  }

  v5 = v4 - 1;
  if (a2 >= 0)
  {
    v5 = a2;
  }

  return *(v2 + 4 * v5);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::UpdateWeights()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented except for BaseFloat weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = (*(*a1 + 16))(a1);
  ((*v8)[29])(v8, a2, a3, 0, 0);
  v9 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a4, v9, 1);
  kaldi::VectorBase<float>::CopyRowsFromMat(a4, *v8[14]);
  v10 = (*v8)[1];

  return v10(v8);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::VectorizeWeightsCorrs()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented except for BaseFloat weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::SetLinearity(uint64_t a1, uint64_t a2)
{
  kaldi::MatrixBase<float>::NumRows(a2);
  kaldi::quasar::Vocab::VocabSize(*(a1 + 104));
  kaldi::MatrixBase<float>::NumCols(a2);
  kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 104));
  v4 = *(a1 + 104);

  kaldi::QuantizedMatrixBase<short>::CopyFromMat(v4, a2);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::EnsureCorrs(a1);
  v6 = kaldi::quasar::Vocab::VocabSize(*(a1 + 104));
  *a3 = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 104)) * v6;
  v7 = *(a1 + 112);
  v8 = *(a1 + 120) - v7;
  if (v8)
  {
    if (*(a1 + 80) == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a1 + 80);
    }

    if ((v8 >> 3) - 1 != v9)
    {
      v11 = v9;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Unexpected mismatch in indexes: ", 32);
      v13 = MEMORY[0x1B8C84C00](v12, v11);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "  ", 2);
      MEMORY[0x1B8C84C30](v14, ((*(a1 + 120) - *(a1 + 112)) >> 3) - 1);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
    }

    result = kaldi::CuMatrixBase<float>::CountZeros(*(v7 + 8 * v9));
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::VectorizeWeightsCorrs(uint64_t a1)
{
  if (*(a1 + 16) != 1)
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v1, "Performing  vectorization of linear component", 45);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&v1);
    }

    kaldi::CuSubMatrix<float>::CopyDataAndReplaceWithCuSub();
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(&v1);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(&v1, "Weights are already vectorized");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v1);
}

void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::UpdateWeights(uint64_t a1, uint64_t a2, int a3)
{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  v8 = *(a1 + 64);
  v7 = *(a1 + 68);
  v9 = *(a1 + 72);
  v10 = *(a1 + 76);
  *(*(a1 + 104) + 32) = a2;
  v11 = *(a1 + 80);
  if (a3 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *(a1 + 80);
  }

  if (v11 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a1 + 112);
  v15 = v13;
  v16 = v14[v13];
  *(v16 + 32) = a2;
  *(*(a1 + 136) + 48 * v13 + 32) = a2;
  if (v13 == v11)
  {
    kaldi::CuMatrixBase<float>::AddMat(v16, *v14, 111, 1.0, 0.0);
    if (*(a1 + 80) > 1)
    {
      v17 = 1;
      do
      {
        kaldi::CuMatrixBase<float>::AddMat(*(*(a1 + 112) + 8 * v15), *(*(a1 + 112) + 8 * v17++), 111, 1.0, 1.0);
      }

      while (v17 < *(a1 + 80));
    }

    v18 = *(a1 + 176);
    v18[v15] = 0;
    if (v11 >= 1)
    {
      v19 = 0;
      v20 = v18;
      do
      {
        v21 = *v20++;
        v19 += v21;
        v18[v15] = v19;
        --v11;
      }

      while (v11);
    }
  }

  v22 = *(a1 + 56);
  if (*(a1 + 84) == 1)
  {
    *v6.i32 = *(*(a1 + 176) + 4 * v15);
    v22 = v22 / *v6.i32;
  }

  v23 = *(a1 + 200);
  if (v15 >= (*(a1 + 208) - v23) >> 2)
  {
    LODWORD(v26[0]) = 2143289344;
    std::vector<float>::resize((a1 + 200), v15 + 1, v26, v6);
    v23 = *(a1 + 200);
  }

  *(v23 + 4 * v15) = v22;
  if (*(a1 + 164) >= 0.0)
  {
    (*(*a1 + 248))(a1, v15);
  }

  if (v8 != 0.0)
  {
    kaldi::CuMatrixBase<float>::AddMat(*(a1 + 104), *(a1 + 104), 111, -(v22 * v8) * *(*(a1 + 176) + 4 * v15), 1.0);
  }

  if (v7 != 0.0)
  {
    kaldi::cu::RegularizeL1<float>(*(a1 + 104), *(*(a1 + 112) + 8 * v15), (v7 * v22) * *(*(a1 + 176) + 4 * v15), v22);
  }

  if (v9 > 0.0)
  {
    if (*(a1 + 80) >= 2)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v26, "the multi batch gradient quantization does not work yet");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v26);
    }

    if (*(a1 + 240) == *(a1 + 232))
    {
      kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
      kaldi::nnet1::QuantizerResidualAggregator::PushSetup((a1 + 232), *(*(a1 + 112) + 8 * ((((*(a1 + 120) - *(a1 + 112)) << 29) - 0x100000000) >> 32)));
    }

    kaldi::nnet1::QuantizerResidualAggregator::Quantize((a1 + 232), v10, v9);
  }

  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::ApplyCorr(a1, v15, v22);
  v24 = *(a1 + 176);
  if (v15 == *(a1 + 80))
  {
    v25 = *(a1 + 184);
    if (v24 != v25)
    {
      bzero(v24, v25 - v24);
    }
  }

  else
  {
    *&v24[4 * v15] = 0;
  }
}

uint64_t kaldi::nnet1::QuantizerResidualAggregator::Quantize(kaldi::nnet1::QuantizerResidualAggregator *this, uint64_t a2, float a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = *this;
  do
  {
    result = kaldi::nnet1::QuantizerResidualAggregator::AddCorrectionToResidualAndQuantize(a2, *(this + 3) + v7, v9 + v6, *(this + 6) + v7, a3);
    ++v8;
    v9 = *this;
    v7 += 40;
    v6 += 48;
  }

  while (v8 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 4));
  return result;
}

void kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(void **this)
{
  v2 = this + 6;
  std::vector<kaldi::CuSubMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<kaldi::CuSubMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<kaldi::CuSubMatrix<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 40;
      v7 = v4 - 40;
      v8 = v4 - 40;
      do
      {
        v9 = *v8;
        v8 -= 40;
        (*(v9 + 16))(v7);
        v6 -= 40;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<kaldi::CuSubMatrix<float>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<kaldi::CuSubMatrix<float>>::__emplace_back_slow_path<kaldi::CuSubMatrix<float>>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 32);
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 32) = v4;
    *v3 = &unk_1F2CFA908;
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<kaldi::CuMatrix<float>>::__emplace_back_slow_path<kaldi::CuMatrix<float>>(uint64_t a1, uint64_t a2)
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

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>>(a1, v6);
  }

  v13 = 0;
  v14 = 48 * v2;
  kaldi::CuMatrix<float>::CuMatrix(48 * v2, a2, 111);
  v15 = 48 * v2 + 48;
  v7 = *(a1 + 8);
  v8 = 48 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>,kaldi::CuMatrix<float>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<kaldi::CuMatrix<float>>::~__split_buffer(&v13);
  return v12;
}

void sub_1B531FA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::CuMatrix<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::CuSubMatrix<float>>::__emplace_back_slow_path<kaldi::CuSubMatrix<float>>(uint64_t *a1, uint64_t a2)
{
  v3 = 0x666666666666666;
  v4 = *a1;
  v5 = a1[1];
  v6 = v5 - *a1;
  v7 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 3) + 1;
  if (v7 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - v4) >> 3) > v7)
  {
    v7 = 0x999999999999999ALL * ((a1[2] - v4) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - v4) >> 3) < 0x333333333333333)
  {
    v3 = v7;
  }

  v19 = a1;
  if (v3)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuSubMatrix<float>>>(a1, v3);
  }

  v9 = 8 * (v6 >> 3);
  v16 = 0;
  v17 = v9;
  *(&v18 + 1) = 0;
  v10 = *(a2 + 32);
  *(v9 + 8) = *(a2 + 8);
  *(v9 + 16) = *(a2 + 16);
  *(v9 + 32) = v10;
  *v9 = &unk_1F2CFA908;
  *&v18 = v9 + 40;
  v11 = v9 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuSubMatrix<float>>,kaldi::CuSubMatrix<float>*>(a1, v4, v5, v9 - v6);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<kaldi::CuSubMatrix<float>>::~__split_buffer(&v16);
  return v15;
}

void sub_1B531FBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::CuSubMatrix<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuSubMatrix<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuSubMatrix<float>>,kaldi::CuSubMatrix<float>*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 16;
    v7 = a2;
    do
    {
      v8 = v7[4];
      *(v6 - 8) = v7[1];
      *v6 = *(v7 + 1);
      *(v6 + 16) = v8;
      *(v6 - 16) = &unk_1F2CFA908;
      v7 += 5;
      v6 += 40;
      a4 += 40;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      v9 = a2;
      v10 = a2;
      do
      {
        v11 = *v10;
        v10 += 5;
        (*(v11 + 16))(v5);
        v9 += 5;
        v5 = v10;
      }

      while (v10 != a3);
    }
  }
}

uint64_t std::__split_buffer<kaldi::CuSubMatrix<float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 40);
    *(a1 + 16) = i - 40;
    (*(v4 + 16))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t kaldi::nnet1::QuantizerResidualAggregator::AddCorrectionToResidualAndQuantize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  kaldi::CuMatrixBase<float>::AddMat(a3, a2, 111, 1.0, 1.0);
  if (a1)
  {
    if (a1 != 3)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Wrong quantizer type (neither ", 30);
      v11 = MEMORY[0x1B8C84C00](v10, 0);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " nor ", 5);
      v13 = MEMORY[0x1B8C84C00](v12, 3);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "): ", 4);
      MEMORY[0x1B8C84C00](v14, a1);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
    }

    return kaldi::Quant3Levels<float>(a3, a4, a5);
  }

  else
  {

    return kaldi::ZeroSmallValues<float>(a3, a4, a5);
  }
}

void std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 24))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t kaldi::CuSubMatrix<float>::CuSubMatrix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = &unk_1F2CFA908;
  v5 = *(a2 + 20);
  v6 = (*(a2 + 16) * v5);
  if (*(a3 + 16) < v6)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Insufficient storage area: ", 27);
    v12 = MEMORY[0x1B8C84C00](v11, *(a3 + 16));
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " needed: ", 9);
    MEMORY[0x1B8C84C00](v13, v6);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  v8 = *(a3 + 8);
  v14[0] = &unk_1F2CFCA48;
  v14[1] = v8;
  v14[2] = v6;
  v14[3] = *(a3 + 24);
  kaldi::CuSubMatrix<float>::CuSubMatrix(v15, v14, v5);
  if (v15 != a1)
  {
    *(a1 + 8) = *(&v15[0] + 1);
    *(a1 + 16) = v15[1];
    *(a1 + 32) = *&v15[2];
  }

  *&v15[0] = &unk_1F2CFA908;
  memset(v15 + 8, 0, 32);
  quasar::Bitmap::~Bitmap(v15);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a1, a2, 111);
  v9 = *(a3 + 16) - v6;
  *(a3 + 8) += 4 * v6;
  *(a3 + 16) = v9;
  *(a3 + 24) = 0;
  return a1;
}

void *std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100](void *result, unint64_t a2)
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

uint64_t std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuMatrix<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B53201E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>,kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      kaldi::CuMatrix<float>::CuMatrix(a4 + v7, v6, 111);
      v6 += 48;
      v7 += 48;
    }

    while (v6 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1B5320268(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>,kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>();
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::LinearTransform<kaldi::CuMatrixBase<float>>(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D15BB8;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = &unk_1F2D172B0;
  *(a1 + 48) = &unk_1F2D279F8;
  v5 = *(a2 + 56);
  *(a1 + 71) = *(a2 + 71);
  *(a1 + 56) = v5;
  *a1 = &unk_1F2D0C700;
  *(a1 + 88) = &unk_1F2D0C838;
  *(a1 + 104) = 0;
  *(a1 + 96) = &unk_1F2D0C860;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 112), (*(a2 + 120) - *(a2 + 112)) >> 3);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 136, *(a2 + 136), *(a2 + 144), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 144) - *(a2 + 136)) >> 4));
  v6 = *(a2 + 160);
  v7 = *(a2 + 164);
  *(a1 + 176) = 0;
  *(a1 + 160) = v6;
  *(a1 + 164) = v7;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 176, *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 200, *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 2);
  v8 = *(a2 + 224);
  *(a1 + 232) = 0u;
  *(a1 + 224) = v8;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  if (*(a2 + 104))
  {
    operator new();
  }

  v10 = *(a1 + 112);
  v9 = *(a1 + 120);
  if (v9 != v10)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(a2 + 112);
      if (*(v13 + 8 * v12))
      {
        kaldi::NewCuSubOrMat<float>(*(v13 + (v11 >> 29)), *(a1 + 16));
      }

      ++v12;
      v11 += 0x100000000;
    }

    while (v12 < (v9 - v10) >> 3);
  }

  if (*(a2 + 240) != *(a2 + 232))
  {
    kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::EnsureCorrs(a1);
    kaldi::nnet1::QuantizerResidualAggregator::PushSetup((a1 + 232), *(*(a1 + 112) + 8 * ((((*(a1 + 120) - *(a1 + 112)) << 29) - 0x100000000) >> 32)));
  }

  return a1;
}

void sub_1B53205F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, quasar::Bitmap *a10, quasar::Bitmap *a11, uint64_t a12)
{
  MEMORY[0x1B8C85350](v13, 0x10D0C4068EB0291);
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v16);
  v18 = *v15;
  if (*v15)
  {
    *(v12 + 26) = v18;
    operator delete(v18);
  }

  v19 = *v14;
  if (*v14)
  {
    *(v12 + 23) = v19;
    operator delete(v19);
  }

  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](a9, 0);
  quasar::Bitmap::~Bitmap(a10);
  quasar::Bitmap::~Bitmap(a11);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v12);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::LinearTransform<kaldi::CuMatrixBase<float>>(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D15BB8;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = &unk_1F2D172B0;
  *(a1 + 48) = &unk_1F2D279F8;
  v5 = *(a2 + 56);
  *(a1 + 71) = *(a2 + 71);
  *(a1 + 56) = v5;
  *a1 = &unk_1F2D0C888;
  *(a1 + 88) = &unk_1F2D0C9C0;
  *(a1 + 104) = 0;
  *(a1 + 96) = &unk_1F2D0C9E8;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 112), (*(a2 + 120) - *(a2 + 112)) >> 3);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 136, *(a2 + 136), *(a2 + 144), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 144) - *(a2 + 136)) >> 4));
  v6 = *(a2 + 160);
  v7 = *(a2 + 164);
  *(a1 + 176) = 0;
  *(a1 + 160) = v6;
  *(a1 + 164) = v7;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 176, *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 200, *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 2);
  v8 = *(a2 + 224);
  *(a1 + 232) = 0u;
  *(a1 + 224) = v8;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  if (*(a2 + 104))
  {
    operator new();
  }

  v10 = *(a1 + 112);
  v9 = *(a1 + 120);
  if (v9 != v10)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(a2 + 112);
      if (*(v13 + 8 * v12))
      {
        kaldi::NewCuSubOrMat<float>(*(v13 + (v11 >> 29)), *(a1 + 16));
      }

      ++v12;
      v11 += 0x100000000;
    }

    while (v12 < (v9 - v10) >> 3);
  }

  if (*(a2 + 240) != *(a2 + 232))
  {
    kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::EnsureCorrs(a1);
    kaldi::nnet1::QuantizerResidualAggregator::PushSetup((a1 + 232), *(*(a1 + 112) + 8 * ((((*(a1 + 120) - *(a1 + 112)) << 29) - 0x100000000) >> 32)));
  }

  return a1;
}

void sub_1B5320A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, quasar::Bitmap *a10, quasar::Bitmap *a11, uint64_t a12)
{
  MEMORY[0x1B8C85350](v13, 0x10D0C4068EB0291);
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v16);
  v18 = *v15;
  if (*v15)
  {
    *(v12 + 26) = v18;
    operator delete(v18);
  }

  v19 = *v14;
  if (*v14)
  {
    *(v12 + 23) = v19;
    operator delete(v19);
  }

  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](a9, 0);
  quasar::Bitmap::~Bitmap(a10);
  quasar::Bitmap::~Bitmap(a11);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v12);
  _Unwind_Resume(a1);
}

uint64_t kaldi::Matrix<float>::Matrix<float>(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = *(a2 + 16);
  v7 = *(a2 + 20);
  if (a3 == 111)
  {
    v8 = *(a2 + 20);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  if (a3 == 111)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  kaldi::Matrix<float>::Init(a1, v8, v9, 0);
  kaldi::CuMatrixBase<float>::CopyToMat<float>(a2, a1, a3);
  return a1;
}

void std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    std::__split_buffer<std::unique_ptr<kaldi::CuMatrixBase<float>>>::~__split_buffer(v14);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<kaldi::CuMatrixBase<float>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 24))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::LinearTransform<kaldi::QuantizedMatrix<signed char>>(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D15BB8;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = &unk_1F2D172B0;
  *(a1 + 48) = &unk_1F2D279F8;
  v5 = *(a2 + 56);
  *(a1 + 71) = *(a2 + 71);
  *(a1 + 56) = v5;
  *a1 = &unk_1F2D0C888;
  *(a1 + 88) = &unk_1F2D0C9C0;
  *(a1 + 104) = 0;
  *(a1 + 96) = &unk_1F2D0C9E8;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 112), (*(a2 + 120) - *(a2 + 112)) >> 3);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 136, *(a2 + 136), *(a2 + 144), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 144) - *(a2 + 136)) >> 4));
  v6 = *(a2 + 160);
  v7 = *(a2 + 164);
  *(a1 + 176) = 0;
  *(a1 + 160) = v6;
  *(a1 + 164) = v7;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 176, *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 200, *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 2);
  v8 = *(a2 + 224);
  *(a1 + 232) = 0u;
  *(a1 + 224) = v8;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  if (*(a2 + 104))
  {
    operator new();
  }

  v10 = *(a1 + 112);
  v9 = *(a1 + 120);
  if (v9 != v10)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(a2 + 112);
      if (*(v13 + 8 * v12))
      {
        kaldi::NewCuSubOrMat<float>(*(v13 + (v11 >> 29)), *(a1 + 16));
      }

      ++v12;
      v11 += 0x100000000;
    }

    while (v12 < (v9 - v10) >> 3);
  }

  if (*(a2 + 240) != *(a2 + 232))
  {
    kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<short>>::EnsureCorrs(a1);
    kaldi::nnet1::QuantizerResidualAggregator::PushSetup((a1 + 232), *(*(a1 + 112) + 8 * ((((*(a1 + 120) - *(a1 + 112)) << 29) - 0x100000000) >> 32)));
  }

  return a1;
}

void sub_1B53210E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, quasar::Bitmap *a10, quasar::Bitmap *a11, uint64_t a12)
{
  MEMORY[0x1B8C85350](v13, 0x10D0C4068EB0291);
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v16);
  v18 = *v15;
  if (*v15)
  {
    *(v12 + 26) = v18;
    operator delete(v18);
  }

  v19 = *v14;
  if (*v14)
  {
    *(v12 + 23) = v19;
    operator delete(v19);
  }

  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](a9, 0);
  quasar::Bitmap::~Bitmap(a10);
  quasar::Bitmap::~Bitmap(a11);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v12);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::LinearTransform<kaldi::QuantizedMatrix<short>>(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D15BB8;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = &unk_1F2D172B0;
  *(a1 + 48) = &unk_1F2D279F8;
  v5 = *(a2 + 56);
  *(a1 + 71) = *(a2 + 71);
  *(a1 + 56) = v5;
  *a1 = &unk_1F2D0C700;
  *(a1 + 88) = &unk_1F2D0C838;
  *(a1 + 104) = 0;
  *(a1 + 96) = &unk_1F2D0C860;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 112), (*(a2 + 120) - *(a2 + 112)) >> 3);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 136, *(a2 + 136), *(a2 + 144), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 144) - *(a2 + 136)) >> 4));
  v6 = *(a2 + 160);
  v7 = *(a2 + 164);
  *(a1 + 176) = 0;
  *(a1 + 160) = v6;
  *(a1 + 164) = v7;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 176, *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 200, *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 2);
  v8 = *(a2 + 224);
  *(a1 + 232) = 0u;
  *(a1 + 224) = v8;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  if (*(a2 + 104))
  {
    operator new();
  }

  v10 = *(a1 + 112);
  v9 = *(a1 + 120);
  if (v9 != v10)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(a2 + 112);
      if (*(v13 + 8 * v12))
      {
        kaldi::NewCuSubOrMat<float>(*(v13 + (v11 >> 29)), *(a1 + 16));
      }

      ++v12;
      v11 += 0x100000000;
    }

    while (v12 < (v9 - v10) >> 3);
  }

  if (*(a2 + 240) != *(a2 + 232))
  {
    kaldi::nnet1::LinearTransform<kaldi::QuantizedMatrix<signed char>>::EnsureCorrs(a1);
    kaldi::nnet1::QuantizerResidualAggregator::PushSetup((a1 + 232), *(*(a1 + 112) + 8 * ((((*(a1 + 120) - *(a1 + 112)) << 29) - 0x100000000) >> 32)));
  }

  return a1;
}

void sub_1B532155C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, quasar::Bitmap *a10, quasar::Bitmap *a11, uint64_t a12)
{
  MEMORY[0x1B8C85350](v13, 0x10D0C4068EB0291);
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v16);
  v18 = *v15;
  if (*v15)
  {
    *(v12 + 26) = v18;
    operator delete(v18);
  }

  v19 = *v14;
  if (*v14)
  {
    *(v12 + 23) = v19;
    operator delete(v19);
  }

  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](a9, 0);
  quasar::Bitmap::~Bitmap(a10);
  quasar::Bitmap::~Bitmap(a11);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v12);
  _Unwind_Resume(a1);
}

uint64_t fst::BitmapIndex::Rank1(fst::BitmapIndex *this, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  FstCheck(*(this + 1) >= a2, "(end) <= (Bits())", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libkaldi/tools/openfst/src/extensions/ngram/bitmap-index.cc", 54);
  v4 = ((a2 - 1) >> 6);
  if (((a2 - 1) >> 6))
  {
    v5 = *(*(this + 5) + 2 * (v4 - 1));
    if ((v4 - 1) >= 0x3FF)
    {
      v5 += *(*(this + 2) + 4 * ((v4 - 1) / 0x3FFu) - 4);
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *(*this + 8 * v4);
  v8 = 0xFFFFFFFFFFFFFFFFLL >> -(a2 & 0x3F);
  if ((a2 & 0x3F) == 0)
  {
    v8 = -1;
  }

  v9 = vcnt_s8((v7 & v8));
  v9.i16[0] = vaddlv_u8(v9);
  return (v9.i32[0] + v5);
}

uint64_t fst::BitmapIndex::Select1(fst::BitmapIndex *this, unint64_t a2)
{
  result = *(this + 1);
  v4 = *(this + 2);
  v5 = (((((result + 63) >> 6) + 1022) * 0x802008020080201uLL) >> 64) >> 5;
  v6 = (v4 + 4 * v5);
  if (*(v6 - 1) > a2)
  {
    if ((result + 63) >= 0x40)
    {
      v6 = *(this + 2);
      do
      {
        v7 = v5 >> 1;
        v8 = &v6[v5 >> 1];
        v10 = *v8;
        v9 = v8 + 1;
        v5 += ~(v5 >> 1);
        if (v10 <= a2)
        {
          v6 = v9;
        }

        else
        {
          v5 = v7;
        }
      }

      while (v5);
    }

    v11 = a2 + 1;
    v12 = (v6 - v4) >> 2;
    if (v12)
    {
      v11 -= *(v4 + 4 * (v12 - 1));
      v13 = 1023 * v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    secondary_block = fst::BitmapIndex::find_secondary_block(this, v13, v11);
    if (secondary_block)
    {
      v14 = v13 + secondary_block;
      v11 -= *(*(this + 5) + 2 * (v14 - 1));
      v13 += secondary_block;
    }

    v16 = *(*this + 8 * v14);
    v17 = vcnt_s8(v16);
    v17.i16[0] = vaddlv_u8(v17);
    v18 = v17.i32[0];
    if (v17.i32[0] >= v11)
    {
      v18 = 0;
    }

    v19 = v11 - v18;
    v20 = 32 * (v17.i32[0] < v11);
    v17.i32[0] = (v16 >> v20);
    v21 = vcnt_s8(v17);
    v21.i16[0] = vaddlv_u8(v21);
    v22 = v21.i32[0];
    v23 = v19 > v21.i32[0];
    if (v19 <= v21.i32[0])
    {
      v22 = 0;
    }

    v24 = v19 - v22;
    v25 = v20 | (16 * v23);
    v21.i32[0] = (v16 >> v25);
    v26 = vcnt_s8(v21);
    v26.i16[0] = vaddlv_u8(v26);
    v27 = v25 | (8 * (v24 > v26.i32[0]));
    v28 = nth_bit_bit_offset[(v16 >> v27)];
    if (v24 > v26.i32[0])
    {
      v29 = ~v26.i8[0];
    }

    else
    {
      v29 = -1;
    }

    return (v27 | (v13 << 6)) + ((v28 >> (4 * (v29 + v24))) & 0xF);
  }

  return result;
}

uint64_t fst::BitmapIndex::find_secondary_block(fst::BitmapIndex *this, uint64_t a2, unint64_t a3)
{
  if (a2 + 1023 >= (*(this + 1) + 63) >> 6)
  {
    v3 = (*(this + 1) + 63) >> 6;
  }

  else
  {
    v3 = a2 + 1023;
  }

  v4 = *(this + 5);
  v5 = (v4 + 2 * a2);
  if (2 * v3 == 2 * a2)
  {
    v6 = (v4 + 2 * v3);
  }

  else
  {
    v7 = (2 * v3 - 2 * a2) >> 1;
    v6 = v5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[v7 >> 1];
      v11 = *v9;
      v10 = v9 + 1;
      v7 += ~(v7 >> 1);
      if (v11 < a3)
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  return v6 - v5;
}

uint64_t fst::BitmapIndex::Select0(fst::BitmapIndex *this, unint64_t a2)
{
  result = *(this + 1);
  v4 = *(this + 2);
  if (result - *(v4 + (((((((result + 63) >> 6) + 1022) * 0x802008020080201uLL) >> 64) >> 3) & 0xFFFFFFFFFFFFCLL) - 4) > a2)
  {
    v5 = a2 + 1;
    inverted_primary_block = fst::BitmapIndex::find_inverted_primary_block(this, a2 + 1);
    if (inverted_primary_block)
    {
      v5 = v5 - 65472 * inverted_primary_block + *(v4 + 4 * (inverted_primary_block - 1));
      v7 = 1023 * inverted_primary_block;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    inverted_secondary_block = fst::BitmapIndex::find_inverted_secondary_block(this, v7, v5);
    if (inverted_secondary_block)
    {
      v8 = v7 + inverted_secondary_block;
      v5 = v5 - (inverted_secondary_block << 6) + *(*(this + 5) + 2 * (v8 - 1));
      v7 += inverted_secondary_block;
    }

    v10 = ~*(*this + 8 * v8);
    v11 = vcnt_s8(~*(*this + 8 * v8));
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.i32[0];
    if (v11.i32[0] >= v5)
    {
      v12 = 0;
    }

    v13 = v5 - v12;
    v14 = 32 * (v11.i32[0] < v5);
    v11.i32[0] = (v10 >> v14);
    v15 = vcnt_s8(v11);
    v15.i16[0] = vaddlv_u8(v15);
    v16 = v15.i32[0];
    v17 = v13 > v15.i32[0];
    if (v13 <= v15.i32[0])
    {
      v16 = 0;
    }

    v18 = v13 - v16;
    v19 = v14 | (16 * v17);
    v15.i32[0] = (v10 >> v19);
    v20 = vcnt_s8(v15);
    v20.i16[0] = vaddlv_u8(v20);
    v21 = v19 | (8 * (v18 > v20.i32[0]));
    v22 = nth_bit_bit_offset[(v10 >> v21)];
    if (v18 > v20.i32[0])
    {
      v23 = ~v20.i8[0];
    }

    else
    {
      v23 = -1;
    }

    return (v21 | (v7 << 6)) + ((v22 >> (4 * (v23 + v18))) & 0xF);
  }

  return result;
}

uint64_t fst::BitmapIndex::find_inverted_primary_block(fst::BitmapIndex *this, unint64_t a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 == v3)
  {
    v3 = *(this + 2);
  }

  else
  {
    v4 = *(this + 2);
    do
    {
      v5 = &v4[4 * ((((v3 - v4) >> 2) + ((v3 - v4) >> 63)) >> 1)];
      v7 = *v5;
      v6 = (v5 + 1);
      if (65472 * ((&v4[4 * ((((v3 - v4) >> 2) + ((v3 - v4) >> 63)) >> 1)] - v2) >> 2) - v7 + 65472 < a2)
      {
        v4 = v6;
      }

      else
      {
        v3 = &v4[4 * ((((v3 - v4) >> 2) + ((v3 - v4) >> 63)) >> 1)];
      }
    }

    while (v4 != v3);
  }

  return (v3 - v2) >> 2;
}

uint64_t fst::BitmapIndex::find_inverted_secondary_block(fst::BitmapIndex *this, uint64_t a2, unint64_t a3)
{
  if (a2 + 1023 >= (*(this + 1) + 63) >> 6)
  {
    v3 = (*(this + 1) + 63) >> 6;
  }

  else
  {
    v3 = a2 + 1023;
  }

  v4 = *(this + 5);
  v5 = v4 + 2 * a2;
  if (2 * a2 == 2 * v3)
  {
    v6 = (v4 + 2 * a2);
  }

  else
  {
    v6 = (2 * v3 + v4);
    v7 = (v4 + 2 * a2);
    do
    {
      v8 = (v7 + ((v6 - v7 + ((v6 - v7) >> 63)) & 0xFFFFFFFFFFFFFFFELL));
      v10 = *v8;
      v9 = v8 + 1;
      if (32 * (v7 + ((v6 - v7 + ((v6 - v7) >> 63)) & 0xFFFFFFFFFFFFFFFELL) - v5) - v10 + 64 < a3)
      {
        v7 = v9;
      }

      else
      {
        v6 = (v7 + ((v6 - v7 + ((v6 - v7) >> 63)) & 0xFFFFFFFFFFFFFFFELL));
      }
    }

    while (v7 != v6);
  }

  return (v6 - v5) >> 1;
}

uint64_t fst::BitmapIndex::Select0s(fst::BitmapIndex *this, unint64_t a2)
{
  v2 = *(this + 2);
  v3 = *(this + 1) - *(v2 + (((((((*(this + 1) + 63) >> 6) + 1022) * 0x802008020080201uLL) >> 64) >> 3) & 0xFFFFFFFFFFFFCLL) - 4);
  if (v3 <= a2)
  {
    return *(this + 1);
  }

  v5 = a2 + 1;
  if (a2 + 1 >= v3)
  {
    return fst::BitmapIndex::Select0(this, a2);
  }

  inverted_primary_block = fst::BitmapIndex::find_inverted_primary_block(this, a2 + 1);
  v7 = 65472 * (inverted_primary_block + 1) - *(v2 + 4 * inverted_primary_block);
  if (inverted_primary_block)
  {
    v8 = 65472 * inverted_primary_block - *(v2 + 4 * (inverted_primary_block - 1));
    v7 -= v8;
    v9 = v5 - v8;
    v10 = 1023 * inverted_primary_block;
  }

  else
  {
    v10 = 0;
    v9 = v5;
  }

  v12 = v10;
  inverted_secondary_block = fst::BitmapIndex::find_inverted_secondary_block(this, v10, v9);
  v14 = inverted_secondary_block << 6;
  v15 = v10 + inverted_secondary_block;
  v16 = *(this + 5);
  if (inverted_secondary_block)
  {
    v17 = v14 - *(v16 + 2 * (v15 - 1));
    v9 -= v17;
    v12 = v10 + inverted_secondary_block;
    v10 += inverted_secondary_block;
  }

  else
  {
    v17 = 0;
  }

  v18 = ~*(*this + 8 * v12);
  v19 = vcnt_s8(~*(*this + 8 * v12));
  v19.i16[0] = vaddlv_u8(v19);
  if (v19.i32[0] >= v9)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19.i32[0];
  }

  v21 = v9 - v20;
  v22 = 32 * (v19.i32[0] < v9);
  v19.i32[0] = (v18 >> v22);
  v23 = vcnt_s8(v19);
  v23.i16[0] = vaddlv_u8(v23);
  v24 = v23.i32[0];
  v25 = v21 > v23.i32[0];
  if (v21 <= v23.i32[0])
  {
    v24 = 0;
  }

  v26 = v21 - v24;
  v27 = v22 | (16 * v25);
  v23.i32[0] = (v18 >> v27);
  v28 = vcnt_s8(v23);
  v28.i16[0] = vaddlv_u8(v28);
  if (v26 > v28.i32[0])
  {
    v29 = ~v28.i8[0];
  }

  else
  {
    v29 = -1;
  }

  v11 = ((v27 | (8 * (v26 > v28.i32[0]))) & 0x3F | (v10 << 6)) + ((nth_bit_bit_offset[(v18 >> (v27 | (8 * (v26 > v28.i32[0]))))] >> (4 * (v29 + v26))) & 0xF);
  v30 = v9 + 1;
  if (v7 <= v30)
  {
    fst::BitmapIndex::Select0(this, v5);
  }

  else if (v14 - v17 - *(v16 + 2 * v15) + 64 < v30)
  {
    do
    {
      ++v10;
    }

    while (*(*this + 8 * v10) == -1);
  }

  return v11;
}

void fst::BitmapIndex::BuildIndex(fst::BitmapIndex *this, const unint64_t *a2, uint64_t a3)
{
  *this = a2;
  *(this + 1) = a3;
  std::vector<int>::resize((this + 16), (((((a3 + 63) >> 6) + 1022) * 0x802008020080201uLL) >> 64) >> 5);
  std::vector<unsigned short>::resize(this + 5, (*(this + 1) + 63) >> 6);
  v4 = *(this + 1);
  if ((v4 + 63) >= 0x40)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = (v4 + 63) >> 6;
    v10 = 0xFFFFFFFFFFFFFFFFLL >> -v4;
    v11 = *(this + 2);
    do
    {
      v12 = v6 + 1023;
      if (v9 >= v12)
      {
        v13 = v6 + 1023;
      }

      else
      {
        v13 = v9;
      }

      if (v6 >= v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = 0;
        v15 = v9 - 1 - v6;
        v16 = 2 * v6;
        v17 = (*this + 8 * v6);
        v18 = (*(this + 5) + v16);
        v19 = v13 + v5;
        do
        {
          if (v15)
          {
            v20 = -1;
          }

          else
          {
            v20 = v10;
          }

          v21 = *v17++;
          v22 = vcnt_s8((v21 & v20));
          v22.i16[0] = vaddlv_u8(v22);
          v14 += v22.i32[0];
          *v18++ = v14;
          --v15;
          --v19;
        }

        while (v19);
      }

      v7 += v14;
      *(v11 + 4 * v8++) = v7;
      v5 -= 1023;
      v6 = v12;
    }

    while (v9 > v12);
  }
}

void std::vector<unsigned short>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<unsigned short>::__append(a1, a2 - v2);
  }
}

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

id SequoiaLogger(void)
{
  if ((atomic_load_explicit(&qword_1EB90B758, memory_order_acquire) & 1) == 0)
  {
    SequoiaLogger();
  }

  v1 = _MergedGlobals_0;

  return v1;
}

void SequoiaLog(os_log_type_t a1, void *a2, const char *a3, ...)
{
  v3 = SequoiaLogger();
  os_log_with_args();
}

void SequoiaLogError(uint64_t a1, void *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  SequoiaLog(OS_LOG_TYPE_ERROR, a2, "%s", v2);
}

uint64_t kaldi::LatticeFasterOnlineDecoder::LatticeFasterOnlineDecoder(uint64_t a1, uint64_t a2, __int128 *a3)
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

void sub_1B53222A4(_Unwind_Exception *a1)
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

void kaldi::LatticeFasterOnlineDecoder::~LatticeFasterOnlineDecoder(kaldi::LatticeFasterOnlineDecoder *this)
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

  kaldi::LatticeFasterOnlineDecoder::ClearActiveTokens(this);
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

uint64_t kaldi::LatticeFasterOnlineDecoder::DeleteElems(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 48);
    do
    {
      v3 = a2;
      a2 = *(a2 + 16);
      *(v3 + 16) = v2;
      v2 = v3;
    }

    while (a2);
    *(result + 48) = v3;
  }

  return result;
}

uint64_t kaldi::LatticeFasterOnlineDecoder::ClearActiveTokens(uint64_t this)
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
          this = MEMORY[0x1B8C85350](v5, 0x1020C405E66F15BLL);
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

void kaldi::LatticeFasterOnlineDecoder::InitDecoding(kaldi::LatticeFasterOnlineDecoder *this)
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
  kaldi::LatticeFasterOnlineDecoder::ClearActiveTokens(this);
  *(this + 126) = 0;
  *(this + 62) = 0;
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(this + 32);
  (*(**(this + 19) + 24))(*(this + 19));
  std::vector<kaldi::LatticeFasterOnlineDecoder::TokenList>::resize(this + 10, 1uLL);
  operator new();
}

void std::vector<kaldi::LatticeFasterOnlineDecoder::TokenList>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<kaldi::LatticeFasterOnlineDecoder::TokenList>::__append(a1, a2 - v2);
  }
}

void kaldi::LatticeFasterOnlineDecoder::ProcessNonemitting(kaldi::LatticeFasterOnlineDecoder *this)
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
      v18 = *v17->tokenName.__rep_.__s.__data_;
      if (*v17->tokenName.__rep_.__s.__data_ > v10)
      {
        continue;
      }

      size = v17->tokenName.__rep_.__l.__size_;
      if (size)
      {
        do
        {
          v20 = *(size + 24);
          MEMORY[0x1B8C85350]();
          size = v20;
        }

        while (v20);
      }

      v17->tokenName.__rep_.__l.__size_ = 0;
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
            kaldi::LatticeFasterOnlineDecoder::FindOrAddToken(this, *(v22 + 12), v2 - 1, v23, v17, &v24);
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

void sub_1B5322A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::LatticeFasterOnlineDecoder::ProcessEmitting(kaldi::LatticeFasterOnlineDecoder *this, kaldi::DecodableInterface *a2)
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
    v27 = *v26->tokenName.__rep_.__s.__data_;
    if (*v26->tokenName.__rep_.__s.__data_ > v12)
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
          v33 = ((v16 - v31) + *v26->tokenName.__rep_.__s.__data_) + (*(v30 + 8) + v32);
          if (v33 <= v18)
          {
            kaldi::LatticeFasterOnlineDecoder::FindOrAddToken(this, *(v30 + 12), v6, v33, v26, 0);
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

void sub_1B5322FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
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

void kaldi::LatticeFasterOnlineDecoder::FinalizeDecoding(kaldi::LatticeFasterOnlineDecoder *this)
{
  v2 = (*(this + 11) - *(this + 10)) >> 4;
  v3 = *(this + 62);
  kaldi::LatticeFasterOnlineDecoder::PruneForwardLinksFinal(this);
  if (v2 - 1 >= 1)
  {
    do
    {
      kaldi::LatticeFasterOnlineDecoder::PruneForwardLinks(this, v2 - 2, v7, &v8, 0.0);
      kaldi::LatticeFasterOnlineDecoder::PruneTokensForFrame(this, v2 - 1);
      LODWORD(v2) = v2 - 1;
    }

    while (v2 > 1);
  }

  kaldi::LatticeFasterOnlineDecoder::PruneTokensForFrame(this, 0);
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

BOOL kaldi::LatticeFasterOnlineDecoder::GetRawLattice(uint64_t a1, uint64_t a2, int a3)
{
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

    kaldi::LatticeFasterOnlineDecoder::TopSortTokens(v13, &v49);
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
      v25 = (*(*a2 + 160))(a2) > 0;
      goto LABEL_40;
    }
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v45);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, "GetRawLattice: no tokens active on frame ", 41);
    v24 = MEMORY[0x1B8C84C00](v23, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ": not producing lattice.\n", 25);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v45);
  }

  v25 = 0;
LABEL_40:
  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v52);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v54);
  return v25;
}

void kaldi::LatticeFasterOnlineDecoder::ComputeFinalCosts(unsigned int **a1, void *a2, float *a3, float *a4)
{
  if (a2)
  {
    std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(a2);
  }

  v8 = *a1;
  if (!*a1)
  {
    v10 = INFINITY;
    v9 = INFINITY;
    if (!a3)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v9 = INFINITY;
  v10 = INFINITY;
  do
  {
    v11 = *v8;
    v12 = *(v8 + 1);
    v8 = *(v8 + 2);
    v17[0] = v12;
    v13 = (*(*a1[19] + 32))(a1[19], v11);
    if (v9 >= *v17[0])
    {
      v9 = *v17[0];
    }

    if (v10 >= (*v17[0] + v13))
    {
      v10 = *v17[0] + v13;
    }

    if (a2 && v13 != INFINITY)
    {
      v17[2] = v17;
      *(std::__hash_table<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::__unordered_map_hasher<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::__unordered_map_equal<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::allocator<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>>>::__emplace_unique_key_args<kaldi::LatticeFasterOnlineDecoder::Token *,std::piecewise_construct_t const&,std::tuple<kaldi::LatticeFasterOnlineDecoder::Token * const&>,std::tuple<>>(a2, v17) + 6) = v13;
    }
  }

  while (v8);
  if (a3)
  {
LABEL_14:
    v14 = INFINITY;
    if (v10 != INFINITY || v9 != INFINITY)
    {
      v14 = v10 - v9;
    }

    *a3 = v14;
  }

LABEL_20:
  if (a4)
  {
    if (v10 == INFINITY)
    {
      v16 = v9;
    }

    else
    {
      v16 = v10;
    }

    *a4 = v16;
  }
}

uint64_t kaldi::LatticeFasterOnlineDecoder::TopSortTokens(void *a1, void *a2)
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

void sub_1B5323BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a15);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a21);
  _Unwind_Resume(a1);
}

void kaldi::LatticeFasterOnlineDecoder::PruneForwardLinks(kaldi::LatticeFasterOnlineDecoder *this, unsigned int a2, BOOL *a3, BOOL *a4, float a5)
{
  *a3 = 0;
  *a4 = 0;
  if (!*(*(this + 10) + 16 * a2) && (*(this + 252) & 1) == 0)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "No tokens alive [doing pruning].. warning first time only for each utterance\n", 77);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v22);
    }

    *(this + 252) = 1;
  }

  v9 = *(*(this + 10) + 16 * a2);
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      v11 = *(v9 + 8);
      if (v11)
      {
        v12 = 0;
        v13 = INFINITY;
        do
        {
          v15 = **v11;
          v14 = *(*v11 + 4);
          v16 = v14 + (((*v9 + *(v11 + 20)) + *(v11 + 16)) - v15);
          if (v16 <= *(this + 52))
          {
            if (v16 >= 0.0)
            {
              v19 = v14 + (((*v9 + *(v11 + 20)) + *(v11 + 16)) - v15);
            }

            else
            {
              v19 = 0.0;
              if (v16 < -0.01 && kaldi::g_kaldi_verbose_level >= -1)
              {
                kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Negative extra_cost: ", 21);
                std::ostream::operator<<();
                kaldi::KaldiWarnMessage::~KaldiWarnMessage(v22);
              }
            }

            if (v19 < v13)
            {
              v13 = v19;
            }

            v17 = *(v11 + 24);
            v12 = v11;
          }

          else
          {
            v17 = *(v11 + 24);
            v18 = (v12 + 24);
            if (!v12)
            {
              v18 = (v9 + 8);
            }

            *v18 = v17;
            MEMORY[0x1B8C85350](v11, 0x1020C40D9E1CEDCLL);
            *a4 = 1;
          }

          v11 = v17;
        }

        while (v17);
      }

      else
      {
        v13 = INFINITY;
      }

      v10 |= vabds_f32(v13, *(v9 + 4)) > a5;
      *(v9 + 4) = v13;
      v9 = *(v9 + 16);
      if (!v9)
      {
        if ((v10 & 1) == 0)
        {
          break;
        }

        v10 = 0;
        *a3 = 1;
        v9 = *(*(this + 10) + 16 * a2);
        if (!v9)
        {
          break;
        }
      }
    }
  }
}

void sub_1B5323E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::LatticeFasterOnlineDecoder::PruneForwardLinksFinal(kaldi::LatticeFasterOnlineDecoder *this)
{
  v2 = *(this + 10);
  v3 = ((*(this + 11) - v2) << 28) - 0x100000000;
  if (*(v2 + (v3 >> 28)))
  {
    v4 = 1;
  }

  else
  {
    v4 = kaldi::g_kaldi_verbose_level < -1;
  }

  if (!v4)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "No tokens alive at end of file\n", 31);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v33);
  }

  kaldi::LatticeFasterOnlineDecoder::ComputeFinalCosts(this, this + 32, this + 74, this + 75);
  *(this + 253) = 1;
  v5 = *(this + 1);
  if (v5 != -1)
  {
    v6 = *(this + 3);
    do
    {
      v7 = (v6 + 16 * v5);
      v7[1] = 0;
      v5 = *v7;
    }

    while (v5 != -1);
  }

  v8 = *this;
  *this = 0;
  *(this + 1) = -1;
  if (v8)
  {
    v9 = *(this + 6);
    do
    {
      v10 = v8;
      v8 = *(v8 + 16);
      *(v10 + 16) = v9;
      v9 = v10;
    }

    while (v8);
    *(this + 6) = v10;
  }

  do
  {
    v32 = *(*(this + 10) + 16 * (v3 >> 32));
    if (!v32)
    {
      break;
    }

    v11 = 0;
    do
    {
      if (*(this + 35))
      {
        v12 = std::__hash_table<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::__unordered_map_hasher<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::__unordered_map_equal<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::allocator<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>>>::find<kaldi::LatticeFasterOnlineDecoder::Token *>(this + 32, &v32);
        if (v12)
        {
          v13 = v12[6];
        }

        else
        {
          v13 = INFINITY;
        }
      }

      else
      {
        v13 = 0.0;
      }

      v14 = v32;
      v15 = (v13 + *v32) - *(this + 75);
      v16 = *(v32 + 8);
      if (v16)
      {
        v17 = 0;
        do
        {
          v19 = **v16;
          v18 = *(*v16 + 4);
          v20 = v18 + (((*v32 + *(v16 + 20)) + *(v16 + 16)) - v19);
          if (v20 <= *(this + 52))
          {
            if (v20 >= 0.0)
            {
              v23 = v18 + (((*v32 + *(v16 + 20)) + *(v16 + 16)) - v19);
            }

            else
            {
              v23 = 0.0;
              if (v20 < -0.01 && kaldi::g_kaldi_verbose_level >= -1)
              {
                kaldi::KaldiWarnMessage::KaldiWarnMessage(v33);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Negative extra_cost: ", 21);
                std::ostream::operator<<();
                kaldi::KaldiWarnMessage::~KaldiWarnMessage(v33);
              }
            }

            if (v23 < v15)
            {
              v15 = v23;
            }

            v21 = *(v16 + 24);
            v17 = v16;
          }

          else
          {
            v21 = *(v16 + 24);
            v22 = (v32 + 8);
            if (v17)
            {
              v22 = (v17 + 24);
            }

            *v22 = v21;
            MEMORY[0x1B8C85350](v16, 0x1020C40D9E1CEDCLL);
          }

          v16 = v21;
        }

        while (v21);
        v14 = v32;
      }

      v25 = *(this + 52);
      v26 = INFINITY;
      if (v15 <= v25)
      {
        v26 = v15;
      }

      v27 = *(v14 + 4);
      if (v27 != v26)
      {
        if (COERCE_INT(fabs(v27 - v26)) > 2139095039)
        {
          goto LABEL_46;
        }

        v28 = vabds_f32(v27, v26);
        v29 = fabsf(v27);
        v30 = fabsf(v15);
        v4 = v15 <= v25;
        v31 = INFINITY;
        if (v4)
        {
          v31 = v30;
        }

        if (v28 > ((v31 + v29) * 0.00001))
        {
LABEL_46:
          v11 = 1;
        }
      }

      *(v14 + 4) = v26;
      v32 = *(v14 + 16);
    }

    while (v32);
  }

  while ((v11 & 1) != 0);
}

void sub_1B5324188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

float kaldi::LatticeFasterOnlineDecoder::FinalRelativeCost(kaldi::LatticeFasterOnlineDecoder *this)
{
  if (*(this + 253))
  {
    return *(this + 74);
  }

  v5 = v1;
  v6 = v2;
  v4 = 0.0;
  kaldi::LatticeFasterOnlineDecoder::ComputeFinalCosts(this, 0, &v4, 0);
  return v4;
}

uint64_t kaldi::LatticeFasterOnlineDecoder::PruneTokensForFrame(kaldi::LatticeFasterOnlineDecoder *this, unsigned int a2)
{
  v3 = (*(this + 10) + 16 * a2);
  result = *v3;
  if (*v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = kaldi::g_kaldi_verbose_level < -1;
  }

  if (!v5)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "No tokens alive [doing pruning]\n", 32);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v9);
    result = *v3;
  }

  if (result)
  {
    v6 = 0;
    do
    {
      v7 = *(result + 16);
      if (*(result + 4) == INFINITY)
      {
        v8 = (v6 + 16);
        if (!v6)
        {
          v8 = v3;
        }

        *v8 = v7;
        MEMORY[0x1B8C85350]();
        --*(this + 62);
      }

      else
      {
        v6 = result;
      }

      result = v7;
    }

    while (v7);
  }

  return result;
}

float kaldi::GetCutoffHelper<kaldi::LatticeFasterOnlineDecoder,kaldi::LatticeFasterDecoderConfig,kaldi::HashList<int,kaldi::LatticeFasterOnlineDecoder::Token *,std::hash<int>,std::equal_to<int>>::Elem>(void *a1, uint64_t a2, uint64_t a3, void *a4, float *a5, void *a6, int a7, float a8)
{
  v9 = a3;
  v10 = *(a2 + 8);
  if (*(a2 + 12))
  {
    v10 = *(a2 + 12);
  }

  if (a7)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (*(a2 + 4) == 0x7FFFFFFF && v11 == 0)
  {
    v30 = 0;
    v31 = INFINITY;
    if (a3)
    {
      do
      {
        v32 = **(v9 + 8);
        if (v32 >= v31)
        {
          v33 = 1;
        }

        else
        {
          v31 = **(v9 + 8);
          v33 = a6 == 0;
        }

        if (!v33)
        {
          *a6 = v9;
          v31 = v32;
        }

        v9 = *(v9 + 16);
        ++v30;
      }

      while (v9);
    }

    if (a4)
    {
      *a4 = v30;
    }

    v34 = *a2;
    if (a5)
    {
      *a5 = v34;
    }

    return v31 + v34;
  }

  else
  {
    v47 = v11;
    v48 = *(a2 + 4);
    v14 = (a1 + 16);
    a1[17] = a1[16];
    v15 = 0;
    if (a3)
    {
      v16 = -INFINITY;
      v17 = INFINITY;
      do
      {
        v18 = **(v9 + 8);
        v20 = a1[17];
        v19 = a1[18];
        if (v20 >= v19)
        {
          v22 = *v14;
          v23 = v20 - *v14;
          v24 = v23 >> 2;
          v25 = (v23 >> 2) + 1;
          if (v25 >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v26 = v19 - v22;
          if (v26 >> 1 > v25)
          {
            v25 = v26 >> 1;
          }

          if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v27 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v27 = v25;
          }

          if (v27)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(v14, v27);
          }

          *(4 * v24) = v18;
          v21 = 4 * v24 + 4;
          memcpy(0, v22, v23);
          v28 = a1[16];
          a1[16] = 0;
          a1[17] = v21;
          a1[18] = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v20 = v18;
          v21 = (v20 + 1);
        }

        a1[17] = v21;
        if (v18 >= v17)
        {
          v29 = 1;
        }

        else
        {
          v17 = v18;
          v29 = a6 == 0;
        }

        if (!v29)
        {
          *a6 = v9;
          v17 = v18;
        }

        if (v18 > v16)
        {
          v16 = v18;
        }

        v9 = *(v9 + 16);
        ++v15;
      }

      while (v9);
    }

    else
    {
      v17 = INFINITY;
      v16 = -INFINITY;
    }

    if (a4)
    {
      *a4 = v15;
    }

    v36 = *a2;
    v35 = INFINITY;
    if (!*(a2 + 12))
    {
      v16 = INFINITY;
    }

    v37 = a1[16];
    v38 = a1[17];
    v39 = v38 - v37;
    if (v39 <= v48)
    {
      v41 = v47;
    }

    else
    {
      v40 = &v37[v48];
      v41 = v47;
      if (v40 != v38)
      {
        std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(v37, v40, v38, a8);
        v37 = a1[16];
        v38 = a1[17];
        v39 = v38 - v37;
      }

      v35 = v37[v48];
    }

    v42 = v17 + v36;
    if (v39 > v41)
    {
      v43 = v17;
    }

    else
    {
      v43 = v16;
    }

    if (v41 && v39 > v41)
    {
      v44 = &v37[v41];
      if (v39 > v48)
      {
        v38 = &v37[v48];
      }

      if (v44 != v38)
      {
        std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(v37, v44, v38, v43);
        v37 = *v14;
      }

      v43 = v37[v41];
    }

    if (v35 >= v42)
    {
      if (v43 <= v42)
      {
        *a5 = *a2;
        return v42;
      }

      else
      {
        if (a5)
        {
          *a5 = (v43 - v17) + *(a2 + 28);
        }

        return v43;
      }
    }

    else if (a5)
    {
      *a5 = (v35 - v17) + *(a2 + 28);
    }
  }

  return v35;
}

uint64_t kaldi::LatticeFasterOnlineDecoder::FindOrAddToken(kaldi::LatticeFasterOnlineDecoder *this, int a2, int a3, float a4, Token *a5, BOOL *a6)
{
  v6 = *(this + 3);
  v7 = (v6 + 16 * (a2 % *(this + 2)));
  v8 = v7[1];
  if (!v8)
  {
LABEL_8:
    operator new();
  }

  v9 = *v7;
  v10 = this;
  if (v9 != -1)
  {
    v10 = (*(v6 + 16 * v9 + 8) + 16);
  }

  v11 = *(v8 + 16);
  for (i = *v10; ; i = *(i + 16))
  {
    if (i == v11)
    {
      goto LABEL_8;
    }

    if (*i == a2)
    {
      break;
    }
  }

  v13 = *(i + 8);
  if (*v13 <= a4)
  {
    if (!a6)
    {
      return v13;
    }

    v14 = 0;
    goto LABEL_12;
  }

  *v13 = a4;
  *(v13 + 24) = a5;
  if (a6)
  {
    v14 = 1;
LABEL_12:
    *a6 = v14;
  }

  return v13;
}

void *kaldi::HashList<int,kaldi::LatticeFasterOnlineDecoder::Token *,std::hash<int>,std::equal_to<int>>::~HashList(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = 0;
    do
    {
      ++v3;
      v2 = *(v2 + 16);
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[7];
  v5 = a1[8];
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (v4[v6])
      {
        MEMORY[0x1B8C85310](v4[v6], 0x1020C80F89CB87BLL);
        v4 = a1[7];
        v5 = a1[8];
      }

      ++v6;
      v7 += 1024;
    }

    while (v6 < (v5 - v4) >> 3);
  }

  if (v3 != v7 && kaldi::g_kaldi_verbose_level > -2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Possible memory leak: ", 22);
    v9 = MEMORY[0x1B8C84C30](v8, v3);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " != ", 4);
    v11 = MEMORY[0x1B8C84C30](v10, v7);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": you might have forgotten to call Delete on ", 45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "some Elems", 10);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v15);
    v4 = a1[7];
  }

  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  v13 = a1[3];
  if (v13)
  {
    a1[4] = v13;
    operator delete(v13);
  }

  return a1;
}

void std::vector<kaldi::LatticeFasterOnlineDecoder::TokenList>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 4)
  {
    if (a2)
    {
      v11 = v4 + 16 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 257;
        v4 += 16;
      }

      while (v4 != v11);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = v4 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 4;
    v9 = v5 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::LatticeFasterOnlineDecoder::TokenList>>(a1, v10);
    }

    v12 = 16 * v8;
    v13 = 16 * v8 + 16 * a2;
    v14 = v12;
    do
    {
      *v14 = 0;
      *(v14 + 8) = 257;
      v14 += 16;
    }

    while (v14 != v13);
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::LatticeFasterOnlineDecoder::TokenList>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t kaldi::HashList<int,kaldi::LatticeFasterOnlineDecoder::Token *,std::hash<int>,std::equal_to<int>>::New(uint64_t a1)
{
  result = *(a1 + 48);
  if (!result)
  {
    operator new[]();
  }

  *(a1 + 48) = *(result + 16);
  return result;
}

uint64_t fst::ArcMap<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ProjectMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 1 || ((*(*a1 + 280))(a1, 0), *a2 != 2))
  {
    (*(*a1 + 288))(a1, 0);
  }

  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    if ((*(*a1 + 160))(a1) >= 1)
    {
      v6 = 0;
      do
      {
        (*(*a1 + 296))(a1, v6, &v12);
        while (!(*(*v12 + 24))(v12))
        {
          v7 = (*(*v12 + 32))(v12);
          v8 = *(v7 + 16);
          LODWORD(v10[0]) = *(v7 + 4 * (*a2 != 1));
          HIDWORD(v10[0]) = v10[0];
          v10[1] = *(v7 + 8);
          v11 = v8;
          (*(*v12 + 88))(v12, v10);
          (*(*v12 + 40))(v12);
        }

        if (v12)
        {
          (*(*v12 + 8))();
        }

        (*(*a1 + 32))(v10, a1, v6);
        (*(*a1 + 184))(a1, v6, v10);
        v6 = (v6 + 1);
      }

      while (v6 < (*(*a1 + 160))(a1));
    }

    v9 = fst::ProjectProperties(v5, *a2 == 1);
    return (*(*a1 + 192))(a1, v9, 0x3FFFFFFF0007);
  }

  return result;
}

void sub_1B5324F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::__unordered_map_hasher<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::__unordered_map_equal<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::allocator<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>>>::__emplace_unique_key_args<kaldi::LatticeFasterOnlineDecoder::Token *,std::piecewise_construct_t const&,std::tuple<kaldi::LatticeFasterOnlineDecoder::Token * const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
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
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::__unordered_map_hasher<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::__unordered_map_equal<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::allocator<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>>>::find<kaldi::LatticeFasterOnlineDecoder::Token *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
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
        if (result[2] == *a2)
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

void *std::__hash_table<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,float>,std::__unordered_map_hasher<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,float>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::__unordered_map_equal<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,float>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::allocator<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,float>>>::find<kaldi::LatticeFasterOnlineDecoder::Token *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
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
        if (result[2] == *a2)
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

void *std::__hash_table<kaldi::LatticeFasterOnlineDecoder::Token *,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::allocator<kaldi::LatticeFasterOnlineDecoder::Token *>>::__emplace_unique_key_args<kaldi::LatticeFasterOnlineDecoder::Token *,kaldi::LatticeFasterOnlineDecoder::Token * const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
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
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t *std::__hash_table<kaldi::LatticeFasterOnlineDecoder::Token *,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::allocator<kaldi::LatticeFasterOnlineDecoder::Token *>>::__erase_unique<kaldi::LatticeFasterOnlineDecoder::Token *>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::__unordered_map_hasher<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::__unordered_map_equal<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::allocator<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>>>::find<kaldi::LatticeFasterOnlineDecoder::Token *>(a1, a2);
  if (result)
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(a1, result);
    return 1;
  }

  return result;
}

kaldi::quasar::RnnlmEvaluator *kaldi::quasar::RnnlmEvaluator::RnnlmEvaluator(kaldi::quasar::RnnlmEvaluator *this, const kaldi::quasar::NnlmDecoderWord *a2, kaldi::InferenceNetItf *a3, kaldi::InferenceNetItf *a4, float a5, int a6, int a7, int a8, int a9)
{
  v21 = *MEMORY[0x1E69E9840];
  v12 = kaldi::quasar::DnnlmEvaluator::DnnlmEvaluator(this, a2, a3, a4, a5, a7, a8);
  *v12 = &unk_1F2D0CAE8;
  *(v12 + 38) = 0;
  std::unordered_map<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,std::allocator<std::pair<std::vector<int> const* const,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::unordered_map(v12 + 312, 0, &v16, &v15);
  *(this + 45) = this + 360;
  *(this + 46) = this + 360;
  *(this + 47) = 0;
  *(this + 48) = 0;
  std::unordered_map<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,std::allocator<std::pair<std::vector<int> const* const,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>>>>::unordered_map(this + 392, 0, &v16, &v15);
  *(this + 55) = this + 440;
  *(this + 56) = this + 440;
  *(this + 57) = 0;
  *(this + 116) = a6;
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "using RNN style LM in the decoder", 33);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&v16);
  }

  if (*(this + 40) == 1)
  {
    v16.__locale_ = a9;
    std::unordered_map<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,std::allocator<std::pair<std::vector<int> const* const,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>>>>::unordered_map(v17, 0, &v15, &v14);
    v18 = &v18;
    v19 = &v18;
    v20 = 0;
    *(this + 48) = v16;
    std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>>>>::__move_assign(this + 392, v17);
    std::list<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>>::__move_assign(this + 440, &v18);
    std::__list_imp<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>>::clear(&v18);
  }

  else
  {
    v16.__locale_ = a9;
    std::unordered_map<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,std::allocator<std::pair<std::vector<int> const* const,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::unordered_map(v17, 0, &v15, &v14);
    v18 = &v18;
    v19 = &v18;
    v20 = 0;
    *(this + 38) = v16;
    std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>>>>::__move_assign(this + 312, v17);
    std::list<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>>::__move_assign(this + 360, &v18);
    std::__list_imp<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>>::clear(&v18);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v17);
  return this;
}

void sub_1B5325ADC(_Unwind_Exception *a1)
{
  std::__list_imp<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>>::clear(v3);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v1 + 392);
  std::__list_imp<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>>::clear(v2);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v1 + 312);
  kaldi::quasar::DnnlmEvaluator::~DnnlmEvaluator(v1);
  _Unwind_Resume(a1);
}

float kaldi::quasar::RnnlmEvaluator::CalculateSingleNgramAfterCacheMiss(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v6 = a2[1] - 4;
  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&__p, v4, v6, (v6 - v4) >> 2);
  if (*(a1 + 40) == 1)
  {
    v14 = 0;
    kaldi::quasar::RnnlmEvaluator::CalculateAndCacheNgramContext(a1, &__p, &v14);
    v7 = v14;
    v8 = *(a1 + 24);
    if (v8)
    {
    }

    UnitOutput = kaldi::quasar::CEInferenceNet::GetUnitOutput(v8, v7, *(a2[1] - 4));
  }

  else
  {
    v14 = 0;
    kaldi::quasar::RnnlmEvaluator::CalculateAndCacheNgramContext(a1, &__p, &v14);
    v10 = v14;
    UnitOutput = (*(*v11 + 136))(v11, v10, *(a2[1] - 4));
  }

  v15 = UnitOutput - *(a1 + 44);
  kaldi::quasar::NnlmEvaluatorBase::FixNnetOut(a1, &v15);
  v12 = v15;
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return -v12;
}

void sub_1B5325CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL kaldi::quasar::RnnlmEvaluator::CalculateAndCacheNgramContext(uint64_t a1, uint64_t *a2, void *a3)
{
  result = kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::Get(a1 + 384, a2, a3);
  if (!result)
  {
    v5 = *a2;
    v6 = a2[1] - 4;
    v7 = (v6 - *a2) >> 2;
    memset(v9, 0, sizeof(v9));
    std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(v9, v5, v6, v7);
    v8[0] = v8;
    v8[1] = v8;
    v8[2] = 0;
    operator new();
  }

  return result;
}

void sub_1B5325FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  va_copy(v6, va1);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__list_imp<char *>::clear(va2);
  v5 = *(v3 - 88);
  if (v5)
  {
    *(v3 - 80) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::RnnlmEvaluator::CalculateAndCacheNgramContext(uint64_t a1, uint64_t *a2, uint64_t **a3)
{
  if (!kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::Get(a1 + 304, a2, a3))
  {
    v6 = *(a1 + 24);
    if (v6)
    {
    }

    else
    {
      v7 = 0;
    }

    v8 = *a2;
    v9 = a2[1];
    v10 = (v9 - *a2) >> 2;
    v23 = 0;
    v24 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&__p, v8, v9, v10);
    v19 = &v19;
    v20 = &v19;
    v21 = 0;
    v18 = 0;
    if (__p == v23)
    {
      goto LABEL_10;
    }

    if (!kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::Get(a1 + 304, &__p, &v18))
    {
      operator new();
    }

    if (!v18)
    {
LABEL_10:
      (*(*v7 + 152))(v7);
    }

    else
    {
      kaldi::nnet1::Nnet1InferenceNet::SetHistoryState(v7, v18 + 4);
    }

    v11 = *(a1 + 16);
    v16 = 0;
    v17 = 0;
    v14 = &unk_1F2D3AC18;
    v15 = 0;
    kaldi::CuVector<float>::Resize(&v14, v11, 0);
    for (i = v20; i != &v19; i = i[1])
    {
      v13 = *(i + 4);
      *v15 = v13;
      std::vector<int>::push_back[abi:ne200100](&__p, &v13);
      v18 = kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertInPlace((a1 + 304), &__p);
      (*(*v7 + 104))(v7, &v14, v18, 1);
      kaldi::nnet1::Nnet1InferenceNet::GetHistoryState(v7, v18 + 4);
    }

    *a3 = v18;
    kaldi::CuVector<float>::~CuVector(&v14);
    std::__list_imp<char *>::clear(&v19);
    if (__p)
    {
      v23 = __p;
      operator delete(__p);
    }
  }
}

void sub_1B5326254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  std::__list_imp<char *>::clear(&a15);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::NnlmEvaluatorBase::FixNnetOut(kaldi::quasar::NnlmEvaluatorBase *this, float *a2)
{
  if ((*a2 & 0x7FFFFFFFu) >= 0x7F800000)
  {
    *a2 = -INFINITY;
    if ((*(this + 20) & 1) == 0)
    {
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Replacing non-finite NNLM output with -infinity", 47);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v3);
      }

      *(this + 20) = 1;
    }
  }
}

BOOL kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::Get(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "v != nullptr");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  v12[0] = a2;
  v5 = std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::find<std::vector<int> const*>((a1 + 8), v12);
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

uint64_t kaldi::nnet1::Nnet1InferenceNet::SetHistoryState(uint64_t result, void *a2)
{
  v2 = *(result + 392);
  if (*(result + 400) != v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    do
    {
      result = (*(**(v2 + 8 * v6) + 64))(*(v2 + 8 * v6), *a2 + v5, 0, 0);
      ++v6;
      v2 = *(v4 + 392);
      v5 += 32;
    }

    while (v6 < (*(v4 + 400) - v2) >> 3);
  }

  return result;
}

uint64_t *kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertInPlace(unint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "capacity_ > 0");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  return kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertWithValueFunction<kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertInPlace(std::vector<int> const&)::{lambda(kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry&)#1}>(a1, a2);
}

uint64_t *kaldi::nnet1::Nnet1InferenceNet::GetHistoryState(uint64_t a1, uint64_t *a2)
{
  result = std::vector<kaldi::CuVector<float>>::resize(a2, (*(a1 + 400) - *(a1 + 392)) >> 3);
  v5 = *(a1 + 392);
  if (*(a1 + 400) != v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (v7 >= (a2[1] - *a2) >> 5)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      result = (*(**(v5 + 8 * v7) + 48))(*(v5 + 8 * v7), *a2 + v6, 0, 0);
      ++v7;
      v5 = *(a1 + 392);
      v6 += 32;
    }

    while (v7 < (*(a1 + 400) - v5) >> 3);
  }

  return result;
}

BOOL kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::Get(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "v != nullptr");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  v12[0] = a2;
  v5 = std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::find<std::vector<int> const*>((a1 + 8), v12);
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

uint64_t *kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertInPlace(unint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "capacity_ > 0");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  return kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertWithValueFunction<kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertInPlace(std::vector<int> const&)::{lambda(kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE&)#1}>(a1, a2);
}

void kaldi::quasar::RnnlmEvaluator::ClearCaches(kaldi::quasar::RnnlmEvaluator *this)
{
  kaldi::quasar::DnnlmEvaluator::ClearCaches(this);
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(this + 39);
  std::__list_imp<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>>::clear(this + 360);
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(this + 49);

  std::__list_imp<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>>::clear(this + 440);
}

void kaldi::quasar::RnnlmEvaluator::~RnnlmEvaluator(kaldi::quasar::RnnlmEvaluator *this)
{
  kaldi::quasar::RnnlmEvaluator::~RnnlmEvaluator(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D0CAE8;
  std::__list_imp<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>>::clear(this + 440);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 392);
  std::__list_imp<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>>::clear(this + 360);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 312);

  kaldi::quasar::DnnlmEvaluator::~DnnlmEvaluator(this);
}

void std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  *(a1 + 8) = a2[1];
  a2[1] = 0;
  v6 = a2[3];
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 9);
  *(a1 + 40) = *(a2 + 40);
  v9 = a2[2];
  v8 = a2 + 2;
  v7 = v9;
  *(a1 + 16) = v9;
  if (v6)
  {
    v10 = *(v7 + 8);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v10 %= v11;
      }
    }

    else
    {
      v10 &= v11 - 1;
    }

    *(*a1 + 8 * v10) = a1 + 16;
    *v8 = 0;
    v8[1] = 0;
  }
}

void std::list<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>>::__move_assign(char *a1, void *a2)
{
  std::__list_imp<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>>::clear(a1);
  v4 = a2[2];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = *(*a2 + 8);
    v8 = *v5;
    *(v8 + 8) = v7;
    *v7 = v8;
    v9 = *a1;
    *(v9 + 8) = v5;
    *v5 = v9;
    *a1 = v6;
    *(v6 + 8) = a1;
    *(a1 + 2) += v4;
    a2[2] = 0;
  }
}

void std::__list_imp<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>>::clear(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = *(v2 + 1);
        v8 = (v2 + 48);
        std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v8);
        v6 = *(v2 + 5);
        *(v2 + 5) = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        v7 = *(v2 + 2);
        if (v7)
        {
          *(v2 + 3) = v7;
          operator delete(v7);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::list<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>>::__move_assign(char *a1, void *a2)
{
  std::__list_imp<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>>::clear(a1);
  v4 = a2[2];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = *(*a2 + 8);
    v8 = *v5;
    *(v8 + 8) = v7;
    *v7 = v8;
    v9 = *a1;
    *(v9 + 8) = v5;
    *v5 = v9;
    *a1 = v6;
    *(v6 + 8) = a1;
    *(a1 + 2) += v4;
    a2[2] = 0;
  }
}

void std::__list_imp<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>>::clear(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = *(v2 + 1);
        v7 = (v2 + 72);
        std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v7);
        kaldi::CuVector<float>::~CuVector(v2 + 5);
        v6 = *(v2 + 2);
        if (v6)
        {
          *(v2 + 3) = v6;
          operator delete(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t std::unordered_map<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,std::allocator<std::pair<std::vector<int> const* const,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::unordered_map(uint64_t a1, size_t a2, char *a3, char *a4)
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

uint64_t std::unordered_map<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,std::allocator<std::pair<std::vector<int> const* const,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>>>>::unordered_map(uint64_t a1, size_t a2, char *a3, char *a4)
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

BOOL std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2 == *a3)
  {
    return 1;
  }

  v5 = *(v3 + 8) - *v3;
  return v5 == *(v4 + 8) - *v4 && memcmp(*v3, *v4, v5) == 0;
}

uint64_t *kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertWithValueFunction<kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertInPlace(std::vector<int> const&)::{lambda(kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry&)#1}>(unint64_t *a1, uint64_t *a2)
{
  v22 = &v22;
  v23 = &v22;
  v24 = 0;
  *&v20 = a2;
  v4 = std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::find<std::vector<int> const*>(a1 + 1, &v20);
  if (v4)
  {
    v5 = v4[3];
    if (&v22 != v5)
    {
      v6 = v5[1];
      if (v6 != &v22)
      {
        v7 = *v5;
        *(v7 + 8) = v6;
        *v6 = v7;
        v8 = v22;
        v22[1] = v5;
        *v5 = v8;
        v5[1] = &v22;
        --a1[9];
        v22 = v5;
        ++v24;
      }
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(a1 + 1, v4);
  }

  else
  {
    v9 = a1[9];
    if (v9 < *a1)
    {
      v20 = 0uLL;
      v21 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v20, *a2, a2[1], (a2[1] - *a2) >> 2);
      operator new();
    }

    v10 = a1[7];
    if (&v22 != v10)
    {
      v11 = v10[1];
      if (v11 != &v22)
      {
        v12 = *v10;
        *(v12 + 8) = v11;
        *v11 = v12;
        v13 = v22;
        v22[1] = v10;
        *v10 = v13;
        v10[1] = &v22;
        a1[9] = v9 - 1;
        v22 = v10;
        ++v24;
      }
    }

    *&v20 = v23 + 2;
    std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::__erase_unique<std::vector<int> const*>(a1 + 1, &v20);
    if (v23 + 2 != a2)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v23 + 2, *a2, a2[1], (a2[1] - *a2) >> 2);
    }
  }

  v14 = v23;
  *&v20 = v23 + 2;
  *(&v20 + 1) = v23;
  std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::__emplace_unique_key_args<std::vector<int> const*,std::pair<std::vector<int> const* const,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>(a1 + 1, &v20);
  v15 = a1[8];
  if (v15 != v14)
  {
    v16 = v14[1];
    if (v16 != v15)
    {
      v17 = *v14;
      *(v17 + 8) = v16;
      *v16 = v17;
      v18 = *v15;
      *(v18 + 8) = v14;
      *v14 = v18;
      *v15 = v14;
      v14[1] = v15;
      --v24;
      ++a1[9];
    }
  }

  std::__list_imp<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>>::clear(&v22);
  return v14 + 5;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::__erase_unique<std::vector<int> const*>(void *a1, uint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::find<std::vector<int> const*>(a1, a2);
  if (result)
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t *kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertWithValueFunction<kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertInPlace(std::vector<int> const&)::{lambda(kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE&)#1}>(unint64_t *a1, uint64_t *a2)
{
  v22 = &v22;
  v23 = &v22;
  v24 = 0;
  *&v20 = a2;
  v4 = std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::find<std::vector<int> const*>(a1 + 1, &v20);
  if (v4)
  {
    v5 = v4[3];
    if (&v22 != v5)
    {
      v6 = v5[1];
      if (v6 != &v22)
      {
        v7 = *v5;
        *(v7 + 8) = v6;
        *v6 = v7;
        v8 = v22;
        v22[1] = v5;
        *v5 = v8;
        v5[1] = &v22;
        --a1[9];
        v22 = v5;
        ++v24;
      }
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(a1 + 1, v4);
  }

  else
  {
    v9 = a1[9];
    if (v9 < *a1)
    {
      v20 = 0uLL;
      v21 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v20, *a2, a2[1], (a2[1] - *a2) >> 2);
      operator new();
    }

    v10 = a1[7];
    if (&v22 != v10)
    {
      v11 = v10[1];
      if (v11 != &v22)
      {
        v12 = *v10;
        *(v12 + 8) = v11;
        *v11 = v12;
        v13 = v22;
        v22[1] = v10;
        *v10 = v13;
        v10[1] = &v22;
        a1[9] = v9 - 1;
        v22 = v10;
        ++v24;
      }
    }

    *&v20 = v23 + 2;
    std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::__erase_unique<std::vector<int> const*>(a1 + 1, &v20);
    if (v23 + 2 != a2)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v23 + 2, *a2, a2[1], (a2[1] - *a2) >> 2);
    }
  }

  v14 = v23;
  *&v20 = v23 + 2;
  *(&v20 + 1) = v23;
  std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::__emplace_unique_key_args<std::vector<int> const*,std::pair<std::vector<int> const* const,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>(a1 + 1, &v20);
  v15 = a1[8];
  if (v15 != v14)
  {
    v16 = v14[1];
    if (v16 != v15)
    {
      v17 = *v14;
      *(v17 + 8) = v16;
      *v16 = v17;
      v18 = *v15;
      *(v18 + 8) = v14;
      *v14 = v18;
      *v15 = v14;
      v14[1] = v15;
      --v24;
      ++a1[9];
    }
  }

  std::__list_imp<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>>::clear(&v22);
  return v14 + 5;
}

uint64_t quasar::OnlineLmRescoringDecoder::registerParams(quasar::OnlineLmRescoringDecoder *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v7, "am-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "Scaling factor for acoustic likelihoods");
  quasar::SystemConfig::Register<float>(a2, v7, this + 456, __p, 0, 2, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "nbest-size");
  std::string::basic_string[abi:ne200100]<0>(__p, "number of NBest from 1st pass used for interpolation weight estimation");
  quasar::SystemConfig::Register<int>(a2, v7, this + 464, __p, 0, 2, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "nnlm-nce-norm-factor-list");
  std::string::basic_string[abi:ne200100]<0>(__p, "the normalization factor for NCE trained NNLMs, use comma to separate multiple ones");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 544, __p, 0, 26, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "rnnlm-max-context-size");
  std::string::basic_string[abi:ne200100]<0>(__p, "maximal context for RNN style LM, no-op for other style of LMs");
  quasar::SystemConfig::Register<int>(a2, v7, this + 596, __p, 0, 2, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "big-g-fst-file-list");
  std::string::basic_string[abi:ne200100]<0>(__p, "list of BigGrammar FST filename, use comma to separate multiple ones");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 472, __p, 0, 2, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "big-g-nnet-file-list");
  std::string::basic_string[abi:ne200100]<0>(__p, "list of BigGrammar NNLM filename, use comma to separate multiple ones");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 496, __p, 0, 2, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "big-g-nnet-config-file-list");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 520, __p, 0, 277, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "nnet-map-file-ext");
  std::string::basic_string[abi:ne200100]<0>(__p, "the file extension name of the corresponding NNLM word map file");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 568, __p, 0, 2, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "enable-memory-map");
  std::string::basic_string[abi:ne200100]<0>(__p, "Map FST/NNLM models into memory (requires aligned models)");
  quasar::SystemConfig::Register<BOOL>(a2, v7, this + 592, __p, 0, 2, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "lattice-beam");
  std::string::basic_string[abi:ne200100]<0>(__p, "the lattice beam for the rescored lattice");
  quasar::SystemConfig::Register<float>(a2, v7, this + 460, __p, 0, 113, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "rnnlm-empty-hyp-cost");
  std::string::basic_string[abi:ne200100]<0>(__p, "overwrite the final cost for empty hypothesis in RNN style LM");
  quasar::SystemConfig::Register<float>(a2, v7, this + 672, __p, 0, 2, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  *(this + 57) = 1065353216;
  *(this + 116) = 1;
  MEMORY[0x1B8C84820](this + 472, "");
  MEMORY[0x1B8C84820](this + 496, "");
  MEMORY[0x1B8C84820](this + 544, "");
  result = MEMORY[0x1B8C84820](this + 568, "wordmap");
  *(this + 592) = 0;
  *(this + 149) = 7;
  *(this + 168) = -1082130432;
  return result;
}

void sub_1B5327668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::OnlineLmRescoringDecoder::finishInit(quasar::OnlineLmRescoringDecoder *this)
{
  v42[4] = *MEMORY[0x1E69E9840];
  v38 = 0;
  v39 = 0;
  v40 = 0;
  kaldi::SplitStringToVector((this + 472), ",", 1, &v38);
  v2 = v38;
  if (v38 != v39)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    MultiChainMultiAudioBuffer = quasar::SpeechRequestData::getMultiChainMultiAudioBuffer(*(this + 52));
    v42[0] = &unk_1F2D0CC18;
    v42[1] = this;
    v42[3] = v42;
    quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::loadMasterLmOrCreatePlaceholder(v2, &__p, MultiChainMultiAudioBuffer, v42);
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  kaldi::SplitStringToVector((this + 496), ",", 1, &v35);
  kaldi::SplitStringToVector((this + 520), ",", 1, &v32);
  if (v32 != v33 && v36 - v35 != v33 - v32)
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
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Invalid number of NNLMs ", 24);
    v9 = MEMORY[0x1B8C84C30](v8, 0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 3));
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " and configs ", 13);
    MEMORY[0x1B8C84C30](v10, 0xAAAAAAAAAAAAAAABLL * ((v33 - v32) >> 3));
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v15);
  }

  v5 = *(this + 567);
  if (v5 < 0)
  {
    v5 = *(this + 69);
  }

  if (v5)
  {
    if ((kaldi::SplitStringToFloats<float>(this + 544, ",", 1, this + 25) & 1) == 0)
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
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Could not read the NNLM normalization factor info", 49);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v15);
    }

    v7 = v35;
    v6 = v36;
    if (0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 3) != (*(this + 76) - *(this + 75)) >> 2)
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
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "the number of NNLM files and the number of NNLM norm factors do not match", 73);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v15);
    }
  }

  else
  {
    LODWORD(v15) = 0;
    std::vector<float>::assign(this + 75, 0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 3), &v15, v4);
    v7 = v35;
    v6 = v36;
  }

  if (v6 != v7)
  {
    __p.__r_.__value_.__s.__data_[0] = 0;
    v14 = 0;
    if (v33 != v32)
    {
      std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>(&__p, v32);
    }

    std::string::basic_string[abi:ne200100]<0>(&v12, "");
    quasar::SpeechRequestData::getMultiChainMultiAudioBuffer(*(this + 52));
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v11, &__p);
    v41 = 0;
    operator new();
  }

  *&v15 = &v32;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
  *&v15 = &v35;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
  *&v15 = &v38;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
}

void sub_1B5327DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  a21 = &a60;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  a21 = (v60 - 240);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  a21 = (v60 - 208);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::loadMasterLmOrCreatePlaceholder(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (!quasar::isPlaceholder(a1))
  {
    LOBYTE(__p[0]) = 0;
    BYTE8(v32) = 0;
    v23 = *(a4 + 24);
    if (v23)
    {
      (*(*v23 + 48))(&v30);
      std::allocate_shared[abi:ne200100]<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::allocator<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::string const&,std::optional<std::string>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,0>();
    }

    std::__throw_bad_function_call[abi:ne200100]();
  }

  v8 = *a3;
  v9 = a3[1];
  if (*a3 != v9)
  {
    v10 = *(a1 + 23);
    if (v10 >= 0)
    {
      v11 = *(a1 + 23);
    }

    else
    {
      v11 = *(a1 + 8);
    }

    if (v10 >= 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    while (1)
    {
      v13 = *(v8 + 23);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v8 + 8);
      }

      if (v13 == v11)
      {
        v15 = v14 >= 0 ? v8 : *v8;
        if (!memcmp(v15, v12, v11))
        {
          break;
        }
      }

      v8 += 24;
      if (v8 == v9)
      {
        goto LABEL_17;
      }
    }
  }

  if (v8 != v9)
  {
    LOBYTE(__p[0]) = 0;
    BYTE8(v32) = 0;
    v30 = 0;
    std::allocate_shared[abi:ne200100]<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::allocator<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::string const&,std::optional<std::string>,decltype(nullptr),0>();
  }

LABEL_17:
  v16 = *(a2 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a2 + 8);
  }

  if (v16)
  {
    v46 = 0uLL;
    v47 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    *__p = 0uLL;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Placeholder ", 12);
    v25 = *(a1 + 23);
    if (v25 >= 0)
    {
      v26 = a1;
    }

    else
    {
      v26 = *a1;
    }

    if (v25 >= 0)
    {
      v27 = *(a1 + 23);
    }

    else
    {
      v27 = *(a1 + 8);
    }

    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " for template ", 14);
    v29 = *(a2 + 23);
    if (v29 >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    if (v29 >= 0)
    {
      v20 = *(a2 + 23);
    }

    else
    {
      v20 = *(a2 + 8);
    }
  }

  else
  {
    v46 = 0uLL;
    v47 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    *__p = 0uLL;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Placeholder ", 12);
    v18 = *(a1 + 23);
    if (v18 >= 0)
    {
      v19 = a1;
    }

    else
    {
      v19 = *a1;
    }

    if (v18 >= 0)
    {
      v20 = *(a1 + 23);
    }

    else
    {
      v20 = *(a1 + 8);
    }
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " not in geo-config ", 19);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v22, "region-dependent-variable-list");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(this, a2);
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::loadMasterLmOrCreatePlaceholder(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (!quasar::isPlaceholder(a1))
  {
    LOBYTE(__p[0]) = 0;
    BYTE8(v32) = 0;
    v23 = *(a4 + 24);
    if (v23)
    {
      (*(*v23 + 48))(&v30);
      std::allocate_shared[abi:ne200100]<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>,std::allocator<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>,std::string const&,std::optional<std::string>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>,0>();
    }

    std::__throw_bad_function_call[abi:ne200100]();
  }

  v8 = *a3;
  v9 = a3[1];
  if (*a3 != v9)
  {
    v10 = *(a1 + 23);
    if (v10 >= 0)
    {
      v11 = *(a1 + 23);
    }

    else
    {
      v11 = *(a1 + 8);
    }

    if (v10 >= 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    while (1)
    {
      v13 = *(v8 + 23);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v8 + 8);
      }

      if (v13 == v11)
      {
        v15 = v14 >= 0 ? v8 : *v8;
        if (!memcmp(v15, v12, v11))
        {
          break;
        }
      }

      v8 += 24;
      if (v8 == v9)
      {
        goto LABEL_17;
      }
    }
  }

  if (v8 != v9)
  {
    LOBYTE(__p[0]) = 0;
    BYTE8(v32) = 0;
    v30 = 0;
    std::allocate_shared[abi:ne200100]<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>,std::allocator<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>,std::string const&,std::optional<std::string>,decltype(nullptr),0>();
  }

LABEL_17:
  v16 = *(a2 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a2 + 8);
  }

  if (v16)
  {
    v46 = 0uLL;
    v47 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    *__p = 0uLL;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Placeholder ", 12);
    v25 = *(a1 + 23);
    if (v25 >= 0)
    {
      v26 = a1;
    }

    else
    {
      v26 = *a1;
    }

    if (v25 >= 0)
    {
      v27 = *(a1 + 23);
    }

    else
    {
      v27 = *(a1 + 8);
    }

    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " for template ", 14);
    v29 = *(a2 + 23);
    if (v29 >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    if (v29 >= 0)
    {
      v20 = *(a2 + 23);
    }

    else
    {
      v20 = *(a2 + 8);
    }
  }

  else
  {
    v46 = 0uLL;
    v47 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    *__p = 0uLL;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Placeholder ", 12);
    v18 = *(a1 + 23);
    if (v18 >= 0)
    {
      v19 = a1;
    }

    else
    {
      v19 = *a1;
    }

    if (v18 >= 0)
    {
      v20 = *(a1 + 23);
    }

    else
    {
      v20 = *(a1 + 8);
    }
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " not in geo-config ", 19);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v22, "region-dependent-variable-list");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

uint64_t quasar::OnlineLmRescoringDecoder::runImpl(uint64_t a1, void *a2, quasar::DecoderChainOutput **a3, uint64_t *a4)
{
  v82[4] = *MEMORY[0x1E69E9840];
  v8 = quasar::DecoderChainOutput::scaleResultLattice(*a3, 1.0, *(a1 + 456), 1);
  if (*(*a3 + 134))
  {
    v9 = !v8;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "rescoreScaled");
    quasar::UttInfo::addResult();
  }

  if (*(a1 + 52) < 1 || (v10 = *(*a3 + 21)) == 0)
  {
    v11 = 0xFFFFFFFFLL;
LABEL_15:
    v14 = *(a1 + 48);
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x20000;
    }

    v16 = a2[57];
    if (v16)
    {
      if (*(v16 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v63, *(v16 + 48), *(v16 + 56));
      }

      else
      {
        v63 = *(v16 + 48);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v63, "");
    }

    v17 = *(a1 + 624);
    v53 = a1;
    for (i = *(a1 + 632); v17 != i; v17 += 2)
    {
      v19 = *v17;
      v20 = *a3;
      v82[0] = &unk_1F2D0CD18;
      v82[3] = v82;
      quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::resolvePlaceholder(v19, v16, v20 + 55, &v63, v82, 0);
      std::__function::__value_func<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> const&)>::~__value_func[abi:ne200100](v82);
    }

    v21 = a2[57];
    if (v21)
    {
      v22 = (v21 + 24);
    }

    else
    {
      v22 = 0;
    }

    v23 = *(v53 + 648);
    for (j = *(v53 + 656); v23 != j; v23 += 2)
    {
      v25 = *v23;
      v26 = *a3;
      v81[0] = &unk_1F2D0CD98;
      v81[3] = v81;
      quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::resolvePlaceholder(v25, v22, v26 + 55, &v63, v81, 0);
      std::__function::__value_func<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> const&)>::~__value_func[abi:ne200100](v81);
    }

    if (a2 + 59 != (v53 + 624))
    {
      std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__assign_with_size[abi:ne200100]<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*>(a2 + 59, *(v53 + 624), *(v53 + 632), (*(v53 + 632) - *(v53 + 624)) >> 4);
    }

    if (a2 + 62 != (v53 + 648))
    {
      std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>>::__assign_with_size[abi:ne200100]<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*>(a2 + 62, *(v53 + 648), *(v53 + 656), (*(v53 + 656) - *(v53 + 648)) >> 4);
    }

    v60 = 0;
    v61 = 0;
    v62 = 0;
    v27 = *(*a3 + 21);
    v59 = *(v27 + 8);
    ++*(v59 + 56);
    v58[33] = &unk_1F2CFC270;
    v28 = quasar::OnlineLmRescoringDecoder::rescoreLatticeWithLanguageModels(a2, a3, *a4, *(v53 + 464), v27, &v60, 1, 0, v15, *(v53 + 52));
    if (*(v53 + 52) < 1)
    {
      v29 = 0xFFFFFFFFLL;
    }

    else
    {
      v29 = fst::NumArcs<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(*(*a3 + 21));
    }

    if (quasar::gLogLevel >= 4)
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
      v65 = 0u;
      v66 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Rescoring ok=", 13);
      v31 = MEMORY[0x1B8C84BD0](v30, v28);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " inputArcs=", 11);
      v33 = MEMORY[0x1B8C84C00](v32, v11);
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " outputArcs=", 12);
      MEMORY[0x1B8C84C00](v34, v29);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](v58);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "The rescoring LM interpolation weights:", 39);
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v35 = v60;
    v36 = v61;
    if (v60 != v61)
    {
      do
      {
        std::to_string(&v54, *v35);
        v37 = v56;
        if (v56 >= v57)
        {
          v39 = 0xAAAAAAAAAAAAAAABLL * ((v56 - v55) >> 3);
          v40 = v39 + 1;
          if (v39 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v57 - v55) >> 3) > v40)
          {
            v40 = 0x5555555555555556 * ((v57 - v55) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v57 - v55) >> 3) >= 0x555555555555555)
          {
            v41 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v41 = v40;
          }

          *&v66 = &v55;
          if (v41)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v55, v41);
          }

          v42 = 8 * ((v56 - v55) >> 3);
          v43 = *&v54.__r_.__value_.__l.__data_;
          *(v42 + 16) = *(&v54.__r_.__value_.__l + 2);
          *v42 = v43;
          memset(&v54, 0, sizeof(v54));
          v44 = 24 * v39 + 24;
          v45 = (24 * v39 - (v56 - v55));
          memcpy((v42 - (v56 - v55)), v55, v56 - v55);
          v46 = v55;
          v47 = v57;
          v55 = v45;
          v56 = v44;
          v57 = 0;
          *&v65 = v46;
          *(&v65 + 1) = v47;
          __p[0] = v46;
          __p[1] = v46;
          std::__split_buffer<std::string>::~__split_buffer(__p);
          v56 = v44;
          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v38 = *&v54.__r_.__value_.__l.__data_;
          *(v56 + 2) = *(&v54.__r_.__value_.__l + 2);
          *v37 = v38;
          v56 = v37 + 24;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, " ", 1);
        std::ostream::operator<<();
        ++v35;
      }

      while (v35 != v36);
    }

    if (quasar::gLogLevel > 3)
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
      v65 = 0u;
      v66 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::stringbuf::str();
      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = &v54;
      }

      else
      {
        v48 = v54.__r_.__value_.__r.__words[0];
      }

      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v54.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v54.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v48, size);
      if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__data_);
      }

      quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
    }

    v54.__r_.__value_.__r.__words[0] = ",";
    v54.__r_.__value_.__l.__size_ = 1;
    quasar::join<std::vector<std::string>>(&v55, &v54);
    v50 = *a3 + 1048;
    if (*(*a3 + 1071) < 0)
    {
      operator delete(*v50);
    }

    *v50 = *__p;
    *(v50 + 16) = v65;
    v51 = *(v53 + 460);
    if (v51 > 0.0)
    {
      kaldi::PruneLattice<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>(*(*a3 + 21), v51);
    }

    fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::VectorFst();
  }

  v11 = fst::NumArcs<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(v10);
  if (v11 <= *(a1 + 52))
  {
    goto LABEL_15;
  }

  if (quasar::gLogLevel >= 4)
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
    v65 = 0u;
    v66 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Skip rescoring: inputArcs=", 26);
    MEMORY[0x1B8C84C00](v12, v11);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  if (*(a1 + 56))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

void sub_1B5329040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a66);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&a15);
  a15 = &a18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  std::ostringstream::~ostringstream(&a21, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](&a35);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&a54);
  if (__p)
  {
    a57 = __p;
    operator delete(__p);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::OnlineLmRescoringDecoder::rescoreLatticeWithLanguageModels(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, char a7, int a8, uint64_t a9, int a10)
{
  quasar::DecoderPassData::getLeftContextLabels(a1, *(*a2 + 488), (a1 + 680), *(a1 + 216) + 32, &v73);
  if (quasar::gLogLevel >= 4)
  {
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
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Rescoring with ", 15);
    v19 = MEMORY[0x1B8C84C30](v18, (v74 - v73) >> 2);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " symbol(s) for left context from ", 33);
    v21 = MEMORY[0x1B8C84C30](v20, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 736) - *(a1 + 728)) >> 3));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " word(s)", 8);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  v42 = a4;
  v22 = a7;
  v43 = a6;
  v55 = 1065353216;
  memset(v54, 0, sizeof(v54));
  memset(v53, 0, sizeof(v53));
  v23 = *(a1 + 248);
  for (i = *(a1 + 256); v23 != i; v23 += 2)
  {
    v25 = *v23;
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getCachedModel(v25, __p, &v50);
    std::vector<std::shared_ptr<kaldi::quasar::LmHandle>>::push_back[abi:ne200100](v54, &v50);
    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
    }

    if (SBYTE7(v57) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v26 = *(a1 + 472);
  for (j = *(a1 + 480); v26 != j; v26 += 2)
  {
    v28 = *v26;
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getCachedModel(v28, __p, &v50);
    std::vector<std::shared_ptr<kaldi::quasar::LmHandle>>::push_back[abi:ne200100](v53, &v50);
    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
    }

    if (SBYTE7(v57) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v50 = 0;
  v51 = 0;
  v52 = 0;
  memset(v49, 0, sizeof(v49));
  v29 = *(a1 + 272);
  for (k = *(a1 + 280); v29 != k; v29 += 2)
  {
    v31 = *v29;
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::getCachedModel(v31, __p, &v44);
    std::vector<std::shared_ptr<kaldi::quasar::LmHandle>>::push_back[abi:ne200100](&v50, &v44);
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    if (SBYTE7(v57) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v32 = *(a1 + 496);
  for (m = *(a1 + 504); v32 != m; v32 += 2)
  {
    v34 = *v32;
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::getCachedModel(v34, __p, &v44);
    std::vector<std::shared_ptr<kaldi::quasar::LmHandle>>::push_back[abi:ne200100](v49, &v44);
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    if (SBYTE7(v57) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v35 = *(a3 + 24);
  v36 = *(a1 + 392);
  if (v36)
  {
    std::string::basic_string[abi:ne200100]<0>(&v44, "");
    quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::getCachedModel(v36, &v44, &v47);
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  LODWORD(v41) = a10;
  LOBYTE(v40) = v22;
  v37 = kaldi::quasar::RescoreLatticeWithLanguageModels(a5, v54, v53, &v50, v49, (v35 + 272), (a1 + 320), a1 + 408, (a1 + 344), &v47, *(a1 + 448), (a1 + 296), v43, &v55, 0, 0, &v73, v42, v40, a8, 0x40000000u, a9, v41, (*a2 + 656));
  if (v36)
  {
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    if (v46 < 0)
    {
      operator delete(v44);
    }
  }

  else if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (quasar::gLogLevel >= 4)
  {
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
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Total LM cost after rescoring = ", 32);
    std::ostream::operator<<();
    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  v38 = *a2;
  *(v38 + 648) = v55;
  *(v38 + 644) = 1;
  __p[0] = v49;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = &v50;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = v53;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = v54;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  return v37;
}

void sub_1B53296B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  a46 = &a33;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a46);
  a46 = &a36;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a46);
  a46 = &a39;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a46);
  a46 = &a42;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a46);
  v53 = *(v51 - 128);
  if (v53)
  {
    *(v51 - 120) = v53;
    operator delete(v53);
  }

  _Unwind_Resume(a1);
}

void quasar::OnlineLmRescoringDecoder::clearCaches(quasar::OnlineLmRescoringDecoder *this)
{
  v1 = *(this + 81);
  for (i = *(this + 82); v1 != i; v1 += 2)
  {
    v3 = *v1;
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::getCachedModel(v3, __p, &v6);
    (*(*v6 + 24))(v6);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1B53298A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineLmRescoringDecoder::~OnlineLmRescoringDecoder(quasar::OnlineLmRescoringDecoder *this)
{
  quasar::OnlineLmRescoringDecoder::~OnlineLmRescoringDecoder(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D0CB40;
  v3 = (this + 648);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 624);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 75);
  if (v2)
  {
    *(this + 76) = v2;
    operator delete(v2);
  }

  if (*(this + 591) < 0)
  {
    operator delete(*(this + 71));
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

  if (*(this + 495) < 0)
  {
    operator delete(*(this + 59));
  }

  quasar::Decoder::~Decoder(this);
}